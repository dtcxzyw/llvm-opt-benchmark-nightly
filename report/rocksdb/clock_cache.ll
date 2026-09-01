Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/clock_cache?download=true
inline.NumInlined: 2447
inline.NumDeleted: 988
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK7rocksdb11clock_cache19BaseHyperClockCacheINS0_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS_6LoggerEE:bb.a

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ad, null
  br i1 %.not.i10, label %_ZNSt14_Function_baseD2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit11 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit11:                 ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.j
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNSt14_Function_baseD2Ev.exit11
  %.pn = phi { ptr, i32 } [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %lpad.phi, %_ZNSt14_Function_baseD2Ev.exit11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare noundef i32 @_ZNK7rocksdb16ShardedCacheBase12GetNumShardsEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

declare noundef ptr @_ZN7rocksdb6Random14GetTLSInstanceEv() local_unnamed_addr #3

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb11clock_cache19AutoHyperClockTableC2EmbNS_25CacheMetadataChargePolicyEPNS_15MemoryAllocatorEPKSt8functionIFbRKNS_5SliceEPNS_5Cache6HandleEbEEPKjRKNS1_4OptsE(ptr noundef nonnull align 64 dereferenceable(208) initializes((0, 24), (64, 100), (128, 132), (136, 160)) %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.rocksdb::MemMapping", align 8 ; 5 uses
  %i.a = load i32, ptr %7, align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(160) %0, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i64 %1, ptr %i.c, align 8, !tbaa !159
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.speculated.i.i = tail call noundef range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.e = select i1 %2, i32 -2147483648, i32 0
  %i.f = or disjoint i32 %.sroa.speculated.i.i, %i.e
  store i32 %i.f, ptr %i.d, align 32, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %3, ptr %i.g, align 64, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %4, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %5, ptr %i.i, align 16, !tbaa !162
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %6, ptr %i.j, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !227
  %i.n = uitofp i64 %i.m to double
  %i.o = fmul nnan double %i.n, 6.000000e-01      ; 2 uses
  %i.p = icmp eq i32 %3, 1                        ; 2 uses
  %i.q = fadd double %i.o, 6.400000e+01
  %spec.select.i = select i1 %i.p, double %i.q, double %i.o
  %i.r = uitofp i64 %1 to double
  %i.s = fdiv double %i.r, %spec.select.i
  %i.t = fadd double %i.s, f0x3FEFFFFDE7210BE9
  %i.u = fptoui double %i.t to i64
  %i.v = shl i64 %i.u, 6
  %i.w = add i64 %i.v, 4032
  %i.x = and i64 %i.w, -4096
  call void @_ZN7rocksdb10MemMapping18AllocateLazyZeroedEm(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::MemMapping") align 8 %8, i64 noundef %i.x)
  call void @_ZN7rocksdb10MemMappingC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %8) #31
  call void @_ZN7rocksdb10MemMappingD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.z = icmp ugt i64 %1, 4096                    ; 2 uses
  %..i = select i1 %i.z, i64 64, i64 4
  %i.aa = select i1 %i.z, i64 6, i64 2            ; 2 uses
  %i.ab = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %..i, i64 range(i64 -2147483648, 2147483648) %i.aa)
  %i.ac = shl i64 %i.ab, 8
  %i.ad = or disjoint i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 16, !tbaa !159
  %i.ae = load atomic i64, ptr %i.y acquire, align 16 ; 2 uses
  %i.af = lshr i64 %i.ae, 8
  %i.ag = and i64 %i.ae, 255
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = add nuw i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = uitofp i64 %i.ai to double
  %i.al = call double @llvm.fmuladd.f64(double %i.ak, double 6.000000e-01, double f0x3FEFF7CED916872B)
  %i.am = fptoui double %i.al to i64
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !159
  %i.an = load atomic i64, ptr %i.y acquire, align 16 ; 2 uses
  %i.ao = lshr i64 %i.an, 8
  %i.ap = and i64 %i.an, 255
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = add nuw i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ar, ptr %i.as, align 64, !tbaa !159
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.au = load atomic i64, ptr %i.y acquire, align 16
  %i.av = and i64 %i.au, 255
  %i.aw = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 -1, i64 range(i64 -2147483648, 2147483648) %i.av)
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !159
  %i.ax = load ptr, ptr %i.k, align 32, !tbaa !144
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !229
  %i.ba = call i64 @fwrite(ptr nonnull @.str.5, i64 61, i64 1, ptr %i.az) #36 ; 0 uses
  call void @_ZSt9terminatev() #35
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = load atomic i64, ptr %i.y acquire, align 16 ; 2 uses
  %i.bc = lshr i64 %i.bb, 8
  %i.bd = and i64 %i.bb, 255
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = add nuw i64 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = shl i64 %i.bf, 6
  %i.bi = atomicrmw add ptr %i.bg, i64 %i.bh monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bj = load atomic i64, ptr %i.y acquire, align 16 ; 3 uses
  %i.bk = add i64 %i.bj, 1
  %i.bl = and i64 %i.bj, 255                      ; 3 uses
  %i.bm = shl nuw i64 1, %i.bl                    ; 4 uses
  %i.bn = load atomic i64, ptr %i.y acquire, align 16 ; 2 uses
  %i.bo = lshr i64 %i.bn, 8
  %i.bp = and i64 %i.bn, 255
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = add nuw i64 %i.bq, %i.bo                ; 3 uses
  %i.bs = and i64 %i.bj, 63
  %invariant.op = or disjoint i64 %i.bs, 192      ; 3 uses
  %i.bt = and i64 %i.bk, 63
  %invariant.op46 = or disjoint i64 %i.bt, 192    ; 5 uses
  %i.bu = icmp eq i64 %i.bl, 0
  br i1 %i.bu, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.bm, -2
  br label %bb.h

.epil.preheader:                                  ; preds = %bb.e
  %lcmp.mod51 = icmp eq i64 %i.bl, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  %i.bv = icmp ugt i64 %i.br, 1
  %i.bw = load ptr, ptr %i.k, align 32, !tbaa !144
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 2 uses
  br i1 %i.bv, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  store atomic i64 %invariant.op, ptr %i.bx monotonic, align 8
  br label %.unr-lcssa

bb.g:                                             ; preds = %.epil.preheader
  store atomic i64 %invariant.op46, ptr %i.bx monotonic, align 8
  %i.by = load ptr, ptr %i.k, align 32, !tbaa !144
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.bm
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store atomic i64 449, ptr %i.ca monotonic, align 8
  br label %.unr-lcssa

.unr-lcssa:                                       ; preds = %bb.f, %bb.g, %bb.n
  ret void

bb.h:                                             ; preds = %bb.n, %.new
  %.03945 = phi i64 [ 0, %.new ], [ %i.cw, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.n ]
  %i.cb = add nuw i64 %.03945, %i.bm              ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %i.br
  %i.cd = load ptr, ptr %i.k, align 32, !tbaa !144
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.cd, i64 %.03945
  %i.cf = shl i64 %.03945, 8                      ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48 ; 2 uses
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.reass47 = or disjoint i64 %i.cf, %invariant.op46
  store atomic i64 %.reass47, ptr %i.cg monotonic, align 8
  %i.ch = load ptr, ptr %i.k, align 32, !tbaa !144
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.ch, i64 %i.cb
  %i.cj = shl i64 %i.cb, 8
  %.reass49 = or disjoint i64 %i.cj, %invariant.op46
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store atomic i64 %.reass49, ptr %i.ck monotonic, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %.reass = or disjoint i64 %i.cf, %invariant.op
  store atomic i64 %.reass, ptr %i.cg monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cl = or disjoint i64 %.03945, 1              ; 3 uses
  %i.cm = add nuw i64 %i.cl, %i.bm                ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.br
  %i.co = load ptr, ptr %i.k, align 32, !tbaa !144
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.co, i64 %i.cl
  %i.cq = shl i64 %i.cl, 8                        ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 2 uses
  br i1 %i.cn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.reass.1 = or disjoint i64 %i.cq, %invariant.op
  store atomic i64 %.reass.1, ptr %i.cr monotonic, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.reass47.1 = or disjoint i64 %i.cq, %invariant.op46
  store atomic i64 %.reass47.1, ptr %i.cr monotonic, align 8
  %i.cs = load ptr, ptr %i.k, align 32, !tbaa !144
  %i.ct = getelementptr inbounds nuw [64 x i8], ptr %i.cs, i64 %i.cm
  %i.cu = shl i64 %i.cm, 8
  %.reass49.1 = or disjoint i64 %i.cu, %invariant.op46
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  store atomic i64 %.reass49.1, ptr %i.cv monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cw = add nuw i64 %.03945, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.h, !llvm.loop !231
}

declare void @_ZN7rocksdb10MemMapping18AllocateLazyZeroedEm(ptr dead_on_unwind writable sret(%"class.rocksdb::MemMapping") align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, -63) i64 @_ZN7rocksdb11clock_cache19AutoHyperClockTable19CalcMaxUsableLengthEmmNS_25CacheMetadataChargePolicyE(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = fmul nnan double %i.a, 6.000000e-01      ; 2 uses
  %i.c = icmp eq i32 %2, 1
  %i.d = fadd double %i.b, 6.400000e+01
  %spec.select = select i1 %i.c, double %i.d, double %i.b
  %i.e = uitofp i64 %0 to double
  %i.f = fdiv double %i.e, %spec.select
  %i.g = fadd double %i.f, f0x3FEFFFFDE7210BE9
  %i.h = fptoui double %i.g to i64
  %i.i = add i64 %i.h, 63
  %i.j = and i64 %i.i, -64
  ret i64 %i.j
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb10MemMappingD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZN7rocksdb10MemMappingD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb11clock_cache19AutoHyperClockTableD2Ev(ptr noundef nonnull align 64 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load atomic i64, ptr %i.a acquire, align 16 ; 2 uses
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.b, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = add nuw i64 %i.e, %i.c                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load i64, ptr %i.h, align 8, !tbaa !232
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  %i.k = icmp ult i64 %i.f, %i.j
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr %i.g, align 32, !tbaa !144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0912 = phi i64 [ %i.f, %.lr.ph ], [ %i.p, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.0912
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.0912, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.j
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !233

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.09.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.j, %bb.c ], [ %.0912, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.e

bb.d:                                             ; preds = %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit
  tail call void @_ZN7rocksdb10MemMappingD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #31
  ret void

bb.e:                                             ; preds = %.critedge, %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit
  %.017 = phi i64 [ 0, %.critedge ], [ %i.ab, %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit ] ; 2 uses
  %i.r = load ptr, ptr %i.g, align 32, !tbaa !144
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %.017 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load atomic i64, ptr %i.t monotonic, align 8
  %i.v = and i64 %i.u, 4611686018427387904
  %.not11 = icmp eq i64 %i.v, 0
  br i1 %.not11, label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !26
  invoke void %i.y(ptr noundef %i.aa, ptr noundef %i.z)
          to label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit unwind label %bb.h, !inline_history !77

_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit: ; preds = %bb.f, %bb.g, %bb.e
  %i.ab = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond18.not = icmp eq i64 %i.ab, %.09.lcssa
  br i1 %exitcond18.not, label %bb.d, label %bb.e, !llvm.loop !234

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #35
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN7rocksdb11clock_cache19AutoHyperClockTable11StartInsertERNS1_11InsertStateE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 8)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load atomic i64, ptr %i.a acquire, align 16
  store i64 %i.b, ptr %1, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7rocksdb11clock_cache19AutoHyperClockTable12GrowIfNeededEmRNS1_11InsertStateE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(208) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %.not.not.not.not.not = icmp ule i64 %1, %i.b   ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN7rocksdb11clock_cache19AutoHyperClockTable4GrowERNS1_11InsertStateE(ptr noundef nonnull align 64 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.d, !llvm.loop !129

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i1 %.not.not.not.not.not
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7rocksdb11clock_cache19AutoHyperClockTable4GrowERNS1_11InsertStateE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i64, ptr %i.d, align 8, !tbaa !232
  %i.f = lshr i64 %i.e, 6                         ; 2 uses
  %.not = icmp ult i64 %i.b, %i.f                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store atomic i64 %i.f, ptr %i.a monotonic, align 64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true) ; 2 uses
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = xor i32 %i.h, 63                         ; 4 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.b, i64 range(i64 -2147483648, 2147483648) %i.j)
  %i.l = sub nsw i64 62, %i.g
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.b, i64 range(i64 -2147483648, 2147483648) %i.l) ; 2 uses
  %i.n = load ptr, ptr %i.c, align 32, !tbaa !144
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 63
  %.not1822 = icmp samesign ugt i32 %i.i, %i.s
  %i.t = and i64 %i.q, 192
  %i.u = icmp eq i64 %i.t, 128
  %or.cond23 = or i1 %i.u, %.not1822
  br i1 %or.cond23, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8 ; 0 uses
  %i.x = tail call noundef i32 @sched_yield() #31 ; 0 uses
  %i.y = load ptr, ptr %i.c, align 32, !tbaa !144
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %i.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 63
  %.not18 = icmp samesign ugt i32 %i.i, %i.ad
  %i.ae = and i64 %i.ab, 192
  %i.af = icmp eq i64 %i.ae, 128
  %or.cond = or i1 %i.af, %.not18
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  tail call void @_ZN7rocksdb11clock_cache19AutoHyperClockTable12SplitForGrowEmmi(ptr noundef nonnull align 64 dereferenceable(208) %0, i64 noundef %i.b, i64 noundef %i.k, i32 noundef %i.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 16 ; 3 uses
  %i.ai = lshr i64 %i.ah, 8
  %i.aj = and i64 %i.ah, 255
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = add nuw i64 %i.ak, %i.ai                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not.i24 = icmp ugt i64 %i.al, %i.b
  br i1 %.not.i24, label %.thread.i, label %.lr.ph28

.lr.ph28:                                         ; preds = %._crit_edge, %bb.i
  %.019.i26 = phi i64 [ %i.bp, %bb.i ], [ %i.al, %._crit_edge ] ; 5 uses
  %.031.i25 = phi i64 [ %.132.i, %bb.i ], [ %i.ah, %._crit_edge ]
  %i.ao = add nuw nsw i64 %.019.i26, 1            ; 2 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %i.aq = xor i64 %i.ap, 63                       ; 2 uses
  %i.ar = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ao, i64 range(i64 -2147483648, 2147483648) %i.aq)
  %i.as = shl i64 %i.ar, 8
  %i.at = or disjoint i64 %i.as, %i.aq            ; 3 uses
  %i.au = icmp ult i64 %.019.i26, %i.b
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph28
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.019.i26, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = xor i32 %i.aw, 63                       ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.019.i26, i64 range(i64 -2147483648, 2147483648) %i.ay)
  %i.ba = load ptr, ptr %i.c, align 32, !tbaa !144
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 63
  %.not23.i = icmp samesign ult i32 %i.ax, %i.bf
  br i1 %.not23.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e, %.lr.ph28
  %i.bg = cmpxchg ptr %i.ag, i64 %.031.i25, i64 %i.at acq_rel acquire, align 8 ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  br i1 %i.bh, label %bb.g, label %_ZN7rocksdb6AtomicImE9CasStrongERmm.exit.i

_ZN7rocksdb6AtomicImE9CasStrongERmm.exit.i:       ; preds = %bb.f
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bj = load i32, ptr %i.am, align 64, !tbaa !161
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = atomicrmw add ptr %i.an, i64 64 monotonic, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN7rocksdb6AtomicImE9CasStrongERmm.exit.i
  %.132.i = phi i64 [ %i.at, %bb.h ], [ %i.at, %bb.g ], [ %i.bi, %_ZN7rocksdb6AtomicImE9CasStrongERmm.exit.i ] ; 3 uses
  %i.bm = lshr i64 %.132.i, 8
  %i.bn = and i64 %.132.i, 255
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = add nuw i64 %i.bo, %i.bm                ; 3 uses
  %.not.i = icmp ugt i64 %i.bp, %i.b
  br i1 %.not.i, label %.thread.i, label %.lr.ph28

.thread.i:                                        ; preds = %bb.i, %bb.e, %._crit_edge
  %.019.i.lcssa = phi i64 [ %i.al, %._crit_edge ], [ %.019.i26, %bb.e ], [ %i.bp, %bb.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.br = load atomic i64, ptr %i.bq monotonic, align 8 ; 2 uses
  %i.bs = uitofp i64 %.019.i.lcssa to double
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double 6.000000e-01, double f0x3FEFF7CED916872B)
  %i.bu = fptoui double %i.bt to i64              ; 3 uses
end_hunk_0
