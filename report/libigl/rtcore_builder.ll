Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rtcore_builder?download=true
inline.NumInlined: 3237
inline.NumDeleted: 617
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 122
begin_hunk_0_@"_ZN6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E7recurseEmRKNS_5rangeIjEESA_b":bb.a
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !220

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc1.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc1.i ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #33, !noalias !233
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.i

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  store ptr %i.ag, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !233
  store ptr %i.bb, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !233
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !233
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.i, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !233
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit.i unwind label %bb.i, !noalias !233

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #32, !noalias !233
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit.i:        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !233
  br label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_2clEv.exit"

bb.j:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.j)
          to label %common.resume unwind label %bb.k, !noalias !233

bb.k:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #32, !noalias !233
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #17, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !233
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %6) #17, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !233
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %bb.l, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %i.bi, %bb.l ], [ %i.bf, %bb.j ]
  resume { ptr, i32 } %common.resume.op

"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_2clEv.exit": ; preds = %bb.b, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit.i
  %.05.i.i = phi ptr [ %i.j, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.val, i64 290
  %i.bm = load i8, ptr %i.bl, align 2, !range !49, !noalias !234, !noundef !50
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  store ptr %i.bj, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_2clEv.exit", %bb.a
  br i1 %5, label %bb.n, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_7clEm.exit"

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = load i32, ptr %3, align 4
  %i.bt = sub i32 %i.br, %i.bs
  %i.bu = zext i32 %i.bt to i64                   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load i64, ptr %i.bv, align 8
  %.not = icmp ult i64 %i.bw, %i.bu
  br i1 %.not, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_7clEm.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !50, !align !54 ; 5 uses
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !50, !align !54
  %i.ca = load ptr, ptr %i.bz, align 8
  %.not.i70 = icmp eq ptr %i.ca, null
  br i1 %.not.i70, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_7clEm.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !50, !align !54
  %i.cd = atomicrmw add ptr %i.cc, i64 %i.bu seq_cst, align 8
  %i.ce = add i64 %i.cd, %i.bu
  %i.cf = uitofp i64 %i.ce to double
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !50, !align !54
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = uitofp i64 %i.ci to double
  %i.ck = fdiv double %i.cf, %i.cj                ; 2 uses
  %i.cl = fcmp olt double %i.ck, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.cl, double %i.ck, double 1.000000e+00
  %i.cm = load ptr, ptr %i.by, align 8, !nonnull !50, !align !54
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !50, !align !54
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef zeroext i1 %i.cn(ptr noundef %i.cq, double noundef %.sroa.speculated.i), !inline_history !221 ; 0 uses
  %.pre = load i64, ptr %i.c, align 8
  br label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_7clEm.exit"

"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_7clEm.exit": ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.cs = phi i64 [ %.pre, %bb.p ], [ %2, %bb.o ], [ %2, %bb.n ], [ %2, %bb.m ] ; 3 uses
  %i.ct = add i64 %i.cs, 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load i64, ptr %i.cu, align 8
  %.not43 = icmp ult i64 %i.ct, %i.cv
  br i1 %.not43, label %bb.q, label %.critedge, !prof !51

bb.q:                                             ; preds = %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_7clEm.exit"
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4            ; 3 uses
  %i.cy = load i32, ptr %3, align 4               ; 3 uses
  %i.cz = sub i32 %i.cx, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8
  %.not117 = icmp ult i64 %i.dc, %i.da
  br i1 %.not117, label %bb.r, label %.critedge, !prof !51

.critedge:                                        ; preds = %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_7clEm.exit", %bb.q
  tail call fastcc void @"_ZN6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E15createLargeLeafEmRKNS_5rangeIjEESA_"(ptr dead_on_unwind noalias writable align 16 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cs, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4)
  br label %bb.ad

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  %i.dg = zext i32 %i.cy to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 8            ; 2 uses
  %i.dj = add i32 %i.cx, -1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 8            ; 2 uses
  %i.dn = icmp eq i32 %i.di, %i.dm
  br i1 %i.dn, label %_ZN6embree5lzcntEi.exit61.thread, label %_ZN6embree5lzcntEi.exit61, !prof !53

_ZN6embree5lzcntEi.exit61:                        ; preds = %bb.r
  %i.do = xor i32 %i.dm, %i.di
  %i.dp = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.do) #9, !srcloc !242 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %_ZN6embree5lzcntEi.exit61.thread, label %.critedge.i50, !prof !243

_ZN6embree5lzcntEi.exit61.thread:                 ; preds = %bb.r, %_ZN6embree5lzcntEi.exit61
  tail call fastcc void @"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E19recreateMortonCodesERKNS_5rangeIjEE"(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.dr = load ptr, ptr %i.de, align 8            ; 4 uses
  %i.ds = load i32, ptr %3, align 4               ; 3 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  %i.dw = load i32, ptr %i.cw, align 4            ; 4 uses
  %i.dx = add i32 %i.dw, -1
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 8            ; 2 uses
  %i.eb = icmp eq i32 %i.dv, %i.ea
  br i1 %i.eb, label %_ZN6embree5lzcntEi.exit.thread, label %_ZN6embree5lzcntEi.exit, !prof !53

_ZN6embree5lzcntEi.exit:                          ; preds = %_ZN6embree5lzcntEi.exit61.thread
  %i.ec = xor i32 %i.ea, %i.dv
  %i.ed = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.ec) #9, !srcloc !242 ; 2 uses
  %.not.i57 = icmp eq i32 %i.ed, -1
  br i1 %.not.i57, label %_ZN6embree5lzcntEi.exit.thread, label %.critedge.i50, !prof !243

_ZN6embree5lzcntEi.exit.thread:                   ; preds = %_ZN6embree5lzcntEi.exit61.thread, %_ZN6embree5lzcntEi.exit
  %i.ee = add i32 %i.dw, %i.ds
  %i.ef = lshr i32 %i.ee, 1
  %.sroa.499.0.insert.ext = zext nneg i32 %i.ef to i64 ; 2 uses
  %.sroa.499.0.insert.shift = shl nuw nsw i64 %.sroa.499.0.insert.ext, 32
  %.sroa.098.0.insert.insert = or disjoint i64 %.sroa.499.0.insert.shift, %i.dt
  br label %"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58"

.critedge.i50:                                    ; preds = %_ZN6embree5lzcntEi.exit, %_ZN6embree5lzcntEi.exit61
  %i.eg = phi ptr [ %i.df, %_ZN6embree5lzcntEi.exit61 ], [ %i.dr, %_ZN6embree5lzcntEi.exit ] ; 2 uses
  %i.eh = phi i32 [ %i.cx, %_ZN6embree5lzcntEi.exit61 ], [ %i.dw, %_ZN6embree5lzcntEi.exit ] ; 4 uses
  %i.ei = phi i32 [ %i.cy, %_ZN6embree5lzcntEi.exit61 ], [ %i.ds, %_ZN6embree5lzcntEi.exit ] ; 3 uses
  %.pn = phi i32 [ %i.dp, %_ZN6embree5lzcntEi.exit61 ], [ %i.ed, %_ZN6embree5lzcntEi.exit ]
  %.036.i51 = sub nsw i32 31, %.pn
  %14 = lshr exact i32 -2147483648, %.036.i51
  %i.ej = add i32 %i.ei, 1
  %.not38.i54123 = icmp eq i32 %i.ej, %i.eh
  br i1 %.not38.i54123, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.i50, %.lr.ph
  %.0.i53125 = phi i32 [ %.0..i56, %.lr.ph ], [ %i.eh, %.critedge.i50 ] ; 2 uses
  %.033.i52124 = phi i32 [ %..033.i55, %.lr.ph ], [ %i.ei, %.critedge.i50 ] ; 2 uses
  %i.ek = add i32 %.0.i53125, %.033.i52124
  %i.el = lshr i32 %i.ek, 1                       ; 3 uses
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = and i32 %i.eo, %14
  %i.eq = icmp eq i32 %i.ep, 0                    ; 2 uses
  %..033.i55 = select i1 %i.eq, i32 %i.el, i32 %.033.i52124 ; 2 uses
  %.0..i56 = select i1 %i.eq, i32 %.0.i53125, i32 %i.el ; 3 uses
  %i.er = add i32 %..033.i55, 1
  %.not38.i54 = icmp eq i32 %i.er, %.0..i56
  br i1 %.not38.i54, label %._crit_edge, label %.lr.ph, !llvm.loop !222

._crit_edge:                                      ; preds = %.lr.ph, %.critedge.i50
  %.0.i53.lcssa = phi i32 [ %i.eh, %.critedge.i50 ], [ %.0..i56, %.lr.ph ]
  %.sroa.493.0.insert.ext = zext i32 %.0.i53.lcssa to i64 ; 2 uses
  %.sroa.493.0.insert.shift = shl nuw i64 %.sroa.493.0.insert.ext, 32
  %.sroa.092.0.insert.ext = zext i32 %i.ei to i64
  %.sroa.092.0.insert.insert = or disjoint i64 %.sroa.493.0.insert.shift, %.sroa.092.0.insert.ext
  br label %"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58"

"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58": ; preds = %_ZN6embree5lzcntEi.exit.thread, %._crit_edge
  %.sroa.098.0.insert.insert.sink = phi i64 [ %.sroa.098.0.insert.insert, %_ZN6embree5lzcntEi.exit.thread ], [ %.sroa.092.0.insert.insert, %._crit_edge ]
  %.sink = phi i32 [ %i.dw, %_ZN6embree5lzcntEi.exit.thread ], [ %i.eh, %._crit_edge ]
  %.sroa.499.0.insert.ext.sink = phi i64 [ %.sroa.499.0.insert.ext, %_ZN6embree5lzcntEi.exit.thread ], [ %.sroa.493.0.insert.ext, %._crit_edge ]
  %i.es = phi ptr [ %i.dr, %_ZN6embree5lzcntEi.exit.thread ], [ %i.eg, %._crit_edge ] ; 2 uses
  store i64 %.sroa.098.0.insert.insert.sink, ptr %10, align 16
  %.sroa.497.0.insert.ext = zext i32 %.sink to i64
  %.sroa.497.0.insert.shift = shl nuw i64 %.sroa.497.0.insert.ext, 32
  %.sroa.096.0.insert.insert = or disjoint i64 %.sroa.497.0.insert.shift, %.sroa.499.0.insert.ext.sink
  store i64 %.sroa.096.0.insert.insert, ptr %i.dd, align 8
  %i.et = load i64, ptr %1, align 8
  %i.eu = icmp ugt i64 %i.et, 2
  br i1 %i.eu, label %.preheader120, label %.thread

.preheader120:                                    ; preds = %"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58", %._crit_edge133
  %indvar = phi i64 [ %indvar.next, %._crit_edge133 ], [ 0, %"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58" ] ; 2 uses
  %i.ev = phi ptr [ %i.hj, %._crit_edge133 ], [ %i.es, %"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58" ]
  %i.ew = phi ptr [ %i.hk, %._crit_edge133 ], [ %i.es, %"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58" ] ; 3 uses
  %.040135 = phi i64 [ %i.ho, %._crit_edge133 ], [ 2, %"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58" ] ; 6 uses
  %i.ex = load i64, ptr %i.db, align 8            ; 3 uses
  %xtraiter = and i64 %.040135, 1
  %i.ey = icmp eq i64 %indvar, -1
  br i1 %i.ey, label %.epil.preheader, label %.preheader120.new

.preheader120.new:                                ; preds = %.preheader120
  %unroll_iter = and i64 %.040135, 9223372036854775806
  br label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader120
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader120 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.037127.epil.init = phi i32 [ 0, %.preheader120 ], [ %.1.1, %.unr-lcssa ]
  %.038126.epil.init = phi i32 [ -1, %.preheader120 ], [ %.139.1, %.unr-lcssa ]
  %lcmp.mod180 = trunc i64 %.040135 to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.epil.init ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = load i32, ptr %i.ez, align 8
  %i.fd = sub i32 %i.fb, %i.fc                    ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %.not49.epil = icmp ult i64 %i.ex, %i.fe
  %i.ff = icmp ugt i32 %i.fd, %.037127.epil.init
  %or.cond.epil = select i1 %.not49.epil, i1 %i.ff, i1 false
  %i.fg = trunc nuw i64 %indvars.iv.epil.init to i32
  %.139.epil = select i1 %or.cond.epil, i32 %i.fg, i32 %.038126.epil.init
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.139.lcssa = phi i32 [ %.139.1, %.unr-lcssa ], [ %.139.epil, %.epil.preheader ] ; 2 uses
  %i.fh = icmp eq i32 %.139.lcssa, -1
  br i1 %i.fh, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.t, %.preheader120.new
  %indvars.iv = phi i64 [ 0, %.preheader120.new ], [ %indvars.iv.next.1, %bb.t ] ; 4 uses
  %.037127 = phi i32 [ 0, %.preheader120.new ], [ %.1.1, %bb.t ] ; 2 uses
  %.038126 = phi i32 [ -1, %.preheader120.new ], [ %.139.1, %bb.t ]
  %niter = phi i64 [ 0, %.preheader120.new ], [ %niter.next.1, %bb.t ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = load i32, ptr %i.fi, align 16
  %i.fm = sub i32 %i.fk, %i.fl                    ; 3 uses
  %i.fn = zext i32 %i.fm to i64
  %.not49 = icmp ult i64 %i.ex, %i.fn
  %i.fo = icmp ugt i32 %i.fm, %.037127
  %or.cond = select i1 %.not49, i1 %i.fo, i1 false ; 2 uses
  %i.fp = trunc nuw i64 %indvars.iv to i32
  %.139 = select i1 %or.cond, i32 %i.fp, i32 %.038126
  %.1 = select i1 %or.cond, i32 %i.fm, i32 %.037127 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.next ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = load i32, ptr %i.fq, align 8
  %i.fu = sub i32 %i.fs, %i.ft                    ; 3 uses
  %i.fv = zext i32 %i.fu to i64
  %.not49.1 = icmp ult i64 %i.ex, %i.fv
  %i.fw = icmp ugt i32 %i.fu, %.1
  %or.cond.1 = select i1 %.not49.1, i1 %i.fw, i1 false ; 2 uses
  %i.fx = trunc nuw i64 %indvars.iv.next to i32
  %.139.1 = select i1 %or.cond.1, i32 %i.fx, i32 %.139 ; 3 uses
  %.1.1 = select i1 %or.cond.1, i32 %i.fu, i32 %.1 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.t, !llvm.loop !223

bb.u:                                             ; preds = %bb.s
  %i.fy = sext i32 %.139.lcssa to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %10, i64 %i.fy ; 4 uses
  %i.ga = load i32, ptr %i.fz, align 8            ; 4 uses
  %i.gb = zext i32 %i.ga to i64                   ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 8            ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gf = load i32, ptr %i.ge, align 4            ; 6 uses
  %i.gg = add i32 %i.gf, -1
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 8            ; 2 uses
  %i.gk = icmp eq i32 %i.gd, %i.gj
  br i1 %i.gk, label %_ZN6embree5lzcntEi.exit65.thread, label %_ZN6embree5lzcntEi.exit65, !prof !53

_ZN6embree5lzcntEi.exit65:                        ; preds = %bb.u
  %i.gl = xor i32 %i.gj, %i.gd
  %i.gm = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.gl) #9, !srcloc !242 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, -1
  br i1 %i.gn, label %_ZN6embree5lzcntEi.exit65.thread, label %.critedge.i, !prof !243

_ZN6embree5lzcntEi.exit65.thread:                 ; preds = %bb.u, %_ZN6embree5lzcntEi.exit65
  call fastcc void @"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E19recreateMortonCodesERKNS_5rangeIjEE"(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fz)
  %i.go = load ptr, ptr %i.de, align 8            ; 6 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gb
  %i.gq = load i32, ptr %i.gp, align 8            ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gh
  %i.gs = load i32, ptr %i.gr, align 8            ; 2 uses
  %i.gt = icmp eq i32 %i.gq, %i.gs
  br i1 %i.gt, label %_ZN6embree5lzcntEi.exit63.thread, label %_ZN6embree5lzcntEi.exit63, !prof !53

_ZN6embree5lzcntEi.exit63:                        ; preds = %_ZN6embree5lzcntEi.exit65.thread
  %i.gu = xor i32 %i.gs, %i.gq
  %i.gv = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.gu) #9, !srcloc !242 ; 2 uses
  %.not.i = icmp eq i32 %i.gv, -1
  br i1 %.not.i, label %_ZN6embree5lzcntEi.exit63.thread, label %.critedge.i, !prof !243

_ZN6embree5lzcntEi.exit63.thread:                 ; preds = %_ZN6embree5lzcntEi.exit65.thread, %_ZN6embree5lzcntEi.exit63
  %i.gw = add i32 %i.gf, %i.ga
  %i.gx = lshr i32 %i.gw, 1
  br label %._crit_edge133

.critedge.i:                                      ; preds = %_ZN6embree5lzcntEi.exit63, %_ZN6embree5lzcntEi.exit65
  %i.gy = phi ptr [ %i.ev, %_ZN6embree5lzcntEi.exit65 ], [ %i.go, %_ZN6embree5lzcntEi.exit63 ] ; 4 uses
  %i.gz = phi ptr [ %i.ew, %_ZN6embree5lzcntEi.exit65 ], [ %i.go, %_ZN6embree5lzcntEi.exit63 ]
  %.pn118 = phi i32 [ %i.gm, %_ZN6embree5lzcntEi.exit65 ], [ %i.gv, %_ZN6embree5lzcntEi.exit63 ]
  %.036.i = sub nsw i32 31, %.pn118
  %15 = lshr exact i32 -2147483648, %.036.i
  %i.ha = add i32 %i.ga, 1
  %.not38.i129 = icmp eq i32 %i.ha, %i.gf
  br i1 %.not38.i129, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %.critedge.i, %.lr.ph132
  %.0.i131 = phi i32 [ %.0..i, %.lr.ph132 ], [ %i.gf, %.critedge.i ] ; 2 uses
  %.033.i130 = phi i32 [ %..033.i, %.lr.ph132 ], [ %i.ga, %.critedge.i ] ; 2 uses
  %i.hb = add i32 %.0.i131, %.033.i130
  %i.hc = lshr i32 %i.hb, 1                       ; 3 uses
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = and i32 %i.hf, %15
  %i.hh = icmp eq i32 %i.hg, 0                    ; 2 uses
  %..033.i = select i1 %i.hh, i32 %i.hc, i32 %.033.i130 ; 2 uses
  %.0..i = select i1 %i.hh, i32 %.0.i131, i32 %i.hc ; 3 uses
  %i.hi = add i32 %..033.i, 1
  %.not38.i = icmp eq i32 %i.hi, %.0..i
  br i1 %.not38.i, label %._crit_edge133, label %.lr.ph132, !llvm.loop !222

._crit_edge133:                                   ; preds = %.lr.ph132, %.critedge.i, %_ZN6embree5lzcntEi.exit63.thread
  %.0.i.lcssa.sink = phi i32 [ %i.gx, %_ZN6embree5lzcntEi.exit63.thread ], [ %i.gf, %.critedge.i ], [ %.0..i, %.lr.ph132 ]
  %i.hj = phi ptr [ %i.go, %_ZN6embree5lzcntEi.exit63.thread ], [ %i.gy, %.critedge.i ], [ %i.gy, %.lr.ph132 ]
  %i.hk = phi ptr [ %i.go, %_ZN6embree5lzcntEi.exit63.thread ], [ %i.gz, %.critedge.i ], [ %i.gy, %.lr.ph132 ]
  %.sroa.485.0.insert.ext = zext i32 %.0.i.lcssa.sink to i64 ; 2 uses
  %.sroa.482.0.insert.ext = zext i32 %i.gf to i64
  %.sroa.482.0.insert.shift = shl nuw i64 %.sroa.482.0.insert.ext, 32
  %.sroa.081.0.insert.insert = or disjoint i64 %.sroa.482.0.insert.shift, %.sroa.485.0.insert.ext
  %.sroa.4105.0.insert.shift.pn = shl nuw i64 %.sroa.485.0.insert.ext, 32
  %.sroa.079.0 = or disjoint i64 %.sroa.4105.0.insert.shift.pn, %i.gb
  %i.hl = getelementptr [8 x i8], ptr %10, i64 %.040135 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 -8     ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8
  store i64 %i.hn, ptr %i.fz, align 8
  store i64 %.sroa.079.0, ptr %i.hm, align 8
  store i64 %.sroa.081.0.insert.insert, ptr %i.hl, align 8
  %i.ho = add nuw nsw i64 %.040135, 1             ; 3 uses
  %i.hp = load i64, ptr %1, align 8
  %i.hq = icmp ult i64 %i.ho, %i.hp
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hq, label %.preheader120, label %.thread

.thread:                                          ; preds = %bb.s, %._crit_edge133, %"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58"
  %.040.lcssa = phi i64 [ 2, %"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E5splitERKNS_5rangeIjEERSM_SP_.exit58" ], [ %i.ho, %._crit_edge133 ], [ %.040135, %bb.s ] ; 6 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8, !nonnull !50, !align !54 ; 2 uses
  %.val68 = load ptr, ptr %i.hs, align 8
  %i.ht = getelementptr i8, ptr %i.hs, i64 8
  %.val69 = load ptr, ptr %i.ht, align 8
  %.val68.val = load ptr, ptr %.val68, align 8
  %.val69.val = load ptr, ptr %.val69, align 8
  %i.hu = trunc i64 %.040.lcssa to i32            ; 3 uses
  %i.hv = call noundef ptr %.val68.val(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.hu, ptr noundef %.val69.val), !inline_history !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr null, ptr %11, align 16
  %.ptr47.1 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr null, ptr %.ptr47.1, align 16
  %.ptr47.2 = getelementptr inbounds nuw i8, ptr %11, i64 96
  store ptr null, ptr %.ptr47.2, align 16
  %.ptr47.3 = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr null, ptr %.ptr47.3, align 16
  %.ptr47.4 = getelementptr inbounds nuw i8, ptr %11, i64 192
  store ptr null, ptr %.ptr47.4, align 16
  %.ptr47.5 = getelementptr inbounds nuw i8, ptr %11, i64 240
  store ptr null, ptr %.ptr47.5, align 16
  %.ptr47.6 = getelementptr inbounds nuw i8, ptr %11, i64 288
  store ptr null, ptr %.ptr47.6, align 16
  %.ptr47.7 = getelementptr inbounds nuw i8, ptr %11, i64 336
  store ptr null, ptr %.ptr47.7, align 16
  %i.hw = load i32, ptr %i.cw, align 4
  %i.hx = load i32, ptr %3, align 4
  %i.hy = sub i32 %i.hw, %i.hx
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = icmp ult i64 %i.ib, %i.hz
  br i1 %i.ic, label %bb.v, label %.preheader

.preheader:                                       ; preds = %.thread
  %i.id = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.if = add i64 %i.cs, 1
  br label %bb.ac

bb.v:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store ptr %11, ptr %12, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %1, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.c, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %10, ptr %i.ii, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store ptr null, ptr %8, align 8
  invoke fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS2_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS2_17rtcBuildBVHMortonESF_E3$_3ZNS2_17rtcBuildBVHMortonESF_E3$_4ZNS2_17rtcBuildBVHMortonESF_E3$_5ZNS2_17rtcBuildBVHMortonESF_E3$_6ZNS2_17rtcBuildBVHMortonESF_E3$_7E7recurseEmRKNS_5rangeIjEESC_bEUlRKNSN_ImEEE_EEvT_SV_SV_RKT0_PNS0_16TaskGroupContextE"(i64 noundef 0, i64 noundef range(i64 2, 1) %.040.lcssa, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %8)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.y

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.w
  %i.ij = load ptr, ptr %8, align 8               ; 2 uses
  %.not119 = icmp eq ptr %i.ij, null
  br i1 %.not119, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit77, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.ij, ptr %9, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %9) #31
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = load ptr, ptr %9, align 8
  %.not.i74 = icmp eq ptr %i.im, null
  br i1 %.not.i74, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75: ; preds = %bb.aa, %bb.z, %bb.y
  %.pn.i = phi { ptr, i32 } [ %i.ik, %bb.y ], [ %i.il, %bb.z ], [ %i.il, %bb.aa ]
  %i.in = load ptr, ptr %8, align 8
  %.not.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %common.resume

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit77: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.loopexit

bb.ac:                                            ; preds = %.preheader, %bb.ac
  %.0139 = phi i64 [ 0, %.preheader ], [ %i.iv, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.0139
  call fastcc void @"_ZN6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E7recurseEmRKNS_5rangeIjEESA_b"(ptr dead_on_unwind noalias writable align 16 %13, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.if, ptr noundef nonnull align 4 dereferenceable(8) %i.io, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4, i1 noundef zeroext false)
  %i.ip = getelementptr inbounds nuw [48 x i8], ptr %11, i64 %.0139 ; 3 uses
  %i.iq = load ptr, ptr %13, align 16
  store ptr %i.iq, ptr %i.ip, align 16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.is = load <4 x float>, ptr %i.id, align 16
  store <4 x float> %i.is, ptr %i.ir, align 16
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.iu = load <4 x float>, ptr %i.ie, align 16
  store <4 x float> %i.iu, ptr %i.it, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.iv = add nuw i64 %.0139, 1                   ; 2 uses
  %exitcond143.not = icmp eq i64 %i.iv, %.040.lcssa
  br i1 %exitcond143.not, label %.loopexit, label %bb.ac, !llvm.loop !224

.loopexit:                                        ; preds = %bb.ac, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit77
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !nonnull !50, !align !54 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !244
  %xtraiter181 = and i64 %.040.lcssa, 1
  %unroll_iter186 = and i64 %.040.lcssa, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit
  %.022.i = phi i64 [ 0, %.loopexit ], [ %i.jt, %.lr.ph.i ] ; 5 uses
  %.sroa.0.021.i = phi <4 x float> [ splat (float +inf), %.loopexit ], [ %i.jm, %.lr.ph.i ]
  %.sroa.6.020.i = phi <4 x float> [ splat (float -inf), %.loopexit ], [ %i.jp, %.lr.ph.i ]
  %niter187 = phi i64 [ 0, %.loopexit ], [ %niter187.next.1, %.lr.ph.i ]
  %i.iy = getelementptr inbounds nuw [48 x i8], ptr %11, i64 %.022.i ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %i.ja = load <4 x float>, ptr %i.iz, align 16, !noalias !245
  %i.jb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.021.i, <4 x float> %i.ja)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.jd = load <4 x float>, ptr %i.jc, align 16, !noalias !246
  %i.je = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.020.i, <4 x float> %i.jd)
  %i.jf = load ptr, ptr %i.iy, align 16, !noalias !244
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.022.i
  store ptr %i.jf, ptr %i.jg, align 16, !noalias !244
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.022.i
  store ptr %i.iz, ptr %i.jh, align 16, !noalias !244
  %i.ji = or disjoint i64 %.022.i, 1              ; 3 uses
end_hunk_0
