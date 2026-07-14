inline.NumInlined: 514
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN13duckdb_snappy19MaxCompressedLengthEm:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN13duckdb_snappy21GetUncompressedLengthEPKcmPm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %.not.i.not = icmp eq i64 %1, 0
  br i1 %.not.i.not, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !7       ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = icmp sgt i8 %i.b, -1
  br i1 %i.e, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not42.i.not = icmp eq i64 %1, 1
  br i1 %.not42.i.not, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !7     ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 7
  %i.j = and i32 %i.i, 16256
  %i.k = or disjoint i32 %i.j, %i.d               ; 2 uses
  %i.l = icmp sgt i8 %i.g, -1
  br i1 %i.l, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i = icmp samesign ugt i64 %1, 2
  br i1 %.not43.i, label %bb.f, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !7     ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 14
  %i.q = and i32 %i.p, 2080768
  %i.r = or disjoint i32 %i.q, %i.k               ; 2 uses
  %i.s = icmp sgt i8 %i.n, -1
  br i1 %i.s, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not44.i.not = icmp eq i64 %1, 3
  br i1 %.not44.i.not, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !7     ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 21
  %i.x = and i32 %i.w, 266338304
  %i.y = or disjoint i32 %i.x, %i.r               ; 2 uses
  %i.z = icmp sgt i8 %i.u, -1
  br i1 %i.z, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not45.i = icmp samesign ugt i64 %1, 4
  br i1 %.not45.i, label %bb.j, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !7    ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 28
  %i.ad = or disjoint i32 %i.ac, %i.y
  %i.ae = icmp ult i8 %i.aa, 16
  br i1 %i.ae, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit, label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit.thread

_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit: ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.y, %bb.h ], [ %i.d, %bb.b ], [ %i.k, %bb.d ], [ %i.r, %bb.f ], [ %i.ad, %bb.j ]
  %i.af = zext i32 %.0 to i64
  store i64 %i.af, ptr %2, align 8, !tbaa !8
  br label %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit.thread

_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit.thread: ; preds = %bb.g, %bb.e, %bb.c, %bb.a, %bb.j, %bb.i, %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit
  %.not8 = phi i1 [ true, %_ZN13duckdb_snappy6Bignum16Parse32WithLimitEPKcS2_Pj.exit ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ]
  ret i1 %.not8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13duckdb_snappy8internal13WorkingMemoryC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i64 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 65536) ; 3 uses
  %i.a = trunc nuw nsw i64 %.sroa.speculated to i32 ; 2 uses
  %i.b = icmp ugt i64 %1, 32768
  br i1 %i.b, label %_ZN13duckdb_snappy12_GLOBAL__N_118CalculateTableSizeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %1, 256
  br i1 %i.c, label %_ZN13duckdb_snappy12_GLOBAL__N_118CalculateTableSizeEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.a, -1
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = xor i32 %i.e, 31
  %i.g = shl i32 4, %i.f
  %i.h = zext i32 %i.g to i64
  br label %_ZN13duckdb_snappy12_GLOBAL__N_118CalculateTableSizeEj.exit

_ZN13duckdb_snappy12_GLOBAL__N_118CalculateTableSizeEj.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ 65536, %bb.a ], [ 512, %bb.b ] ; 2 uses
  %i.i = udiv i32 %i.a, 6
  %.zext = zext nneg i32 %i.i to i64
  %factor = shl nuw nsw i64 %.sroa.speculated, 1
  %i.j = add nuw nsw i64 %factor, 32
  %i.k = add nuw nsw i64 %i.j, %.zext
  %i.l = add nuw nsw i64 %i.k, %.0.i              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !10
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.s, align 8, !tbaa !18
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN13duckdb_snappy8internal13WorkingMemoryD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @_ZdlPv(ptr noundef %i.a) #26
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK13duckdb_snappy8internal13WorkingMemory12GetHashTableEmPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 3 uses
  %i.b = icmp ugt i32 %i.a, 32768
  br i1 %i.b, label %_ZN13duckdb_snappy12_GLOBAL__N_118CalculateTableSizeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %i.a, 256
  br i1 %i.c, label %_ZN13duckdb_snappy12_GLOBAL__N_118CalculateTableSizeEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.a, -1
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = xor i32 %i.e, 31
  %i.g = shl nuw nsw i32 2, %i.f
  br label %_ZN13duckdb_snappy12_GLOBAL__N_118CalculateTableSizeEj.exit

_ZN13duckdb_snappy12_GLOBAL__N_118CalculateTableSizeEj.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.c ], [ 32768, %bb.a ], [ 256, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = shl nuw nsw i32 %.0.i, 1
  %i.k = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.i, i8 0, i64 %i.k, i1 false)
  store i32 %.0.i, ptr %2, align 4, !tbaa !3
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !16
  ret ptr %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = add i32 %i.a, -2                         ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %i.d = icmp ugt i64 %1, 14
  br i1 %i.d, label %bb.b, label %.thread254, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -15 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.0.copyload.i = load i32, ptr %i.f, align 1
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 19 uses
  %5 = ptrtoaddr ptr %i.c to i64
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -8
  br label %bb.c

bb.c:                                             ; preds = %bb.am, %bb.b
  %.0131 = phi i32 [ %.0.copyload.i, %bb.b ], [ %i.pd, %bb.am ] ; 2 uses
  %.0118 = phi ptr [ %0, %bb.b ], [ %i.of, %bb.am ] ; 12 uses
  %.0117 = phi ptr [ %2, %bb.b ], [ %.9, %bb.am ] ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0118, i64 1 ; 4 uses
  %.0.copyload.i161 = load i64, ptr %i.l, align 1 ; 5 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %i.g, %i.m
  %i.o = icmp sgt i64 %i.n, 15
  br i1 %i.o, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.c
  %i.p = sub i64 %i.m, %i.h                       ; 16 uses
  %i.q = mul i32 %.0131, 506832829
  %i.r = lshr i32 %i.q, 16
  %i.s = and i32 %i.r, %i.b
  %i.t = zext nneg i32 %i.s to i64
  %i.u = add i64 %i.t, %i.i
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !20
  %i.x = zext i16 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = trunc i64 %i.p to i16
  store i16 %i.z, ptr %i.v, align 2, !tbaa !20
  %.0.copyload.i162 = load i32, ptr %i.y, align 1
  %.not = icmp eq i32 %.0.copyload.i162, %.0131
  br i1 %.not, label %bb.p, label %bb.d, !prof !22

bb.d:                                             ; preds = %.preheader
  %i.aa = lshr i64 %.0.copyload.i161, 8           ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = mul i32 %i.ab, 506832829
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = and i32 %i.ad, %i.b
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add i64 %i.af, %i.i
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !20
  %i.aj = zext i16 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = trunc i64 %i.p to i16
  %i.am = add i16 %i.al, 1
  store i16 %i.am, ptr %i.ah, align 2, !tbaa !20
  %.0.copyload.i162.1 = load i32, ptr %i.ak, align 1
  %.not.1 = icmp eq i32 %.0.copyload.i162.1, %i.ab
  br i1 %.not.1, label %bb.p, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.an = lshr i64 %.0.copyload.i161, 16          ; 2 uses
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = mul i32 %i.ao, 506832829
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = and i32 %i.aq, %i.b
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add i64 %i.as, %i.i
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !20
  %i.aw = zext i16 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  %i.ay = trunc i64 %i.p to i16
  %i.az = add i16 %i.ay, 2
  store i16 %i.az, ptr %i.au, align 2, !tbaa !20
  %.0.copyload.i162.2 = load i32, ptr %i.ax, align 1
  %.not.2 = icmp eq i32 %.0.copyload.i162.2, %i.ao
  br i1 %.not.2, label %bb.p, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.ba = lshr i64 %.0.copyload.i161, 24          ; 2 uses
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = mul i32 %i.bb, 506832829
  %i.bd = lshr i32 %i.bc, 16
  %i.be = and i32 %i.bd, %i.b
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add i64 %i.bf, %i.i
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !20
  %i.bj = zext i16 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  %i.bl = trunc i64 %i.p to i16
  %i.bm = add i16 %i.bl, 3
  store i16 %i.bm, ptr %i.bh, align 2, !tbaa !20
  %.0.copyload.i162.3 = load i32, ptr %i.bk, align 1
  %.not.3 = icmp eq i32 %.0.copyload.i162.3, %i.bb
  br i1 %.not.3, label %bb.p, label %.preheader.1, !prof !22

.preheader.1:                                     ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.0118, i64 5
  %.0.copyload.i163 = load i64, ptr %i.bn, align 1 ; 5 uses
  %i.bo = trunc i64 %.0.copyload.i163 to i32      ; 2 uses
  %i.bp = mul i32 %i.bo, 506832829
  %i.bq = lshr i32 %i.bp, 16
  %i.br = and i32 %i.bq, %i.b
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = add i64 %i.bs, %i.i
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !20
  %i.bw = zext i16 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw
  %i.by = trunc i64 %i.p to i16
  %i.bz = add i16 %i.by, 4
  store i16 %i.bz, ptr %i.bu, align 2, !tbaa !20
  %.0.copyload.i162.1329 = load i32, ptr %i.bx, align 1
  %.not.1330 = icmp eq i32 %.0.copyload.i162.1329, %i.bo
  br i1 %.not.1330, label %bb.p, label %bb.g, !prof !22

bb.g:                                             ; preds = %.preheader.1
  %i.ca = lshr i64 %.0.copyload.i163, 8           ; 2 uses
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = mul i32 %i.cb, 506832829
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = and i32 %i.cd, %i.b
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = add i64 %i.cf, %i.i
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !20
  %i.cj = zext i16 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %i.cl = trunc i64 %i.p to i16
  %i.cm = add i16 %i.cl, 5
  store i16 %i.cm, ptr %i.ch, align 2, !tbaa !20
  %.0.copyload.i162.1.1 = load i32, ptr %i.ck, align 1
  %.not.1.1 = icmp eq i32 %.0.copyload.i162.1.1, %i.cb
  br i1 %.not.1.1, label %bb.p, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.cn = lshr i64 %.0.copyload.i163, 16          ; 2 uses
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = mul i32 %i.co, 506832829
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = and i32 %i.cq, %i.b
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = add i64 %i.cs, %i.i
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !20
  %i.cw = zext i16 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw
  %i.cy = trunc i64 %i.p to i16
  %i.cz = add i16 %i.cy, 6
  store i16 %i.cz, ptr %i.cu, align 2, !tbaa !20
  %.0.copyload.i162.2.1 = load i32, ptr %i.cx, align 1
  %.not.2.1 = icmp eq i32 %.0.copyload.i162.2.1, %i.co
  br i1 %.not.2.1, label %bb.p, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.da = lshr i64 %.0.copyload.i163, 24          ; 2 uses
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = mul i32 %i.db, 506832829
  %i.dd = lshr i32 %i.dc, 16
  %i.de = and i32 %i.dd, %i.b
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = add i64 %i.df, %i.i
  %i.dh = inttoptr i64 %i.dg to ptr               ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !20
  %i.dj = zext i16 %i.di to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %i.dj
  %i.dl = trunc i64 %i.p to i16
  %i.dm = add i16 %i.dl, 7
  store i16 %i.dm, ptr %i.dh, align 2, !tbaa !20
  %.0.copyload.i162.3.1 = load i32, ptr %i.dk, align 1
  %.not.3.1 = icmp eq i32 %.0.copyload.i162.3.1, %i.db
  br i1 %.not.3.1, label %bb.p, label %.preheader.2, !prof !22

.preheader.2:                                     ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.0118, i64 9
  %.0.copyload.i163.1 = load i64, ptr %i.dn, align 1 ; 5 uses
  %i.do = trunc i64 %.0.copyload.i163.1 to i32    ; 2 uses
  %i.dp = mul i32 %i.do, 506832829
  %i.dq = lshr i32 %i.dp, 16
  %i.dr = and i32 %i.dq, %i.b
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = add i64 %i.ds, %i.i
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !20
  %i.dw = zext i16 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %i.dw
  %i.dy = trunc i64 %i.p to i16
  %i.dz = add i16 %i.dy, 8
  store i16 %i.dz, ptr %i.du, align 2, !tbaa !20
  %.0.copyload.i162.2331 = load i32, ptr %i.dx, align 1
  %.not.2332 = icmp eq i32 %.0.copyload.i162.2331, %i.do
  br i1 %.not.2332, label %bb.p, label %bb.j, !prof !22

bb.j:                                             ; preds = %.preheader.2
  %i.ea = lshr i64 %.0.copyload.i163.1, 8         ; 2 uses
  %i.eb = trunc i64 %i.ea to i32                  ; 2 uses
  %i.ec = mul i32 %i.eb, 506832829
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = and i32 %i.ed, %i.b
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = add i64 %i.ef, %i.i
  %i.eh = inttoptr i64 %i.eg to ptr               ; 2 uses
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !20
  %i.ej = zext i16 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej
  %i.el = trunc i64 %i.p to i16
  %i.em = add i16 %i.el, 9
end_hunk_0
begin_hunk_1_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  %i.ha = lshr i64 %.0.copyload.i163.2, 24        ; 2 uses
  %i.hb = trunc i64 %i.ha to i32                  ; 2 uses
  %i.hc = mul i32 %i.hb, 506832829
  %i.hd = lshr i32 %i.hc, 16
  %i.he = and i32 %i.hd, %i.b
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = add i64 %i.hf, %i.i
  %i.hh = inttoptr i64 %i.hg to ptr               ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !20
  %i.hj = zext i16 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 %i.hj
  %i.hl = trunc i64 %i.p to i16
  %i.hm = add i16 %i.hl, 15
  store i16 %i.hm, ptr %i.hh, align 2, !tbaa !20
  %.0.copyload.i162.3.3 = load i32, ptr %i.hk, align 1
  %.not.3.3 = icmp eq i32 %.0.copyload.i162.3.3, %i.hb
  br i1 %.not.3.3, label %bb.p, label %.thread208, !prof !22

.thread208:                                       ; preds = %bb.o
  %i.hn = getelementptr inbounds nuw i8, ptr %.0118, i64 17
  %.0.copyload.i163.3 = load i64, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.0118, i64 17
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.preheader.3, %bb.l, %bb.k, %bb.j, %.preheader.2, %bb.i, %bb.h, %bb.g, %.preheader.1, %bb.f, %bb.e, %bb.d, %.preheader
  %.1183286.lcssa = phi i64 [ %.0.copyload.i161, %.preheader ], [ %i.aa, %bb.d ], [ %i.an, %bb.e ], [ %i.ba, %bb.f ], [ %.0.copyload.i163, %.preheader.1 ], [ %i.ca, %bb.g ], [ %i.cn, %bb.h ], [ %i.da, %bb.i ], [ %.0.copyload.i163.1, %.preheader.2 ], [ %i.ea, %bb.j ], [ %i.en, %bb.k ], [ %i.fa, %bb.l ], [ %.0.copyload.i163.2, %.preheader.3 ], [ %i.ga, %bb.m ], [ %i.gn, %bb.n ], [ %i.ha, %bb.o ]
  %.lcssa302.wide = phi i64 [ 0, %.preheader ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %.preheader.1 ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %.preheader.2 ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %.preheader.3 ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ] ; 3 uses
  %.lcssa300 = phi i64 [ %i.x, %.preheader ], [ %i.aj, %bb.d ], [ %i.aw, %bb.e ], [ %i.bj, %bb.f ], [ %i.bw, %.preheader.1 ], [ %i.cj, %bb.g ], [ %i.cw, %bb.h ], [ %i.dj, %bb.i ], [ %i.dw, %.preheader.2 ], [ %i.ej, %bb.j ], [ %i.ew, %bb.k ], [ %i.fj, %bb.l ], [ %i.fw, %.preheader.3 ], [ %i.gj, %bb.m ], [ %i.gw, %bb.n ], [ %i.hj, %bb.o ]
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa300
  %.tr = trunc nuw nsw i64 %.lcssa302.wide to i8
  %i.hq = shl nuw nsw i8 %.tr, 2
  store i8 %i.hq, ptr %.0117, align 1, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %.0117, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hr, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0118, i64 16, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.l, i64 %.lcssa302.wide
  %i.ht = getelementptr inbounds nuw i8, ptr %.0117, i64 %.lcssa302.wide
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.q:                                             ; preds = %.thread208, %bb.c
  %.5187 = phi i64 [ %.0.copyload.i163.3, %.thread208 ], [ %.0.copyload.i161, %bb.c ]
  %.1134 = phi i32 [ 49, %.thread208 ], [ 33, %bb.c ]
  %.7125 = phi ptr [ %i.ho, %.thread208 ], [ %i.l, %bb.c ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.7125, i64 1 ; 2 uses
  %i.hw = icmp ugt ptr %i.hv, %i.e
  br i1 %i.hw, label %.thread254, label %.lr.ph, !prof !23

.lr.ph:                                           ; preds = %bb.q, %bb.r
  %i.hx = phi ptr [ %i.ir, %bb.r ], [ %i.hv, %bb.q ] ; 3 uses
  %i.hy = phi i32 [ %i.ip, %bb.r ], [ %.1134, %bb.q ] ; 2 uses
  %.8126292 = phi ptr [ %i.hx, %bb.r ], [ %.7125, %bb.q ] ; 3 uses
  %.6188291 = phi i64 [ %i.in, %bb.r ], [ %.5187, %bb.q ] ; 3 uses
  %i.hz = trunc i64 %.6188291 to i32              ; 2 uses
  %i.ia = mul i32 %i.hz, 506832829
  %i.ib = lshr i32 %i.ia, 16
  %i.ic = and i32 %i.ib, %i.b
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = add i64 %i.id, %i.i
  %i.if = inttoptr i64 %i.ie to ptr               ; 2 uses
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !20
  %i.ih = zext i16 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 %i.ih
  %i.ij = ptrtoint ptr %.8126292 to i64           ; 2 uses
  %i.ik = sub i64 %i.ij, %i.h
  %i.il = trunc i64 %i.ik to i16
  store i16 %i.il, ptr %i.if, align 2, !tbaa !20
  %.0.copyload.i164 = load i32, ptr %i.ii, align 1
  %i.im = icmp eq i32 %.0.copyload.i164, %i.hz
  br i1 %i.im, label %bb.s, label %bb.r, !prof !22

bb.r:                                             ; preds = %.lr.ph
  %.0.copyload.i165 = load i32, ptr %i.hx, align 1
  %i.in = zext i32 %.0.copyload.i165 to i64
  %i.io = lshr i32 %i.hy, 5                       ; 2 uses
  %i.ip = add i32 %i.io, %i.hy
  %i.iq = zext nneg i32 %i.io to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.iq ; 2 uses
  %i.is = icmp ugt ptr %i.ir, %i.e
  br i1 %i.is, label %.thread254, label %.lr.ph, !prof !24

bb.s:                                             ; preds = %.lr.ph
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 %i.ih ; 2 uses
  %i.iu = ptrtoint ptr %.0118 to i64
  %i.iv = sub i64 %i.ij, %i.iu                    ; 3 uses
  %i.iw = trunc i64 %i.iv to i32                  ; 3 uses
  %i.ix = add nsw i32 %i.iw, -1                   ; 4 uses
  %i.iy = icmp slt i32 %i.iw, 17
  br i1 %i.iy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.tr37.i = trunc i32 %i.ix to i8
  %i.iz = shl i8 %.tr37.i, 2
  %i.ja = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i8 %i.iz, ptr %.0117, align 1, !tbaa !7
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ja, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0118, i64 16, i1 false)
  %sext = shl i64 %i.iv, 32
  %i.jb = ashr exact i64 %sext, 32
  %i.jc = getelementptr inbounds i8, ptr %i.ja, i64 %i.jb
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.u:                                             ; preds = %bb.s
  %i.jd = icmp samesign ult i32 %i.iw, 61
  br i1 %i.jd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.tr.i = trunc nuw nsw i32 %i.ix to i8
  %i.je = shl nuw i8 %.tr.i, 2
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.jf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ix, i1 true)
  %i.jg = lshr i32 %i.jf, 3
  %i.jh = xor i32 %i.jg, 3                        ; 2 uses
  %.tr38.i = trunc nuw nsw i32 %i.jh to i8
  %i.ji = shl nuw nsw i8 %.tr38.i, 2
  %i.jj = or disjoint i8 %i.ji, -16
  %i.jk = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i32 %i.ix, ptr %i.jk, align 1
  %i.jl = zext nneg i32 %i.jh to i64
  %i.jm = getelementptr i8, ptr %i.jk, i64 %i.jl
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ %i.je, %bb.v ], [ %i.jj, %bb.w ]
  %.pn.i = phi ptr [ %.0117, %bb.v ], [ %i.jm, %bb.w ]
  store i8 %.sink.i, ptr %.0117, align 1, !tbaa !7
  %.032.i = getelementptr i8, ptr %.pn.i, i64 1   ; 2 uses
  %i.jn = and i64 %i.iv, 2147483647
  %i.jo = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.jn ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.031.i = phi ptr [ %.032.i, %bb.x ], [ %i.jp, %bb.y ] ; 2 uses
  %.030.i = phi ptr [ %.0118, %bb.x ], [ %i.jq, %bb.y ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.031.i, ptr noundef nonnull align 1 dereferenceable(16) %.030.i, i64 16, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.031.i, i64 16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.jr = icmp ult ptr %i.jp, %i.jo
  br i1 %i.jr, label %bb.y, label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !25

_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.y, %bb.t, %bb.p
  %.9191.ph = phi i64 [ %.1183286.lcssa, %bb.p ], [ %.6188291, %bb.t ], [ %.6188291, %bb.y ]
  %.9145.ph = phi ptr [ %i.hp, %bb.p ], [ %i.it, %bb.t ], [ %i.it, %bb.y ]
  %.11129.ph = phi ptr [ %i.hs, %bb.p ], [ %.8126292, %bb.t ], [ %.8126292, %bb.y ]
  %.8.ph = phi ptr [ %i.hu, %bb.p ], [ %i.jc, %bb.t ], [ %i.jo, %bb.y ]
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit: ; preds = %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %bb.al
  %.9191 = phi i64 [ %.11193237, %bb.al ], [ %.9191.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %.9145 = phi ptr [ %i.pa, %bb.al ], [ %.9145.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 6 uses
  %.11129 = phi ptr [ %i.of, %bb.al ], [ %.11129.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 11 uses
  %.8 = phi ptr [ %.9, %bb.al ], [ %.8.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.9145, i64 4 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.11129, i64 4 ; 3 uses
  %.not.i = icmp ugt ptr %i.jt, %i.j
  br i1 %.not.i, label %bb.aa, label %bb.z, !prof !22

bb.z:                                             ; preds = %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.0.copyload.i.i = load i64, ptr %i.js, align 1 ; 2 uses
  %.0.copyload.i62.i = load i64, ptr %i.jt, align 1 ; 3 uses
  %.not59.i = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i62.i
  br i1 %.not59.i, label %.thread.i, label %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, !prof !22

.thread.i:                                        ; preds = %bb.z
  %i.ju = getelementptr inbounds nuw i8, ptr %.11129, i64 12
  br label %bb.aa

_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread: ; preds = %bb.z
  %i.jv = xor i64 %.0.copyload.i62.i, %.0.copyload.i.i ; 2 uses
  %i.jw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jv, i1 true) ; 2 uses
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %.11129, i64 8
  %.0.copyload.i63.i = load i64, ptr %i.jy, align 1
  %i.jz = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i63.i, i64 %i.jv, i64 %.0.copyload.i62.i) #29, !srcloc !27
  %i.ka = and i64 %i.jw, 24
  %i.kb = lshr i64 %i.jz, %i.ka
  %i.kc = add nuw nsw i64 %i.jx, 4                ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kc
  %i.ke = ptrtoint ptr %.11129 to i64
  %i.kf = ptrtoint ptr %.9145 to i64
  %i.kg = sub i64 %i.ke, %i.kf
  br label %bb.ag

bb.aa:                                            ; preds = %.thread.i, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.182.i = phi i64 [ 0, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ 8, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.jt, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ %i.ju, %.thread.i ] ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.9145, i64 68
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.kh, i32 0, i32 3, i32 1)
  %i.ki = getelementptr inbounds nuw i8, ptr %.1.i, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ki, i32 0, i32 3, i32 1)
  %.not6098.i = icmp ugt ptr %.1.i, %i.j
  br i1 %.not6098.i, label %.preheader.i, label %.lr.ph.i, !prof !23

.preheader.i:                                     ; preds = %bb.ab, %bb.aa
  %.283.lcssa.i = phi i64 [ %.182.i, %bb.aa ], [ %i.lc, %bb.ab ] ; 3 uses
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.aa ], [ %i.lb, %bb.ab ] ; 3 uses
  %i.kj = icmp ult ptr %.2.lcssa.i, %i.c
  br i1 %i.kj, label %.lr.ph104.preheader.i, label %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, !prof !28

.lr.ph104.preheader.i:                            ; preds = %.preheader.i
  %.2.lcssa114.i = ptrtoaddr ptr %.2.lcssa.i to i64
  %i.kk = add i64 %.283.lcssa.i, %5
  %i.kl = sub i64 %i.kk, %.2.lcssa114.i
  br label %.lr.ph104.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ab
  %.2100.i = phi ptr [ %i.lb, %bb.ab ], [ %.1.i, %bb.aa ] ; 3 uses
  %.28399.i = phi i64 [ %i.lc, %bb.ab ], [ %.182.i, %bb.aa ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.js, i64 %.28399.i
  %.0.copyload.i64.i = load i64, ptr %i.km, align 1 ; 2 uses
  %.0.copyload.i65.i = load i64, ptr %.2100.i, align 1 ; 3 uses
  %i.kn = icmp eq i64 %.0.copyload.i64.i, %.0.copyload.i65.i
  br i1 %i.kn, label %bb.ab, label %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread239

_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread239: ; preds = %.lr.ph.i
  %i.ko = xor i64 %.0.copyload.i65.i, %.0.copyload.i64.i ; 2 uses
  %i.kp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ko, i1 true) ; 2 uses
  %i.kq = lshr i64 %i.kp, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %.2100.i, i64 4
  %.0.copyload.i66.i = load i64, ptr %i.kr, align 1
  %i.ks = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i66.i, i64 %i.ko, i64 %.0.copyload.i65.i) #29, !srcloc !29
  %i.kt = and i64 %i.kp, 24
  %i.ku = lshr i64 %i.ks, %i.kt
  %i.kv = or disjoint i64 %i.kq, %.28399.i
  %i.kw = add i64 %i.kv, 4                        ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kw
  %i.ky = ptrtoint ptr %.11129 to i64
  %i.kz = ptrtoint ptr %.9145 to i64
  %i.la = sub i64 %i.ky, %i.kz
  br label %bb.ah

bb.ab:                                            ; preds = %.lr.ph.i
  %i.lb = getelementptr inbounds nuw i8, ptr %.2100.i, i64 8 ; 3 uses
  %i.lc = add i64 %.28399.i, 8                    ; 2 uses
  %.not60.i = icmp ugt ptr %i.lb, %i.j
  br i1 %.not60.i, label %.preheader.i, label %.lr.ph.i, !prof !24

.lr.ph104.i:                                      ; preds = %bb.ac, %.lr.ph104.preheader.i
  %.4103.i = phi ptr [ %i.lh, %bb.ac ], [ %.2.lcssa.i, %.lr.ph104.preheader.i ] ; 4 uses
  %.485102.i = phi i64 [ %i.li, %bb.ac ], [ %.283.lcssa.i, %.lr.ph104.preheader.i ] ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.js, i64 %.485102.i
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !7
  %i.lf = load i8, ptr %.4103.i, align 1, !tbaa !7
  %i.lg = icmp eq i8 %i.le, %i.lf
  br i1 %i.lg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph104.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.4103.i, i64 1 ; 2 uses
  %i.li = add i64 %.485102.i, 1
  %exitcond.not.i = icmp eq ptr %i.lh, %i.c
  br i1 %exitcond.not.i, label %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, label %.lr.ph104.i, !prof !24, !llvm.loop !30

bb.ad:                                            ; preds = %.lr.ph104.i
  %.not61.i = icmp ugt ptr %.4103.i, %i.k
  br i1 %.not61.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.copyload.i67.i = load i64, ptr %.4103.i, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.10192 = phi i64 [ %.9191, %bb.ad ], [ %.0.copyload.i67.i, %bb.ae ] ; 2 uses
  %i.lj = icmp ult i64 %.485102.i, 8
  %i.lk = add i64 %.485102.i, 4                   ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.lk ; 2 uses
  %i.lm = ptrtoint ptr %.11129 to i64
  %i.ln = ptrtoint ptr %.9145 to i64
  %i.lo = sub i64 %i.lm, %i.ln                    ; 2 uses
  br i1 %i.lj, label %bb.ag, label %bb.ah

_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit: ; preds = %bb.ac, %.preheader.i
  %.485.lcssa.i = phi i64 [ %.283.lcssa.i, %.preheader.i ], [ %i.kl, %bb.ac ] ; 2 uses
  %i.lp = icmp ult i64 %.485.lcssa.i, 8
  %i.lq = add i64 %.485.lcssa.i, 4                ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.lq ; 2 uses
  %i.ls = ptrtoint ptr %.11129 to i64
  %i.lt = ptrtoint ptr %.9145 to i64
  %i.lu = sub i64 %i.ls, %i.lt                    ; 2 uses
  br i1 %i.lp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.lv = phi i64 [ %i.kg, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lu, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lo, %bb.af ] ; 3 uses
  %i.lw = phi ptr [ %i.kd, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lr, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ll, %bb.af ]
  %i.lx = phi i64 [ %i.kc, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lq, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lk, %bb.af ]
  %.11193238 = phi i64 [ %i.kb, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %.9191, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10192, %bb.af ]
  %i.ly = shl nuw nsw i64 %i.lx, 2
  %i.lz = shl i64 %i.lv, 8
  %i.ma = add nuw i64 %i.ly, %i.lz
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = trunc i64 %i.lv to i32
  %i.md = lshr i32 %i.mc, 3
  %i.me = and i32 %i.md, 224
  %i.mf = add nsw i32 %i.me, -15
  %i.mg = icmp ult i64 %i.lv, 2048                ; 2 uses
  %i.mh = select i1 %i.mg, i32 %i.mf, i32 -2
  %i.mi = add i32 %i.mh, %i.mb
  store i32 %i.mi, ptr %.8, align 1
  %i.mj = select i1 %i.mg, i64 2, i64 3
  %i.mk = getelementptr inbounds nuw i8, ptr %.8, i64 %i.mj
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.ah:                                            ; preds = %bb.af, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread239, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.ml = phi i64 [ %i.la, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread239 ], [ %i.lu, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lo, %bb.af ] ; 6 uses
  %i.mm = phi ptr [ %i.kx, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread239 ], [ %i.lr, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ll, %bb.af ] ; 2 uses
  %i.mn = phi i64 [ %i.kw, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread239 ], [ %i.lq, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lk, %bb.af ] ; 5 uses
  %.11193246 = phi i64 [ %i.ku, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread239 ], [ %.9191, %_ZN13duckdb_snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10192, %bb.af ] ; 2 uses
  %i.mo = icmp ugt i64 %i.mn, 67
  br i1 %i.mo, label %.lr.ph.i169, label %._crit_edge.i166, !prof !31

.lr.ph.i169:                                      ; preds = %bb.ah
  %.tr21.i = trunc i64 %i.ml to i32
  %i.mp = shl i32 %.tr21.i, 8
  %i.mq = or disjoint i32 %i.mp, 254              ; 9 uses
  %i.mr = add i64 %i.mn, -68                      ; 2 uses
  %i.ms = lshr i64 %i.mr, 6
  %i.mt = add nuw nsw i64 %i.ms, 1
  %xtraiter = and i64 %i.mt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !28

.prol.preheader:                                  ; preds = %.lr.ph.i169, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.mv, %.prol.preheader ], [ %i.mn, %.lr.ph.i169 ]
  %.01522.i.prol = phi ptr [ %i.mu, %.prol.preheader ], [ %.8, %.lr.ph.i169 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i169 ]
  store i32 %i.mq, ptr %.01522.i.prol, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.mv = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !32, !llvm.loop !33

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i169
  %.023.i.unr = phi i64 [ %i.mn, %.lr.ph.i169 ], [ %i.mv, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.8, %.lr.ph.i169 ], [ %i.mu, %.prol.preheader ]
  %.lcssa419.unr = phi ptr [ poison, %.lr.ph.i169 ], [ %i.mu, %.prol.preheader ]
  %.lcssa418.unr = phi i64 [ poison, %.lr.ph.i169 ], [ %i.mv, %.prol.preheader ]
  %i.mw = icmp ult i64 %i.mr, 448
  br i1 %i.mw, label %._crit_edge.i166, label %.lr.ph.i169.new, !prof !23

.lr.ph.i169.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i169.new
  %.023.i = phi i64 [ %i.nf, %.lr.ph.i169.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.ne, %.lr.ph.i169.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.mq, ptr %.01522.i, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.mq, ptr %i.mx, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.mq, ptr %i.my, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.mq, ptr %i.mz, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.mq, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.mq, ptr %i.nb, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.mq, ptr %i.nc, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.mq, ptr %i.nd, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.nf = add i64 %.023.i, -512                   ; 3 uses
  %i.ng = icmp ugt i64 %i.nf, 67
  br i1 %i.ng, label %.lr.ph.i169.new, label %._crit_edge.i166, !prof !35, !llvm.loop !36

._crit_edge.i166:                                 ; preds = %.prol.loopexit, %.lr.ph.i169.new, %bb.ah
  %.015.lcssa.i = phi ptr [ %.8, %bb.ah ], [ %.lcssa419.unr, %.prol.loopexit ], [ %i.ne, %.lr.ph.i169.new ] ; 5 uses
  %.0.lcssa.i = phi i64 [ %i.mn, %bb.ah ], [ %.lcssa418.unr, %.prol.loopexit ], [ %i.nf, %.lr.ph.i169.new ] ; 5 uses
  %i.nh = icmp samesign ugt i64 %.0.lcssa.i, 64
  br i1 %i.nh, label %.thread.i167, label %bb.ai

.thread.i167:                                     ; preds = %._crit_edge.i166
  %.tr.i168 = trunc i64 %i.ml to i32              ; 2 uses
  %i.ni = shl i32 %.tr.i168, 8
  %i.nj = or disjoint i32 %i.ni, 238
  store i32 %i.nj, ptr %.015.lcssa.i, align 1
  %i.nk = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.nl = add nsw i64 %.0.lcssa.i, -60
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i166
  %i.nm = icmp samesign ult i64 %.0.lcssa.i, 12
  br i1 %i.nm, label %._crit_edge26.i, label %bb.ak

._crit_edge26.i:                                  ; preds = %bb.ai
  %.pre.i = trunc i64 %i.ml to i32
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge26.i, %.thread.i167
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i168, %.thread.i167 ]
  %.120.i = phi i64 [ %.0.lcssa.i, %._crit_edge26.i ], [ %i.nl, %.thread.i167 ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.nk, %.thread.i167 ] ; 2 uses
  %i.nn = shl nuw nsw i64 %.120.i, 2
  %i.no = shl i64 %i.ml, 8
  %i.np = add nuw i64 %i.nn, %i.no
  %i.nq = trunc i64 %i.np to i32
  %i.nr = lshr i32 %.pre-phi.i, 3
  %i.ns = and i32 %i.nr, 224
  %i.nt = add nsw i32 %i.ns, -15
  %i.nu = icmp ult i64 %i.ml, 2048                ; 2 uses
  %i.nv = select i1 %i.nu, i32 %i.nt, i32 -2
  %i.nw = add i32 %i.nv, %i.nq
  store i32 %i.nw, ptr %.11619.i, align 1
  %i.nx = select i1 %i.nu, i64 2, i64 3
  %i.ny = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.nx
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.ak:                                            ; preds = %bb.ai
  %i.nz = shl nuw nsw i64 %.0.lcssa.i, 2
  %i.oa = shl i64 %i.ml, 8
  %i.ob = add i64 %i.oa, 4294967294
  %i.oc = add i64 %i.ob, %i.nz
  %i.od = trunc i64 %i.oc to i32
  store i32 %i.od, ptr %.015.lcssa.i, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit:  ; preds = %bb.ak, %bb.aj, %bb.ag
  %i.of = phi ptr [ %i.lw, %bb.ag ], [ %i.mm, %bb.aj ], [ %i.mm, %bb.ak ] ; 6 uses
  %.11193237 = phi i64 [ %.11193238, %bb.ag ], [ %.11193246, %bb.aj ], [ %.11193246, %bb.ak ] ; 3 uses
  %.9 = phi ptr [ %i.mk, %bb.ag ], [ %i.ny, %bb.aj ], [ %i.oe, %bb.ak ] ; 3 uses
  %.not160 = icmp ult ptr %i.of, %i.e
  br i1 %.not160, label %bb.al, label %.thread254, !prof !19

bb.al:                                            ; preds = %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = sub i64 %i.og, %i.h
  %i.oi = trunc i64 %i.oh to i16                  ; 2 uses
  %i.oj = add i16 %i.oi, -1
  %i.ok = getelementptr inbounds i8, ptr %i.of, i64 -1
  %.0.copyload.i170 = load i32, ptr %i.ok, align 1
  %i.ol = mul i32 %.0.copyload.i170, 506832829
  %i.om = lshr i32 %i.ol, 16
  %i.on = and i32 %i.om, %i.b
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = add i64 %i.oo, %i.i
  %i.oq = inttoptr i64 %i.op to ptr
  store i16 %i.oj, ptr %i.oq, align 2, !tbaa !20
  %i.or = trunc i64 %.11193237 to i32             ; 2 uses
  %i.os = mul i32 %i.or, 506832829
  %i.ot = lshr i32 %i.os, 16
  %i.ou = and i32 %i.ot, %i.b
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = add i64 %i.ov, %i.i
  %i.ox = inttoptr i64 %i.ow to ptr               ; 2 uses
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !20
  %i.oz = zext i16 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 %i.oz ; 2 uses
  store i16 %i.oi, ptr %i.ox, align 2, !tbaa !20
  %.0.copyload.i171 = load i32, ptr %i.pa, align 1
  %i.pb = icmp eq i32 %.0.copyload.i171, %i.or
  br i1 %i.pb, label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit, label %bb.am, !llvm.loop !38

bb.am:                                            ; preds = %bb.al
  %i.pc = lshr i64 %.11193237, 8
  %i.pd = trunc i64 %i.pc to i32
  br label %bb.c

.thread254:                                       ; preds = %bb.q, %bb.r, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.a
  %.13 = phi ptr [ %0, %bb.a ], [ %.0118, %bb.r ], [ %i.of, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0118, %bb.q ] ; 3 uses
  %.11 = phi ptr [ %2, %bb.a ], [ %.0117, %bb.r ], [ %.9, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0117, %bb.q ] ; 4 uses
  %i.pe = icmp ult ptr %.13, %i.c
  br i1 %i.pe, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.thread254
  %i.pf = ptrtoint ptr %i.c to i64
  %i.pg = ptrtoint ptr %.13 to i64
  %i.ph = sub i64 %i.pf, %i.pg                    ; 2 uses
  %i.pi = trunc i64 %i.ph to i32                  ; 2 uses
  %i.pj = add nsw i32 %i.pi, -1                   ; 3 uses
  %i.pk = icmp slt i32 %i.pi, 61
  br i1 %i.pk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.tr.i175 = trunc i32 %i.pj to i8
  %i.pl = shl i8 %.tr.i175, 2
  br label %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ap:                                            ; preds = %bb.an
  %i.pm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pj, i1 true)
  %i.pn = lshr i32 %i.pm, 3
  %i.po = xor i32 %i.pn, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.po to i8
  %i.pp = shl nuw nsw i8 %.tr16.i, 2
  %i.pq = or disjoint i8 %i.pp, -16
  %i.pr = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  store i32 %i.pj, ptr %i.pr, align 1
  %i.ps = zext nneg i32 %i.po to i64
  %i.pt = getelementptr i8, ptr %i.pr, i64 %i.ps
  br label %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit: ; preds = %bb.ao, %bb.ap
  %.sink.i172 = phi i8 [ %i.pl, %bb.ao ], [ %i.pq, %bb.ap ]
  %.pn.i173 = phi ptr [ %.11, %bb.ao ], [ %i.pt, %bb.ap ]
  store i8 %.sink.i172, ptr %.11, align 1, !tbaa !7
  %.0.i174 = getelementptr i8, ptr %.pn.i173, i64 1 ; 2 uses
  %sext260 = shl i64 %i.ph, 32
  %i.pu = ashr exact i64 %sext260, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i174, ptr readonly align 1 %.13, i64 %i.pu, i1 false)
  %i.pv = getelementptr inbounds i8, ptr %.0.i174, i64 %i.pu
  br label %bb.aq

bb.aq:                                            ; preds = %.thread254, %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0 = phi ptr [ %.11, %.thread254 ], [ %i.pv, %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN13duckdb_snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 %6) local_unnamed_addr #10 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = add i32 %i.a, -2                         ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 15 uses
  %i.d = icmp ugt i64 %1, 14
  br i1 %i.d, label %bb.b, label %.thread356, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -15 ; 3 uses
  %i.f = ptrtoint ptr %5 to i64                   ; 9 uses
  %i.g = zext i32 %i.b to i64                     ; 9 uses
  %i.h = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 5 uses
  %7 = ptrtoaddr ptr %i.c to i64
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 10 uses
  %i.k = trunc i64 %7 to i32                      ; 5 uses
  %i.l = icmp slt i64 %1, 17
  br i1 %i.l, label %.thread356, label %.lr.ph587.lr.ph, !prof !23

.lr.ph587.lr.ph:                                  ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %.lr.ph587

.loopexit.loopexit:                               ; preds = %bb.ac
  %i.n = getelementptr inbounds nuw i8, ptr %i.gh, i64 2 ; 2 uses
  %i.o = icmp ugt ptr %i.n, %i.e
  br i1 %i.o, label %.thread356, label %.lr.ph587, !prof !39

.lr.ph587:                                        ; preds = %.lr.ph587.lr.ph, %.loopexit.loopexit
  %i.p = phi ptr [ %i.m, %.lr.ph587.lr.ph ], [ %i.n, %.loopexit.loopexit ]
  %.0175593 = phi ptr [ %2, %.lr.ph587.lr.ph ], [ %.3, %.loopexit.loopexit ] ; 7 uses
  %.0176591 = phi ptr [ %0, %.lr.ph587.lr.ph ], [ %i.gh, %.loopexit.loopexit ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0176591, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.g
  %i.r = lshr i32 %i.x, 9
  %i.s = add i32 %i.x, 1
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 2 uses
  %i.v = icmp ugt ptr %i.u, %i.e
  br i1 %i.v, label %.thread356, label %bb.d, !prof !24

bb.d:                                             ; preds = %.lr.ph587, %bb.c
  %i.w = phi ptr [ %i.p, %.lr.ph587 ], [ %i.u, %bb.c ] ; 2 uses
  %i.x = phi i32 [ 513, %.lr.ph587 ], [ %i.s, %bb.c ] ; 2 uses
  %.1177586 = phi ptr [ %i.q, %.lr.ph587 ], [ %i.w, %bb.c ] ; 7 uses
  %.0183 = load i64, ptr %.1177586, align 1       ; 2 uses
  %i.y = mul i64 %.0183, 58295818150454627
  %i.z = lshr i64 %i.y, 49
  %i.aa = and i64 %i.z, %i.g
  %i.ab = add i64 %i.aa, %i.f
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !20
  %i.ae = zext i16 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ag = ptrtoint ptr %.1177586 to i64
  %i.ah = sub i64 %i.ag, %i.h
  %i.ai = trunc i64 %i.ah to i16                  ; 3 uses
  store i16 %i.ai, ptr %i.ac, align 2, !tbaa !20
  %i.aj = trunc i64 %.0183 to i32                 ; 3 uses
  %.0.copyload.i218 = load i32, ptr %i.af, align 1
  %i.ak = icmp eq i32 %.0.copyload.i218, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.g, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.1177586, i64 4 ; 3 uses
  %.not34.i = icmp ugt ptr %i.an, %i.j
  br i1 %.not34.i, label %.critedge28.preheader.i, label %.lr.ph.i

.critedge28.preheader.loopexit.i:                 ; preds = %bb.f
  %i.ao = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.critedge28.preheader.i

.critedge28.preheader.i:                          ; preds = %.critedge28.preheader.loopexit.i, %bb.e
  %.026.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ao, %.critedge28.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.an, %bb.e ], [ %i.aw, %.critedge28.preheader.loopexit.i ] ; 3 uses
  %i.ap = icmp ult ptr %.0.lcssa.i, %i.c
  br i1 %i.ap, label %.lr.ph40.preheader.i, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit

.lr.ph40.preheader.i:                             ; preds = %.critedge28.preheader.i
  %.0.lcssa50.i = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.aq = zext i32 %.026.lcssa.i to i64
  %i.ar = add i32 %.026.lcssa.i, %i.k
  %i.as = trunc i64 %.0.lcssa50.i to i32
  %i.at = sub i32 %i.ar, %i.as
  br label %.lr.ph40.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.036.i = phi ptr [ %i.aw, %bb.f ], [ %i.an, %bb.e ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.036.i, align 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.i
  %.0.copyload.i29.i = load i64, ptr %i.au, align 1 ; 2 uses
  %i.av = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i29.i
  br i1 %i.av, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.036.i, i64 8 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.aw, %i.j
  br i1 %.not.i, label %.critedge28.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !40

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ax = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ay = xor i64 %.0.copyload.i29.i, %.0.copyload.i.i
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ay, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = lshr i32 %i.ba, 3
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit

.lr.ph40.i:                                       ; preds = %.critedge28.i, %.lr.ph40.preheader.i
  %indvars.iv48.i = phi i64 [ %i.aq, %.lr.ph40.preheader.i ], [ %indvars.iv.next49.i, %.critedge28.i ] ; 3 uses
  %.139.i = phi ptr [ %.0.lcssa.i, %.lr.ph40.preheader.i ], [ %i.bh, %.critedge28.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv48.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !7
  %i.bf = load i8, ptr %.139.i, align 1, !tbaa !7
  %i.bg = icmp eq i8 %i.be, %i.bf
  br i1 %i.bg, label %.critedge28.i, label %.critedge2.loopexit.split.loop.exit.i

.critedge28.i:                                    ; preds = %.lr.ph40.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.139.i, i64 1 ; 2 uses
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  %exitcond.not.i = icmp eq ptr %i.bh, %i.c
  br i1 %exitcond.not.i, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit, label %.lr.ph40.i, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i:            ; preds = %.lr.ph40.i
  %i.bi = trunc nuw i64 %indvars.iv48.i to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit

_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit: ; preds = %.critedge28.i, %.critedge28.preheader.i, %.critedge.i, %.critedge2.loopexit.split.loop.exit.i
  %.2.i = phi i32 [ %i.bc, %.critedge.i ], [ %.026.lcssa.i, %.critedge28.preheader.i ], [ %i.bi, %.critedge2.loopexit.split.loop.exit.i ], [ %i.at, %.critedge28.i ]
  %i.bj = add i32 %.2.i, 4
  br label %.preheader

bb.g:                                             ; preds = %bb.d
  %i.bk = mul i32 %i.aj, -1640531535
  %i.bl = lshr i32 %i.bk, 17
  %i.bm = and i32 %i.bl, %i.b
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %i.bn, %i.i
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !20
  %i.br = zext i16 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  store i16 %i.ai, ptr %i.bp, align 2, !tbaa !20
  %.0.copyload.i219 = load i32, ptr %i.bs, align 1
  %i.bt = icmp eq i32 %.0.copyload.i219, %i.aj
  br i1 %i.bt, label %bb.h, label %bb.c, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1177586, i64 4 ; 3 uses
  %.not34.i220 = icmp ugt ptr %i.bw, %i.j
  br i1 %.not34.i220, label %.critedge28.preheader.i231, label %.lr.ph.i221

.critedge28.preheader.loopexit.i230:              ; preds = %bb.i
  %i.bx = trunc nuw i64 %indvars.iv.next.i228 to i32
  br label %.critedge28.preheader.i231

.critedge28.preheader.i231:                       ; preds = %.critedge28.preheader.loopexit.i230, %bb.h
  %.026.lcssa.i232 = phi i32 [ 0, %bb.h ], [ %i.bx, %.critedge28.preheader.loopexit.i230 ] ; 3 uses
  %.0.lcssa.i233 = phi ptr [ %i.bw, %bb.h ], [ %i.cf, %.critedge28.preheader.loopexit.i230 ] ; 3 uses
  %i.by = icmp ult ptr %.0.lcssa.i233, %i.c
  br i1 %i.by, label %.lr.ph40.preheader.i234, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243

.lr.ph40.preheader.i234:                          ; preds = %.critedge28.preheader.i231
  %.0.lcssa50.i235 = ptrtoaddr ptr %.0.lcssa.i233 to i64
  %i.bz = zext i32 %.026.lcssa.i232 to i64
  %i.ca = add i32 %.026.lcssa.i232, %i.k
  %i.cb = trunc i64 %.0.lcssa50.i235 to i32
  %i.cc = sub i32 %i.ca, %i.cb
  br label %.lr.ph40.i236

.lr.ph.i221:                                      ; preds = %bb.h, %bb.i
  %indvars.iv.i222 = phi i64 [ %indvars.iv.next.i228, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %.036.i223 = phi ptr [ %i.cf, %bb.i ], [ %i.bw, %bb.h ] ; 2 uses
  %.0.copyload.i.i224 = load i64, ptr %.036.i223, align 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv.i222
  %.0.copyload.i29.i225 = load i64, ptr %i.cd, align 1 ; 2 uses
  %i.ce = icmp eq i64 %.0.copyload.i.i224, %.0.copyload.i29.i225
  br i1 %i.ce, label %bb.i, label %.critedge.i226

bb.i:                                             ; preds = %.lr.ph.i221
  %i.cf = getelementptr inbounds nuw i8, ptr %.036.i223, i64 8 ; 3 uses
  %indvars.iv.next.i228 = add nuw nsw i64 %indvars.iv.i222, 8 ; 2 uses
  %.not.i229 = icmp ugt ptr %i.cf, %i.j
  br i1 %.not.i229, label %.critedge28.preheader.loopexit.i230, label %.lr.ph.i221, !llvm.loop !40

.critedge.i226:                                   ; preds = %.lr.ph.i221
  %i.cg = trunc nuw nsw i64 %indvars.iv.i222 to i32
  %i.ch = xor i64 %.0.copyload.i29.i225, %.0.copyload.i.i224
  %i.ci = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = lshr i32 %i.cj, 3
  %i.cl = or disjoint i32 %i.ck, %i.cg
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243

.lr.ph40.i236:                                    ; preds = %.critedge28.i240, %.lr.ph40.preheader.i234
  %indvars.iv48.i237 = phi i64 [ %i.bz, %.lr.ph40.preheader.i234 ], [ %indvars.iv.next49.i241, %.critedge28.i240 ] ; 3 uses
  %.139.i238 = phi ptr [ %.0.lcssa.i233, %.lr.ph40.preheader.i234 ], [ %i.cq, %.critedge28.i240 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv48.i237
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !7
  %i.co = load i8, ptr %.139.i238, align 1, !tbaa !7
  %i.cp = icmp eq i8 %i.cn, %i.co
  br i1 %i.cp, label %.critedge28.i240, label %.critedge2.loopexit.split.loop.exit.i239

.critedge28.i240:                                 ; preds = %.lr.ph40.i236
  %i.cq = getelementptr inbounds nuw i8, ptr %.139.i238, i64 1 ; 2 uses
  %indvars.iv.next49.i241 = add nuw nsw i64 %indvars.iv48.i237, 1
  %exitcond.not.i242 = icmp eq ptr %i.cq, %i.c
  br i1 %exitcond.not.i242, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243, label %.lr.ph40.i236, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i239:         ; preds = %.lr.ph40.i236
  %i.cr = trunc nuw i64 %indvars.iv48.i237 to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243

_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243: ; preds = %.critedge28.i240, %.critedge28.preheader.i231, %.critedge.i226, %.critedge2.loopexit.split.loop.exit.i239
  %.2.i227 = phi i32 [ %i.cl, %.critedge.i226 ], [ %.026.lcssa.i232, %.critedge28.preheader.i231 ], [ %i.cr, %.critedge2.loopexit.split.loop.exit.i239 ], [ %i.cc, %.critedge28.i240 ]
  %i.cs = add i32 %.2.i227, 4                     ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.1177586, i64 1 ; 5 uses
  %.0.copyload.i244 = load i64, ptr %i.ct, align 1
  %i.cu = mul i64 %.0.copyload.i244, 58295818150454627
  %i.cv = lshr i64 %i.cu, 49
  %i.cw = and i64 %i.cv, %i.g
  %i.cx = add i64 %i.cw, %i.f
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !20
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.da ; 3 uses
  %.not34.i245 = icmp ugt ptr %i.ct, %i.j
  br i1 %.not34.i245, label %.critedge28.preheader.i256, label %.lr.ph.i246

.critedge28.preheader.loopexit.i255:              ; preds = %bb.j
  %i.dc = trunc nuw i64 %indvars.iv.next.i253 to i32
  br label %.critedge28.preheader.i256

.critedge28.preheader.i256:                       ; preds = %.critedge28.preheader.loopexit.i255, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243
  %.026.lcssa.i257 = phi i32 [ 0, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243 ], [ %i.dc, %.critedge28.preheader.loopexit.i255 ] ; 3 uses
  %.0.lcssa.i258 = phi ptr [ %i.ct, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243 ], [ %i.dk, %.critedge28.preheader.loopexit.i255 ] ; 3 uses
  %i.dd = icmp ult ptr %.0.lcssa.i258, %i.c
  br i1 %i.dd, label %.lr.ph40.preheader.i259, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268

.lr.ph40.preheader.i259:                          ; preds = %.critedge28.preheader.i256
  %.0.lcssa50.i260 = ptrtoaddr ptr %.0.lcssa.i258 to i64
  %i.de = zext i32 %.026.lcssa.i257 to i64
  %i.df = add i32 %.026.lcssa.i257, %i.k
  %i.dg = trunc i64 %.0.lcssa50.i260 to i32
  %i.dh = sub i32 %i.df, %i.dg
  br label %.lr.ph40.i261

.lr.ph.i246:                                      ; preds = %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243, %bb.j
  %indvars.iv.i247 = phi i64 [ %indvars.iv.next.i253, %bb.j ], [ 0, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243 ] ; 3 uses
  %.036.i248 = phi ptr [ %i.dk, %bb.j ], [ %i.ct, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243 ] ; 2 uses
  %.0.copyload.i.i249 = load i64, ptr %.036.i248, align 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv.i247
  %.0.copyload.i29.i250 = load i64, ptr %i.di, align 1 ; 2 uses
  %i.dj = icmp eq i64 %.0.copyload.i.i249, %.0.copyload.i29.i250
  br i1 %i.dj, label %bb.j, label %.critedge.i251

bb.j:                                             ; preds = %.lr.ph.i246
  %i.dk = getelementptr inbounds nuw i8, ptr %.036.i248, i64 8 ; 3 uses
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i247, 8 ; 2 uses
  %.not.i254 = icmp ugt ptr %i.dk, %i.j
  br i1 %.not.i254, label %.critedge28.preheader.loopexit.i255, label %.lr.ph.i246, !llvm.loop !40

.critedge.i251:                                   ; preds = %.lr.ph.i246
  %i.dl = trunc nuw nsw i64 %indvars.iv.i247 to i32
  %i.dm = xor i64 %.0.copyload.i29.i250, %.0.copyload.i.i249
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dm, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = lshr i32 %i.do, 3
  %i.dq = or disjoint i32 %i.dp, %i.dl
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268

.lr.ph40.i261:                                    ; preds = %.critedge28.i265, %.lr.ph40.preheader.i259
  %indvars.iv48.i262 = phi i64 [ %i.de, %.lr.ph40.preheader.i259 ], [ %indvars.iv.next49.i266, %.critedge28.i265 ] ; 3 uses
  %.139.i263 = phi ptr [ %.0.lcssa.i258, %.lr.ph40.preheader.i259 ], [ %i.dv, %.critedge28.i265 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv48.i262
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !7
  %i.dt = load i8, ptr %.139.i263, align 1, !tbaa !7
  %i.du = icmp eq i8 %i.ds, %i.dt
  br i1 %i.du, label %.critedge28.i265, label %.critedge2.loopexit.split.loop.exit.i264

.critedge28.i265:                                 ; preds = %.lr.ph40.i261
  %i.dv = getelementptr inbounds nuw i8, ptr %.139.i263, i64 1 ; 2 uses
  %indvars.iv.next49.i266 = add nuw nsw i64 %indvars.iv48.i262, 1
  %exitcond.not.i267 = icmp eq ptr %i.dv, %i.c
  br i1 %exitcond.not.i267, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268, label %.lr.ph40.i261, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i264:         ; preds = %.lr.ph40.i261
  %i.dw = trunc nuw i64 %indvars.iv48.i262 to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268

_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268: ; preds = %.critedge28.i265, %.critedge28.preheader.i256, %.critedge.i251, %.critedge2.loopexit.split.loop.exit.i264
  %.2.i252 = phi i32 [ %i.dq, %.critedge.i251 ], [ %.026.lcssa.i257, %.critedge28.preheader.i256 ], [ %i.dw, %.critedge2.loopexit.split.loop.exit.i264 ], [ %i.dh, %.critedge28.i265 ] ; 2 uses
  %i.dx = sext i32 %.2.i252 to i64
  %i.dy = zext i32 %i.cs to i64
  %i.dz = icmp ugt i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.k, label %.preheader

bb.k:                                             ; preds = %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268
  store i16 %i.ai, ptr %i.cy, align 2, !tbaa !20
  br label %.preheader

.preheader:                                       ; preds = %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit, %bb.k
  %.4205.ph = phi i32 [ %.2.i252, %bb.k ], [ %i.bj, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.cs, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268 ] ; 2 uses
  %.4196.ph = phi ptr [ %i.db, %bb.k ], [ %i.al, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.bu, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268 ] ; 3 uses
  %.4180.ph = phi ptr [ %i.ct, %bb.k ], [ %.1177586, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %.1177586, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268 ] ; 3 uses
  %i.ea = icmp ugt ptr %.4180.ph, %.0176591
  %i.eb = icmp ugt ptr %.4196.ph, %0
  %or.cond406 = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond406, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %.5181409 = phi ptr [ %i.ec, %bb.l ], [ %.4180.ph, %.preheader ] ; 2 uses
  %.5197408 = phi ptr [ %i.ee, %bb.l ], [ %.4196.ph, %.preheader ] ; 2 uses
  %.5206407 = phi i32 [ %i.eh, %bb.l ], [ %.4205.ph, %.preheader ] ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.5181409, i64 -1 ; 4 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !7
  %i.ee = getelementptr inbounds i8, ptr %.5197408, i64 -1 ; 4 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !7
  %i.eg = icmp eq i8 %i.ed, %i.ef
  br i1 %i.eg, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.eh = add i32 %.5206407, 1                    ; 2 uses
  %i.ei = icmp ugt ptr %i.ec, %.0176591
  %i.ej = icmp ugt ptr %i.ee, %0
  %or.cond = and i1 %i.ei, %i.ej
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %.lr.ph, %bb.l, %.preheader
  %.5206.lcssa = phi i32 [ %.4205.ph, %.preheader ], [ %i.eh, %bb.l ], [ %.5206407, %.lr.ph ]
  %.5197.lcssa = phi ptr [ %.4196.ph, %.preheader ], [ %i.ee, %bb.l ], [ %.5197408, %.lr.ph ]
  %.5181.lcssa = phi ptr [ %.4180.ph, %.preheader ], [ %i.ec, %bb.l ], [ %.5181409, %.lr.ph ] ; 4 uses
  %i.ek = ptrtoint ptr %.5181.lcssa to i64        ; 2 uses
  %i.el = sub i64 %i.ek, %i.h
  %i.em = trunc i64 %i.el to i16                  ; 2 uses
  %i.en = add i16 %i.em, 1                        ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.5181.lcssa, i64 1 ; 2 uses
  %.0.copyload.i270 = load i64, ptr %i.eo, align 1
  %i.ep = mul i64 %.0.copyload.i270, 58295818150454627
  %i.eq = lshr i64 %i.ep, 49
  %i.er = and i64 %i.eq, %i.g
  %i.es = add i64 %i.er, %i.f
  %i.et = inttoptr i64 %i.es to ptr
  store i16 %i.en, ptr %i.et, align 2, !tbaa !20
  %i.eu = add i16 %i.em, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %.5181.lcssa, i64 2
  %.0.copyload.i271 = load i64, ptr %i.ev, align 1
  %i.ew = mul i64 %.0.copyload.i271, 58295818150454627
  %i.ex = lshr i64 %i.ew, 49
  %i.ey = and i64 %i.ex, %i.g
  %i.ez = add i64 %i.ey, %i.f
  %i.fa = inttoptr i64 %i.ez to ptr
  store i16 %i.eu, ptr %i.fa, align 2, !tbaa !20
  %.0.copyload.i272 = load i32, ptr %i.eo, align 1
  %i.fb = mul i32 %.0.copyload.i272, -1640531535
  %i.fc = lshr i32 %i.fb, 17
  %i.fd = and i32 %i.fc, %i.b
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = add i64 %i.fe, %i.i
  %i.fg = inttoptr i64 %i.ff to ptr
  store i16 %i.en, ptr %i.fg, align 2, !tbaa !20
  %i.fh = ptrtoint ptr %.0176591 to i64
  %i.fi = sub i64 %i.ek, %i.fh                    ; 4 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %bb.m, label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.m:                                             ; preds = %.critedge
  %i.fk = trunc i64 %i.fi to i32                  ; 3 uses
  %i.fl = add nsw i32 %i.fk, -1                   ; 4 uses
  %i.fm = icmp slt i32 %i.fk, 17
  br i1 %i.fm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.tr37.i = trunc i32 %i.fl to i8
  %i.fn = shl i8 %.tr37.i, 2
  %i.fo = getelementptr inbounds nuw i8, ptr %.0175593, i64 1 ; 2 uses
  store i8 %i.fn, ptr %.0175593, align 1, !tbaa !7
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fo, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0176591, i64 16, i1 false)
  %sext = shl i64 %i.fi, 32
  %i.fp = ashr exact i64 %sext, 32
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 %i.fp
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.o:                                             ; preds = %bb.m
  %i.fr = icmp samesign ult i32 %i.fk, 61
  br i1 %i.fr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.tr.i = trunc nuw nsw i32 %i.fl to i8
  %i.fs = shl nuw i8 %.tr.i, 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ft = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fl, i1 true)
  %i.fu = lshr i32 %i.ft, 3
  %i.fv = xor i32 %i.fu, 3                        ; 2 uses
  %.tr38.i = trunc nuw nsw i32 %i.fv to i8
  %i.fw = shl nuw nsw i8 %.tr38.i, 2
  %i.fx = or disjoint i8 %i.fw, -16
  %i.fy = getelementptr inbounds nuw i8, ptr %.0175593, i64 1 ; 2 uses
  store i32 %i.fl, ptr %i.fy, align 1
  %i.fz = zext nneg i32 %i.fv to i64
  %i.ga = getelementptr i8, ptr %i.fy, i64 %i.fz
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i = phi i8 [ %i.fs, %bb.p ], [ %i.fx, %bb.q ]
  %.pn.i = phi ptr [ %.0175593, %bb.p ], [ %i.ga, %bb.q ]
  store i8 %.sink.i, ptr %.0175593, align 1, !tbaa !7
  %.032.i = getelementptr i8, ptr %.pn.i, i64 1   ; 2 uses
  %i.gb = and i64 %i.fi, 2147483647
  %i.gc = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.gb ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.031.i = phi ptr [ %.032.i, %bb.r ], [ %i.gd, %bb.s ] ; 2 uses
  %.030.i = phi ptr [ %.0176591, %bb.r ], [ %i.ge, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.031.i, ptr noundef nonnull align 1 dereferenceable(16) %.030.i, i64 16, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %.031.i, i64 16 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.gf = icmp ult ptr %i.gd, %i.gc
  br i1 %i.gf, label %bb.s, label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !25

_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.s, %bb.n, %.critedge
  %.2.ph = phi ptr [ %.0175593, %.critedge ], [ %i.fq, %bb.n ], [ %i.gc, %bb.s ]
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit: ; preds = %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309
  %.6207 = phi i32 [ %.8209, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309 ], [ %.5206.lcssa, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %.6198 = phi ptr [ %.8200, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309 ], [ %.5197.lcssa, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ]
  %.6182 = phi ptr [ %i.gh, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309 ], [ %.5181.lcssa, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 2 uses
  %.2 = phi ptr [ %.3, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309 ], [ %.2.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %i.gg = zext i32 %.6207 to i64                  ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.6182, i64 %i.gg ; 17 uses
  %i.gi = ptrtoint ptr %.6182 to i64
  %i.gj = ptrtoint ptr %.6198 to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 9 uses
  %i.gl = icmp ult i32 %.6207, 12
  br i1 %i.gl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
end_hunk_1
begin_hunk_2_@_ZN13duckdb_snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i:bb.a
  %xtraiter = and i64 %i.he, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !28

.prol.preheader:                                  ; preds = %.lr.ph.i276, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.hg, %.prol.preheader ], [ %i.gg, %.lr.ph.i276 ]
  %.01522.i.prol = phi ptr [ %i.hf, %.prol.preheader ], [ %.2, %.lr.ph.i276 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i276 ]
  store i32 %i.hb, ptr %.01522.i.prol, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.hg = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !32, !llvm.loop !43

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i276
  %.023.i.unr = phi i64 [ %i.gg, %.lr.ph.i276 ], [ %i.hg, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.2, %.lr.ph.i276 ], [ %i.hf, %.prol.preheader ]
  %.lcssa623.unr = phi ptr [ poison, %.lr.ph.i276 ], [ %i.hf, %.prol.preheader ]
  %.lcssa622.unr = phi i64 [ poison, %.lr.ph.i276 ], [ %i.hg, %.prol.preheader ]
  %i.hh = icmp ult i64 %i.hc, 448
  br i1 %i.hh, label %._crit_edge.i, label %.lr.ph.i276.new, !prof !23

.lr.ph.i276.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i276.new
  %.023.i = phi i64 [ %i.hq, %.lr.ph.i276.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.hp, %.lr.ph.i276.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.hb, ptr %.01522.i, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.hb, ptr %i.hi, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.hb, ptr %i.hj, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.hb, ptr %i.hk, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.hb, ptr %i.hl, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.hb, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.hb, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.hb, ptr %i.ho, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.hq = add i64 %.023.i, -512                   ; 3 uses
  %i.hr = icmp ugt i64 %i.hq, 67
  br i1 %i.hr, label %.lr.ph.i276.new, label %._crit_edge.i, !prof !35, !llvm.loop !44

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i276.new, %bb.u
  %.015.lcssa.i = phi ptr [ %.2, %bb.u ], [ %.lcssa623.unr, %.prol.loopexit ], [ %i.hp, %.lr.ph.i276.new ] ; 5 uses
  %.0.lcssa.i273 = phi i64 [ %i.gg, %bb.u ], [ %.lcssa622.unr, %.prol.loopexit ], [ %i.hq, %.lr.ph.i276.new ] ; 5 uses
  %i.hs = icmp samesign ugt i64 %.0.lcssa.i273, 64
  br i1 %i.hs, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %._crit_edge.i
  %.tr.i275 = trunc i64 %i.gk to i32              ; 2 uses
  %i.ht = shl i32 %.tr.i275, 8
  %i.hu = or disjoint i32 %i.ht, 238
  store i32 %i.hu, ptr %.015.lcssa.i, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.hw = add nsw i64 %.0.lcssa.i273, -60
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  %i.hx = icmp samesign ult i64 %.0.lcssa.i273, 12
  br i1 %i.hx, label %._crit_edge26.i, label %bb.x

._crit_edge26.i:                                  ; preds = %bb.v
  %.pre.i = trunc i64 %i.gk to i32
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge26.i, %.thread.i
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i275, %.thread.i ]
  %.120.i = phi i64 [ %.0.lcssa.i273, %._crit_edge26.i ], [ %i.hw, %.thread.i ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.hv, %.thread.i ] ; 2 uses
  %i.hy = shl nuw nsw i64 %.120.i, 2
  %i.hz = shl i64 %i.gk, 8
  %i.ia = add nuw i64 %i.hy, %i.hz
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = lshr i32 %.pre-phi.i, 3
  %i.id = and i32 %i.ic, 224
  %i.ie = add nsw i32 %i.id, -15
  %i.if = icmp ult i64 %i.gk, 2048                ; 2 uses
  %i.ig = select i1 %i.if, i32 %i.ie, i32 -2
  %i.ih = add i32 %i.ig, %i.ib
  store i32 %i.ih, ptr %.11619.i, align 1
  %i.ii = select i1 %i.if, i64 2, i64 3
  %i.ij = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.ii
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.x:                                             ; preds = %bb.v
  %i.ik = shl nuw nsw i64 %.0.lcssa.i273, 2
  %i.il = shl i64 %i.gk, 8
  %i.im = add i64 %i.il, 4294967294
  %i.in = add i64 %i.im, %i.ik
  %i.io = trunc i64 %i.in to i32
  store i32 %i.io, ptr %.015.lcssa.i, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit:  ; preds = %bb.x, %bb.w, %bb.t
  %.3 = phi ptr [ %i.gy, %bb.t ], [ %i.ij, %bb.w ], [ %i.ip, %bb.x ] ; 4 uses
  %.not = icmp ult ptr %i.gh, %i.e
  br i1 %.not, label %bb.y, label %.thread356, !prof !19

bb.y:                                             ; preds = %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.iq = ptrtoint ptr %i.gh to i64
  %i.ir = sub i64 %i.iq, %i.h                     ; 2 uses
  %i.is = icmp sgt i64 %i.ir, 7
  %i.it = trunc i64 %i.ir to i16                  ; 7 uses
  br i1 %i.is, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %i.iu = add i16 %i.it, -7
  %i.iv = getelementptr inbounds i8, ptr %i.gh, i64 -7
  %.0.copyload.i277 = load i64, ptr %i.iv, align 1
  %i.iw = mul i64 %.0.copyload.i277, 58295818150454627
  %i.ix = lshr i64 %i.iw, 49
  %i.iy = and i64 %i.ix, %i.g
  %i.iz = add i64 %i.iy, %i.f
  %i.ja = inttoptr i64 %i.iz to ptr
  store i16 %i.iu, ptr %i.ja, align 2, !tbaa !20
  %i.jb = add i16 %i.it, -4
  %i.jc = getelementptr inbounds i8, ptr %i.gh, i64 -4
  %.0.copyload.i278 = load i64, ptr %i.jc, align 1
  %i.jd = mul i64 %.0.copyload.i278, 58295818150454627
  %i.je = lshr i64 %i.jd, 49
  %i.jf = and i64 %i.je, %i.g
  %i.jg = add i64 %i.jf, %i.f
  %i.jh = inttoptr i64 %i.jg to ptr
  store i16 %i.jb, ptr %i.jh, align 2, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.z
  %i.ji = add i16 %i.it, -3
  %i.jj = getelementptr inbounds i8, ptr %i.gh, i64 -3
  %.0.copyload.i279 = load i64, ptr %i.jj, align 1
  %i.jk = mul i64 %.0.copyload.i279, 58295818150454627
  %i.jl = lshr i64 %i.jk, 49
  %i.jm = and i64 %i.jl, %i.g
  %i.jn = add i64 %i.jm, %i.f
  %i.jo = inttoptr i64 %i.jn to ptr
  store i16 %i.ji, ptr %i.jo, align 2, !tbaa !20
  %i.jp = add i16 %i.it, -2                       ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %i.gh, i64 -2 ; 2 uses
  %.0.copyload.i280 = load i64, ptr %i.jq, align 1
  %i.jr = mul i64 %.0.copyload.i280, 58295818150454627
  %i.js = lshr i64 %i.jr, 49
  %i.jt = and i64 %i.js, %i.g
  %i.ju = add i64 %i.jt, %i.f
  %i.jv = inttoptr i64 %i.ju to ptr
  store i16 %i.jp, ptr %i.jv, align 2, !tbaa !20
  %.0.copyload.i281 = load i32, ptr %i.jq, align 1
  %i.jw = mul i32 %.0.copyload.i281, -1640531535
  %i.jx = lshr i32 %i.jw, 17
  %i.jy = and i32 %i.jx, %i.b
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = add i64 %i.jz, %i.i
  %i.kb = inttoptr i64 %i.ka to ptr
  store i16 %i.jp, ptr %i.kb, align 2, !tbaa !20
  %i.kc = add i16 %i.it, -1
  %i.kd = getelementptr inbounds i8, ptr %i.gh, i64 -1
  %.0.copyload.i282 = load i32, ptr %i.kd, align 1
  %i.ke = mul i32 %.0.copyload.i282, -1640531535
  %i.kf = lshr i32 %i.ke, 17
  %i.kg = and i32 %i.kf, %i.b
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = add i64 %i.kh, %i.i
  %i.kj = inttoptr i64 %i.ki to ptr
  store i16 %i.kc, ptr %i.kj, align 2, !tbaa !20
  %.0.copyload.i283 = load i64, ptr %i.gh, align 1
  %i.kk = mul i64 %.0.copyload.i283, 58295818150454627
  %i.kl = lshr i64 %i.kk, 49
  %i.km = and i64 %i.kl, %i.g
  %i.kn = add i64 %i.km, %i.f
  %i.ko = inttoptr i64 %i.kn to ptr               ; 2 uses
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !20
  %i.kq = zext i16 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 %i.kq ; 6 uses
  store i16 %i.it, ptr %i.ko, align 2, !tbaa !20
  %.0.copyload.i284 = load i32, ptr %i.gh, align 1 ; 2 uses
  %.0.copyload.i285 = load i32, ptr %i.kr, align 1
  %i.ks = icmp eq i32 %.0.copyload.i284, %.0.copyload.i285
  br i1 %i.ks, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 4 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 3 uses
  %.not34.i286 = icmp ugt ptr %i.ku, %i.j
  br i1 %.not34.i286, label %.critedge28.preheader.i297, label %.lr.ph.i287

.critedge28.preheader.loopexit.i296:              ; preds = %bb.ab
  %i.kv = trunc nuw i64 %indvars.iv.next.i294 to i32
  br label %.critedge28.preheader.i297

.critedge28.preheader.i297:                       ; preds = %.critedge28.preheader.loopexit.i296, %bb.aa
  %.026.lcssa.i298 = phi i32 [ 0, %bb.aa ], [ %i.kv, %.critedge28.preheader.loopexit.i296 ] ; 3 uses
  %.0.lcssa.i299 = phi ptr [ %i.ku, %bb.aa ], [ %i.ld, %.critedge28.preheader.loopexit.i296 ] ; 3 uses
  %i.kw = icmp ult ptr %.0.lcssa.i299, %i.c
  br i1 %i.kw, label %.lr.ph40.preheader.i300, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

.lr.ph40.preheader.i300:                          ; preds = %.critedge28.preheader.i297
  %.0.lcssa50.i301 = ptrtoaddr ptr %.0.lcssa.i299 to i64
  %i.kx = zext i32 %.026.lcssa.i298 to i64
  %i.ky = add i32 %.026.lcssa.i298, %i.k
  %i.kz = trunc i64 %.0.lcssa50.i301 to i32
  %i.la = sub i32 %i.ky, %i.kz
  br label %.lr.ph40.i302

.lr.ph.i287:                                      ; preds = %bb.aa, %bb.ab
  %indvars.iv.i288 = phi i64 [ %indvars.iv.next.i294, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %.036.i289 = phi ptr [ %i.ld, %bb.ab ], [ %i.ku, %bb.aa ] ; 2 uses
  %.0.copyload.i.i290 = load i64, ptr %.036.i289, align 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv.i288
  %.0.copyload.i29.i291 = load i64, ptr %i.lb, align 1 ; 2 uses
  %i.lc = icmp eq i64 %.0.copyload.i.i290, %.0.copyload.i29.i291
  br i1 %i.lc, label %bb.ab, label %.critedge.i292

bb.ab:                                            ; preds = %.lr.ph.i287
  %i.ld = getelementptr inbounds nuw i8, ptr %.036.i289, i64 8 ; 3 uses
  %indvars.iv.next.i294 = add nuw nsw i64 %indvars.iv.i288, 8 ; 2 uses
  %.not.i295 = icmp ugt ptr %i.ld, %i.j
  br i1 %.not.i295, label %.critedge28.preheader.loopexit.i296, label %.lr.ph.i287, !llvm.loop !40

.critedge.i292:                                   ; preds = %.lr.ph.i287
  %i.le = trunc nuw nsw i64 %indvars.iv.i288 to i32
  %i.lf = xor i64 %.0.copyload.i29.i291, %.0.copyload.i.i290
  %i.lg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lf, i1 true)
  %i.lh = trunc nuw nsw i64 %i.lg to i32
  %i.li = lshr i32 %i.lh, 3
  %i.lj = or disjoint i32 %i.li, %i.le
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

.lr.ph40.i302:                                    ; preds = %.critedge28.i306, %.lr.ph40.preheader.i300
  %indvars.iv48.i303 = phi i64 [ %i.kx, %.lr.ph40.preheader.i300 ], [ %indvars.iv.next49.i307, %.critedge28.i306 ] ; 3 uses
  %.139.i304 = phi ptr [ %.0.lcssa.i299, %.lr.ph40.preheader.i300 ], [ %i.lo, %.critedge28.i306 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv48.i303
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !7
  %i.lm = load i8, ptr %.139.i304, align 1, !tbaa !7
  %i.ln = icmp eq i8 %i.ll, %i.lm
  br i1 %i.ln, label %.critedge28.i306, label %.critedge2.loopexit.split.loop.exit.i305

.critedge28.i306:                                 ; preds = %.lr.ph40.i302
  %i.lo = getelementptr inbounds nuw i8, ptr %.139.i304, i64 1 ; 2 uses
  %indvars.iv.next49.i307 = add nuw nsw i64 %indvars.iv48.i303, 1
  %exitcond.not.i308 = icmp eq ptr %i.lo, %i.c
  br i1 %exitcond.not.i308, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309, label %.lr.ph40.i302, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i305:         ; preds = %.lr.ph40.i302
  %i.lp = trunc nuw i64 %indvars.iv48.i303 to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

bb.ac:                                            ; preds = %._crit_edge
  %i.lq = mul i32 %.0.copyload.i284, -1640531535
  %i.lr = lshr i32 %i.lq, 17
  %i.ls = and i32 %i.lr, %i.b
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = add i64 %i.lt, %i.i
  %i.lv = inttoptr i64 %i.lu to ptr               ; 2 uses
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !20
  %i.lx = zext i16 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 %i.lx ; 6 uses
  store i16 %i.it, ptr %i.lv, align 2, !tbaa !20
  %.0.copyload.i311 = load i32, ptr %i.gh, align 1
  %.0.copyload.i312 = load i32, ptr %i.ly, align 1
  %i.lz = icmp eq i32 %.0.copyload.i311, %.0.copyload.i312
  br i1 %i.lz, label %bb.ad, label %.loopexit.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 4 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 3 uses
  %.not34.i313 = icmp ugt ptr %i.mb, %i.j
  br i1 %.not34.i313, label %.critedge28.preheader.i324, label %.lr.ph.i314

.critedge28.preheader.loopexit.i323:              ; preds = %bb.ae
  %i.mc = trunc nuw i64 %indvars.iv.next.i321 to i32
  br label %.critedge28.preheader.i324

.critedge28.preheader.i324:                       ; preds = %.critedge28.preheader.loopexit.i323, %bb.ad
  %.026.lcssa.i325 = phi i32 [ 0, %bb.ad ], [ %i.mc, %.critedge28.preheader.loopexit.i323 ] ; 3 uses
  %.0.lcssa.i326 = phi ptr [ %i.mb, %bb.ad ], [ %i.mk, %.critedge28.preheader.loopexit.i323 ] ; 3 uses
  %i.md = icmp ult ptr %.0.lcssa.i326, %i.c
  br i1 %i.md, label %.lr.ph40.preheader.i327, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

.lr.ph40.preheader.i327:                          ; preds = %.critedge28.preheader.i324
  %.0.lcssa50.i328 = ptrtoaddr ptr %.0.lcssa.i326 to i64
  %i.me = zext i32 %.026.lcssa.i325 to i64
  %i.mf = add i32 %.026.lcssa.i325, %i.k
  %i.mg = trunc i64 %.0.lcssa50.i328 to i32
  %i.mh = sub i32 %i.mf, %i.mg
  br label %.lr.ph40.i329

.lr.ph.i314:                                      ; preds = %bb.ad, %bb.ae
  %indvars.iv.i315 = phi i64 [ %indvars.iv.next.i321, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %.036.i316 = phi ptr [ %i.mk, %bb.ae ], [ %i.mb, %bb.ad ] ; 2 uses
  %.0.copyload.i.i317 = load i64, ptr %.036.i316, align 1 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 %indvars.iv.i315
  %.0.copyload.i29.i318 = load i64, ptr %i.mi, align 1 ; 2 uses
  %i.mj = icmp eq i64 %.0.copyload.i.i317, %.0.copyload.i29.i318
  br i1 %i.mj, label %bb.ae, label %.critedge.i319

bb.ae:                                            ; preds = %.lr.ph.i314
  %i.mk = getelementptr inbounds nuw i8, ptr %.036.i316, i64 8 ; 3 uses
  %indvars.iv.next.i321 = add nuw nsw i64 %indvars.iv.i315, 8 ; 2 uses
  %.not.i322 = icmp ugt ptr %i.mk, %i.j
  br i1 %.not.i322, label %.critedge28.preheader.loopexit.i323, label %.lr.ph.i314, !llvm.loop !40

.critedge.i319:                                   ; preds = %.lr.ph.i314
  %i.ml = trunc nuw nsw i64 %indvars.iv.i315 to i32
  %i.mm = xor i64 %.0.copyload.i29.i318, %.0.copyload.i.i317
  %i.mn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mm, i1 true)
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %i.mp = lshr i32 %i.mo, 3
  %i.mq = or disjoint i32 %i.mp, %i.ml
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

.lr.ph40.i329:                                    ; preds = %.critedge28.i333, %.lr.ph40.preheader.i327
  %indvars.iv48.i330 = phi i64 [ %i.me, %.lr.ph40.preheader.i327 ], [ %indvars.iv.next49.i334, %.critedge28.i333 ] ; 3 uses
  %.139.i331 = phi ptr [ %.0.lcssa.i326, %.lr.ph40.preheader.i327 ], [ %i.mv, %.critedge28.i333 ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ma, i64 %indvars.iv48.i330
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !7
  %i.mt = load i8, ptr %.139.i331, align 1, !tbaa !7
  %i.mu = icmp eq i8 %i.ms, %i.mt
  br i1 %i.mu, label %.critedge28.i333, label %.critedge2.loopexit.split.loop.exit.i332

.critedge28.i333:                                 ; preds = %.lr.ph40.i329
  %i.mv = getelementptr inbounds nuw i8, ptr %.139.i331, i64 1 ; 2 uses
  %indvars.iv.next49.i334 = add nuw nsw i64 %indvars.iv48.i330, 1
  %exitcond.not.i335 = icmp eq ptr %i.mv, %i.c
  br i1 %exitcond.not.i335, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309, label %.lr.ph40.i329, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i332:         ; preds = %.lr.ph40.i329
  %i.mw = trunc nuw i64 %indvars.iv48.i330 to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309: ; preds = %.critedge28.i333, %.critedge28.i306, %.critedge2.loopexit.split.loop.exit.i332, %.critedge.i319, %.critedge28.preheader.i324, %.critedge2.loopexit.split.loop.exit.i305, %.critedge.i292, %.critedge28.preheader.i297
  %.8209.in = phi i32 [ %i.la, %.critedge28.i306 ], [ %i.lj, %.critedge.i292 ], [ %.026.lcssa.i298, %.critedge28.preheader.i297 ], [ %i.lp, %.critedge2.loopexit.split.loop.exit.i305 ], [ %i.mq, %.critedge.i319 ], [ %.026.lcssa.i325, %.critedge28.preheader.i324 ], [ %i.mw, %.critedge2.loopexit.split.loop.exit.i332 ], [ %i.mh, %.critedge28.i333 ]
  %.8200 = phi ptr [ %i.kr, %.critedge28.i306 ], [ %i.kr, %.critedge.i292 ], [ %i.kr, %.critedge28.preheader.i297 ], [ %i.kr, %.critedge2.loopexit.split.loop.exit.i305 ], [ %i.ly, %.critedge.i319 ], [ %i.ly, %.critedge28.preheader.i324 ], [ %i.ly, %.critedge2.loopexit.split.loop.exit.i332 ], [ %i.ly, %.critedge28.i333 ]
  %.8209 = add i32 %.8209.in, 4
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

.thread356:                                       ; preds = %.loopexit.loopexit, %bb.c, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.b, %bb.a
  %.8 = phi ptr [ %.0176591, %bb.c ], [ %0, %bb.a ], [ %i.gh, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %0, %bb.b ], [ %i.gh, %.loopexit.loopexit ] ; 3 uses
  %.5 = phi ptr [ %.0175593, %bb.c ], [ %2, %bb.a ], [ %.3, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %2, %bb.b ], [ %.3, %.loopexit.loopexit ] ; 4 uses
  %i.mx = icmp ult ptr %.8, %i.c
  br i1 %i.mx, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.thread356
  %i.my = ptrtoint ptr %i.c to i64
  %i.mz = ptrtoint ptr %.8 to i64
  %i.na = sub i64 %i.my, %i.mz                    ; 2 uses
  %i.nb = trunc i64 %i.na to i32                  ; 2 uses
  %i.nc = add nsw i32 %i.nb, -1                   ; 3 uses
  %i.nd = icmp slt i32 %i.nb, 61
  br i1 %i.nd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.tr.i340 = trunc i32 %i.nc to i8
  %i.ne = shl i8 %.tr.i340, 2
  br label %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ah:                                            ; preds = %bb.af
  %i.nf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nc, i1 true)
  %i.ng = lshr i32 %i.nf, 3
  %i.nh = xor i32 %i.ng, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.nh to i8
  %i.ni = shl nuw nsw i8 %.tr16.i, 2
  %i.nj = or disjoint i8 %i.ni, -16
  %i.nk = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  store i32 %i.nc, ptr %i.nk, align 1
  %i.nl = zext nneg i32 %i.nh to i64
  %i.nm = getelementptr i8, ptr %i.nk, i64 %i.nl
  br label %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit: ; preds = %bb.ag, %bb.ah
  %.sink.i337 = phi i8 [ %i.ne, %bb.ag ], [ %i.nj, %bb.ah ]
  %.pn.i338 = phi ptr [ %.5, %bb.ag ], [ %i.nm, %bb.ah ]
  store i8 %.sink.i337, ptr %.5, align 1, !tbaa !7
  %.0.i339 = getelementptr i8, ptr %.pn.i338, i64 1 ; 2 uses
  %sext363 = shl i64 %i.na, 32
  %i.nn = ashr exact i64 %sext363, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i339, ptr readonly align 1 %.8, i64 %i.nn, i1 false)
  %i.no = getelementptr inbounds i8, ptr %.0.i339, i64 %i.nn
  br label %bb.ai

bb.ai:                                            ; preds = %.thread356, %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0 = phi ptr [ %.5, %.thread356 ], [ %i.no, %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN13duckdb_snappy9MemCopy64EPcPKvm(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = icmp ugt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN13duckdb_snappy9MemCopy64ElPKvm(i64 noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN13duckdb_snappy13ClearDeferredEPPKvPmPh(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2) local_unnamed_addr #11 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !45
  store i64 0, ptr %1, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN13duckdb_snappy12DeferMemCopyEPPKvPmS1_m(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !45
  store i64 %3, ptr %1, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a) ; 2 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.i, align 8, !tbaa !52
  %i.v = icmp eq i64 %i.t, 0                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = zext i1 %i.v to i8
  store i8 %i.x, ptr %i.w, align 4, !tbaa !55
  br i1 %i.v, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t ; 2 uses
  store ptr %i.y, ptr %i.e, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.z = phi ptr [ %i.y, %bb.c ], [ %i.f, %bb.a ]
  %.029 = phi ptr [ %i.s, %bb.c ], [ %i.d, %bb.a ] ; 5 uses
  %i.aa = load i8, ptr %.029, align 1, !tbaa !7   ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = and i32 %i.ab, 3
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = icmp ugt i8 %i.aa, -17
  %or.cond.i = and i1 %i.ae, %i.ad
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN13duckdb_snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l:bb.a
  %.not51 = icmp eq i64 %.197171, 0
  br i1 %.not51, label %.thread152, label %bb.af

bb.af:                                            ; preds = %.thread140
  %i.ja = getelementptr inbounds i8, ptr %3, i64 %.1108177 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ja, ptr noundef nonnull readonly align 1 dereferenceable(32) %.1101174, i64 32, i1 false)
  %i.jb = icmp samesign ugt i64 %.197171, 32
  br i1 %i.jb, label %bb.ag, label %_ZN13duckdb_snappy9MemCopy64EPcPKvm.exit61, !prof !22

bb.ag:                                            ; preds = %bb.af
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jd = getelementptr inbounds nuw i8, ptr %.1101174, i64 32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jc, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.jd, i64 32, i1 false)
  br label %_ZN13duckdb_snappy9MemCopy64EPcPKvm.exit61

_ZN13duckdb_snappy9MemCopy64EPcPKvm.exit61:       ; preds = %bb.af, %bb.ag
  %i.je = add i64 %.197171, %.1108177
  br label %.thread152

.thread152:                                       ; preds = %.thread140.thread, %bb.a, %_ZN13duckdb_snappy9MemCopy64EPcPKvm.exit61, %.thread140
  %.4118158 = phi ptr [ %i.iz, %.thread140 ], [ %i.iz, %_ZN13duckdb_snappy9MemCopy64EPcPKvm.exit61 ], [ %0, %bb.a ], [ %i.iy, %.thread140.thread ]
  %.7 = phi i64 [ %.1108177, %.thread140 ], [ %i.je, %_ZN13duckdb_snappy9MemCopy64EPcPKvm.exit61 ], [ %2, %bb.a ], [ %.lcssa, %.thread140.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.4118158, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.7, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy17SnappyIOVecWriter13TryFastAppendEPKcmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %3, 17
  %i.g = icmp ugt i64 %2, 20
  %or.cond = and i1 %i.g, %i.f
  %i.h = icmp ugt i64 %i.e, 15
  %or.cond3 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %3
  store ptr %i.o, ptr %i.l, align 8, !tbaa !70
  %i.p = load i64, ptr %i.i, align 8, !tbaa !71
  %i.q = sub i64 %i.p, %3
  store i64 %i.q, ptr %i.i, align 8, !tbaa !71
  %i.r = load i64, ptr %i.c, align 8, !tbaa !72
  %i.s = add i64 %i.r, %3
  store i64 %i.s, ptr %i.c, align 8, !tbaa !72
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  %i.c = add i64 %i.b, %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !73
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not15.i = icmp eq i64 %2, 0
  br i1 %.not15.i, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %i.j = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.w, %bb.f ] ; 2 uses
  %.0917.i = phi ptr [ %1, %.lr.ph.i ], [ %i.z, %bb.f ] ; 2 uses
  %storemerge16.i = phi i64 [ %2, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.c
  %.pre22.i = load ptr, ptr %i.i, align 8, !tbaa !70
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !63
  %.not11.i = icmp ult ptr %i.m, %i.n
  br i1 %.not11.i, label %bb.e, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.g, align 8, !tbaa !66
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !67   ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge21.i
  %i.r = phi ptr [ %i.o, %bb.e ], [ %.pre22.i, %._crit_edge21.i ]
  %i.s = phi i64 [ %i.q, %bb.e ], [ %i.j, %._crit_edge21.i ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %storemerge16.i) ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.0917.i, i64 %.sroa.speculated.i, i1 false)
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.speculated.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !70
  %i.v = load i64, ptr %i.h, align 8, !tbaa !71
  %i.w = sub i64 %i.v, %.sroa.speculated.i        ; 2 uses
  store i64 %i.w, ptr %i.h, align 8, !tbaa !71
  %i.x = load i64, ptr %i.a, align 8, !tbaa !72
  %i.y = add i64 %i.x, %.sroa.speculated.i
  store i64 %i.y, ptr %i.a, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %.0917.i, i64 %.sroa.speculated.i
  %i.aa = sub i64 %storemerge16.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.c, !llvm.loop !136

_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit: ; preds = %bb.f, %bb.d, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %.not = icmp ult i64 %i.a, %i.c
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !73
  %i.f = sub i64 %i.e, %i.c
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !71   ; 3 uses
  %i.n = sub i64 %i.k, %i.m
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.03384 = phi i64 [ %i.s, %bb.d ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  %.03983 = phi ptr [ %i.q, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %.04482 = phi i64 [ %i.p, %bb.d ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.not51 = icmp ult i64 %.03384, %.04482
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = sub nuw i64 %.03384, %.04482
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.p = sub nuw i64 %.04482, %.03384             ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.03983, i64 -16 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.03983, i64 -8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !69   ; 2 uses
  %.not50 = icmp eq i64 %i.p, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph, !llvm.loop !144

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.03979 = phi ptr [ %.03983, %bb.c ], [ %i.q, %bb.d ]
  %.134 = phi i64 [ %i.o, %bb.c ], [ %i.s, %bb.d ]
  %.not52101 = icmp eq i64 %2, 0
  br i1 %.not52101, label %.thread, label %.lr.ph86.lr.ph

.lr.ph86.lr.ph:                                   ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  br label %.lr.ph86.split

.lr.ph86.split:                                   ; preds = %.outer, %.lr.ph86.lr.ph
  %.pre.i129 = phi i64 [ %i.m, %.lr.ph86.lr.ph ], [ %.pre.i130, %.outer ]
  %.promoted100 = phi i64 [ %i.m, %.lr.ph86.lr.ph ], [ %.promoted100123, %.outer ] ; 2 uses
  %.235.ph105 = phi i64 [ %.134, %.lr.ph86.lr.ph ], [ %.538, %.outer ] ; 7 uses
  %.140.ph103 = phi ptr [ %.03979, %.lr.ph86.lr.ph ], [ %.342, %.outer ] ; 7 uses
  %.0.ph102 = phi i64 [ %2, %.lr.ph86.lr.ph ], [ %.2, %.outer ] ; 4 uses
  %.promoted = load ptr, ptr %i.h, align 8, !tbaa !66 ; 2 uses
  %.not5398 = icmp eq ptr %.140.ph103, %.promoted
  br i1 %.not5398, label %.lr.ph99, label %.split.us

.split.us:                                        ; preds = %bb.v, %.lr.ph86.split
  %.pre.i = phi i64 [ %.pre.i129, %.lr.ph86.split ], [ %i.eh, %bb.v ] ; 2 uses
  %.promoted100121 = phi i64 [ %.promoted100, %.lr.ph86.split ], [ %i.eh, %bb.v ]
  %i.u = getelementptr inbounds nuw i8, ptr %.140.ph103, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !69   ; 2 uses
  %i.w = sub i64 %i.v, %.235.ph105                ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.0.ph102, i64 %i.w) ; 2 uses
  %.not15.i = icmp eq i64 %i.v, %.235.ph105
  br i1 %.not15.i, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.us
  %i.x = load ptr, ptr %.140.ph103, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.235.ph105
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.pre.i126 = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.al, %bb.h ] ; 2 uses
  %.0917.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ao, %bb.h ] ; 2 uses
  %storemerge16.i = phi i64 [ %.sroa.speculated, %.lr.ph.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.z = icmp eq i64 %.pre.i126, 0
  br i1 %i.z, label %bb.f, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.e
  %.pre22.i = load ptr, ptr %i.t, align 8, !tbaa !70
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !66  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !63
  %.not11.i = icmp ult ptr %i.ab, %i.ac
  br i1 %.not11.i, label %bb.g, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !66
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !67 ; 2 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !69 ; 2 uses
  store i64 %i.af, ptr %i.l, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge21.i
  %i.ag = phi ptr [ %i.ad, %bb.g ], [ %.pre22.i, %._crit_edge21.i ]
  %i.ah = phi i64 [ %i.af, %bb.g ], [ %.pre.i126, %._crit_edge21.i ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %storemerge16.i) ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.0917.i, i64 %.sroa.speculated.i, i1 false)
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.speculated.i
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !70
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !71
  %i.al = sub i64 %i.ak, %.sroa.speculated.i      ; 4 uses
  store i64 %i.al, ptr %i.l, align 8, !tbaa !71
  %i.am = load i64, ptr %i.b, align 8, !tbaa !72
  %i.an = add i64 %i.am, %.sroa.speculated.i
  store i64 %i.an, ptr %i.b, align 8, !tbaa !72
  %i.ao = getelementptr inbounds nuw i8, ptr %.0917.i, i64 %.sroa.speculated.i
  %i.ap = sub i64 %storemerge16.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.e, !llvm.loop !136

_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit: ; preds = %bb.f, %bb.h, %.split.us
  %.pre.i127 = phi i64 [ %.pre.i, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.promoted100120 = phi i64 [ %.promoted100121, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.not55.not = icmp ugt i64 %.0.ph102, %i.w      ; 2 uses
  %spec.select.idx = select i1 %.not55.not, i64 16, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.140.ph103, i64 %spec.select.idx
  %spec.select56 = select i1 %.not55.not, i64 0, i64 %.235.ph105
  br label %.outer

.lr.ph99:                                         ; preds = %.lr.ph86.split, %bb.v
  %i.aq = phi i64 [ %i.eh, %bb.v ], [ %.promoted100, %.lr.ph86.split ] ; 7 uses
  %i.ar = phi ptr [ %i.at, %bb.v ], [ %.promoted, %.lr.ph86.split ] ; 2 uses
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.i, label %.split92.us

bb.i:                                             ; preds = %.lr.ph99
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 5 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !63
  %.not54 = icmp ult ptr %i.at, %i.au
  br i1 %.not54, label %bb.v, label %.thread

.split92.us:                                      ; preds = %.lr.ph99
  %spec.select57 = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %.0.ph102) ; 15 uses
  %i.av = load ptr, ptr %.140.ph103, align 8, !tbaa !67 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.235.ph105 ; 20 uses
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !70  ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select57 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64               ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 8
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split92.us
  %.not.i58 = icmp slt i64 %i.aq, 11
  br i1 %.not.i58, label %vector.memcheck, label %.lr.ph.i59, !prof !22

vector.memcheck:                                  ; preds = %bb.j
  %min.iters.check = icmp ult i64 %spec.select57, 4
  %i.be = add nsw i64 %i.bc, -1
  %diff.check = icmp ult i64 %i.be, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check172 = icmp ult i64 %spec.select57, 16
  br i1 %min.iters.check172, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select57, 12
  %n.vec = and i64 %spec.select57, -16            ; 5 uses
  %i.bf = getelementptr i8, ptr %i.aw, i64 %n.vec
  %i.bg = getelementptr i8, ptr %i.ax, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %index
  %next.gep173 = getelementptr i8, ptr %i.ax, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %wide.load, ptr %next.gep173, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select57, %n.vec
  br i1 %cmp.n, label %.thread69, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !146

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec176 = and i64 %spec.select57, -4          ; 4 uses
  %i.bi = getelementptr i8, ptr %i.aw, i64 %n.vec176
  %i.bj = getelementptr i8, ptr %i.ax, i64 %n.vec176
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next181, %vec.epilog.vector.body ] ; 3 uses
  %next.gep178 = getelementptr i8, ptr %i.aw, i64 %index177
  %next.gep179 = getelementptr i8, ptr %i.ax, i64 %index177
  %wide.load180 = load <4 x i8>, ptr %next.gep178, align 1, !tbaa !7
  store <4 x i8> %wide.load180, ptr %next.gep179, align 1, !tbaa !7
  %index.next181 = add nuw i64 %index177, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !147

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n182 = icmp eq i64 %spec.select57, %n.vec176
  br i1 %cmp.n182, label %.thread69, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.057.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i59:                                       ; preds = %bb.j, %.lr.ph.i59
  %.05586.i = phi i64 [ %i.bm, %.lr.ph.i59 ], [ %i.bc, %bb.j ] ; 3 uses
  %.05685.i = phi ptr [ %i.bl, %.lr.ph.i59 ], [ %i.ax, %bb.j ] ; 2 uses
  %.val.i = load i64, ptr %i.aw, align 1
  store i64 %.val.i, ptr %.05685.i, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.05685.i, i64 %.05586.i ; 3 uses
  %i.bm = shl nuw nsw i64 %.05586.i, 1
  %i.bn = icmp ult i64 %.05586.i, 4
  br i1 %i.bn, label %.lr.ph.i59, label %._crit_edge.i, !llvm.loop !148

._crit_edge.i:                                    ; preds = %.lr.ph.i59
  %.not67.i = icmp ult ptr %i.bl, %i.ay
  br i1 %.not67.i, label %bb.k, label %.thread69, !prof !22

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  %i.bp = load i8, ptr %.08.i.i, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  store i8 %i.bp, ptr %.057.i.i, align 1, !tbaa !7
  %exitcond.not.i.i = icmp eq ptr %i.bq, %i.ay
  br i1 %exitcond.not.i.i, label %.thread69, label %.lr.ph.i.i, !llvm.loop !149

bb.k:                                             ; preds = %._crit_edge.i, %.split92.us
  %.157.i = phi ptr [ %i.bl, %._crit_edge.i ], [ %i.ax, %.split92.us ] ; 16 uses
  %.157.i223 = ptrtoaddr ptr %.157.i to i64       ; 4 uses
  %i.br = add nsw i64 %i.aq, -15
  %.not68.i = icmp sgt i64 %spec.select57, %i.br
  br i1 %.not68.i, label %bb.r, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %.val4.i.i = load i64, ptr %i.aw, align 1
  store i64 %.val4.i.i, ptr %.157.i, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.157.i, i64 8
  %.val.i.i = load i64, ptr %i.bs, align 1
  store i64 %.val.i.i, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.157.i, i64 16 ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %i.ay
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val4.i71.i = load i64, ptr %i.bw, align 1
  store i64 %.val4.i71.i, ptr %i.bu, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %.157.i, i64 24
  %.val.i72.i = load i64, ptr %i.bx, align 1
  store i64 %.val.i72.i, ptr %i.by, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.157.i, i64 32 ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %i.ay
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.val4.i73.i = load i64, ptr %i.cb, align 1
  store i64 %.val4.i73.i, ptr %i.bz, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %.157.i, i64 40
  %.val.i74.i = load i64, ptr %i.cc, align 1
  store i64 %.val.i74.i, ptr %i.cd, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.157.i, i64 48 ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.ay
  br i1 %i.cf, label %bb.q, label %.thread69

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.val4.i75.i = load i64, ptr %i.cg, align 1
  store i64 %.val4.i75.i, ptr %i.ce, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %.157.i, i64 56
  %.val.i76.i = load i64, ptr %i.ch, align 1
  store i64 %.val.i76.i, ptr %i.ci, align 1
  br label %.thread69

bb.r:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds i8, ptr %i.az, i64 -16 ; 2 uses
  %i.ck = icmp ult ptr %.157.i, %i.cj
  br i1 %i.ck, label %.lr.ph90.i.preheader, label %._crit_edge91.i

.lr.ph90.i.preheader:                             ; preds = %bb.r
  %i.cl = xor i64 %.157.i223, -1
  %i.cm = add i64 %i.ba, -16
  %i.cn = add i64 %i.cm, %i.aq
  %i.co = add i64 %.157.i223, 16
  %umax229 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.co)
  %i.cp = add i64 %umax229, %i.cl                 ; 3 uses
  %i.cq = lshr i64 %i.cp, 4
  %min.iters.check230 = icmp ult i64 %i.cp, 144
  br i1 %min.iters.check230, label %.lr.ph90.i.preheader247, label %vector.memcheck223

.lr.ph90.i.preheader247:                          ; preds = %vector.memcheck223, %.lr.ph90.i.preheader
  br label %.lr.ph90.i

vector.memcheck223:                               ; preds = %.lr.ph90.i.preheader
  %scevgep = getelementptr i8, ptr %.157.i, i64 16
  %i.cr = xor i64 %.157.i223, -1
  %i.cs = add i64 %i.ba, -16
  %i.ct = add i64 %i.cs, %i.aq
  %i.cu = add i64 %.157.i223, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cu)
  %i.cv = add i64 %umax, %i.cr
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %scevgep225.a = getelementptr i8, ptr %scevgep, i64 %i.cw
  %scevgep226.a = getelementptr i8, ptr %i.av, i64 16
  %scevgep227.a = getelementptr i8, ptr %scevgep226.a, i64 %.235.ph105
  %scevgep228 = getelementptr i8, ptr %scevgep227.a, i64 %i.cw
  %bound0 = icmp ult ptr %.157.i, %scevgep228
  %bound1 = icmp ult ptr %i.aw, %scevgep225.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.preheader247, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck223
  %i.cx = and i64 %i.cp, -16
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.aw, i64 %i.cy
  %i.da = getelementptr i8, ptr %.157.i, i64 %i.cy
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph231
  %index235 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body234 ] ; 3 uses
  %i.db = shl i64 %index235, 4                    ; 2 uses
  %next.gep236.a = getelementptr i8, ptr %i.aw, i64 %i.db
  %next.gep237 = getelementptr i8, ptr %.157.i, i64 %i.db
  %wide.load238 = load <2 x i64>, ptr %next.gep236.a, align 1, !alias.scope !150
  store <2 x i64> %wide.load238, ptr %next.gep237, align 1, !alias.scope !153, !noalias !150
  %index.next239 = add nuw i64 %index235, 1
  %i.dc = icmp eq i64 %index235, %i.cq
  br i1 %i.dc, label %._crit_edge91.i, label %vector.body234, !llvm.loop !155

._crit_edge91.i:                                  ; preds = %vector.body234, %.lr.ph90.i, %bb.r
  %.2.lcssa.i = phi ptr [ %.157.i, %bb.r ], [ %i.df, %.lr.ph90.i ], [ %i.da, %vector.body234 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %i.aw, %bb.r ], [ %i.dg, %.lr.ph90.i ], [ %i.cz, %vector.body234 ] ; 3 uses
  %.not69.i = icmp ult ptr %.2.lcssa.i, %i.ay
  br i1 %.not69.i, label %bb.s, label %.thread69

.lr.ph90.i:                                       ; preds = %.lr.ph90.i.preheader247, %.lr.ph90.i
  %.05388.i = phi ptr [ %i.dg, %.lr.ph90.i ], [ %i.aw, %.lr.ph90.i.preheader247 ] ; 3 uses
  %.287.i = phi ptr [ %i.df, %.lr.ph90.i ], [ %.157.i, %.lr.ph90.i.preheader247 ] ; 3 uses
  %.val4.i77.i = load i64, ptr %.05388.i, align 1
  store i64 %.val4.i77.i, ptr %.287.i, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.05388.i, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.287.i, i64 8
  %.val.i78.i = load i64, ptr %i.dd, align 1
  store i64 %.val.i78.i, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.287.i, i64 16 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05388.i, i64 16 ; 2 uses
  %i.dh = icmp ult ptr %i.df, %i.cj
  br i1 %i.dh, label %.lr.ph90.i, label %._crit_edge91.i, !llvm.loop !156

bb.s:                                             ; preds = %._crit_edge91.i
  %i.di = getelementptr inbounds i8, ptr %i.az, i64 -8
  %.not70.i = icmp ugt ptr %.2.lcssa.i, %i.di
  br i1 %.not70.i, label %bb.u, label %bb.t, !prof !19

bb.t:                                             ; preds = %bb.s
  %.053.val.i = load i64, ptr %.053.lcssa.i, align 1
  store i64 %.053.val.i, ptr %.2.lcssa.i, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.i = phi ptr [ %i.dk, %bb.t ], [ %.2.lcssa.i, %bb.s ] ; 7 uses
  %.154.i = phi ptr [ %i.dj, %bb.t ], [ %.053.lcssa.i, %bb.s ] ; 6 uses
  %i.dl = icmp ult ptr %.3.i, %i.ay
  br i1 %i.dl, label %iter.check206, label %.thread69

iter.check206:                                    ; preds = %bb.u
  %.154.i187 = ptrtoaddr ptr %.154.i to i64
  %.3.i186 = ptrtoaddr ptr %.3.i to i64           ; 2 uses
  %i.dm = sub i64 %i.ba, %.3.i186
  %i.dn = add i64 %i.dm, %spec.select57           ; 7 uses
  %min.iters.check190 = icmp ult i64 %i.dn, 4
  %i.do = sub i64 %.154.i187, %.3.i186
  %diff.check188 = icmp ugt i64 %i.do, -32
  %or.cond.a = select i1 %min.iters.check190, i1 true, i1 %diff.check188
  br i1 %or.cond.a, label %.lr.ph.i79.i.preheader, label %vector.main.loop.iter.check191

vector.main.loop.iter.check191:                   ; preds = %iter.check206
  %min.iters.check192 = icmp ult i64 %i.dn, 16
  br i1 %min.iters.check192, label %vec.epilog.ph210, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check191
  %n.mod.vf194 = and i64 %i.dn, 12
  %n.vec195 = and i64 %i.dn, -16                  ; 5 uses
  %i.dp = getelementptr i8, ptr %.154.i, i64 %n.vec195
  %i.dq = getelementptr i8, ptr %.3.i, i64 %n.vec195
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph193
  %index197 = phi i64 [ 0, %vector.ph193 ], [ %index.next201, %vector.body196 ] ; 3 uses
  %next.gep198.a = getelementptr i8, ptr %.154.i, i64 %index197
  %next.gep199 = getelementptr i8, ptr %.3.i, i64 %index197
  %wide.load200 = load <16 x i8>, ptr %next.gep198.a, align 1, !tbaa !7
  store <16 x i8> %wide.load200, ptr %next.gep199, align 1, !tbaa !7
  %index.next201 = add nuw i64 %index197, 16      ; 2 uses
  %i.dr = icmp eq i64 %index.next201, %n.vec195
  br i1 %i.dr, label %middle.block202, label %vector.body196, !llvm.loop !157

middle.block202:                                  ; preds = %vector.body196
  %cmp.n203 = icmp eq i64 %i.dn, %n.vec195
  br i1 %cmp.n203, label %.thread69, label %vec.epilog.iter.check208

vec.epilog.iter.check208:                         ; preds = %middle.block202
  %min.epilog.iters.check209 = icmp eq i64 %n.mod.vf194, 0
  br i1 %min.epilog.iters.check209, label %.lr.ph.i79.i.preheader, label %vec.epilog.ph210, !prof !146

vec.epilog.ph210:                                 ; preds = %vector.main.loop.iter.check191, %vec.epilog.iter.check208
  %vec.epilog.resume.val204 = phi i64 [ %n.vec195, %vec.epilog.iter.check208 ], [ 0, %vector.main.loop.iter.check191 ]
  %n.vec212 = and i64 %i.dn, -4                   ; 4 uses
  %i.ds = getelementptr i8, ptr %.154.i, i64 %n.vec212
  %i.dt = getelementptr i8, ptr %.3.i, i64 %n.vec212
  br label %vec.epilog.vector.body213

vec.epilog.vector.body213:                        ; preds = %vec.epilog.vector.body213, %vec.epilog.ph210
  %index214 = phi i64 [ %vec.epilog.resume.val204, %vec.epilog.ph210 ], [ %index.next218, %vec.epilog.vector.body213 ] ; 3 uses
  %next.gep215.a = getelementptr i8, ptr %.154.i, i64 %index214
  %next.gep216 = getelementptr i8, ptr %.3.i, i64 %index214
  %wide.load217 = load <4 x i8>, ptr %next.gep215.a, align 1, !tbaa !7
  store <4 x i8> %wide.load217, ptr %next.gep216, align 1, !tbaa !7
  %index.next218 = add nuw i64 %index214, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next218, %n.vec212
  br i1 %i.du, label %vec.epilog.middle.block219, label %vec.epilog.vector.body213, !llvm.loop !158

vec.epilog.middle.block219:                       ; preds = %vec.epilog.vector.body213
  %cmp.n220 = icmp eq i64 %i.dn, %n.vec212
  br i1 %cmp.n220, label %.thread69, label %.lr.ph.i79.i.preheader

.lr.ph.i79.i.preheader:                           ; preds = %iter.check206, %vec.epilog.iter.check208, %vec.epilog.middle.block219
  %.08.i80.i.ph = phi ptr [ %.154.i, %iter.check206 ], [ %i.dp, %vec.epilog.iter.check208 ], [ %i.ds, %vec.epilog.middle.block219 ]
  %.057.i81.i.ph = phi ptr [ %.3.i, %iter.check206 ], [ %i.dq, %vec.epilog.iter.check208 ], [ %i.dt, %vec.epilog.middle.block219 ]
  br label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i.preheader, %.lr.ph.i79.i
  %.08.i80.i = phi ptr [ %i.dv, %.lr.ph.i79.i ], [ %.08.i80.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %.057.i81.i = phi ptr [ %i.dx, %.lr.ph.i79.i ], [ %.057.i81.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i80.i, i64 1
  %i.dw = load i8, ptr %.08.i80.i, align 1, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.057.i81.i, i64 1 ; 2 uses
  store i8 %i.dw, ptr %.057.i81.i, align 1, !tbaa !7
  %exitcond.not.i82.i = icmp eq ptr %i.dx, %i.ay
  br i1 %exitcond.not.i82.i, label %.thread69, label %.lr.ph.i79.i, !llvm.loop !159

.thread69:                                        ; preds = %.lr.ph.i79.i, %.lr.ph.i.i, %middle.block202, %vec.epilog.middle.block219, %middle.block, %vec.epilog.middle.block, %bb.u, %._crit_edge91.i, %bb.q, %bb.p, %._crit_edge.i
  %i.dy = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %spec.select57
  store ptr %i.dz, ptr %i.t, align 8, !tbaa !70
  %i.ea = load i64, ptr %i.l, align 8, !tbaa !71
  %i.eb = sub i64 %i.ea, %spec.select57           ; 3 uses
  store i64 %i.eb, ptr %i.l, align 8, !tbaa !71
  %i.ec = add i64 %spec.select57, %.235.ph105
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !72
  %i.ee = add i64 %i.ed, %spec.select57
  store i64 %i.ee, ptr %i.b, align 8, !tbaa !72
  br label %.outer

bb.v:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.h, align 8, !tbaa !66
  %i.ef = load ptr, ptr %i.at, align 8, !tbaa !67
  store ptr %i.ef, ptr %i.t, align 8, !tbaa !70
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !69 ; 4 uses
  store i64 %i.eh, ptr %i.l, align 8, !tbaa !71
  %.not53 = icmp eq ptr %.140.ph103, %i.at
  br i1 %.not53, label %.lr.ph99, label %.split.us

.outer:                                           ; preds = %.thread69, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit
  %.pre.i130 = phi i64 [ %i.eb, %.thread69 ], [ %.pre.i127, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.promoted100123 = phi i64 [ %i.eb, %.thread69 ], [ %.promoted100120, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %spec.select57.pn = phi i64 [ %spec.select57, %.thread69 ], [ %.sroa.speculated, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.342 = phi ptr [ %.140.ph103, %.thread69 ], [ %spec.select, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.538 = phi i64 [ %i.ec, %.thread69 ], [ %spec.select56, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.2 = sub i64 %.0.ph102, %spec.select57.pn      ; 2 uses
  %.not52 = icmp eq i64 %.2, 0
  br i1 %.not52, label %.thread, label %.lr.ph86.split, !llvm.loop !160

.thread:                                          ; preds = %.outer, %bb.i, %.loopexit, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.loopexit ], [ false, %bb.i ], [ true, %.outer ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone returned captures(address, ret: address, provenance) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #22 {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = icmp ult i64 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %3, i64 -11
  %.not = icmp ugt ptr %1, %i.e
  br i1 %.not, label %bb.c, label %.lr.ph, !prof !22

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.05586 = phi i64 [ %i.g, %.lr.ph ], [ %i.c, %bb.b ] ; 3 uses
  %.05685 = phi ptr [ %i.f, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  %.val = load i64, ptr %0, align 1
  store i64 %.val, ptr %.05685, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.05685, i64 %.05586 ; 3 uses
  %i.g = shl nuw nsw i64 %.05586, 1
  %i.h = icmp ult i64 %.05586, 4
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %.lr.ph
  %.not67 = icmp ult ptr %i.f, %2
  br i1 %.not67, label %bb.d, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult ptr %1, %2
  br i1 %i.i, label %iter.check165, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check165:                                    ; preds = %bb.c
  %i.j = sub i64 %4, %i.a                         ; 7 uses
  %min.iters.check148 = icmp ult i64 %i.j, 4
  %6 = add nsw i64 %i.c, -1
  %diff.check145 = icmp ult i64 %6, 31
  %or.cond = select i1 %min.iters.check148, i1 true, i1 %diff.check145
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check165
  %min.iters.check150 = icmp ult i64 %i.j, 16
  br i1 %min.iters.check150, label %vec.epilog.ph169, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %n.mod.vf152 = and i64 %i.j, 12
  %n.vec153 = and i64 %i.j, -16                   ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 %n.vec153
  %i.l = getelementptr i8, ptr %1, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body154 ] ; 3 uses
  %next.gep156.a = getelementptr i8, ptr %0, i64 %index155
  %next.gep157 = getelementptr i8, ptr %1, i64 %index155
  %wide.load158 = load <16 x i8>, ptr %next.gep156.a, align 1, !tbaa !7
  store <16 x i8> %wide.load158, ptr %next.gep157, align 1, !tbaa !7
  %index.next159 = add nuw i64 %index155, 16      ; 2 uses
  %i.m = icmp eq i64 %index.next159, %n.vec153
  br i1 %i.m, label %middle.block160, label %vector.body154, !llvm.loop !161

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %i.j, %n.vec153
  br i1 %cmp.n161, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check167

vec.epilog.iter.check167:                         ; preds = %middle.block160
  %min.epilog.iters.check168 = icmp eq i64 %n.mod.vf152, 0
  br i1 %min.epilog.iters.check168, label %.lr.ph.i.preheader, label %vec.epilog.ph169, !prof !146

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check167
  %vec.epilog.resume.val162 = phi i64 [ %n.vec153, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec171 = and i64 %i.j, -4                    ; 4 uses
  %i.n = getelementptr i8, ptr %0, i64 %n.vec171
  %i.o = getelementptr i8, ptr %1, i64 %n.vec171
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val162, %vec.epilog.ph169 ], [ %index.next177, %vec.epilog.vector.body172 ] ; 3 uses
  %next.gep174.a = getelementptr i8, ptr %0, i64 %index173
  %next.gep175 = getelementptr i8, ptr %1, i64 %index173
  %wide.load176 = load <4 x i8>, ptr %next.gep174.a, align 1, !tbaa !7
  store <4 x i8> %wide.load176, ptr %next.gep175, align 1, !tbaa !7
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.p = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.p, label %vec.epilog.middle.block178, label %vec.epilog.vector.body172, !llvm.loop !162

vec.epilog.middle.block178:                       ; preds = %vec.epilog.vector.body172
  %cmp.n179 = icmp eq i64 %i.j, %n.vec171
  br i1 %cmp.n179, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check165, %vec.epilog.iter.check167, %vec.epilog.middle.block178
  %.08.i.ph = phi ptr [ %0, %iter.check165 ], [ %i.k, %vec.epilog.iter.check167 ], [ %i.n, %vec.epilog.middle.block178 ]
  %.057.i.ph = phi ptr [ %1, %iter.check165 ], [ %i.l, %vec.epilog.iter.check167 ], [ %i.o, %vec.epilog.middle.block178 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.q, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.r = load i8, ptr %.08.i, align 1, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.057.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.057.i, align 1, !tbaa !7
  %exitcond.not.i = icmp eq ptr %i.s, %2
  br i1 %exitcond.not.i, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i, !llvm.loop !163

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.157 = phi ptr [ %i.f, %._crit_edge ], [ %1, %bb.a ] ; 16 uses
  %.157110 = ptrtoaddr ptr %.157 to i64           ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %3, i64 -15
  %.not68 = icmp ugt ptr %2, %i.t
  br i1 %.not68, label %bb.k, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %.val4.i = load i64, ptr %0, align 1
  store i64 %.val4.i, ptr %.157, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.157, i64 8
  %.val.i = load i64, ptr %i.u, align 1
  store i64 %.val.i, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.157, i64 16 ; 2 uses
  %i.x = icmp ult ptr %i.w, %2
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i71 = load i64, ptr %i.y, align 1
  store i64 %.val4.i71, ptr %i.w, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %.157, i64 24
  %.val.i72 = load i64, ptr %i.z, align 1
  store i64 %.val.i72, ptr %i.aa, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.157, i64 32 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %2
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i73 = load i64, ptr %i.ad, align 1
  store i64 %.val4.i73, ptr %i.ab, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.157, i64 40
  %.val.i74 = load i64, ptr %i.ae, align 1
  store i64 %.val.i74, ptr %i.af, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.157, i64 48 ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %2
  br i1 %i.ah, label %bb.j, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.i75 = load i64, ptr %i.ai, align 1
  store i64 %.val4.i75, ptr %i.ag, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %.157, i64 56
  %.val.i76 = load i64, ptr %i.aj, align 1
  store i64 %.val.i76, ptr %i.ak, align 1
  br label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.k:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds i8, ptr %3, i64 -16 ; 2 uses
  %i.am = icmp ult ptr %.157, %i.al
  br i1 %i.am, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %bb.k
  %i.an = add i64 %5, -16
  %i.ao = add i64 %.157110, 16
  %umax112 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ao)
  %i.ap = xor i64 %.157110, -1
  %i.aq = add i64 %umax112, %i.ap                 ; 3 uses
  %i.ar = lshr i64 %i.aq, 4
  %min.iters.check = icmp ult i64 %i.aq, 336
  br i1 %min.iters.check, label %.lr.ph90.preheader184, label %vector.memcheck

.lr.ph90.preheader184:                            ; preds = %vector.memcheck, %.lr.ph90.preheader
  br label %.lr.ph90

vector.memcheck:                                  ; preds = %.lr.ph90.preheader
  %i.as = add i64 %5, -16
  %i.at = add i64 %.157110, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.at)
  %i.au = xor i64 %.157110, -1
  %i.av = add i64 %umax, %i.au
  %i.aw = and i64 %i.av, -16
  %i.ax = add i64 %i.aw, 16                       ; 2 uses
  %scevgep = getelementptr i8, ptr %.157, i64 %i.ax
  %scevgep111 = getelementptr i8, ptr %0, i64 %i.ax
  %bound0 = icmp ult ptr %.157, %scevgep111
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.preheader184, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ay = and i64 %i.aq, -16
  %i.az = add i64 %i.ay, 16                       ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %i.az
  %i.bb = getelementptr i8, ptr %.157, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bc
  %next.gep113 = getelementptr i8, ptr %.157, i64 %i.bc
  %wide.load = load <2 x i64>, ptr %next.gep, align 1, !alias.scope !164
  store <2 x i64> %wide.load, ptr %next.gep113, align 1, !alias.scope !167, !noalias !164
  %index.next = add nuw i64 %index, 1
  %i.bd = icmp eq i64 %index, %i.ar
  br i1 %i.bd, label %._crit_edge91, label %vector.body, !llvm.loop !169

._crit_edge91:                                    ; preds = %vector.body, %.lr.ph90, %bb.k
  %.2.lcssa = phi ptr [ %.157, %bb.k ], [ %i.bg, %.lr.ph90 ], [ %i.bb, %vector.body ] ; 5 uses
  %.053.lcssa = phi ptr [ %0, %bb.k ], [ %i.bh, %.lr.ph90 ], [ %i.ba, %vector.body ] ; 3 uses
  %.not69 = icmp ult ptr %.2.lcssa, %2
  br i1 %.not69, label %bb.l, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

.lr.ph90:                                         ; preds = %.lr.ph90.preheader184, %.lr.ph90
  %.05388 = phi ptr [ %i.bh, %.lr.ph90 ], [ %0, %.lr.ph90.preheader184 ] ; 3 uses
  %.287 = phi ptr [ %i.bg, %.lr.ph90 ], [ %.157, %.lr.ph90.preheader184 ] ; 3 uses
  %.val4.i77 = load i64, ptr %.05388, align 1
  store i64 %.val4.i77, ptr %.287, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.05388, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.287, i64 8
  %.val.i78 = load i64, ptr %i.be, align 1
  store i64 %.val.i78, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.287, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05388, i64 16 ; 2 uses
  %i.bi = icmp ult ptr %i.bg, %i.al
  br i1 %i.bi, label %.lr.ph90, label %._crit_edge91, !llvm.loop !170

bb.l:                                             ; preds = %._crit_edge91
  %i.bj = getelementptr inbounds i8, ptr %3, i64 -8
  %.not70 = icmp ugt ptr %.2.lcssa, %i.bj
  br i1 %.not70, label %bb.n, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  %.053.val = load i64, ptr %.053.lcssa, align 1
  store i64 %.053.val, ptr %.2.lcssa, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.bl, %bb.m ], [ %.2.lcssa, %bb.l ] ; 7 uses
  %.154 = phi ptr [ %i.bk, %bb.m ], [ %.053.lcssa, %bb.l ] ; 6 uses
  %i.bm = icmp ult ptr %.3, %2
  br i1 %i.bm, label %iter.check, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check:                                       ; preds = %bb.n
  %.154117 = ptrtoaddr ptr %.154 to i64
  %.3116 = ptrtoaddr ptr %.3 to i64               ; 2 uses
  %i.bn = sub i64 %4, %.3116                      ; 7 uses
  %min.iters.check120.a = icmp ult i64 %i.bn, 4
  %i.bo = sub i64 %.154117, %.3116
  %diff.check = icmp ugt i64 %i.bo, -32
  %or.cond182 = select i1 %min.iters.check120.a, i1 true, i1 %diff.check
  br i1 %or.cond182, label %.lr.ph.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check121 = icmp ult i64 %i.bn, 16
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph122

vector.ph122:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf123 = and i64 %i.bn, 12
  %n.vec124 = and i64 %i.bn, -16                  ; 5 uses
  %i.bp = getelementptr i8, ptr %.154, i64 %n.vec124
  %i.bq = getelementptr i8, ptr %.3, i64 %n.vec124
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body125 ] ; 3 uses
  %next.gep127.a = getelementptr i8, ptr %.154, i64 %index126
  %next.gep128 = getelementptr i8, ptr %.3, i64 %index126
  %wide.load129 = load <16 x i8>, ptr %next.gep127.a, align 1, !tbaa !7
  store <16 x i8> %wide.load129, ptr %next.gep128, align 1, !tbaa !7
  %index.next130 = add nuw i64 %index126, 16      ; 2 uses
  %i.br = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.br, label %middle.block131, label %vector.body125, !llvm.loop !171

middle.block131:                                  ; preds = %vector.body125
  %cmp.n132 = icmp eq i64 %i.bn, %n.vec124
  br i1 %cmp.n132, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block131
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf123, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i79.preheader, label %vec.epilog.ph, !prof !146

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec124, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec136 = and i64 %i.bn, -4                   ; 4 uses
  %i.bs = getelementptr i8, ptr %.154, i64 %n.vec136
  %i.bt = getelementptr i8, ptr %.3, i64 %n.vec136
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %next.gep138.a = getelementptr i8, ptr %.154, i64 %index137
  %next.gep139 = getelementptr i8, ptr %.3, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep138.a, align 1, !tbaa !7
  store <4 x i8> %wide.load140, ptr %next.gep139, align 1, !tbaa !7
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !172

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %i.bn, %n.vec136
  br i1 %cmp.n142, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i80.ph = phi ptr [ %.154, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.057.i81.ph = phi ptr [ %.3, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %.08.i80 = phi ptr [ %i.bv, %.lr.ph.i79 ], [ %.08.i80.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %.057.i81 = phi ptr [ %i.bx, %.lr.ph.i79 ], [ %.057.i81.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i80, i64 1
  %i.bw = load i8, ptr %.08.i80, align 1, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.057.i81, i64 1 ; 2 uses
  store i8 %i.bw, ptr %.057.i81, align 1, !tbaa !7
  %exitcond.not.i82 = icmp eq ptr %i.bx, %2
  br i1 %exitcond.not.i82, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79, !llvm.loop !173

_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit: ; preds = %.lr.ph.i79, %.lr.ph.i, %middle.block131, %vec.epilog.middle.block, %middle.block160, %vec.epilog.middle.block178, %bb.n, %bb.c, %bb.j, %bb.i, %._crit_edge91, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !87   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.n, label %bb.c, label %.thread193, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i125 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i125
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !132
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0145 = phi i64 [ %i.m, %bb.d ], [ %.0145.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.0, %bb.d ], [ %.1.be, %.loopexit.backedge ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.x = add i64 %.0145, -1
  %i.y = call { ptr, i64 } @_ZN13duckdb_snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %.1, ptr noundef %i.w, i64 noundef %i.x, i64 noundef 1, i64 noundef 9223372036854775744) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = add i64 %i.aa, 1                        ; 9 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !132 ; 2 uses
  %.not116 = icmp ult ptr %i.z, %i.ac
  br i1 %.not116, label %bb.g, label %bb.e, !prof !19

bb.e:                                             ; preds = %.loopexit
  store ptr %i.z, ptr %i.b, align 8, !tbaa !46
  %i.ad = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.ad, label %bb.f, label %.thread193, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.ai, i64 4)
  %i.aj = sub i64 0, %.sroa.speculated.i126
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj ; 2 uses
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !132
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.ac, %.loopexit ] ; 3 uses
  %.2 = phi ptr [ %i.ae, %bb.f ], [ %i.z, %.loopexit ] ; 3 uses
  %i.am = load i8, ptr %.2, align 1, !tbaa !7     ; 3 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 6 uses
  %i.ap = and i32 %i.an, 3                        ; 3 uses
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.h
    i32 3, label %bb.o
  ], !prof !134

bb.h:                                             ; preds = %bb.g
  %i.aq = lshr exact i32 %i.an, 2
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = icmp ugt i8 %i.am, -20
  br i1 %i.av, label %bb.i, label %bb.j, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.as, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ao, align 1
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 4294967288
  %i.az = shl nuw i64 4294967295, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i32 %.0.copyload.i, %i.bb
  %i.bd = add i32 %i.bc, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.099 = phi i64 [ %i.be, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %.6 = phi ptr [ %i.bf, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.bg = ptrtoint ptr %.6 to i64
  %i.bh = sub i64 %i.au, %i.bg                    ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.099
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.1100213 = phi i64 [ %i.by, %bb.l ], [ %.099, %bb.j ]
  %.0101212 = phi i64 [ %i.bw, %bb.l ], [ %i.bh, %bb.j ] ; 2 uses
  %.2147211 = phi i64 [ %i.bj, %bb.l ], [ %i.ab, %bb.j ]
  %i.bj = add i64 %.0101212, %.2147211            ; 5 uses
  %i.bk = load i64, ptr %1, align 8, !tbaa !85
  %.not200 = icmp ugt i64 %i.bj, %i.bk
  br i1 %.not200, label %.thread193, label %bb.k

bb.k:                                             ; preds = %.lr.ph
end_hunk_3
