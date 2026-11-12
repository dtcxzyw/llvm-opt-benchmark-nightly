Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/clock_cache?download=true
inline.NumInlined: 2447
inline.NumDeleted: 988
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK7rocksdb11clock_cache19BaseHyperClockCacheINS0_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS_6LoggerEE:bb.a
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNK7rocksdb12ShardedCacheINS_11clock_cache15ClockCacheShardINS1_20FixedHyperClockTableEEEE12ForEachShardERKSt8functionIFvPKS4_EE.exit.thread
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNK7rocksdb12ShardedCacheINS_11clock_cache15ClockCacheShardINS1_20FixedHyperClockTableEEEE12ForEachShardERKSt8functionIFvPKS4_EE.exit, %_ZNK7rocksdb12ShardedCacheINS_11clock_cache15ClockCacheShardINS1_20FixedHyperClockTableEEEE12ForEachShardERKSt8functionIFvPKS4_EE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNK7rocksdb11clock_cache17LoadVarianceStatsILm500EE6ReportB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.w = load ptr, ptr %4, align 8, !tbaa !50
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.24, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 32), ptr noundef %i.w)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.x = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !52
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !41
  call void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.25, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 32), i64 noundef %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.k

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt8functionIFvPKN7rocksdb11clock_cache15ClockCacheShardINS1_20FixedHyperClockTableEEEEEclES6_.exit.i, %bb.d, %bb.b
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !118 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ad, null
  br i1 %.not.i10, label %_ZNSt14_Function_baseD2Ev.exit11, label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit11 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit11:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !52
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNSt14_Function_baseD2Ev.exit11
  %.pn = phi { ptr, i32 } [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %lpad.loopexit.split-lp23, %_ZNSt14_Function_baseD2Ev.exit11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare noundef i32 @_ZNK7rocksdb16ShardedCacheBase12GetNumShardsEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

declare noundef ptr @_ZN7rocksdb6Random14GetTLSInstanceEv() local_unnamed_addr #3

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb11clock_cache19AutoHyperClockTableC2EmbNS_25CacheMetadataChargePolicyEPNS_15MemoryAllocatorEPKSt8functionIFbRKNS_5SliceEPNS_5Cache6HandleEbEEPKjRKNS1_4OptsE(ptr noundef nonnull align 64 dereferenceable(208) initializes((0, 24), (64, 100), (128, 132), (136, 160)) %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.rocksdb::MemMapping", align 8 ; 5 uses
  %i.a = load i32, ptr %7, align 8, !tbaa !149
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(160) %0, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i64 %1, ptr %i.c, align 8, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.speculated.i.i = tail call noundef range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.e = select i1 %2, i32 -2147483648, i32 0
  %i.f = or disjoint i32 %.sroa.speculated.i.i, %i.e
  store i32 %i.f, ptr %i.d, align 32, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %3, ptr %i.g, align 64, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %4, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %5, ptr %i.i, align 16, !tbaa !140
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %6, ptr %i.j, align 8, !tbaa !141
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !195
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
  call void @_ZN7rocksdb10MemMappingC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %8) #30
  call void @_ZN7rocksdb10MemMappingD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.z = icmp ugt i64 %1, 4096                    ; 2 uses
  %..i = select i1 %i.z, i64 64, i64 4
  %i.aa = select i1 %i.z, i64 6, i64 2            ; 2 uses
  %i.ab = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %..i, i64 range(i64 -2147483648, 2147483648) %i.aa)
  %i.ac = shl i64 %i.ab, 8
  %i.ad = or disjoint i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 16, !tbaa !137
  %i.ae = load atomic i64, ptr %i.y acquire, align 16 ; 2 uses
  %i.af = lshr i64 %i.ae, 8
  %i.ag = and i64 %i.ae, 255
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = add nuw i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = uitofp i64 %i.ai to double
  %i.al = call double @llvm.fmuladd.f64(double %i.ak, double 6.000000e-01, double f0x3FEFF7CED916872B)
  %i.am = fptoui double %i.al to i64
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !137
  %i.an = load atomic i64, ptr %i.y acquire, align 16 ; 2 uses
  %i.ao = lshr i64 %i.an, 8
  %i.ap = and i64 %i.an, 255
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = add nuw i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ar, ptr %i.as, align 64, !tbaa !137
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.au = load atomic i64, ptr %i.y acquire, align 16
  %i.av = and i64 %i.au, 255
  %i.aw = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 -1, i64 range(i64 -2147483648, 2147483648) %i.av)
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !137
  %i.ax = load ptr, ptr %i.k, align 32, !tbaa !134
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !306
  %fwrite = call i64 @fwrite(ptr nonnull @.str.5, i64 61, i64 1, ptr %i.az) #35 ; 0 uses
  call void @_ZSt9terminatev() #34
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = load atomic i64, ptr %i.y acquire, align 16 ; 2 uses
  %i.bb = lshr i64 %i.ba, 8
  %i.bc = and i64 %i.ba, 255
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = add nuw i64 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = shl i64 %i.be, 6
  %i.bh = atomicrmw add ptr %i.bf, i64 %i.bg monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bi = load atomic i64, ptr %i.y acquire, align 16 ; 3 uses
  %i.bj = add i64 %i.bi, 1
  %i.bk = and i64 %i.bi, 255                      ; 3 uses
  %i.bl = shl nuw i64 1, %i.bk                    ; 4 uses
  %i.bm = load atomic i64, ptr %i.y acquire, align 16 ; 2 uses
  %i.bn = lshr i64 %i.bm, 8
  %i.bo = and i64 %i.bm, 255
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = add nuw i64 %i.bp, %i.bn                ; 3 uses
  %i.br = and i64 %i.bi, 63
  %invariant.op = or disjoint i64 %i.br, 192      ; 3 uses
  %i.bs = and i64 %i.bj, 63
  %invariant.op46 = or disjoint i64 %i.bs, 192    ; 5 uses
  %i.bt = icmp eq i64 %i.bk, 0
  br i1 %i.bt, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.bl, -2
  br label %bb.h

.epil.preheader:                                  ; preds = %bb.e
  %lcmp.mod51 = icmp eq i64 %i.bk, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  %i.bu = icmp ugt i64 %i.bq, 1
  %i.bv = load ptr, ptr %i.k, align 32, !tbaa !134
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  br i1 %i.bu, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  store atomic i64 %invariant.op, ptr %i.bw monotonic, align 8
  br label %.unr-lcssa

bb.g:                                             ; preds = %.epil.preheader
  store atomic i64 %invariant.op46, ptr %i.bw monotonic, align 8
  %i.bx = load ptr, ptr %i.k, align 32, !tbaa !134
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.bx, i64 %i.bl
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  store atomic i64 449, ptr %i.bz monotonic, align 8
  br label %.unr-lcssa

.unr-lcssa:                                       ; preds = %bb.f, %bb.g, %bb.n
  ret void

bb.h:                                             ; preds = %bb.n, %.new
  %.03945 = phi i64 [ 0, %.new ], [ %i.cv, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.n ]
  %i.ca = add i64 %.03945, %i.bl                  ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %i.bq
  %i.cc = load ptr, ptr %i.k, align 32, !tbaa !134
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cc, i64 %.03945
  %i.ce = shl i64 %.03945, 8                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.reass47 = or disjoint i64 %i.ce, %invariant.op46
  store atomic i64 %.reass47, ptr %i.cf monotonic, align 8
  %i.cg = load ptr, ptr %i.k, align 32, !tbaa !134
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.cg, i64 %i.ca
  %i.ci = shl i64 %i.ca, 8
  %.reass49 = or disjoint i64 %i.ci, %invariant.op46
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store atomic i64 %.reass49, ptr %i.cj monotonic, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %.reass = or disjoint i64 %i.ce, %invariant.op
  store atomic i64 %.reass, ptr %i.cf monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ck = or disjoint i64 %.03945, 1              ; 3 uses
  %i.cl = add i64 %i.ck, %i.bl                    ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.bq
  %i.cn = load ptr, ptr %i.k, align 32, !tbaa !134
  %i.co = getelementptr inbounds nuw [64 x i8], ptr %i.cn, i64 %i.ck
  %i.cp = shl i64 %i.ck, 8                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  br i1 %i.cm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.reass.1 = or disjoint i64 %i.cp, %invariant.op
  store atomic i64 %.reass.1, ptr %i.cq monotonic, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.reass47.1 = or disjoint i64 %i.cp, %invariant.op46
  store atomic i64 %.reass47.1, ptr %i.cq monotonic, align 8
  %i.cr = load ptr, ptr %i.k, align 32, !tbaa !134
  %i.cs = getelementptr inbounds nuw [64 x i8], ptr %i.cr, i64 %i.cl
  %i.ct = shl i64 %i.cl, 8
  %.reass49.1 = or disjoint i64 %i.ct, %invariant.op46
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store atomic i64 %.reass49.1, ptr %i.cu monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cv = add nuw i64 %.03945, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.h, !llvm.loop !304
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !196
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  %i.k = icmp ult i64 %i.f, %i.j
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr %i.g, align 32, !tbaa !134
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0912 = phi i64 [ %i.f, %.lr.ph ], [ %i.p, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.0912
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %.0912, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.j
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.b, !llvm.loop !307

.critedge.loopexit:                               ; preds = %bb.c, %bb.b
  %.09.lcssa.ph = phi i64 [ %.0912, %bb.b ], [ %i.j, %bb.c ]
  %i.q = tail call i64 @llvm.umax.i64(i64 %.09.lcssa.ph, i64 1)
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.09.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.q, %.critedge.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.e

bb.d:                                             ; preds = %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit
  tail call void @_ZN7rocksdb10MemMappingD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #30
  ret void

bb.e:                                             ; preds = %.critedge, %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit
  %.017 = phi i64 [ 0, %.critedge ], [ %i.ac, %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit ] ; 2 uses
  %i.s = load ptr, ptr %i.g, align 32, !tbaa !134
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %.017 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = and i64 %i.v, 4611686018427387904
  %.not11 = icmp eq i64 %i.w, 0
  br i1 %.not11, label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !101  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !57
  invoke void %i.z(ptr noundef %i.ab, ptr noundef %i.aa)
          to label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit unwind label %bb.h, !inline_history !103

_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit: ; preds = %bb.f, %bb.g, %bb.e
  %i.ac = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond18.not = icmp eq i64 %i.ac, %.09.lcssa
  br i1 %exitcond18.not, label %bb.d, label %bb.e, !llvm.loop !308

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #34
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN7rocksdb11clock_cache19AutoHyperClockTable11StartInsertERNS1_11InsertStateE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 8)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load atomic i64, ptr %i.a acquire, align 16
  store i64 %i.b, ptr %1, align 8, !tbaa !130
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
  br i1 %.not.not.not.not.not, label %bb.d, label %bb.c, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN7rocksdb11clock_cache19AutoHyperClockTable4GrowERNS1_11InsertStateE(ptr noundef nonnull align 64 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.d, !llvm.loop !4

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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !196
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
  %i.n = load ptr, ptr %i.c, align 32, !tbaa !134
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
  %i.x = tail call noundef i32 @sched_yield() #30 ; 0 uses
  %i.y = load ptr, ptr %i.c, align 32, !tbaa !134
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
  %i.ba = load ptr, ptr %i.c, align 32, !tbaa !134
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
  %i.bj = load i32, ptr %i.am, align 64, !tbaa !139
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
  %.old25.i = icmp ult i64 %i.br, %i.bu
  br i1 %.old25.i, label %.preheader.i, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable23CatchUpLengthInfoNoWaitEm.exit

.preheader.i:                                     ; preds = %.thread.i, %.preheader.i
  %.0.i = phi i64 [ %i.bx, %.preheader.i ], [ %i.br, %.thread.i ]
  %i.bv = cmpxchg weak ptr %i.bq, i64 %.0.i, i64 %i.bu monotonic monotonic, align 8 ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 1
  %i.bx = extractvalue { i64, i1 } %i.bv, 0       ; 2 uses
  %i.by = icmp uge i64 %i.bx, %i.bu
  %or.cond.not.i = select i1 %i.bw, i1 true, i1 %i.by
  br i1 %or.cond.not.i, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable23CatchUpLengthInfoNoWaitEm.exit, label %.preheader.i, !llvm.loop !9

_ZN7rocksdb11clock_cache19AutoHyperClockTable23CatchUpLengthInfoNoWaitEm.exit: ; preds = %.preheader.i, %.thread.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.b, ptr %i.bz, align 8, !tbaa !197
  br label %bb.j

bb.j:                                             ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable23CatchUpLengthInfoNoWaitEm.exit, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb11clock_cache19AutoHyperClockTable12SplitForGrowEmmi(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(208) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %3, 1                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 32, !tbaa !134 ; 22 uses
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 6 uses
  %i.g = atomicrmw or ptr %i.f, i64 128 acq_rel, align 8 ; 2 uses
  %i.h = and i64 %i.g, 192
  %i.i = icmp eq i64 %i.h, 128
  br i1 %i.i, label %.lr.ph.i.i, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.j = atomicrmw add ptr %i.e, i64 1 monotonic, align 8 ; 0 uses
  %i.k = tail call noundef i32 @sched_yield() #30 ; 0 uses
  %i.l = atomicrmw or ptr %i.f, i64 128 acq_rel, align 8 ; 2 uses
  %i.m = and i64 %i.l, 192
  %i.n = icmp eq i64 %i.m, 128
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.10.1.in = phi i64 [ %i.g, %bb.a ], [ %i.l, %.lr.ph.i.i ]
  %.sroa.10.1 = or i64 %.sroa.10.1.in, 128
  %i.o = sext i32 %i.a to i64                     ; 2 uses
  %i.p = shl i64 %1, 8
  %i.q = and i32 %i.a, 63                         ; 2 uses
  %i.r = zext nneg i32 %i.q to i64                ; 5 uses
  %i.s = or disjoint i64 %i.p, %i.r
  %i.t = or disjoint i64 %i.s, 192
  %i.u = or disjoint i32 %i.q, 128
  %invariant.op = zext nneg i32 %i.u to i64       ; 2 uses
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %1
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.x = shl i64 %2, 8
  %i.y = or disjoint i64 %i.x, %i.r
  %i.z = or disjoint i64 %i.y, 192
  br label %.preheader313

.preheader313:                                    ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit, %bb.o
  %.0103348 = phi i32 [ 0, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit ], [ %i.bd, %bb.o ]
  %.sroa.10.0347 = phi i64 [ %.sroa.10.1, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit ], [ %.sroa.10.2275.ph, %bb.o ] ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.o
  tail call void @_ZSt9terminatev() #34
  unreachable

bb.c:                                             ; preds = %bb.j
  tail call void @_ZSt9terminatev() #34
  unreachable

bb.d:                                             ; preds = %.preheader313, %bb.j
  %.199344 = phi i32 [ -1, %.preheader313 ], [ %.2100, %bb.j ] ; 5 uses
  %.1104343 = phi i32 [ %.0103348, %.preheader313 ], [ %i.al, %bb.j ] ; 4 uses
  %.sroa.0158.0342 = phi i64 [ %.sroa.10.0347, %.preheader313 ], [ %i.ak, %bb.j ] ; 2 uses
  %.1238341 = phi i64 [ -1, %.preheader313 ], [ %.2, %bb.j ] ; 7 uses
  %.1243340 = phi i64 [ -1, %.preheader313 ], [ %.2244, %bb.j ] ; 7 uses
  %i.aa = and i64 %.sroa.0158.0342, 64
  %.not311 = icmp eq i64 %i.aa, 0
  br i1 %.not311, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ab = lshr i64 %.sroa.0158.0342, 8            ; 7 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.af = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ae, i64 range(i64 -2147483648, 2147483648) %i.o)
  %i.ag = icmp eq i64 %i.af, %2
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp eq i64 %.1243340, -1
  br i1 %i.ah, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not122 = icmp eq i64 %.1238341, -1
  br i1 %.not122, label %bb.j, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.1238341, -1
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i64 %.1243340, -1
  br i1 %.not, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.h, %bb.f
  %.2244 = phi i64 [ %i.ab, %bb.g ], [ %.1243340, %bb.f ], [ -1, %bb.i ], [ %.1243340, %bb.h ]
  %.2 = phi i64 [ -1, %bb.g ], [ %.1238341, %bb.f ], [ %i.ab, %bb.i ], [ %.1238341, %bb.h ]
  %.2100 = phi i32 [ 0, %bb.g ], [ %.199344, %bb.f ], [ 1, %bb.i ], [ %.199344, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8
  %i.al = add nsw i32 %.1104343, 1
  %exitcond = icmp eq i32 %.1104343, 4095
  br i1 %exitcond, label %bb.c, label %bb.d, !prof !135, !llvm.loop !309

bb.k:                                             ; preds = %bb.d
  %.not123 = icmp eq i64 %.1238341, -1
  br i1 %.not123, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.i, %bb.g, %bb.k
  %.096272 = phi i64 [ -1, %bb.k ], [ %i.ab, %bb.g ], [ %i.ab, %bb.i ]
  %.3239269 = phi i64 [ %.1238341, %bb.k ], [ %i.ab, %bb.i ], [ %.1238341, %bb.g ] ; 2 uses
  %.3245268 = phi i64 [ %.1243340, %bb.k ], [ %.1243340, %bb.i ], [ %i.ab, %bb.g ]
  %i.am = shl nuw i64 %.3239269, 8
  %.reass = or disjoint i64 %i.am, %invariant.op
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %.096271 = phi i64 [ %.096272, %.thread ], [ -1, %bb.k ]
  %.3239270 = phi i64 [ %.3239269, %.thread ], [ -1, %bb.k ] ; 6 uses
  %.3245267 = phi i64 [ %.3245268, %.thread ], [ %.1243340, %bb.k ] ; 9 uses
  %.sroa.025.0 = phi i64 [ %.reass, %.thread ], [ %i.t, %bb.k ] ; 2 uses
  store atomic i64 %.sroa.025.0, ptr %i.w release, align 8
  %.not124 = icmp eq i64 %.3245267, -1
  %i.an = shl i64 %.3245267, 8
  %.reass350 = or disjoint i64 %i.an, %invariant.op
  %.sroa.023.0 = select i1 %.not124, i64 %i.z, i64 %.reass350 ; 2 uses
  %i.ao = cmpxchg ptr %i.f, i64 %.sroa.10.0347, i64 %.sroa.023.0 acq_rel acquire, align 8 ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = extractvalue { i64, i1 } %i.ao, 0       ; 2 uses
  %i.ar = and i64 %.sroa.10.0347, 64
  %.not.i = icmp ne i64 %i.ar, 0
  %i.as = and i64 %i.aq, 64
  %.not9.i = icmp eq i64 %i.as, 0
  %or.cond.i = select i1 %.not.i, i1 %.not9.i, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = atomicrmw or ptr %i.f, i64 128 acq_rel, align 8 ; 2 uses
  %i.au = or i64 %i.at, 128
  %i.av = and i64 %i.at, 192
  %i.aw = icmp eq i64 %i.av, 128
  br i1 %i.aw, label %.lr.ph.i.i138, label %bb.o

.lr.ph.i.i138:                                    ; preds = %bb.n, %.lr.ph.i.i138
  %i.ax = atomicrmw add ptr %i.e, i64 1 monotonic, align 8 ; 0 uses
  %i.ay = tail call noundef i32 @sched_yield() #30 ; 0 uses
  %i.az = atomicrmw or ptr %i.f, i64 128 acq_rel, align 8 ; 2 uses
  %i.ba = and i64 %i.az, 192
  %i.bb = icmp eq i64 %i.ba, 128
  br i1 %i.bb, label %.lr.ph.i.i138, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i138
  %i.bc = or i64 %i.az, 128
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.m, %bb.n
  %.sroa.10.2275.ph = phi i64 [ %i.au, %bb.n ], [ %i.aq, %bb.m ], [ %i.bc, %.loopexit ]
  %i.bd = add nsw i32 %.1104343, 1
  %i.be = icmp sgt i32 %.1104343, 4094
  br i1 %i.be, label %bb.b, label %.preheader313, !prof !135, !llvm.loop !310

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit: ; preds = %bb.l
  %i.bf = icmp sgt i32 %.199344, -1
  br i1 %i.bf, label %bb.p, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit

bb.p:                                             ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit
  %i.bg = icmp eq i32 %.199344, 0                 ; 5 uses
  %i.bh = select i1 %i.bg, i64 %.3239270, i64 %.3245267 ; 2 uses
  %.not128 = icmp eq i64 %i.bh, -1
  br i1 %.not128, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = shl nuw i64 %i.bh, 8
  %i.bj = and i32 %3, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = or disjoint i64 %i.bi, %i.bk
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bm = select i1 %i.bg, i64 %2, i64 %1
  %i.bn = shl i64 %i.bm, 8
  %i.bo = or disjoint i64 %i.bn, %i.r
  %i.bp = or disjoint i64 %i.bo, 192
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.016.0 = phi i64 [ %i.bl, %bb.q ], [ %i.bp, %bb.r ] ; 4 uses
  %.sroa.speculated200 = select i1 %i.bg, i64 %.3245267, i64 %.3239270
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.sroa.speculated200
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %.sroa.016.0
  br i1 %i.bt, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.s
  br i1 %i.bg, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %.cont189.us
  %.8250.us = phi i64 [ %i.bz, %.cont189.us ], [ %.3245267, %.lr.ph.i.preheader ] ; 2 uses
  %i.bu = phi i64 [ %i.cc, %.cont189.us ], [ %i.bs, %.lr.ph.i.preheader ] ; 2 uses
  %i.bv = and i64 %i.bu, 64
  %.not.i139.us = icmp eq i64 %i.bv, 0
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.8250.us
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56 ; 2 uses
  br i1 %.not.i139.us, label %.cont189.us, label %.split.us

.cont189.us:                                      ; preds = %.lr.ph.i.us
  %i.by = atomicrmw add ptr %i.bx, i64 1 acq_rel, align 8 ; 0 uses
  %i.bz = lshr i64 %i.bu, 8                       ; 3 uses
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %.sroa.016.0
  br i1 %i.cd, label %.preheader.a, label %.lr.ph.i.us

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.cont189
  %.8 = phi i64 [ %i.cj, %.cont189 ], [ %.3239270, %.lr.ph.i.preheader ]
  %i.ce = phi i64 [ %i.cm, %.cont189 ], [ %i.bs, %.lr.ph.i.preheader ] ; 2 uses
  %i.cf = and i64 %i.ce, 64
  %.not.i139 = icmp eq i64 %i.cf, 0
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56 ; 2 uses
  br i1 %.not.i139, label %.cont189, label %.split.us

.split.us:                                        ; preds = %.lr.ph.i, %.lr.ph.i.us
  %.us-phi352 = phi i64 [ %.8250.us, %.lr.ph.i.us ], [ %.3245267, %.lr.ph.i ]
  %.us-phi353 = phi ptr [ %i.bx, %.lr.ph.i.us ], [ %i.ch, %.lr.ph.i ]
  store atomic i64 %.sroa.016.0, ptr %.us-phi353 release, align 8
  br i1 %i.bg, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit.thread, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit

.cont189:                                         ; preds = %.lr.ph.i
  %i.ci = atomicrmw add ptr %i.ch, i64 1 acq_rel, align 8 ; 0 uses
  %i.cj = lshr i64 %i.ce, 8                       ; 3 uses
  %i.ck = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, %.sroa.016.0
  br i1 %i.cn, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit, label %.lr.ph.i

_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit: ; preds = %.cont189, %.split.us, %bb.s, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit
  %.5247 = phi i64 [ %.3245267, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit ], [ %.3245267, %bb.s ], [ %.us-phi352, %.split.us ], [ %.3245267, %.cont189 ] ; 2 uses
  %.5 = phi i64 [ %.3239270, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit ], [ %.3239270, %bb.s ], [ -1, %.split.us ], [ %i.cj, %.cont189 ]
  %i.co = icmp eq i64 %.5247, -1
  br i1 %i.co, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit.thread, label %.preheader.a

.preheader.a:                                     ; preds = %.cont189.us, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit
  %.5447 = phi i64 [ %.5, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit ], [ %.3239270, %.cont189.us ]
  %.5247446 = phi i64 [ %.5247, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit ], [ %i.bz, %.cont189.us ]
  %invariant.op375 = or disjoint i64 %i.r, 192    ; 2 uses
  br label %bb.u

bb.t:                                             ; preds = %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293
  tail call void @_ZSt9terminatev() #34
  unreachable

bb.u:                                             ; preds = %.preheader.a, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293
  %.297374 = phi i64 [ %.096271, %.preheader.a ], [ %.3301, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293 ] ; 5 uses
  %.4373 = phi i32 [ %.199344, %.preheader.a ], [ %.6300, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293 ] ; 6 uses
  %.0102372 = phi i32 [ 0, %.preheader.a ], [ %i.fi, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293 ]
  %.6241371 = phi i64 [ %.5447, %.preheader.a ], [ %.7299, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293 ] ; 10 uses
  %.6248370 = phi i64 [ %.5247446, %.preheader.a ], [ %.7249298, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293 ] ; 10 uses
  %i.cp = icmp eq i32 %.4373, 0                   ; 11 uses
  %i.cq = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.297374
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 7 uses
  %i.ct = and i64 %i.cs, 64
  %.not312 = icmp eq i64 %i.ct, 0                 ; 2 uses
  br i1 %.not312, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = select i1 %i.cp, i64 %2, i64 %1
  %i.cv = shl i64 %i.cu, 8
  %.reass376 = or disjoint i64 %i.cv, %invariant.op375
  %.sroa.speculated188 = select i1 %i.cp, i64 %.6248370, i64 %.6241371
  %i.cw = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.sroa.speculated188
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store atomic i64 %.reass376, ptr %i.cx release, align 8
  %i.cy = select i1 %i.cp, i64 %1, i64 %2
  %i.cz = shl i64 %i.cy, 8
  %.reass378 = or disjoint i64 %i.cz, %invariant.op375 ; 4 uses
  %.sroa.speculated179 = select i1 %i.cp, i64 %.6241371, i64 %.6248370
  %i.da = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.sroa.speculated179
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 3 uses
  %i.dd = icmp eq i64 %i.dc, %.reass378
  br i1 %i.dd, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit.thread, label %.lr.ph.i140.preheader

.lr.ph.i140.preheader:                            ; preds = %bb.v
  br i1 %i.cp, label %.lr.ph.i140.us, label %.lr.ph.i140

.lr.ph.i140.us:                                   ; preds = %.lr.ph.i140.preheader, %.cont168.us
  %.10.us = phi i64 [ %i.dj, %.cont168.us ], [ %.6241371, %.lr.ph.i140.preheader ] ; 2 uses
  %i.de = phi i64 [ %i.dm, %.cont168.us ], [ %i.dc, %.lr.ph.i140.preheader ] ; 2 uses
  %i.df = and i64 %i.de, 64
  %.not.i141.us = icmp eq i64 %i.df, 0
  %i.dg = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.10.us
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 56 ; 2 uses
  br i1 %.not.i141.us, label %.cont168.us, label %.split357.us

.cont168.us:                                      ; preds = %.lr.ph.i140.us
  %i.di = atomicrmw add ptr %i.dh, i64 1 acq_rel, align 8 ; 0 uses
  %i.dj = lshr i64 %i.de, 8                       ; 3 uses
  %i.dk = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, %.reass378
  br i1 %i.dn, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142, label %.lr.ph.i140.us

.lr.ph.i140:                                      ; preds = %.lr.ph.i140.preheader, %.cont168
  %.10252 = phi i64 [ %i.dt, %.cont168 ], [ %.6248370, %.lr.ph.i140.preheader ] ; 2 uses
  %i.do = phi i64 [ %i.dw, %.cont168 ], [ %i.dc, %.lr.ph.i140.preheader ] ; 2 uses
  %i.dp = and i64 %i.do, 64
  %.not.i141 = icmp eq i64 %i.dp, 0
  %i.dq = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.10252
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56 ; 2 uses
  br i1 %.not.i141, label %.cont168, label %.split357.us

.split357.us:                                     ; preds = %.lr.ph.i140, %.lr.ph.i140.us
  %.us-phi358 = phi i64 [ %.6248370, %.lr.ph.i140.us ], [ %.10252, %.lr.ph.i140 ]
  %.us-phi359 = phi i64 [ %.10.us, %.lr.ph.i140.us ], [ %.6241371, %.lr.ph.i140 ]
  %.us-phi360 = phi ptr [ %i.dh, %.lr.ph.i140.us ], [ %i.dr, %.lr.ph.i140 ]
  store atomic i64 %.reass378, ptr %.us-phi360 release, align 8
  br i1 %i.cp, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142, label %.else173

.else173:                                         ; preds = %.split357.us
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142

.cont168:                                         ; preds = %.lr.ph.i140
  %i.ds = atomicrmw add ptr %i.dr, i64 1 acq_rel, align 8 ; 0 uses
  %i.dt = lshr i64 %i.do, 8                       ; 3 uses
  %i.du = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, %.reass378
  br i1 %i.dx, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142, label %.lr.ph.i140

bb.w:                                             ; preds = %bb.u
  %i.dy = lshr i64 %i.cs, 8                       ; 5 uses
  %i.dz = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !41
  %i.ec = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.eb, i64 range(i64 -2147483648, 2147483648) %i.o)
  %i.ed = icmp ne i64 %i.ec, %2
  %.137 = zext i1 %i.ed to i32
  %i.ee = icmp eq i32 %.4373, %.137
  br i1 %i.ee, label %.cont180, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293

.cont180:                                         ; preds = %bb.w
  %i.ef = and i64 %i.cs, -256
  %i.eg = or disjoint i64 %i.ef, %i.r
  %.sroa.speculated185 = select i1 %i.cp, i64 %.6248370, i64 %.6241371
  %i.eh = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.sroa.speculated185
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  store atomic i64 %i.eg, ptr %i.ei release, align 8
  %spec.select305 = select i1 %i.cp, i64 %i.dy, i64 %.6248370 ; 3 uses
  %spec.select306 = select i1 %i.cp, i64 %.6241371, i64 %i.dy ; 3 uses
  %.sroa.speculated167 = select i1 %i.cp, i64 %.6241371, i64 %.6248370
  %i.ej = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.sroa.speculated167
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 3 uses
  %i.em = icmp eq i64 %i.el, %i.cs
  br i1 %i.em, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145, label %.lr.ph.i143.preheader

.lr.ph.i143.preheader:                            ; preds = %.cont180
  br i1 %i.cp, label %.lr.ph.i143.us, label %.lr.ph.i143

.lr.ph.i143.us:                                   ; preds = %.lr.ph.i143.preheader, %.cont.us
  %.12.us = phi i64 [ %i.es, %.cont.us ], [ %.6241371, %.lr.ph.i143.preheader ]
  %i.en = phi i64 [ %i.ev, %.cont.us ], [ %i.el, %.lr.ph.i143.preheader ] ; 2 uses
  %i.eo = and i64 %i.en, 64
  %.not.i144.us = icmp eq i64 %i.eo, 0
  %i.ep = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.12.us
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56 ; 2 uses
  br i1 %.not.i144.us, label %.cont.us, label %.split365.us

.cont.us:                                         ; preds = %.lr.ph.i143.us
  %i.er = atomicrmw add ptr %i.eq, i64 1 acq_rel, align 8 ; 0 uses
  %i.es = lshr i64 %i.en, 8                       ; 3 uses
  %i.et = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = load atomic i64, ptr %i.eu acquire, align 8 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.cs
  br i1 %i.ew, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145, label %.lr.ph.i143.us

.lr.ph.i143:                                      ; preds = %.lr.ph.i143.preheader, %.cont
  %.12254 = phi i64 [ %i.fc, %.cont ], [ %.6248370, %.lr.ph.i143.preheader ]
  %i.ex = phi i64 [ %i.ff, %.cont ], [ %i.el, %.lr.ph.i143.preheader ] ; 2 uses
  %i.ey = and i64 %i.ex, 64
  %.not.i144 = icmp eq i64 %i.ey, 0
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.12254
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 56 ; 2 uses
  br i1 %.not.i144, label %.cont, label %.split365.us

.split365.us:                                     ; preds = %.lr.ph.i143, %.lr.ph.i143.us
  %spec.select308 = phi i64 [ -1, %.lr.ph.i143.us ], [ %spec.select306, %.lr.ph.i143 ]
  %spec.select307 = phi i64 [ %spec.select305, %.lr.ph.i143.us ], [ -1, %.lr.ph.i143 ]
  %.us-phi368 = phi ptr [ %i.eq, %.lr.ph.i143.us ], [ %i.fa, %.lr.ph.i143 ]
  store atomic i64 %i.cs, ptr %.us-phi368 release, align 8
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145

.cont:                                            ; preds = %.lr.ph.i143
  %i.fb = atomicrmw add ptr %i.fa, i64 1 acq_rel, align 8 ; 0 uses
  %i.fc = lshr i64 %i.ex, 8                       ; 3 uses
  %i.fd = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, %i.cs
  br i1 %i.fg, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145, label %.lr.ph.i143

_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145: ; preds = %.cont, %.cont.us, %.split365.us, %.cont180
  %.13255 = phi i64 [ %spec.select305, %.cont180 ], [ %spec.select307, %.split365.us ], [ %spec.select305, %.cont.us ], [ %i.fc, %.cont ]
  %.13 = phi i64 [ %spec.select306, %.cont180 ], [ %spec.select308, %.split365.us ], [ %i.es, %.cont.us ], [ %spec.select306, %.cont ]
  %i.fh = sub nuw nsw i32 1, %.4373
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142

_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142: ; preds = %.cont168, %.cont168.us, %.split357.us, %.else173, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145
  %.7249 = phi i64 [ -1, %.else173 ], [ %.13255, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145 ], [ %.us-phi358, %.split357.us ], [ %.6248370, %.cont168.us ], [ %i.dt, %.cont168 ]
  %.7 = phi i64 [ %.us-phi359, %.else173 ], [ %.13, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145 ], [ -1, %.split357.us ], [ %i.dj, %.cont168.us ], [ %.6241371, %.cont168 ]
  %.6 = phi i32 [ %.4373, %.else173 ], [ %i.fh, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145 ], [ 0, %.split357.us ], [ 0, %.cont168.us ], [ %.4373, %.cont168 ]
  %.3 = phi i64 [ %.297374, %.else173 ], [ %i.dy, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit145 ], [ %.297374, %.split357.us ], [ %.297374, %.cont168.us ], [ %.297374, %.cont168 ]
  br i1 %.not312, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit.thread

_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142.thread293: ; preds = %bb.w, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142
  %.3301 = phi i64 [ %.3, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142 ], [ %i.dy, %bb.w ]
  %.6300 = phi i32 [ %.6, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142 ], [ %.4373, %bb.w ]
  %.7299 = phi i64 [ %.7, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142 ], [ %.6241371, %bb.w ]
  %.7249298 = phi i64 [ %.7249, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142 ], [ %.6248370, %bb.w ]
  %i.fi = add nuw nsw i32 %.0102372, 1            ; 2 uses
  %exitcond430 = icmp eq i32 %i.fi, 4096
  br i1 %exitcond430, label %bb.t, label %bb.u, !prof !135, !llvm.loop !311

_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit.thread: ; preds = %bb.v, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit142, %.split.us, %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit
  %i.fj = and i64 %.sroa.025.0, 64
  %.not.i146 = icmp eq i64 %i.fj, 0
  br i1 %.not.i146, label %bb.x, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit

bb.x:                                             ; preds = %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit.thread
  %i.fk = atomicrmw and ptr %i.w, i64 -129 acq_rel, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit: ; preds = %_ZN7rocksdb11clock_cache12_GLOBAL__N_120UpgradeShiftsOnRangeEPNS0_19AutoHyperClockTable10HandleImplERmNS3_13NextWithShiftEii.exit.thread, %bb.x
  %i.fl = and i64 %.sroa.023.0, 64
  %.not.i147 = icmp eq i64 %i.fl, 0
  br i1 %.not.i147, label %bb.y, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit148

bb.y:                                             ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit
  %i.fm = atomicrmw and ptr %i.f, i64 -129 acq_rel, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit148

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit148: ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit, %bb.y
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN7rocksdb11clock_cache19AutoHyperClockTable23CatchUpLengthInfoNoWaitEm(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 16 ; 3 uses
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.b, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = add nuw i64 %i.e, %i.c                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not46 = icmp ugt i64 %i.f, %1
  br i1 %.not46, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.01948 = phi i64 [ %i.ak, %bb.f ], [ %i.f, %bb.a ] ; 5 uses
  %.03147 = phi i64 [ %.132, %bb.f ], [ %i.b, %bb.a ]
  %i.j = add nuw i64 %.01948, 1                   ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
end_hunk_0
