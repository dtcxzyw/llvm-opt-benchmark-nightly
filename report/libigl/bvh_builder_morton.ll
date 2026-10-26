Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_morton?download=true
inline.NumInlined: 2981
inline.NumDeleted: 348
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseEmRKNS_5rangeIjEES8_b:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader236

.lr.ph.i.i.i.i.i.i.i.preheader236:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader236, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader236 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader236 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82), !noalias !80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83), !noalias !80
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !83, !noalias !80
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !82, !noalias !80
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !83, !noalias !80
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !68

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc71
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc71 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #28, !noalias !80
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.g
  store ptr %i.ah, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !80
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !80
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !80
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !80
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.i, !noalias !80

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27, !noalias !80
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !80
  br label %_ZN6embree13FastAllocator12threadLocal2Ev.exit

bb.j:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.k, !noalias !80

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #27, !noalias !80
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #11, !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !80
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #11, !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !80
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.j, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i69, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %eh.lpad-body.i, %.body.i ], [ %i.bj, %bb.l ], [ %i.bg, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN6embree13FastAllocator12threadLocal2Ev.exit:   ; preds = %bb.b, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %.05.i = phi ptr [ %i.k, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 266
  %i.bm = load i8, ptr %i.bl, align 2, !range !24, !noundef !25
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  store ptr %i.g, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN6embree13FastAllocator12threadLocal2Ev.exit, %bb.a
  %i.bq = phi ptr [ %i.g, %_ZN6embree13FastAllocator12threadLocal2Ev.exit ], [ %i.d, %bb.a ] ; 10 uses
  br i1 %5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = load i32, ptr %3, align 4
  %i.bu = sub i32 %i.bs, %i.bt
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8
  %.not = icmp ult i64 %i.bx, %i.bv
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !25, !align !27 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef %i.bv)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cc = add i64 %2, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %.not43 = icmp ult i64 %i.cc, %i.ce
  br i1 %.not43, label %bb.q, label %.critedge, !prof !30

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = load i32, ptr %3, align 4               ; 3 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %.not150 = icmp ult i64 %i.cl, %i.cj
  br i1 %.not150, label %bb.r, label %.critedge, !prof !30

.critedge:                                        ; preds = %bb.p, %bb.q
  tail call void @_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafEmRKNS_5rangeIjEES8_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecord") align 16 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4)
  br label %bb.bc

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = zext i32 %i.ch to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = add i32 %i.cg, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq i32 %i.cr, %i.cv
  br i1 %i.cw, label %_ZN6embree5lzcntEi.exit63.thread, label %_ZN6embree5lzcntEi.exit63, !prof !31

_ZN6embree5lzcntEi.exit63:                        ; preds = %bb.r
  %i.cx = xor i32 %i.cv, %i.cr
  %i.cy = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.cx) #30, !srcloc !32 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZN6embree5lzcntEi.exit63.thread, label %.critedge.i50, !prof !33

_ZN6embree5lzcntEi.exit63.thread:                 ; preds = %bb.r, %_ZN6embree5lzcntEi.exit63
  tail call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.da = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.db = load i32, ptr %3, align 4               ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.df = load i32, ptr %i.cf, align 4            ; 4 uses
  %i.dg = add i32 %i.df, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i32 %i.de, %i.dj
  br i1 %i.dk, label %_ZN6embree5lzcntEi.exit.thread, label %_ZN6embree5lzcntEi.exit, !prof !31

_ZN6embree5lzcntEi.exit:                          ; preds = %_ZN6embree5lzcntEi.exit63.thread
  %i.dl = xor i32 %i.dj, %i.de
  %i.dm = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.dl) #30, !srcloc !32 ; 2 uses
  %.not.i57 = icmp eq i32 %i.dm, -1
  br i1 %.not.i57, label %_ZN6embree5lzcntEi.exit.thread, label %.critedge.i50, !prof !33

_ZN6embree5lzcntEi.exit.thread:                   ; preds = %_ZN6embree5lzcntEi.exit63.thread, %_ZN6embree5lzcntEi.exit
  %i.dn = add i32 %i.df, %i.db
  %i.do = lshr i32 %i.dn, 1
  %.sroa.4124.0.insert.ext = zext nneg i32 %i.do to i64 ; 2 uses
  %.sroa.4124.0.insert.shift = shl nuw nsw i64 %.sroa.4124.0.insert.ext, 32
  %.sroa.0123.0.insert.insert = or disjoint i64 %.sroa.4124.0.insert.shift, %i.dc
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58

.critedge.i50:                                    ; preds = %_ZN6embree5lzcntEi.exit, %_ZN6embree5lzcntEi.exit63
  %i.dp = phi ptr [ %i.co, %_ZN6embree5lzcntEi.exit63 ], [ %i.da, %_ZN6embree5lzcntEi.exit ] ; 2 uses
  %i.dq = phi i32 [ %i.cg, %_ZN6embree5lzcntEi.exit63 ], [ %i.df, %_ZN6embree5lzcntEi.exit ] ; 4 uses
  %i.dr = phi i32 [ %i.ch, %_ZN6embree5lzcntEi.exit63 ], [ %i.db, %_ZN6embree5lzcntEi.exit ] ; 3 uses
  %.pn = phi i32 [ %i.cy, %_ZN6embree5lzcntEi.exit63 ], [ %i.dm, %_ZN6embree5lzcntEi.exit ]
  %.036.i51 = sub nsw i32 31, %.pn
  %16 = lshr exact i32 -2147483648, %.036.i51
  %i.ds = add i32 %i.dr, 1
  %.not38.i54158 = icmp eq i32 %i.ds, %i.dq
  br i1 %.not38.i54158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.i50, %.lr.ph
  %.0.i53160 = phi i32 [ %.0..i56, %.lr.ph ], [ %i.dq, %.critedge.i50 ] ; 2 uses
  %.033.i52159 = phi i32 [ %..033.i55, %.lr.ph ], [ %i.dr, %.critedge.i50 ] ; 2 uses
  %i.dt = add i32 %.0.i53160, %.033.i52159
  %i.du = lshr i32 %i.dt, 1                       ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = and i32 %i.dx, %16
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %..033.i55 = select i1 %i.dz, i32 %i.du, i32 %.033.i52159 ; 2 uses
  %.0..i56 = select i1 %i.dz, i32 %.0.i53160, i32 %i.du ; 3 uses
  %i.ea = add i32 %..033.i55, 1
  %.not38.i54 = icmp eq i32 %i.ea, %.0..i56
  br i1 %.not38.i54, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %.critedge.i50
  %.0.i53.lcssa = phi i32 [ %i.dq, %.critedge.i50 ], [ %.0..i56, %.lr.ph ]
  %.sroa.4108.0.insert.ext = zext i32 %.0.i53.lcssa to i64 ; 2 uses
  %.sroa.4108.0.insert.shift = shl nuw i64 %.sroa.4108.0.insert.ext, 32
  %.sroa.0107.0.insert.ext = zext i32 %i.dr to i64
  %.sroa.0107.0.insert.insert = or disjoint i64 %.sroa.4108.0.insert.shift, %.sroa.0107.0.insert.ext
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58

_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58: ; preds = %_ZN6embree5lzcntEi.exit.thread, %._crit_edge
  %.sroa.0123.0.insert.insert.sink = phi i64 [ %.sroa.0123.0.insert.insert, %_ZN6embree5lzcntEi.exit.thread ], [ %.sroa.0107.0.insert.insert, %._crit_edge ]
  %.sink = phi i32 [ %i.df, %_ZN6embree5lzcntEi.exit.thread ], [ %i.dq, %._crit_edge ]
  %.sroa.4124.0.insert.ext.sink = phi i64 [ %.sroa.4124.0.insert.ext, %_ZN6embree5lzcntEi.exit.thread ], [ %.sroa.4108.0.insert.ext, %._crit_edge ]
  %i.eb = phi ptr [ %i.da, %_ZN6embree5lzcntEi.exit.thread ], [ %i.dp, %._crit_edge ] ; 2 uses
  store i64 %.sroa.0123.0.insert.insert.sink, ptr %12, align 16
  %.sroa.4122.0.insert.ext = zext i32 %.sink to i64
  %.sroa.4122.0.insert.shift = shl nuw i64 %.sroa.4122.0.insert.ext, 32
  %.sroa.0121.0.insert.insert = or disjoint i64 %.sroa.4122.0.insert.shift, %.sroa.4124.0.insert.ext.sink
  store i64 %.sroa.0121.0.insert.insert, ptr %i.cm, align 8
  %i.ec = load i64, ptr %1, align 8
  %i.ed = icmp ugt i64 %i.ec, 2
  br i1 %i.ed, label %.preheader157, label %.thread

.preheader157:                                    ; preds = %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58 ] ; 2 uses
  %i.ee = phi ptr [ %i.ha, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58 ]
  %i.ef = phi ptr [ %i.hb, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58 ] ; 3 uses
  %.0170 = phi i64 [ %i.hf, %bb.v ], [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58 ] ; 6 uses
  %i.eg = load i64, ptr %i.ck, align 8            ; 3 uses
  %xtraiter = and i64 %.0170, 1
  %i.eh = icmp eq i64 %indvar, -1
  br i1 %i.eh, label %.epil.preheader, label %.preheader157.new

.preheader157.new:                                ; preds = %.preheader157
  %unroll_iter = and i64 %.0170, 9223372036854775806
  br label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader157
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader157 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.038162.epil.init = phi i32 [ 0, %.preheader157 ], [ %.139.1, %.unr-lcssa ]
  %.040161.epil.init = phi i32 [ -1, %.preheader157 ], [ %.141.1, %.unr-lcssa ]
  %lcmp.mod239 = trunc i64 %.0170 to i1
  call void @llvm.assume(i1 %lcmp.mod239)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.epil.init ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = load i32, ptr %i.ei, align 8
  %i.em = sub i32 %i.ek, %i.el                    ; 2 uses
  %i.en = zext i32 %i.em to i64
  %.not49.epil = icmp ult i64 %i.eg, %i.en
  %i.eo = icmp ugt i32 %i.em, %.038162.epil.init
  %or.cond.epil = select i1 %.not49.epil, i1 %i.eo, i1 false
  %i.ep = trunc nuw i64 %indvars.iv.epil.init to i32
  %.141.epil = select i1 %or.cond.epil, i32 %i.ep, i32 %.040161.epil.init
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.141.lcssa = phi i32 [ %.141.1, %.unr-lcssa ], [ %.141.epil, %.epil.preheader ] ; 2 uses
  %i.eq = icmp eq i32 %.141.lcssa, -1
  br i1 %i.eq, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.t, %.preheader157.new
  %indvars.iv = phi i64 [ 0, %.preheader157.new ], [ %indvars.iv.next.1, %bb.t ] ; 4 uses
  %.038162 = phi i32 [ 0, %.preheader157.new ], [ %.139.1, %bb.t ] ; 2 uses
  %.040161 = phi i32 [ -1, %.preheader157.new ], [ %.141.1, %bb.t ]
  %niter = phi i64 [ 0, %.preheader157.new ], [ %niter.next.1, %bb.t ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = load i32, ptr %i.er, align 16
  %i.ev = sub i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %.not49 = icmp ult i64 %i.eg, %i.ew
  %i.ex = icmp ugt i32 %i.ev, %.038162
  %or.cond = select i1 %.not49, i1 %i.ex, i1 false ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %.141 = select i1 %or.cond, i32 %i.ey, i32 %.040161
  %.139 = select i1 %or.cond, i32 %i.ev, i32 %.038162 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = load i32, ptr %i.ez, align 8
  %i.fd = sub i32 %i.fb, %i.fc                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %.not49.1 = icmp ult i64 %i.eg, %i.fe
  %i.ff = icmp ugt i32 %i.fd, %.139
  %or.cond.1 = select i1 %.not49.1, i1 %i.ff, i1 false ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv.next to i32
  %.141.1 = select i1 %or.cond.1, i32 %i.fg, i32 %.141 ; 3 uses
  %.139.1 = select i1 %or.cond.1, i32 %i.fd, i32 %.139 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.t, !llvm.loop !70

bb.u:                                             ; preds = %bb.s
  %i.fh = sext i32 %.141.lcssa to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %12, i64 %i.fh ; 5 uses
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %i.fp = add i32 %i.fo, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %i.ft = icmp eq i32 %i.fm, %i.fs
  br i1 %i.ft, label %_ZN6embree5lzcntEi.exit67.thread, label %_ZN6embree5lzcntEi.exit67, !prof !31

_ZN6embree5lzcntEi.exit67:                        ; preds = %bb.u
  %i.fu = xor i32 %i.fs, %i.fm
  %i.fv = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.fu) #30, !srcloc !32 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %_ZN6embree5lzcntEi.exit67.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit67.thread:                 ; preds = %bb.u, %_ZN6embree5lzcntEi.exit67
  call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fi)
  %i.fx = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.fy = load i32, ptr %i.fi, align 8            ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 8            ; 2 uses
  %i.gc = load i32, ptr %i.fn, align 4            ; 4 uses
  %i.gd = add i32 %i.gc, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = icmp eq i32 %i.gb, %i.gg
  br i1 %i.gh, label %_ZN6embree5lzcntEi.exit65.thread, label %_ZN6embree5lzcntEi.exit65, !prof !31

_ZN6embree5lzcntEi.exit65:                        ; preds = %_ZN6embree5lzcntEi.exit67.thread
  %i.gi = xor i32 %i.gg, %i.gb
  %i.gj = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.gi) #30, !srcloc !32 ; 2 uses
  %.not.i = icmp eq i32 %i.gj, -1
  br i1 %.not.i, label %_ZN6embree5lzcntEi.exit65.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit65.thread:                 ; preds = %_ZN6embree5lzcntEi.exit67.thread, %_ZN6embree5lzcntEi.exit65
  %i.gk = add i32 %i.gc, %i.fy
  %i.gl = lshr i32 %i.gk, 1
  %.sroa.4130.0.insert.ext = zext nneg i32 %i.gl to i64 ; 2 uses
  %.sroa.4130.0.insert.shift = shl nuw nsw i64 %.sroa.4130.0.insert.ext, 32
  %.sroa.0129.0.insert.insert = or disjoint i64 %.sroa.4130.0.insert.shift, %i.fz
  br label %bb.v

.critedge.i:                                      ; preds = %_ZN6embree5lzcntEi.exit65, %_ZN6embree5lzcntEi.exit67
  %i.gm = phi ptr [ %i.ee, %_ZN6embree5lzcntEi.exit67 ], [ %i.fx, %_ZN6embree5lzcntEi.exit65 ] ; 3 uses
  %i.gn = phi i32 [ %i.fo, %_ZN6embree5lzcntEi.exit67 ], [ %i.gc, %_ZN6embree5lzcntEi.exit65 ] ; 4 uses
  %i.go = phi i32 [ %i.fj, %_ZN6embree5lzcntEi.exit67 ], [ %i.fy, %_ZN6embree5lzcntEi.exit65 ] ; 3 uses
  %i.gp = phi ptr [ %i.ef, %_ZN6embree5lzcntEi.exit67 ], [ %i.fx, %_ZN6embree5lzcntEi.exit65 ]
  %.pn151 = phi i32 [ %i.fv, %_ZN6embree5lzcntEi.exit67 ], [ %i.gj, %_ZN6embree5lzcntEi.exit65 ]
  %.036.i = sub nsw i32 31, %.pn151
  %17 = lshr exact i32 -2147483648, %.036.i
  %i.gq = add i32 %i.go, 1
  %.not38.i164 = icmp eq i32 %i.gq, %i.gn
  br i1 %.not38.i164, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %.critedge.i, %.lr.ph167
  %.0.i166 = phi i32 [ %.0..i, %.lr.ph167 ], [ %i.gn, %.critedge.i ] ; 2 uses
  %.033.i165 = phi i32 [ %..033.i, %.lr.ph167 ], [ %i.go, %.critedge.i ] ; 2 uses
  %i.gr = add i32 %.0.i166, %.033.i165
  %i.gs = lshr i32 %i.gr, 1                       ; 3 uses
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = and i32 %i.gv, %17
  %i.gx = icmp eq i32 %i.gw, 0                    ; 2 uses
  %..033.i = select i1 %i.gx, i32 %i.gs, i32 %.033.i165 ; 2 uses
  %.0..i = select i1 %i.gx, i32 %.0.i166, i32 %i.gs ; 3 uses
  %i.gy = add i32 %..033.i, 1
  %.not38.i = icmp eq i32 %i.gy, %.0..i
  br i1 %.not38.i, label %._crit_edge168, label %.lr.ph167, !llvm.loop !69

._crit_edge168:                                   ; preds = %.lr.ph167, %.critedge.i
  %i.gz = phi ptr [ %i.gp, %.critedge.i ], [ %i.gm, %.lr.ph167 ]
  %.0.i.lcssa = phi i32 [ %i.gn, %.critedge.i ], [ %.0..i, %.lr.ph167 ]
  %.sroa.4100.0.insert.ext = zext i32 %.0.i.lcssa to i64 ; 2 uses
  %.sroa.4100.0.insert.shift = shl nuw i64 %.sroa.4100.0.insert.ext, 32
  %.sroa.099.0.insert.ext = zext i32 %i.go to i64
  %.sroa.099.0.insert.insert = or disjoint i64 %.sroa.4100.0.insert.shift, %.sroa.099.0.insert.ext
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge168, %_ZN6embree5lzcntEi.exit65.thread
  %.sink226 = phi i32 [ %i.gn, %._crit_edge168 ], [ %i.gc, %_ZN6embree5lzcntEi.exit65.thread ]
  %.sroa.4100.0.insert.ext.sink = phi i64 [ %.sroa.4100.0.insert.ext, %._crit_edge168 ], [ %.sroa.4130.0.insert.ext, %_ZN6embree5lzcntEi.exit65.thread ]
  %i.ha = phi ptr [ %i.gm, %._crit_edge168 ], [ %i.fx, %_ZN6embree5lzcntEi.exit65.thread ]
  %i.hb = phi ptr [ %i.gz, %._crit_edge168 ], [ %i.fx, %_ZN6embree5lzcntEi.exit65.thread ]
  %.sroa.094.0 = phi i64 [ %.sroa.099.0.insert.insert, %._crit_edge168 ], [ %.sroa.0129.0.insert.insert, %_ZN6embree5lzcntEi.exit65.thread ]
  %.sroa.497.0.insert.ext = zext i32 %.sink226 to i64
  %.sroa.497.0.insert.shift = shl nuw i64 %.sroa.497.0.insert.ext, 32
  %.sroa.096.0.insert.insert = or disjoint i64 %.sroa.497.0.insert.shift, %.sroa.4100.0.insert.ext.sink
  %i.hc = getelementptr [8 x i8], ptr %12, i64 %.0170 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 -8     ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  store i64 %i.he, ptr %i.fi, align 8
  store i64 %.sroa.094.0, ptr %i.hd, align 8
  store i64 %.sroa.096.0.insert.insert, ptr %i.hc, align 8
  %i.hf = add nuw nsw i64 %.0170, 1               ; 3 uses
  %i.hg = load i64, ptr %1, align 8
  %i.hh = icmp ult i64 %i.hf, %i.hg
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hh, label %.preheader157, label %.thread

.thread:                                          ; preds = %bb.s, %bb.v, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58
  %.0.lcssa = phi i64 [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_9TriangleMILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit58 ], [ %i.hf, %bb.v ], [ %.0170, %bb.s ] ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 128, ptr %i.a, align 8
  %i.hk = load ptr, ptr %i.hj, align 64           ; 18 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 6 uses
  %i.hm = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hn = icmp eq ptr %i.hm, %i.bq
  br i1 %i.hn, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.w

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.hk, ptr %9, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i8 1, ptr %i.ho, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.hk)
  %i.hp = load atomic ptr, ptr %i.hl seq_cst, align 8
  %.not.i2.i = icmp eq ptr %i.hp, null
  br i1 %.not.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 104
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 168
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.hx = atomicrmw add ptr %i.hw, i64 %i.hu seq_cst, align 8 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  %i.ib = load i64, ptr %i.ia, align 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 144
  %i.if = load i64, ptr %i.ie, align 16
  %i.ig = add i64 %i.hz, %i.id
  %i.ih = add i64 %i.ib, %i.if
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 288
  %i.il = atomicrmw add ptr %i.ik, i64 %i.ii seq_cst, align 8 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.in = load i64, ptr %i.im, align 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  %i.ip = load i64, ptr %i.io, align 16
  %i.iq = add i64 %i.ip, %i.in
  %i.ir = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 296
  %i.it = atomicrmw add ptr %i.is, i64 %i.iq seq_cst, align 8 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %.not.i78 = icmp eq ptr %i.bq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i8 0, i64 48, i1 false)
  br i1 %.not.i78, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.z

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.y
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit80

bb.z:                                             ; preds = %bb.y
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8
  store i64 %i.iy, ptr %i.iw, align 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, i8 0, i64 48, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hk, i64 160
  %i.jb = load i64, ptr %i.ix, align 8
  store i64 %i.jb, ptr %i.ja, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit80

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit80: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.z
  store atomic ptr %i.bq, ptr %i.hl seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %8, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %i.jc, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.aj

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit80
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bq, i64 304 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.bq, i64 312 ; 4 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bq, i64 320 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %.not.i82 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not.i82, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i
  store ptr %i.hk, ptr %i.jf, align 8
  %i.ji = load ptr, ptr %i.je, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jj, ptr %i.je, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.ab:                                            ; preds = %.noexc.i
  %i.jk = load ptr, ptr %i.jd, align 8            ; 4 uses
  %i.jl = ptrtoint ptr %i.jf to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.ac, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc83 unwind label %bb.af

.noexc83:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.jp = ashr exact i64 %i.jn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add nsw i64 %.sroa.speculated.i.i.i, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = call i64 @llvm.umin.i64(i64 %i.jq, i64 1152921504606846975)
  %i.jt = select i1 %i.jr, i64 1152921504606846975, i64 %i.js ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #26
          to label %.noexc84 unwind label %bb.af  ; 4 uses

.noexc84:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jn ; 2 uses
  store ptr %i.hk, ptr %i.jw, align 8
  %i.jx = icmp sgt i64 %i.jn, 0
  br i1 %i.jx, label %bb.ad, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ad:                                            ; preds = %.noexc84
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jk, i64 %i.jn, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ad, %.noexc84
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jk) #28
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

end_hunk_0
begin_hunk_1_@_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseEmRKNS_5rangeIjEES8_b:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader234

.lr.ph.i.i.i.i.i.i.i.preheader234:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader234, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402), !noalias !400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403), !noalias !400
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !403, !noalias !400
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !402, !noalias !400
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !403, !noalias !400
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !388

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc69
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc69 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #28, !noalias !400
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.g
  store ptr %i.ah, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !400
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !400
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !400
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !400
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.i, !noalias !400

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27, !noalias !400
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !400
  br label %_ZN6embree13FastAllocator12threadLocal2Ev.exit

bb.j:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.k, !noalias !400

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #27, !noalias !400
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #11, !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !400
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #11, !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !400
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.j, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i67, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %eh.lpad-body.i, %.body.i ], [ %i.bj, %bb.l ], [ %i.bg, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN6embree13FastAllocator12threadLocal2Ev.exit:   ; preds = %bb.b, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %.05.i = phi ptr [ %i.k, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 266
  %i.bm = load i8, ptr %i.bl, align 2, !range !24, !noundef !25
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  store ptr %i.g, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN6embree13FastAllocator12threadLocal2Ev.exit, %bb.a
  %i.bq = phi ptr [ %i.g, %_ZN6embree13FastAllocator12threadLocal2Ev.exit ], [ %i.d, %bb.a ] ; 10 uses
  br i1 %5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = load i32, ptr %3, align 4
  %i.bu = sub i32 %i.bs, %i.bt
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8
  %.not = icmp ult i64 %i.bx, %i.bv
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !25, !align !27 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef %i.bv)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cc = add i64 %2, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %.not43 = icmp ult i64 %i.cc, %i.ce
  br i1 %.not43, label %bb.q, label %.critedge, !prof !30

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = load i32, ptr %3, align 4               ; 3 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %.not148 = icmp ult i64 %i.cl, %i.cj
  br i1 %.not148, label %bb.r, label %.critedge, !prof !30

.critedge:                                        ; preds = %bb.p, %bb.q
  tail call void @_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafEmRKNS_5rangeIjEES8_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecord") align 16 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4)
  br label %bb.bc

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = zext i32 %i.ch to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = add i32 %i.cg, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq i32 %i.cr, %i.cv
  br i1 %i.cw, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %_ZN6embree5lzcntEi.exit40.i54, !prof !31

_ZN6embree5lzcntEi.exit40.i54:                    ; preds = %bb.r
  %i.cx = xor i32 %i.cv, %i.cr
  %i.cy = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.cx) #30, !srcloc !32 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit40.i54.thread:             ; preds = %bb.r, %_ZN6embree5lzcntEi.exit40.i54
  tail call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.da = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.db = load i32, ptr %3, align 4               ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.df = load i32, ptr %i.cf, align 4            ; 4 uses
  %i.dg = add i32 %i.df, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i32 %i.de, %i.dj
  br i1 %i.dk, label %_ZN6embree5lzcntEi.exit.i63.thread, label %_ZN6embree5lzcntEi.exit.i63, !prof !31

_ZN6embree5lzcntEi.exit.i63:                      ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread
  %i.dl = xor i32 %i.dj, %i.de
  %i.dm = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.dl) #30, !srcloc !32 ; 2 uses
  %.not.i65 = icmp eq i32 %i.dm, -1
  br i1 %.not.i65, label %_ZN6embree5lzcntEi.exit.i63.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit.i63.thread:               ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread, %_ZN6embree5lzcntEi.exit.i63
  %i.dn = add i32 %i.df, %i.db
  %i.do = lshr i32 %i.dn, 1
  %.sroa.4135.0.insert.ext = zext nneg i32 %i.do to i64 ; 2 uses
  %.sroa.4135.0.insert.shift = shl nuw nsw i64 %.sroa.4135.0.insert.ext, 32
  %.sroa.0134.0.insert.insert = or disjoint i64 %.sroa.4135.0.insert.shift, %i.dc
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66

.critedge.i56:                                    ; preds = %_ZN6embree5lzcntEi.exit.i63, %_ZN6embree5lzcntEi.exit40.i54
  %i.dp = phi ptr [ %i.co, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.da, %_ZN6embree5lzcntEi.exit.i63 ] ; 2 uses
  %i.dq = phi i32 [ %i.cg, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.df, %_ZN6embree5lzcntEi.exit.i63 ] ; 4 uses
  %i.dr = phi i32 [ %i.ch, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.db, %_ZN6embree5lzcntEi.exit.i63 ] ; 3 uses
  %.pn = phi i32 [ %i.cy, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.dm, %_ZN6embree5lzcntEi.exit.i63 ]
  %.036.i57 = sub nsw i32 31, %.pn
  %16 = lshr exact i32 -2147483648, %.036.i57
  %i.ds = add i32 %i.dr, 1
  %.not38.i60156 = icmp eq i32 %i.ds, %i.dq
  br i1 %.not38.i60156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.i56, %.lr.ph
  %.0.i59158 = phi i32 [ %.0..i62, %.lr.ph ], [ %i.dq, %.critedge.i56 ] ; 2 uses
  %.033.i58157 = phi i32 [ %..033.i61, %.lr.ph ], [ %i.dr, %.critedge.i56 ] ; 2 uses
  %i.dt = add i32 %.0.i59158, %.033.i58157
  %i.du = lshr i32 %i.dt, 1                       ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = and i32 %i.dx, %16
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %..033.i61 = select i1 %i.dz, i32 %i.du, i32 %.033.i58157 ; 2 uses
  %.0..i62 = select i1 %i.dz, i32 %.0.i59158, i32 %i.du ; 3 uses
  %i.ea = add i32 %..033.i61, 1
  %.not38.i60 = icmp eq i32 %i.ea, %.0..i62
  br i1 %.not38.i60, label %._crit_edge, label %.lr.ph, !llvm.loop !389

._crit_edge:                                      ; preds = %.lr.ph, %.critedge.i56
  %.0.i59.lcssa = phi i32 [ %i.dq, %.critedge.i56 ], [ %.0..i62, %.lr.ph ]
  %.sroa.4129.0.insert.ext = zext i32 %.0.i59.lcssa to i64 ; 2 uses
  %.sroa.4129.0.insert.shift = shl nuw i64 %.sroa.4129.0.insert.ext, 32
  %.sroa.0128.0.insert.ext = zext i32 %i.dr to i64
  %.sroa.0128.0.insert.insert = or disjoint i64 %.sroa.4129.0.insert.shift, %.sroa.0128.0.insert.ext
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66

_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66: ; preds = %_ZN6embree5lzcntEi.exit.i63.thread, %._crit_edge
  %.sroa.0134.0.insert.insert.sink = phi i64 [ %.sroa.0134.0.insert.insert, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.0128.0.insert.insert, %._crit_edge ]
  %.sink = phi i32 [ %i.df, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dq, %._crit_edge ]
  %.sroa.4135.0.insert.ext.sink = phi i64 [ %.sroa.4135.0.insert.ext, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.4129.0.insert.ext, %._crit_edge ]
  %i.eb = phi ptr [ %i.da, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dp, %._crit_edge ] ; 2 uses
  store i64 %.sroa.0134.0.insert.insert.sink, ptr %12, align 16
  %.sroa.4133.0.insert.ext = zext i32 %.sink to i64
  %.sroa.4133.0.insert.shift = shl nuw i64 %.sroa.4133.0.insert.ext, 32
  %.sroa.0132.0.insert.insert = or disjoint i64 %.sroa.4133.0.insert.shift, %.sroa.4135.0.insert.ext.sink
  store i64 %.sroa.0132.0.insert.insert, ptr %i.cm, align 8
  %i.ec = load i64, ptr %1, align 8
  %i.ed = icmp ugt i64 %i.ec, 2
  br i1 %i.ed, label %.preheader155, label %.thread

.preheader155:                                    ; preds = %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ] ; 2 uses
  %i.ee = phi ptr [ %i.ha, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ]
  %i.ef = phi ptr [ %i.hb, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ] ; 3 uses
  %.0168 = phi i64 [ %i.hf, %bb.v ], [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ] ; 6 uses
  %i.eg = load i64, ptr %i.ck, align 8            ; 3 uses
  %xtraiter = and i64 %.0168, 1
  %i.eh = icmp eq i64 %indvar, -1
  br i1 %i.eh, label %.epil.preheader, label %.preheader155.new

.preheader155.new:                                ; preds = %.preheader155
  %unroll_iter = and i64 %.0168, 9223372036854775806
  br label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader155
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader155 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.038160.epil.init = phi i32 [ 0, %.preheader155 ], [ %.139.1, %.unr-lcssa ]
  %.040159.epil.init = phi i32 [ -1, %.preheader155 ], [ %.141.1, %.unr-lcssa ]
  %lcmp.mod237 = trunc i64 %.0168 to i1
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.epil.init ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = load i32, ptr %i.ei, align 8
  %i.em = sub i32 %i.ek, %i.el                    ; 2 uses
  %i.en = zext i32 %i.em to i64
  %.not49.epil = icmp ult i64 %i.eg, %i.en
  %i.eo = icmp ugt i32 %i.em, %.038160.epil.init
  %or.cond.epil = select i1 %.not49.epil, i1 %i.eo, i1 false
  %i.ep = trunc nuw i64 %indvars.iv.epil.init to i32
  %.141.epil = select i1 %or.cond.epil, i32 %i.ep, i32 %.040159.epil.init
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.141.lcssa = phi i32 [ %.141.1, %.unr-lcssa ], [ %.141.epil, %.epil.preheader ] ; 2 uses
  %i.eq = icmp eq i32 %.141.lcssa, -1
  br i1 %i.eq, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.t, %.preheader155.new
  %indvars.iv = phi i64 [ 0, %.preheader155.new ], [ %indvars.iv.next.1, %bb.t ] ; 4 uses
  %.038160 = phi i32 [ 0, %.preheader155.new ], [ %.139.1, %bb.t ] ; 2 uses
  %.040159 = phi i32 [ -1, %.preheader155.new ], [ %.141.1, %bb.t ]
  %niter = phi i64 [ 0, %.preheader155.new ], [ %niter.next.1, %bb.t ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = load i32, ptr %i.er, align 16
  %i.ev = sub i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %.not49 = icmp ult i64 %i.eg, %i.ew
  %i.ex = icmp ugt i32 %i.ev, %.038160
  %or.cond = select i1 %.not49, i1 %i.ex, i1 false ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %.141 = select i1 %or.cond, i32 %i.ey, i32 %.040159
  %.139 = select i1 %or.cond, i32 %i.ev, i32 %.038160 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = load i32, ptr %i.ez, align 8
  %i.fd = sub i32 %i.fb, %i.fc                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %.not49.1 = icmp ult i64 %i.eg, %i.fe
  %i.ff = icmp ugt i32 %i.fd, %.139
  %or.cond.1 = select i1 %.not49.1, i1 %i.ff, i1 false ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv.next to i32
  %.141.1 = select i1 %or.cond.1, i32 %i.fg, i32 %.141 ; 3 uses
  %.139.1 = select i1 %or.cond.1, i32 %i.fd, i32 %.139 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.t, !llvm.loop !390

bb.u:                                             ; preds = %bb.s
  %i.fh = sext i32 %.141.lcssa to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %12, i64 %i.fh ; 5 uses
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %i.fp = add i32 %i.fo, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %i.ft = icmp eq i32 %i.fm, %i.fs
  br i1 %i.ft, label %_ZN6embree5lzcntEi.exit40.i.thread, label %_ZN6embree5lzcntEi.exit40.i, !prof !31

_ZN6embree5lzcntEi.exit40.i:                      ; preds = %bb.u
  %i.fu = xor i32 %i.fs, %i.fm
  %i.fv = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.fu) #30, !srcloc !32 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %_ZN6embree5lzcntEi.exit40.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit40.i.thread:               ; preds = %bb.u, %_ZN6embree5lzcntEi.exit40.i
  call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fi)
  %i.fx = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.fy = load i32, ptr %i.fi, align 8            ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 8            ; 2 uses
  %i.gc = load i32, ptr %i.fn, align 4            ; 4 uses
  %i.gd = add i32 %i.gc, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = icmp eq i32 %i.gb, %i.gg
  br i1 %i.gh, label %_ZN6embree5lzcntEi.exit.i.thread, label %_ZN6embree5lzcntEi.exit.i, !prof !31

_ZN6embree5lzcntEi.exit.i:                        ; preds = %_ZN6embree5lzcntEi.exit40.i.thread
  %i.gi = xor i32 %i.gg, %i.gb
  %i.gj = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.gi) #30, !srcloc !32 ; 2 uses
  %.not.i = icmp eq i32 %i.gj, -1
  br i1 %.not.i, label %_ZN6embree5lzcntEi.exit.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit.i.thread:                 ; preds = %_ZN6embree5lzcntEi.exit40.i.thread, %_ZN6embree5lzcntEi.exit.i
  %i.gk = add i32 %i.gc, %i.fy
  %i.gl = lshr i32 %i.gk, 1
  %.sroa.4121.0.insert.ext = zext nneg i32 %i.gl to i64 ; 2 uses
  %.sroa.4121.0.insert.shift = shl nuw nsw i64 %.sroa.4121.0.insert.ext, 32
  %.sroa.0120.0.insert.insert = or disjoint i64 %.sroa.4121.0.insert.shift, %i.fz
  br label %bb.v

.critedge.i:                                      ; preds = %_ZN6embree5lzcntEi.exit.i, %_ZN6embree5lzcntEi.exit40.i
  %i.gm = phi ptr [ %i.ee, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gn = phi i32 [ %i.fo, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i ] ; 4 uses
  %i.go = phi i32 [ %i.fj, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fy, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gp = phi ptr [ %i.ef, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ]
  %.pn149 = phi i32 [ %i.fv, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gj, %_ZN6embree5lzcntEi.exit.i ]
  %.036.i = sub nsw i32 31, %.pn149
  %17 = lshr exact i32 -2147483648, %.036.i
  %i.gq = add i32 %i.go, 1
  %.not38.i162 = icmp eq i32 %i.gq, %i.gn
  br i1 %.not38.i162, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %.critedge.i, %.lr.ph165
  %.0.i52164 = phi i32 [ %.0..i, %.lr.ph165 ], [ %i.gn, %.critedge.i ] ; 2 uses
  %.033.i51163 = phi i32 [ %..033.i, %.lr.ph165 ], [ %i.go, %.critedge.i ] ; 2 uses
  %i.gr = add i32 %.0.i52164, %.033.i51163
  %i.gs = lshr i32 %i.gr, 1                       ; 3 uses
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = and i32 %i.gv, %17
  %i.gx = icmp eq i32 %i.gw, 0                    ; 2 uses
  %..033.i = select i1 %i.gx, i32 %i.gs, i32 %.033.i51163 ; 2 uses
  %.0..i = select i1 %i.gx, i32 %.0.i52164, i32 %i.gs ; 3 uses
  %i.gy = add i32 %..033.i, 1
  %.not38.i = icmp eq i32 %i.gy, %.0..i
  br i1 %.not38.i, label %._crit_edge166, label %.lr.ph165, !llvm.loop !389

._crit_edge166:                                   ; preds = %.lr.ph165, %.critedge.i
  %i.gz = phi ptr [ %i.gp, %.critedge.i ], [ %i.gm, %.lr.ph165 ]
  %.0.i52.lcssa = phi i32 [ %i.gn, %.critedge.i ], [ %.0..i, %.lr.ph165 ]
  %.sroa.4115.0.insert.ext = zext i32 %.0.i52.lcssa to i64 ; 2 uses
  %.sroa.4115.0.insert.shift = shl nuw i64 %.sroa.4115.0.insert.ext, 32
  %.sroa.0114.0.insert.ext = zext i32 %i.go to i64
  %.sroa.0114.0.insert.insert = or disjoint i64 %.sroa.4115.0.insert.shift, %.sroa.0114.0.insert.ext
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge166, %_ZN6embree5lzcntEi.exit.i.thread
  %.sink224 = phi i32 [ %i.gn, %._crit_edge166 ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4115.0.insert.ext.sink = phi i64 [ %.sroa.4115.0.insert.ext, %._crit_edge166 ], [ %.sroa.4121.0.insert.ext, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.ha = phi ptr [ %i.gm, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.hb = phi ptr [ %i.gz, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.092.0 = phi i64 [ %.sroa.0114.0.insert.insert, %._crit_edge166 ], [ %.sroa.0120.0.insert.insert, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4112.0.insert.ext = zext i32 %.sink224 to i64
  %.sroa.4112.0.insert.shift = shl nuw i64 %.sroa.4112.0.insert.ext, 32
  %.sroa.0111.0.insert.insert = or disjoint i64 %.sroa.4112.0.insert.shift, %.sroa.4115.0.insert.ext.sink
  %i.hc = getelementptr [8 x i8], ptr %12, i64 %.0168 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 -8     ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  store i64 %i.he, ptr %i.fi, align 8
  store i64 %.sroa.092.0, ptr %i.hd, align 8
  store i64 %.sroa.0111.0.insert.insert, ptr %i.hc, align 8
  %i.hf = add nuw nsw i64 %.0168, 1               ; 3 uses
  %i.hg = load i64, ptr %1, align 8
  %i.hh = icmp ult i64 %i.hf, %i.hg
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hh, label %.preheader155, label %.thread

.thread:                                          ; preds = %bb.s, %bb.v, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66
  %.0.lcssa = phi i64 [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMvILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ], [ %i.hf, %bb.v ], [ %.0168, %bb.s ] ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 128, ptr %i.a, align 8
  %i.hk = load ptr, ptr %i.hj, align 64           ; 18 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 6 uses
  %i.hm = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hn = icmp eq ptr %i.hm, %i.bq
  br i1 %i.hn, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.w

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.hk, ptr %9, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i8 1, ptr %i.ho, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.hk)
  %i.hp = load atomic ptr, ptr %i.hl seq_cst, align 8
  %.not.i2.i = icmp eq ptr %i.hp, null
  br i1 %.not.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 104
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 168
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.hx = atomicrmw add ptr %i.hw, i64 %i.hu seq_cst, align 8 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  %i.ib = load i64, ptr %i.ia, align 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 144
  %i.if = load i64, ptr %i.ie, align 16
  %i.ig = add i64 %i.hz, %i.id
  %i.ih = add i64 %i.ib, %i.if
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 288
  %i.il = atomicrmw add ptr %i.ik, i64 %i.ii seq_cst, align 8 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.in = load i64, ptr %i.im, align 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  %i.ip = load i64, ptr %i.io, align 16
  %i.iq = add i64 %i.ip, %i.in
  %i.ir = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 296
  %i.it = atomicrmw add ptr %i.is, i64 %i.iq seq_cst, align 8 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %.not.i76 = icmp eq ptr %i.bq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i8 0, i64 48, i1 false)
  br i1 %.not.i76, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.z

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.y
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

bb.z:                                             ; preds = %bb.y
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8
  store i64 %i.iy, ptr %i.iw, align 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, i8 0, i64 48, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hk, i64 160
  %i.jb = load i64, ptr %i.ix, align 8
  store i64 %i.jb, ptr %i.ja, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.z
  store atomic ptr %i.bq, ptr %i.hl seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %8, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %i.jc, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.aj

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bq, i64 304 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.bq, i64 312 ; 4 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bq, i64 320 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %.not.i80 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not.i80, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i
  store ptr %i.hk, ptr %i.jf, align 8
  %i.ji = load ptr, ptr %i.je, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jj, ptr %i.je, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.ab:                                            ; preds = %.noexc.i
  %i.jk = load ptr, ptr %i.jd, align 8            ; 4 uses
  %i.jl = ptrtoint ptr %i.jf to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.ac, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc81 unwind label %bb.af

.noexc81:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.jp = ashr exact i64 %i.jn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add nsw i64 %.sroa.speculated.i.i.i, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = call i64 @llvm.umin.i64(i64 %i.jq, i64 1152921504606846975)
  %i.jt = select i1 %i.jr, i64 1152921504606846975, i64 %i.js ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #26
          to label %.noexc82 unwind label %bb.af  ; 4 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jn ; 2 uses
  store ptr %i.hk, ptr %i.jw, align 8
  %i.jx = icmp sgt i64 %i.jn, 0
  br i1 %i.jx, label %bb.ad, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ad:                                            ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jk, i64 %i.jn, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ad, %.noexc82
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jk) #28
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

end_hunk_1
begin_hunk_2_@_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseEmRKNS_5rangeIjEES8_b:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !609

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader234

.lr.ph.i.i.i.i.i.i.i.preheader234:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader234, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !622
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625), !noalias !622
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !625, !noalias !622
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !624, !noalias !622
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !625, !noalias !622
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !610

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc69
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc69 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #28, !noalias !622
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.g
  store ptr %i.ah, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !622
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !622
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !622
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !622
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.i, !noalias !622

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27, !noalias !622
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !622
  br label %_ZN6embree13FastAllocator12threadLocal2Ev.exit

bb.j:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.k, !noalias !622

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #27, !noalias !622
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #11, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !622
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #11, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !622
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.j, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i67, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %eh.lpad-body.i, %.body.i ], [ %i.bj, %bb.l ], [ %i.bg, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN6embree13FastAllocator12threadLocal2Ev.exit:   ; preds = %bb.b, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %.05.i = phi ptr [ %i.k, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 266
  %i.bm = load i8, ptr %i.bl, align 2, !range !24, !noundef !25
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  store ptr %i.g, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN6embree13FastAllocator12threadLocal2Ev.exit, %bb.a
  %i.bq = phi ptr [ %i.g, %_ZN6embree13FastAllocator12threadLocal2Ev.exit ], [ %i.d, %bb.a ] ; 10 uses
  br i1 %5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = load i32, ptr %3, align 4
  %i.bu = sub i32 %i.bs, %i.bt
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8
  %.not = icmp ult i64 %i.bx, %i.bv
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !25, !align !27 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef %i.bv)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cc = add i64 %2, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %.not43 = icmp ult i64 %i.cc, %i.ce
  br i1 %.not43, label %bb.q, label %.critedge, !prof !30

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = load i32, ptr %3, align 4               ; 3 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %.not148 = icmp ult i64 %i.cl, %i.cj
  br i1 %.not148, label %bb.r, label %.critedge, !prof !30

.critedge:                                        ; preds = %bb.p, %bb.q
  tail call void @_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafEmRKNS_5rangeIjEES8_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecord") align 16 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4)
  br label %bb.bc

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = zext i32 %i.ch to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = add i32 %i.cg, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq i32 %i.cr, %i.cv
  br i1 %i.cw, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %_ZN6embree5lzcntEi.exit40.i54, !prof !31

_ZN6embree5lzcntEi.exit40.i54:                    ; preds = %bb.r
  %i.cx = xor i32 %i.cv, %i.cr
  %i.cy = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.cx) #30, !srcloc !32 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit40.i54.thread:             ; preds = %bb.r, %_ZN6embree5lzcntEi.exit40.i54
  tail call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.da = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.db = load i32, ptr %3, align 4               ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.df = load i32, ptr %i.cf, align 4            ; 4 uses
  %i.dg = add i32 %i.df, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i32 %i.de, %i.dj
  br i1 %i.dk, label %_ZN6embree5lzcntEi.exit.i63.thread, label %_ZN6embree5lzcntEi.exit.i63, !prof !31

_ZN6embree5lzcntEi.exit.i63:                      ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread
  %i.dl = xor i32 %i.dj, %i.de
  %i.dm = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.dl) #30, !srcloc !32 ; 2 uses
  %.not.i65 = icmp eq i32 %i.dm, -1
  br i1 %.not.i65, label %_ZN6embree5lzcntEi.exit.i63.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit.i63.thread:               ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread, %_ZN6embree5lzcntEi.exit.i63
  %i.dn = add i32 %i.df, %i.db
  %i.do = lshr i32 %i.dn, 1
  %.sroa.4135.0.insert.ext = zext nneg i32 %i.do to i64 ; 2 uses
  %.sroa.4135.0.insert.shift = shl nuw nsw i64 %.sroa.4135.0.insert.ext, 32
  %.sroa.0134.0.insert.insert = or disjoint i64 %.sroa.4135.0.insert.shift, %i.dc
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66

.critedge.i56:                                    ; preds = %_ZN6embree5lzcntEi.exit.i63, %_ZN6embree5lzcntEi.exit40.i54
  %i.dp = phi ptr [ %i.co, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.da, %_ZN6embree5lzcntEi.exit.i63 ] ; 2 uses
  %i.dq = phi i32 [ %i.cg, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.df, %_ZN6embree5lzcntEi.exit.i63 ] ; 4 uses
  %i.dr = phi i32 [ %i.ch, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.db, %_ZN6embree5lzcntEi.exit.i63 ] ; 3 uses
  %.pn = phi i32 [ %i.cy, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.dm, %_ZN6embree5lzcntEi.exit.i63 ]
  %.036.i57 = sub nsw i32 31, %.pn
  %16 = lshr exact i32 -2147483648, %.036.i57
  %i.ds = add i32 %i.dr, 1
  %.not38.i60156 = icmp eq i32 %i.ds, %i.dq
  br i1 %.not38.i60156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.i56, %.lr.ph
  %.0.i59158 = phi i32 [ %.0..i62, %.lr.ph ], [ %i.dq, %.critedge.i56 ] ; 2 uses
  %.033.i58157 = phi i32 [ %..033.i61, %.lr.ph ], [ %i.dr, %.critedge.i56 ] ; 2 uses
  %i.dt = add i32 %.0.i59158, %.033.i58157
  %i.du = lshr i32 %i.dt, 1                       ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = and i32 %i.dx, %16
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %..033.i61 = select i1 %i.dz, i32 %i.du, i32 %.033.i58157 ; 2 uses
  %.0..i62 = select i1 %i.dz, i32 %.0.i59158, i32 %i.du ; 3 uses
  %i.ea = add i32 %..033.i61, 1
  %.not38.i60 = icmp eq i32 %i.ea, %.0..i62
  br i1 %.not38.i60, label %._crit_edge, label %.lr.ph, !llvm.loop !611

._crit_edge:                                      ; preds = %.lr.ph, %.critedge.i56
  %.0.i59.lcssa = phi i32 [ %i.dq, %.critedge.i56 ], [ %.0..i62, %.lr.ph ]
  %.sroa.4129.0.insert.ext = zext i32 %.0.i59.lcssa to i64 ; 2 uses
  %.sroa.4129.0.insert.shift = shl nuw i64 %.sroa.4129.0.insert.ext, 32
  %.sroa.0128.0.insert.ext = zext i32 %i.dr to i64
  %.sroa.0128.0.insert.insert = or disjoint i64 %.sroa.4129.0.insert.shift, %.sroa.0128.0.insert.ext
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66

_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66: ; preds = %_ZN6embree5lzcntEi.exit.i63.thread, %._crit_edge
  %.sroa.0134.0.insert.insert.sink = phi i64 [ %.sroa.0134.0.insert.insert, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.0128.0.insert.insert, %._crit_edge ]
  %.sink = phi i32 [ %i.df, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dq, %._crit_edge ]
  %.sroa.4135.0.insert.ext.sink = phi i64 [ %.sroa.4135.0.insert.ext, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.4129.0.insert.ext, %._crit_edge ]
  %i.eb = phi ptr [ %i.da, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dp, %._crit_edge ] ; 2 uses
  store i64 %.sroa.0134.0.insert.insert.sink, ptr %12, align 16
  %.sroa.4133.0.insert.ext = zext i32 %.sink to i64
  %.sroa.4133.0.insert.shift = shl nuw i64 %.sroa.4133.0.insert.ext, 32
  %.sroa.0132.0.insert.insert = or disjoint i64 %.sroa.4133.0.insert.shift, %.sroa.4135.0.insert.ext.sink
  store i64 %.sroa.0132.0.insert.insert, ptr %i.cm, align 8
  %i.ec = load i64, ptr %1, align 8
  %i.ed = icmp ugt i64 %i.ec, 2
  br i1 %i.ed, label %.preheader155, label %.thread

.preheader155:                                    ; preds = %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ] ; 2 uses
  %i.ee = phi ptr [ %i.ha, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ]
  %i.ef = phi ptr [ %i.hb, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ] ; 3 uses
  %.0168 = phi i64 [ %i.hf, %bb.v ], [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ] ; 6 uses
  %i.eg = load i64, ptr %i.ck, align 8            ; 3 uses
  %xtraiter = and i64 %.0168, 1
  %i.eh = icmp eq i64 %indvar, -1
  br i1 %i.eh, label %.epil.preheader, label %.preheader155.new

.preheader155.new:                                ; preds = %.preheader155
  %unroll_iter = and i64 %.0168, 9223372036854775806
  br label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader155
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader155 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.038160.epil.init = phi i32 [ 0, %.preheader155 ], [ %.139.1, %.unr-lcssa ]
  %.040159.epil.init = phi i32 [ -1, %.preheader155 ], [ %.141.1, %.unr-lcssa ]
  %lcmp.mod237 = trunc i64 %.0168 to i1
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.epil.init ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = load i32, ptr %i.ei, align 8
  %i.em = sub i32 %i.ek, %i.el                    ; 2 uses
  %i.en = zext i32 %i.em to i64
  %.not49.epil = icmp ult i64 %i.eg, %i.en
  %i.eo = icmp ugt i32 %i.em, %.038160.epil.init
  %or.cond.epil = select i1 %.not49.epil, i1 %i.eo, i1 false
  %i.ep = trunc nuw i64 %indvars.iv.epil.init to i32
  %.141.epil = select i1 %or.cond.epil, i32 %i.ep, i32 %.040159.epil.init
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.141.lcssa = phi i32 [ %.141.1, %.unr-lcssa ], [ %.141.epil, %.epil.preheader ] ; 2 uses
  %i.eq = icmp eq i32 %.141.lcssa, -1
  br i1 %i.eq, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.t, %.preheader155.new
  %indvars.iv = phi i64 [ 0, %.preheader155.new ], [ %indvars.iv.next.1, %bb.t ] ; 4 uses
  %.038160 = phi i32 [ 0, %.preheader155.new ], [ %.139.1, %bb.t ] ; 2 uses
  %.040159 = phi i32 [ -1, %.preheader155.new ], [ %.141.1, %bb.t ]
  %niter = phi i64 [ 0, %.preheader155.new ], [ %niter.next.1, %bb.t ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = load i32, ptr %i.er, align 16
  %i.ev = sub i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %.not49 = icmp ult i64 %i.eg, %i.ew
  %i.ex = icmp ugt i32 %i.ev, %.038160
  %or.cond = select i1 %.not49, i1 %i.ex, i1 false ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %.141 = select i1 %or.cond, i32 %i.ey, i32 %.040159
  %.139 = select i1 %or.cond, i32 %i.ev, i32 %.038160 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = load i32, ptr %i.ez, align 8
  %i.fd = sub i32 %i.fb, %i.fc                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %.not49.1 = icmp ult i64 %i.eg, %i.fe
  %i.ff = icmp ugt i32 %i.fd, %.139
  %or.cond.1 = select i1 %.not49.1, i1 %i.ff, i1 false ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv.next to i32
  %.141.1 = select i1 %or.cond.1, i32 %i.fg, i32 %.141 ; 3 uses
  %.139.1 = select i1 %or.cond.1, i32 %i.fd, i32 %.139 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.t, !llvm.loop !612

bb.u:                                             ; preds = %bb.s
  %i.fh = sext i32 %.141.lcssa to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %12, i64 %i.fh ; 5 uses
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %i.fp = add i32 %i.fo, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %i.ft = icmp eq i32 %i.fm, %i.fs
  br i1 %i.ft, label %_ZN6embree5lzcntEi.exit40.i.thread, label %_ZN6embree5lzcntEi.exit40.i, !prof !31

_ZN6embree5lzcntEi.exit40.i:                      ; preds = %bb.u
  %i.fu = xor i32 %i.fs, %i.fm
  %i.fv = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.fu) #30, !srcloc !32 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %_ZN6embree5lzcntEi.exit40.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit40.i.thread:               ; preds = %bb.u, %_ZN6embree5lzcntEi.exit40.i
  call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fi)
  %i.fx = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.fy = load i32, ptr %i.fi, align 8            ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 8            ; 2 uses
  %i.gc = load i32, ptr %i.fn, align 4            ; 4 uses
  %i.gd = add i32 %i.gc, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = icmp eq i32 %i.gb, %i.gg
  br i1 %i.gh, label %_ZN6embree5lzcntEi.exit.i.thread, label %_ZN6embree5lzcntEi.exit.i, !prof !31

_ZN6embree5lzcntEi.exit.i:                        ; preds = %_ZN6embree5lzcntEi.exit40.i.thread
  %i.gi = xor i32 %i.gg, %i.gb
  %i.gj = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.gi) #30, !srcloc !32 ; 2 uses
  %.not.i = icmp eq i32 %i.gj, -1
  br i1 %.not.i, label %_ZN6embree5lzcntEi.exit.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit.i.thread:                 ; preds = %_ZN6embree5lzcntEi.exit40.i.thread, %_ZN6embree5lzcntEi.exit.i
  %i.gk = add i32 %i.gc, %i.fy
  %i.gl = lshr i32 %i.gk, 1
  %.sroa.4121.0.insert.ext = zext nneg i32 %i.gl to i64 ; 2 uses
  %.sroa.4121.0.insert.shift = shl nuw nsw i64 %.sroa.4121.0.insert.ext, 32
  %.sroa.0120.0.insert.insert = or disjoint i64 %.sroa.4121.0.insert.shift, %i.fz
  br label %bb.v

.critedge.i:                                      ; preds = %_ZN6embree5lzcntEi.exit.i, %_ZN6embree5lzcntEi.exit40.i
  %i.gm = phi ptr [ %i.ee, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gn = phi i32 [ %i.fo, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i ] ; 4 uses
  %i.go = phi i32 [ %i.fj, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fy, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gp = phi ptr [ %i.ef, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ]
  %.pn149 = phi i32 [ %i.fv, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gj, %_ZN6embree5lzcntEi.exit.i ]
  %.036.i = sub nsw i32 31, %.pn149
  %17 = lshr exact i32 -2147483648, %.036.i
  %i.gq = add i32 %i.go, 1
  %.not38.i162 = icmp eq i32 %i.gq, %i.gn
  br i1 %.not38.i162, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %.critedge.i, %.lr.ph165
  %.0.i52164 = phi i32 [ %.0..i, %.lr.ph165 ], [ %i.gn, %.critedge.i ] ; 2 uses
  %.033.i51163 = phi i32 [ %..033.i, %.lr.ph165 ], [ %i.go, %.critedge.i ] ; 2 uses
  %i.gr = add i32 %.0.i52164, %.033.i51163
  %i.gs = lshr i32 %i.gr, 1                       ; 3 uses
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = and i32 %i.gv, %17
  %i.gx = icmp eq i32 %i.gw, 0                    ; 2 uses
  %..033.i = select i1 %i.gx, i32 %i.gs, i32 %.033.i51163 ; 2 uses
  %.0..i = select i1 %i.gx, i32 %.0.i52164, i32 %i.gs ; 3 uses
  %i.gy = add i32 %..033.i, 1
  %.not38.i = icmp eq i32 %i.gy, %.0..i
  br i1 %.not38.i, label %._crit_edge166, label %.lr.ph165, !llvm.loop !611

._crit_edge166:                                   ; preds = %.lr.ph165, %.critedge.i
  %i.gz = phi ptr [ %i.gp, %.critedge.i ], [ %i.gm, %.lr.ph165 ]
  %.0.i52.lcssa = phi i32 [ %i.gn, %.critedge.i ], [ %.0..i, %.lr.ph165 ]
  %.sroa.4115.0.insert.ext = zext i32 %.0.i52.lcssa to i64 ; 2 uses
  %.sroa.4115.0.insert.shift = shl nuw i64 %.sroa.4115.0.insert.ext, 32
  %.sroa.0114.0.insert.ext = zext i32 %i.go to i64
  %.sroa.0114.0.insert.insert = or disjoint i64 %.sroa.4115.0.insert.shift, %.sroa.0114.0.insert.ext
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge166, %_ZN6embree5lzcntEi.exit.i.thread
  %.sink224 = phi i32 [ %i.gn, %._crit_edge166 ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4115.0.insert.ext.sink = phi i64 [ %.sroa.4115.0.insert.ext, %._crit_edge166 ], [ %.sroa.4121.0.insert.ext, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.ha = phi ptr [ %i.gm, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.hb = phi ptr [ %i.gz, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.092.0 = phi i64 [ %.sroa.0114.0.insert.insert, %._crit_edge166 ], [ %.sroa.0120.0.insert.insert, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4112.0.insert.ext = zext i32 %.sink224 to i64
  %.sroa.4112.0.insert.shift = shl nuw i64 %.sroa.4112.0.insert.ext, 32
  %.sroa.0111.0.insert.insert = or disjoint i64 %.sroa.4112.0.insert.shift, %.sroa.4115.0.insert.ext.sink
  %i.hc = getelementptr [8 x i8], ptr %12, i64 %.0168 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 -8     ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  store i64 %i.he, ptr %i.fi, align 8
  store i64 %.sroa.092.0, ptr %i.hd, align 8
  store i64 %.sroa.0111.0.insert.insert, ptr %i.hc, align 8
  %i.hf = add nuw nsw i64 %.0168, 1               ; 3 uses
  %i.hg = load i64, ptr %1, align 8
  %i.hh = icmp ult i64 %i.hf, %i.hg
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hh, label %.preheader155, label %.thread

.thread:                                          ; preds = %bb.s, %bb.v, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66
  %.0.lcssa = phi i64 [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_10TriangleMiILi4EEEEENS0_19CalculateMeshBoundsINS_12TriangleMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ], [ %i.hf, %bb.v ], [ %.0168, %bb.s ] ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 128, ptr %i.a, align 8
  %i.hk = load ptr, ptr %i.hj, align 64           ; 18 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 6 uses
  %i.hm = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hn = icmp eq ptr %i.hm, %i.bq
  br i1 %i.hn, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.w

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.hk, ptr %9, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i8 1, ptr %i.ho, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.hk)
  %i.hp = load atomic ptr, ptr %i.hl seq_cst, align 8
  %.not.i2.i = icmp eq ptr %i.hp, null
  br i1 %.not.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 104
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 168
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.hx = atomicrmw add ptr %i.hw, i64 %i.hu seq_cst, align 8 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  %i.ib = load i64, ptr %i.ia, align 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 144
  %i.if = load i64, ptr %i.ie, align 16
  %i.ig = add i64 %i.hz, %i.id
  %i.ih = add i64 %i.ib, %i.if
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 288
  %i.il = atomicrmw add ptr %i.ik, i64 %i.ii seq_cst, align 8 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.in = load i64, ptr %i.im, align 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  %i.ip = load i64, ptr %i.io, align 16
  %i.iq = add i64 %i.ip, %i.in
  %i.ir = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 296
  %i.it = atomicrmw add ptr %i.is, i64 %i.iq seq_cst, align 8 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %.not.i76 = icmp eq ptr %i.bq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i8 0, i64 48, i1 false)
  br i1 %.not.i76, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.z

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.y
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

bb.z:                                             ; preds = %bb.y
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8
  store i64 %i.iy, ptr %i.iw, align 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, i8 0, i64 48, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hk, i64 160
  %i.jb = load i64, ptr %i.ix, align 8
  store i64 %i.jb, ptr %i.ja, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.z
  store atomic ptr %i.bq, ptr %i.hl seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %8, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %i.jc, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.aj

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bq, i64 304 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.bq, i64 312 ; 4 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bq, i64 320 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %.not.i80 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not.i80, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i
  store ptr %i.hk, ptr %i.jf, align 8
  %i.ji = load ptr, ptr %i.je, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jj, ptr %i.je, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.ab:                                            ; preds = %.noexc.i
  %i.jk = load ptr, ptr %i.jd, align 8            ; 4 uses
  %i.jl = ptrtoint ptr %i.jf to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.ac, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc81 unwind label %bb.af

.noexc81:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.jp = ashr exact i64 %i.jn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add nsw i64 %.sroa.speculated.i.i.i, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = call i64 @llvm.umin.i64(i64 %i.jq, i64 1152921504606846975)
  %i.jt = select i1 %i.jr, i64 1152921504606846975, i64 %i.js ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #26
          to label %.noexc82 unwind label %bb.af  ; 4 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jn ; 2 uses
  store ptr %i.hk, ptr %i.jw, align 8
  %i.jx = icmp sgt i64 %i.jn, 0
  br i1 %i.jx, label %bb.ad, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ad:                                            ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jk, i64 %i.jn, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ad, %.noexc82
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jk) #28
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

end_hunk_2
begin_hunk_3_@_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseEmRKNS_5rangeIjEES8_b:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !833

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader234

.lr.ph.i.i.i.i.i.i.i.preheader234:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader234, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848), !noalias !846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849), !noalias !846
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !849, !noalias !846
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !848, !noalias !846
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !849, !noalias !846
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !834

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc69
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc69 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #28, !noalias !846
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.g
  store ptr %i.ah, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !846
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !846
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !846
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !846
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.i, !noalias !846

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27, !noalias !846
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !846
  br label %_ZN6embree13FastAllocator12threadLocal2Ev.exit

bb.j:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.k, !noalias !846

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #27, !noalias !846
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #11, !noalias !846
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !846
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #11, !noalias !846
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !846
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.j, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i67, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %eh.lpad-body.i, %.body.i ], [ %i.bj, %bb.l ], [ %i.bg, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN6embree13FastAllocator12threadLocal2Ev.exit:   ; preds = %bb.b, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %.05.i = phi ptr [ %i.k, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 266
  %i.bm = load i8, ptr %i.bl, align 2, !range !24, !noundef !25
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  store ptr %i.g, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN6embree13FastAllocator12threadLocal2Ev.exit, %bb.a
  %i.bq = phi ptr [ %i.g, %_ZN6embree13FastAllocator12threadLocal2Ev.exit ], [ %i.d, %bb.a ] ; 10 uses
  br i1 %5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = load i32, ptr %3, align 4
  %i.bu = sub i32 %i.bs, %i.bt
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8
  %.not = icmp ult i64 %i.bx, %i.bv
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !25, !align !27 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef %i.bv)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cc = add i64 %2, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %.not43 = icmp ult i64 %i.cc, %i.ce
  br i1 %.not43, label %bb.q, label %.critedge, !prof !30

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = load i32, ptr %3, align 4               ; 3 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %.not148 = icmp ult i64 %i.cl, %i.cj
  br i1 %.not148, label %bb.r, label %.critedge, !prof !30

.critedge:                                        ; preds = %bb.p, %bb.q
  tail call void @_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafEmRKNS_5rangeIjEES8_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecord") align 16 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4)
  br label %bb.bc

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = zext i32 %i.ch to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = add i32 %i.cg, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq i32 %i.cr, %i.cv
  br i1 %i.cw, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %_ZN6embree5lzcntEi.exit40.i54, !prof !31

_ZN6embree5lzcntEi.exit40.i54:                    ; preds = %bb.r
  %i.cx = xor i32 %i.cv, %i.cr
  %i.cy = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.cx) #30, !srcloc !32 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit40.i54.thread:             ; preds = %bb.r, %_ZN6embree5lzcntEi.exit40.i54
  tail call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.da = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.db = load i32, ptr %3, align 4               ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.df = load i32, ptr %i.cf, align 4            ; 4 uses
  %i.dg = add i32 %i.df, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i32 %i.de, %i.dj
  br i1 %i.dk, label %_ZN6embree5lzcntEi.exit.i63.thread, label %_ZN6embree5lzcntEi.exit.i63, !prof !31

_ZN6embree5lzcntEi.exit.i63:                      ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread
  %i.dl = xor i32 %i.dj, %i.de
  %i.dm = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.dl) #30, !srcloc !32 ; 2 uses
  %.not.i65 = icmp eq i32 %i.dm, -1
  br i1 %.not.i65, label %_ZN6embree5lzcntEi.exit.i63.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit.i63.thread:               ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread, %_ZN6embree5lzcntEi.exit.i63
  %i.dn = add i32 %i.df, %i.db
  %i.do = lshr i32 %i.dn, 1
  %.sroa.4135.0.insert.ext = zext nneg i32 %i.do to i64 ; 2 uses
  %.sroa.4135.0.insert.shift = shl nuw nsw i64 %.sroa.4135.0.insert.ext, 32
  %.sroa.0134.0.insert.insert = or disjoint i64 %.sroa.4135.0.insert.shift, %i.dc
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66

.critedge.i56:                                    ; preds = %_ZN6embree5lzcntEi.exit.i63, %_ZN6embree5lzcntEi.exit40.i54
  %i.dp = phi ptr [ %i.co, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.da, %_ZN6embree5lzcntEi.exit.i63 ] ; 2 uses
  %i.dq = phi i32 [ %i.cg, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.df, %_ZN6embree5lzcntEi.exit.i63 ] ; 4 uses
  %i.dr = phi i32 [ %i.ch, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.db, %_ZN6embree5lzcntEi.exit.i63 ] ; 3 uses
  %.pn = phi i32 [ %i.cy, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.dm, %_ZN6embree5lzcntEi.exit.i63 ]
  %.036.i57 = sub nsw i32 31, %.pn
  %16 = lshr exact i32 -2147483648, %.036.i57
  %i.ds = add i32 %i.dr, 1
  %.not38.i60156 = icmp eq i32 %i.ds, %i.dq
  br i1 %.not38.i60156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.i56, %.lr.ph
  %.0.i59158 = phi i32 [ %.0..i62, %.lr.ph ], [ %i.dq, %.critedge.i56 ] ; 2 uses
  %.033.i58157 = phi i32 [ %..033.i61, %.lr.ph ], [ %i.dr, %.critedge.i56 ] ; 2 uses
  %i.dt = add i32 %.0.i59158, %.033.i58157
  %i.du = lshr i32 %i.dt, 1                       ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = and i32 %i.dx, %16
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %..033.i61 = select i1 %i.dz, i32 %i.du, i32 %.033.i58157 ; 2 uses
  %.0..i62 = select i1 %i.dz, i32 %.0.i59158, i32 %i.du ; 3 uses
  %i.ea = add i32 %..033.i61, 1
  %.not38.i60 = icmp eq i32 %i.ea, %.0..i62
  br i1 %.not38.i60, label %._crit_edge, label %.lr.ph, !llvm.loop !835

._crit_edge:                                      ; preds = %.lr.ph, %.critedge.i56
  %.0.i59.lcssa = phi i32 [ %i.dq, %.critedge.i56 ], [ %.0..i62, %.lr.ph ]
  %.sroa.4129.0.insert.ext = zext i32 %.0.i59.lcssa to i64 ; 2 uses
  %.sroa.4129.0.insert.shift = shl nuw i64 %.sroa.4129.0.insert.ext, 32
  %.sroa.0128.0.insert.ext = zext i32 %i.dr to i64
  %.sroa.0128.0.insert.insert = or disjoint i64 %.sroa.4129.0.insert.shift, %.sroa.0128.0.insert.ext
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66

_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66: ; preds = %_ZN6embree5lzcntEi.exit.i63.thread, %._crit_edge
  %.sroa.0134.0.insert.insert.sink = phi i64 [ %.sroa.0134.0.insert.insert, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.0128.0.insert.insert, %._crit_edge ]
  %.sink = phi i32 [ %i.df, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dq, %._crit_edge ]
  %.sroa.4135.0.insert.ext.sink = phi i64 [ %.sroa.4135.0.insert.ext, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.4129.0.insert.ext, %._crit_edge ]
  %i.eb = phi ptr [ %i.da, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dp, %._crit_edge ] ; 2 uses
  store i64 %.sroa.0134.0.insert.insert.sink, ptr %12, align 16
  %.sroa.4133.0.insert.ext = zext i32 %.sink to i64
  %.sroa.4133.0.insert.shift = shl nuw i64 %.sroa.4133.0.insert.ext, 32
  %.sroa.0132.0.insert.insert = or disjoint i64 %.sroa.4133.0.insert.shift, %.sroa.4135.0.insert.ext.sink
  store i64 %.sroa.0132.0.insert.insert, ptr %i.cm, align 8
  %i.ec = load i64, ptr %1, align 8
  %i.ed = icmp ugt i64 %i.ec, 2
  br i1 %i.ed, label %.preheader155, label %.thread

.preheader155:                                    ; preds = %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ] ; 2 uses
  %i.ee = phi ptr [ %i.ha, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ]
  %i.ef = phi ptr [ %i.hb, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ] ; 3 uses
  %.0168 = phi i64 [ %i.hf, %bb.v ], [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ] ; 6 uses
  %i.eg = load i64, ptr %i.ck, align 8            ; 3 uses
  %xtraiter = and i64 %.0168, 1
  %i.eh = icmp eq i64 %indvar, -1
  br i1 %i.eh, label %.epil.preheader, label %.preheader155.new

.preheader155.new:                                ; preds = %.preheader155
  %unroll_iter = and i64 %.0168, 9223372036854775806
  br label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader155
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader155 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.038160.epil.init = phi i32 [ 0, %.preheader155 ], [ %.139.1, %.unr-lcssa ]
  %.040159.epil.init = phi i32 [ -1, %.preheader155 ], [ %.141.1, %.unr-lcssa ]
  %lcmp.mod237 = trunc i64 %.0168 to i1
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.epil.init ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = load i32, ptr %i.ei, align 8
  %i.em = sub i32 %i.ek, %i.el                    ; 2 uses
  %i.en = zext i32 %i.em to i64
  %.not49.epil = icmp ult i64 %i.eg, %i.en
  %i.eo = icmp ugt i32 %i.em, %.038160.epil.init
  %or.cond.epil = select i1 %.not49.epil, i1 %i.eo, i1 false
  %i.ep = trunc nuw i64 %indvars.iv.epil.init to i32
  %.141.epil = select i1 %or.cond.epil, i32 %i.ep, i32 %.040159.epil.init
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.141.lcssa = phi i32 [ %.141.1, %.unr-lcssa ], [ %.141.epil, %.epil.preheader ] ; 2 uses
  %i.eq = icmp eq i32 %.141.lcssa, -1
  br i1 %i.eq, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.t, %.preheader155.new
  %indvars.iv = phi i64 [ 0, %.preheader155.new ], [ %indvars.iv.next.1, %bb.t ] ; 4 uses
  %.038160 = phi i32 [ 0, %.preheader155.new ], [ %.139.1, %bb.t ] ; 2 uses
  %.040159 = phi i32 [ -1, %.preheader155.new ], [ %.141.1, %bb.t ]
  %niter = phi i64 [ 0, %.preheader155.new ], [ %niter.next.1, %bb.t ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = load i32, ptr %i.er, align 16
  %i.ev = sub i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %.not49 = icmp ult i64 %i.eg, %i.ew
  %i.ex = icmp ugt i32 %i.ev, %.038160
  %or.cond = select i1 %.not49, i1 %i.ex, i1 false ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %.141 = select i1 %or.cond, i32 %i.ey, i32 %.040159
  %.139 = select i1 %or.cond, i32 %i.ev, i32 %.038160 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = load i32, ptr %i.ez, align 8
  %i.fd = sub i32 %i.fb, %i.fc                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %.not49.1 = icmp ult i64 %i.eg, %i.fe
  %i.ff = icmp ugt i32 %i.fd, %.139
  %or.cond.1 = select i1 %.not49.1, i1 %i.ff, i1 false ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv.next to i32
  %.141.1 = select i1 %or.cond.1, i32 %i.fg, i32 %.141 ; 3 uses
  %.139.1 = select i1 %or.cond.1, i32 %i.fd, i32 %.139 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.t, !llvm.loop !836

bb.u:                                             ; preds = %bb.s
  %i.fh = sext i32 %.141.lcssa to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %12, i64 %i.fh ; 5 uses
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %i.fp = add i32 %i.fo, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %i.ft = icmp eq i32 %i.fm, %i.fs
  br i1 %i.ft, label %_ZN6embree5lzcntEi.exit40.i.thread, label %_ZN6embree5lzcntEi.exit40.i, !prof !31

_ZN6embree5lzcntEi.exit40.i:                      ; preds = %bb.u
  %i.fu = xor i32 %i.fs, %i.fm
  %i.fv = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.fu) #30, !srcloc !32 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %_ZN6embree5lzcntEi.exit40.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit40.i.thread:               ; preds = %bb.u, %_ZN6embree5lzcntEi.exit40.i
  call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fi)
  %i.fx = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.fy = load i32, ptr %i.fi, align 8            ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 8            ; 2 uses
  %i.gc = load i32, ptr %i.fn, align 4            ; 4 uses
  %i.gd = add i32 %i.gc, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = icmp eq i32 %i.gb, %i.gg
  br i1 %i.gh, label %_ZN6embree5lzcntEi.exit.i.thread, label %_ZN6embree5lzcntEi.exit.i, !prof !31

_ZN6embree5lzcntEi.exit.i:                        ; preds = %_ZN6embree5lzcntEi.exit40.i.thread
  %i.gi = xor i32 %i.gg, %i.gb
  %i.gj = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.gi) #30, !srcloc !32 ; 2 uses
  %.not.i = icmp eq i32 %i.gj, -1
  br i1 %.not.i, label %_ZN6embree5lzcntEi.exit.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit.i.thread:                 ; preds = %_ZN6embree5lzcntEi.exit40.i.thread, %_ZN6embree5lzcntEi.exit.i
  %i.gk = add i32 %i.gc, %i.fy
  %i.gl = lshr i32 %i.gk, 1
  %.sroa.4121.0.insert.ext = zext nneg i32 %i.gl to i64 ; 2 uses
  %.sroa.4121.0.insert.shift = shl nuw nsw i64 %.sroa.4121.0.insert.ext, 32
  %.sroa.0120.0.insert.insert = or disjoint i64 %.sroa.4121.0.insert.shift, %i.fz
  br label %bb.v

.critedge.i:                                      ; preds = %_ZN6embree5lzcntEi.exit.i, %_ZN6embree5lzcntEi.exit40.i
  %i.gm = phi ptr [ %i.ee, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gn = phi i32 [ %i.fo, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i ] ; 4 uses
  %i.go = phi i32 [ %i.fj, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fy, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gp = phi ptr [ %i.ef, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ]
  %.pn149 = phi i32 [ %i.fv, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gj, %_ZN6embree5lzcntEi.exit.i ]
  %.036.i = sub nsw i32 31, %.pn149
  %17 = lshr exact i32 -2147483648, %.036.i
  %i.gq = add i32 %i.go, 1
  %.not38.i162 = icmp eq i32 %i.gq, %i.gn
  br i1 %.not38.i162, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %.critedge.i, %.lr.ph165
  %.0.i52164 = phi i32 [ %.0..i, %.lr.ph165 ], [ %i.gn, %.critedge.i ] ; 2 uses
  %.033.i51163 = phi i32 [ %..033.i, %.lr.ph165 ], [ %i.go, %.critedge.i ] ; 2 uses
  %i.gr = add i32 %.0.i52164, %.033.i51163
  %i.gs = lshr i32 %i.gr, 1                       ; 3 uses
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = and i32 %i.gv, %17
  %i.gx = icmp eq i32 %i.gw, 0                    ; 2 uses
  %..033.i = select i1 %i.gx, i32 %i.gs, i32 %.033.i51163 ; 2 uses
  %.0..i = select i1 %i.gx, i32 %.0.i52164, i32 %i.gs ; 3 uses
  %i.gy = add i32 %..033.i, 1
  %.not38.i = icmp eq i32 %i.gy, %.0..i
  br i1 %.not38.i, label %._crit_edge166, label %.lr.ph165, !llvm.loop !835

._crit_edge166:                                   ; preds = %.lr.ph165, %.critedge.i
  %i.gz = phi ptr [ %i.gp, %.critedge.i ], [ %i.gm, %.lr.ph165 ]
  %.0.i52.lcssa = phi i32 [ %i.gn, %.critedge.i ], [ %.0..i, %.lr.ph165 ]
  %.sroa.4115.0.insert.ext = zext i32 %.0.i52.lcssa to i64 ; 2 uses
  %.sroa.4115.0.insert.shift = shl nuw i64 %.sroa.4115.0.insert.ext, 32
  %.sroa.0114.0.insert.ext = zext i32 %i.go to i64
  %.sroa.0114.0.insert.insert = or disjoint i64 %.sroa.4115.0.insert.shift, %.sroa.0114.0.insert.ext
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge166, %_ZN6embree5lzcntEi.exit.i.thread
  %.sink224 = phi i32 [ %i.gn, %._crit_edge166 ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4115.0.insert.ext.sink = phi i64 [ %.sroa.4115.0.insert.ext, %._crit_edge166 ], [ %.sroa.4121.0.insert.ext, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.ha = phi ptr [ %i.gm, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.hb = phi ptr [ %i.gz, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.092.0 = phi i64 [ %.sroa.0114.0.insert.insert, %._crit_edge166 ], [ %.sroa.0120.0.insert.insert, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4112.0.insert.ext = zext i32 %.sink224 to i64
  %.sroa.4112.0.insert.shift = shl nuw i64 %.sroa.4112.0.insert.ext, 32
  %.sroa.0111.0.insert.insert = or disjoint i64 %.sroa.4112.0.insert.shift, %.sroa.4115.0.insert.ext.sink
  %i.hc = getelementptr [8 x i8], ptr %12, i64 %.0168 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 -8     ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  store i64 %i.he, ptr %i.fi, align 8
  store i64 %.sroa.092.0, ptr %i.hd, align 8
  store i64 %.sroa.0111.0.insert.insert, ptr %i.hc, align 8
  %i.hf = add nuw nsw i64 %.0168, 1               ; 3 uses
  %i.hg = load i64, ptr %1, align 8
  %i.hh = icmp ult i64 %i.hf, %i.hg
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hh, label %.preheader155, label %.thread

.thread:                                          ; preds = %bb.s, %bb.v, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66
  %.0.lcssa = phi i64 [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6QuadMvILi4EEEEENS0_19CalculateMeshBoundsINS_8QuadMeshEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSS_SV_.exit66 ], [ %i.hf, %bb.v ], [ %.0168, %bb.s ] ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 128, ptr %i.a, align 8
  %i.hk = load ptr, ptr %i.hj, align 64           ; 18 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 6 uses
  %i.hm = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hn = icmp eq ptr %i.hm, %i.bq
  br i1 %i.hn, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.w

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.hk, ptr %9, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i8 1, ptr %i.ho, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.hk)
  %i.hp = load atomic ptr, ptr %i.hl seq_cst, align 8
  %.not.i2.i = icmp eq ptr %i.hp, null
  br i1 %.not.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 104
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 168
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.hx = atomicrmw add ptr %i.hw, i64 %i.hu seq_cst, align 8 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  %i.ib = load i64, ptr %i.ia, align 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 144
  %i.if = load i64, ptr %i.ie, align 16
  %i.ig = add i64 %i.hz, %i.id
  %i.ih = add i64 %i.ib, %i.if
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 288
  %i.il = atomicrmw add ptr %i.ik, i64 %i.ii seq_cst, align 8 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.in = load i64, ptr %i.im, align 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  %i.ip = load i64, ptr %i.io, align 16
  %i.iq = add i64 %i.ip, %i.in
  %i.ir = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 296
  %i.it = atomicrmw add ptr %i.is, i64 %i.iq seq_cst, align 8 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %.not.i76 = icmp eq ptr %i.bq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i8 0, i64 48, i1 false)
  br i1 %.not.i76, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.z

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.y
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

bb.z:                                             ; preds = %bb.y
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8
  store i64 %i.iy, ptr %i.iw, align 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, i8 0, i64 48, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hk, i64 160
  %i.jb = load i64, ptr %i.ix, align 8
  store i64 %i.jb, ptr %i.ja, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.z
  store atomic ptr %i.bq, ptr %i.hl seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %8, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %i.jc, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.aj

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bq, i64 304 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.bq, i64 312 ; 4 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bq, i64 320 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %.not.i80 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not.i80, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i
  store ptr %i.hk, ptr %i.jf, align 8
  %i.ji = load ptr, ptr %i.je, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jj, ptr %i.je, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.ab:                                            ; preds = %.noexc.i
  %i.jk = load ptr, ptr %i.jd, align 8            ; 4 uses
  %i.jl = ptrtoint ptr %i.jf to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.ac, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc81 unwind label %bb.af

.noexc81:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.jp = ashr exact i64 %i.jn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add nsw i64 %.sroa.speculated.i.i.i, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = call i64 @llvm.umin.i64(i64 %i.jq, i64 1152921504606846975)
  %i.jt = select i1 %i.jr, i64 1152921504606846975, i64 %i.js ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #26
          to label %.noexc82 unwind label %bb.af  ; 4 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jn ; 2 uses
  store ptr %i.hk, ptr %i.jw, align 8
  %i.jx = icmp sgt i64 %i.jn, 0
  br i1 %i.jx, label %bb.ad, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ad:                                            ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jk, i64 %i.jn, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ad, %.noexc82
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jk) #28
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

end_hunk_3
begin_hunk_4_@_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseEmRKNS_5rangeIjEES8_b:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader234

.lr.ph.i.i.i.i.i.i.i.preheader234:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader234, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148), !noalias !1146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149), !noalias !1146
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1149, !noalias !1146
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1148, !noalias !1146
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1149, !noalias !1146
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1134

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc69
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc69 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #28, !noalias !1146
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.g
  store ptr %i.ah, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !1146
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !1146
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !1146
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !1146
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.i, !noalias !1146

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27, !noalias !1146
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !1146
  br label %_ZN6embree13FastAllocator12threadLocal2Ev.exit

bb.j:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.k, !noalias !1146

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #27, !noalias !1146
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #11, !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !1146
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #11, !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !1146
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.j, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i67, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %eh.lpad-body.i, %.body.i ], [ %i.bj, %bb.l ], [ %i.bg, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN6embree13FastAllocator12threadLocal2Ev.exit:   ; preds = %bb.b, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %.05.i = phi ptr [ %i.k, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 266
  %i.bm = load i8, ptr %i.bl, align 2, !range !24, !noundef !25
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  store ptr %i.g, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN6embree13FastAllocator12threadLocal2Ev.exit, %bb.a
  %i.bq = phi ptr [ %i.g, %_ZN6embree13FastAllocator12threadLocal2Ev.exit ], [ %i.d, %bb.a ] ; 10 uses
  br i1 %5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = load i32, ptr %3, align 4
  %i.bu = sub i32 %i.bs, %i.bt
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8
  %.not = icmp ult i64 %i.bx, %i.bv
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !25, !align !27 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef %i.bv)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cc = add i64 %2, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %.not43 = icmp ult i64 %i.cc, %i.ce
  br i1 %.not43, label %bb.q, label %.critedge, !prof !30

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = load i32, ptr %3, align 4               ; 3 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %.not148 = icmp ult i64 %i.cl, %i.cj
  br i1 %.not148, label %bb.r, label %.critedge, !prof !30

.critedge:                                        ; preds = %bb.p, %bb.q
  tail call void @_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafEmRKNS_5rangeIjEES8_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecord") align 16 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4)
  br label %bb.bc

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = zext i32 %i.ch to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = add i32 %i.cg, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq i32 %i.cr, %i.cv
  br i1 %i.cw, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %_ZN6embree5lzcntEi.exit40.i54, !prof !31

_ZN6embree5lzcntEi.exit40.i54:                    ; preds = %bb.r
  %i.cx = xor i32 %i.cv, %i.cr
  %i.cy = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.cx) #30, !srcloc !32 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit40.i54.thread:             ; preds = %bb.r, %_ZN6embree5lzcntEi.exit40.i54
  tail call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.da = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.db = load i32, ptr %3, align 4               ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.df = load i32, ptr %i.cf, align 4            ; 4 uses
  %i.dg = add i32 %i.df, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i32 %i.de, %i.dj
  br i1 %i.dk, label %_ZN6embree5lzcntEi.exit.i63.thread, label %_ZN6embree5lzcntEi.exit.i63, !prof !31

_ZN6embree5lzcntEi.exit.i63:                      ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread
  %i.dl = xor i32 %i.dj, %i.de
  %i.dm = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.dl) #30, !srcloc !32 ; 2 uses
  %.not.i65 = icmp eq i32 %i.dm, -1
  br i1 %.not.i65, label %_ZN6embree5lzcntEi.exit.i63.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit.i63.thread:               ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread, %_ZN6embree5lzcntEi.exit.i63
  %i.dn = add i32 %i.df, %i.db
  %i.do = lshr i32 %i.dn, 1
  %.sroa.4135.0.insert.ext = zext nneg i32 %i.do to i64 ; 2 uses
  %.sroa.4135.0.insert.shift = shl nuw nsw i64 %.sroa.4135.0.insert.ext, 32
  %.sroa.0134.0.insert.insert = or disjoint i64 %.sroa.4135.0.insert.shift, %i.dc
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66

.critedge.i56:                                    ; preds = %_ZN6embree5lzcntEi.exit.i63, %_ZN6embree5lzcntEi.exit40.i54
  %i.dp = phi ptr [ %i.co, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.da, %_ZN6embree5lzcntEi.exit.i63 ] ; 2 uses
  %i.dq = phi i32 [ %i.cg, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.df, %_ZN6embree5lzcntEi.exit.i63 ] ; 4 uses
  %i.dr = phi i32 [ %i.ch, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.db, %_ZN6embree5lzcntEi.exit.i63 ] ; 3 uses
  %.pn = phi i32 [ %i.cy, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.dm, %_ZN6embree5lzcntEi.exit.i63 ]
  %.036.i57 = sub nsw i32 31, %.pn
  %16 = lshr exact i32 -2147483648, %.036.i57
  %i.ds = add i32 %i.dr, 1
  %.not38.i60156 = icmp eq i32 %i.ds, %i.dq
  br i1 %.not38.i60156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.i56, %.lr.ph
  %.0.i59158 = phi i32 [ %.0..i62, %.lr.ph ], [ %i.dq, %.critedge.i56 ] ; 2 uses
  %.033.i58157 = phi i32 [ %..033.i61, %.lr.ph ], [ %i.dr, %.critedge.i56 ] ; 2 uses
  %i.dt = add i32 %.0.i59158, %.033.i58157
  %i.du = lshr i32 %i.dt, 1                       ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = and i32 %i.dx, %16
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %..033.i61 = select i1 %i.dz, i32 %i.du, i32 %.033.i58157 ; 2 uses
  %.0..i62 = select i1 %i.dz, i32 %.0.i59158, i32 %i.du ; 3 uses
  %i.ea = add i32 %..033.i61, 1
  %.not38.i60 = icmp eq i32 %i.ea, %.0..i62
  br i1 %.not38.i60, label %._crit_edge, label %.lr.ph, !llvm.loop !1135

._crit_edge:                                      ; preds = %.lr.ph, %.critedge.i56
  %.0.i59.lcssa = phi i32 [ %i.dq, %.critedge.i56 ], [ %.0..i62, %.lr.ph ]
  %.sroa.4129.0.insert.ext = zext i32 %.0.i59.lcssa to i64 ; 2 uses
  %.sroa.4129.0.insert.shift = shl nuw i64 %.sroa.4129.0.insert.ext, 32
  %.sroa.0128.0.insert.ext = zext i32 %i.dr to i64
  %.sroa.0128.0.insert.insert = or disjoint i64 %.sroa.4129.0.insert.shift, %.sroa.0128.0.insert.ext
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66

_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66: ; preds = %_ZN6embree5lzcntEi.exit.i63.thread, %._crit_edge
  %.sroa.0134.0.insert.insert.sink = phi i64 [ %.sroa.0134.0.insert.insert, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.0128.0.insert.insert, %._crit_edge ]
  %.sink = phi i32 [ %i.df, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dq, %._crit_edge ]
  %.sroa.4135.0.insert.ext.sink = phi i64 [ %.sroa.4135.0.insert.ext, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.4129.0.insert.ext, %._crit_edge ]
  %i.eb = phi ptr [ %i.da, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dp, %._crit_edge ] ; 2 uses
  store i64 %.sroa.0134.0.insert.insert.sink, ptr %12, align 16
  %.sroa.4133.0.insert.ext = zext i32 %.sink to i64
  %.sroa.4133.0.insert.shift = shl nuw i64 %.sroa.4133.0.insert.ext, 32
  %.sroa.0132.0.insert.insert = or disjoint i64 %.sroa.4133.0.insert.shift, %.sroa.4135.0.insert.ext.sink
  store i64 %.sroa.0132.0.insert.insert, ptr %i.cm, align 8
  %i.ec = load i64, ptr %1, align 8
  %i.ed = icmp ugt i64 %i.ec, 2
  br i1 %i.ed, label %.preheader155, label %.thread

.preheader155:                                    ; preds = %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ] ; 2 uses
  %i.ee = phi ptr [ %i.ha, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ]
  %i.ef = phi ptr [ %i.hb, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ] ; 3 uses
  %.0168 = phi i64 [ %i.hf, %bb.v ], [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ] ; 6 uses
  %i.eg = load i64, ptr %i.ck, align 8            ; 3 uses
  %xtraiter = and i64 %.0168, 1
  %i.eh = icmp eq i64 %indvar, -1
  br i1 %i.eh, label %.epil.preheader, label %.preheader155.new

.preheader155.new:                                ; preds = %.preheader155
  %unroll_iter = and i64 %.0168, 9223372036854775806
  br label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader155
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader155 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.038160.epil.init = phi i32 [ 0, %.preheader155 ], [ %.139.1, %.unr-lcssa ]
  %.040159.epil.init = phi i32 [ -1, %.preheader155 ], [ %.141.1, %.unr-lcssa ]
  %lcmp.mod237 = trunc i64 %.0168 to i1
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.epil.init ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = load i32, ptr %i.ei, align 8
  %i.em = sub i32 %i.ek, %i.el                    ; 2 uses
  %i.en = zext i32 %i.em to i64
  %.not49.epil = icmp ult i64 %i.eg, %i.en
  %i.eo = icmp ugt i32 %i.em, %.038160.epil.init
  %or.cond.epil = select i1 %.not49.epil, i1 %i.eo, i1 false
  %i.ep = trunc nuw i64 %indvars.iv.epil.init to i32
  %.141.epil = select i1 %or.cond.epil, i32 %i.ep, i32 %.040159.epil.init
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.141.lcssa = phi i32 [ %.141.1, %.unr-lcssa ], [ %.141.epil, %.epil.preheader ] ; 2 uses
  %i.eq = icmp eq i32 %.141.lcssa, -1
  br i1 %i.eq, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.t, %.preheader155.new
  %indvars.iv = phi i64 [ 0, %.preheader155.new ], [ %indvars.iv.next.1, %bb.t ] ; 4 uses
  %.038160 = phi i32 [ 0, %.preheader155.new ], [ %.139.1, %bb.t ] ; 2 uses
  %.040159 = phi i32 [ -1, %.preheader155.new ], [ %.141.1, %bb.t ]
  %niter = phi i64 [ 0, %.preheader155.new ], [ %niter.next.1, %bb.t ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = load i32, ptr %i.er, align 16
  %i.ev = sub i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %.not49 = icmp ult i64 %i.eg, %i.ew
  %i.ex = icmp ugt i32 %i.ev, %.038160
  %or.cond = select i1 %.not49, i1 %i.ex, i1 false ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %.141 = select i1 %or.cond, i32 %i.ey, i32 %.040159
  %.139 = select i1 %or.cond, i32 %i.ev, i32 %.038160 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = load i32, ptr %i.ez, align 8
  %i.fd = sub i32 %i.fb, %i.fc                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %.not49.1 = icmp ult i64 %i.eg, %i.fe
  %i.ff = icmp ugt i32 %i.fd, %.139
  %or.cond.1 = select i1 %.not49.1, i1 %i.ff, i1 false ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv.next to i32
  %.141.1 = select i1 %or.cond.1, i32 %i.fg, i32 %.141 ; 3 uses
  %.139.1 = select i1 %or.cond.1, i32 %i.fd, i32 %.139 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.t, !llvm.loop !1136

bb.u:                                             ; preds = %bb.s
  %i.fh = sext i32 %.141.lcssa to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %12, i64 %i.fh ; 5 uses
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %i.fp = add i32 %i.fo, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %i.ft = icmp eq i32 %i.fm, %i.fs
  br i1 %i.ft, label %_ZN6embree5lzcntEi.exit40.i.thread, label %_ZN6embree5lzcntEi.exit40.i, !prof !31

_ZN6embree5lzcntEi.exit40.i:                      ; preds = %bb.u
  %i.fu = xor i32 %i.fs, %i.fm
  %i.fv = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.fu) #30, !srcloc !32 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %_ZN6embree5lzcntEi.exit40.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit40.i.thread:               ; preds = %bb.u, %_ZN6embree5lzcntEi.exit40.i
  call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fi)
  %i.fx = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.fy = load i32, ptr %i.fi, align 8            ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 8            ; 2 uses
  %i.gc = load i32, ptr %i.fn, align 4            ; 4 uses
  %i.gd = add i32 %i.gc, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = icmp eq i32 %i.gb, %i.gg
  br i1 %i.gh, label %_ZN6embree5lzcntEi.exit.i.thread, label %_ZN6embree5lzcntEi.exit.i, !prof !31

_ZN6embree5lzcntEi.exit.i:                        ; preds = %_ZN6embree5lzcntEi.exit40.i.thread
  %i.gi = xor i32 %i.gg, %i.gb
  %i.gj = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.gi) #30, !srcloc !32 ; 2 uses
  %.not.i = icmp eq i32 %i.gj, -1
  br i1 %.not.i, label %_ZN6embree5lzcntEi.exit.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit.i.thread:                 ; preds = %_ZN6embree5lzcntEi.exit40.i.thread, %_ZN6embree5lzcntEi.exit.i
  %i.gk = add i32 %i.gc, %i.fy
  %i.gl = lshr i32 %i.gk, 1
  %.sroa.4121.0.insert.ext = zext nneg i32 %i.gl to i64 ; 2 uses
  %.sroa.4121.0.insert.shift = shl nuw nsw i64 %.sroa.4121.0.insert.ext, 32
  %.sroa.0120.0.insert.insert = or disjoint i64 %.sroa.4121.0.insert.shift, %i.fz
  br label %bb.v

.critedge.i:                                      ; preds = %_ZN6embree5lzcntEi.exit.i, %_ZN6embree5lzcntEi.exit40.i
  %i.gm = phi ptr [ %i.ee, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gn = phi i32 [ %i.fo, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i ] ; 4 uses
  %i.go = phi i32 [ %i.fj, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fy, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gp = phi ptr [ %i.ef, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ]
  %.pn149 = phi i32 [ %i.fv, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gj, %_ZN6embree5lzcntEi.exit.i ]
  %.036.i = sub nsw i32 31, %.pn149
  %17 = lshr exact i32 -2147483648, %.036.i
  %i.gq = add i32 %i.go, 1
  %.not38.i162 = icmp eq i32 %i.gq, %i.gn
  br i1 %.not38.i162, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %.critedge.i, %.lr.ph165
  %.0.i52164 = phi i32 [ %.0..i, %.lr.ph165 ], [ %i.gn, %.critedge.i ] ; 2 uses
  %.033.i51163 = phi i32 [ %..033.i, %.lr.ph165 ], [ %i.go, %.critedge.i ] ; 2 uses
  %i.gr = add i32 %.0.i52164, %.033.i51163
  %i.gs = lshr i32 %i.gr, 1                       ; 3 uses
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = and i32 %i.gv, %17
  %i.gx = icmp eq i32 %i.gw, 0                    ; 2 uses
  %..033.i = select i1 %i.gx, i32 %i.gs, i32 %.033.i51163 ; 2 uses
  %.0..i = select i1 %i.gx, i32 %.0.i52164, i32 %i.gs ; 3 uses
  %i.gy = add i32 %..033.i, 1
  %.not38.i = icmp eq i32 %i.gy, %.0..i
  br i1 %.not38.i, label %._crit_edge166, label %.lr.ph165, !llvm.loop !1135

._crit_edge166:                                   ; preds = %.lr.ph165, %.critedge.i
  %i.gz = phi ptr [ %i.gp, %.critedge.i ], [ %i.gm, %.lr.ph165 ]
  %.0.i52.lcssa = phi i32 [ %i.gn, %.critedge.i ], [ %.0..i, %.lr.ph165 ]
  %.sroa.4115.0.insert.ext = zext i32 %.0.i52.lcssa to i64 ; 2 uses
  %.sroa.4115.0.insert.shift = shl nuw i64 %.sroa.4115.0.insert.ext, 32
  %.sroa.0114.0.insert.ext = zext i32 %i.go to i64
  %.sroa.0114.0.insert.insert = or disjoint i64 %.sroa.4115.0.insert.shift, %.sroa.0114.0.insert.ext
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge166, %_ZN6embree5lzcntEi.exit.i.thread
  %.sink224 = phi i32 [ %i.gn, %._crit_edge166 ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4115.0.insert.ext.sink = phi i64 [ %.sroa.4115.0.insert.ext, %._crit_edge166 ], [ %.sroa.4121.0.insert.ext, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.ha = phi ptr [ %i.gm, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.hb = phi ptr [ %i.gz, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.092.0 = phi i64 [ %.sroa.0114.0.insert.insert, %._crit_edge166 ], [ %.sroa.0120.0.insert.insert, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4112.0.insert.ext = zext i32 %.sink224 to i64
  %.sroa.4112.0.insert.shift = shl nuw i64 %.sroa.4112.0.insert.ext, 32
  %.sroa.0111.0.insert.insert = or disjoint i64 %.sroa.4112.0.insert.shift, %.sroa.4115.0.insert.ext.sink
  %i.hc = getelementptr [8 x i8], ptr %12, i64 %.0168 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 -8     ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  store i64 %i.he, ptr %i.fi, align 8
  store i64 %.sroa.092.0, ptr %i.hd, align 8
  store i64 %.sroa.0111.0.insert.insert, ptr %i.hc, align 8
  %i.hf = add nuw nsw i64 %.0168, 1               ; 3 uses
  %i.hg = load i64, ptr %1, align 8
  %i.hh = icmp ult i64 %i.hf, %i.hg
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hh, label %.preheader155, label %.thread

.thread:                                          ; preds = %bb.s, %bb.v, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66
  %.0.lcssa = phi i64 [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_6ObjectEEENS0_19CalculateMeshBoundsINS_12UserGeometryEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ], [ %i.hf, %bb.v ], [ %.0168, %bb.s ] ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 128, ptr %i.a, align 8
  %i.hk = load ptr, ptr %i.hj, align 64           ; 18 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 6 uses
  %i.hm = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hn = icmp eq ptr %i.hm, %i.bq
  br i1 %i.hn, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.w

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.hk, ptr %9, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i8 1, ptr %i.ho, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.hk)
  %i.hp = load atomic ptr, ptr %i.hl seq_cst, align 8
  %.not.i2.i = icmp eq ptr %i.hp, null
  br i1 %.not.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 104
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 168
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.hx = atomicrmw add ptr %i.hw, i64 %i.hu seq_cst, align 8 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  %i.ib = load i64, ptr %i.ia, align 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 144
  %i.if = load i64, ptr %i.ie, align 16
  %i.ig = add i64 %i.hz, %i.id
  %i.ih = add i64 %i.ib, %i.if
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 288
  %i.il = atomicrmw add ptr %i.ik, i64 %i.ii seq_cst, align 8 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.in = load i64, ptr %i.im, align 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  %i.ip = load i64, ptr %i.io, align 16
  %i.iq = add i64 %i.ip, %i.in
  %i.ir = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 296
  %i.it = atomicrmw add ptr %i.is, i64 %i.iq seq_cst, align 8 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %.not.i76 = icmp eq ptr %i.bq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i8 0, i64 48, i1 false)
  br i1 %.not.i76, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.z

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.y
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

bb.z:                                             ; preds = %bb.y
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8
  store i64 %i.iy, ptr %i.iw, align 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, i8 0, i64 48, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hk, i64 160
  %i.jb = load i64, ptr %i.ix, align 8
  store i64 %i.jb, ptr %i.ja, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.z
  store atomic ptr %i.bq, ptr %i.hl seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %8, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %i.jc, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.aj

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bq, i64 304 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.bq, i64 312 ; 4 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bq, i64 320 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %.not.i80 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not.i80, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i
  store ptr %i.hk, ptr %i.jf, align 8
  %i.ji = load ptr, ptr %i.je, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jj, ptr %i.je, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.ab:                                            ; preds = %.noexc.i
  %i.jk = load ptr, ptr %i.jd, align 8            ; 4 uses
  %i.jl = ptrtoint ptr %i.jf to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.ac, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc81 unwind label %bb.af

.noexc81:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.jp = ashr exact i64 %i.jn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add nsw i64 %.sroa.speculated.i.i.i, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = call i64 @llvm.umin.i64(i64 %i.jq, i64 1152921504606846975)
  %i.jt = select i1 %i.jr, i64 1152921504606846975, i64 %i.js ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #26
          to label %.noexc82 unwind label %bb.af  ; 4 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jn ; 2 uses
  store ptr %i.hk, ptr %i.jw, align 8
  %i.jx = icmp sgt i64 %i.jn, 0
  br i1 %i.jx, label %bb.ad, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ad:                                            ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jk, i64 %i.jn, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ad, %.noexc82
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jk) #28
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

end_hunk_4
begin_hunk_5_@_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseEmRKNS_5rangeIjEES8_b:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader234

.lr.ph.i.i.i.i.i.i.i.preheader234:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader234, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307), !noalias !1305
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308), !noalias !1305
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1308, !noalias !1305
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1307, !noalias !1305
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1308, !noalias !1305
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1293

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc69
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc69 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #28, !noalias !1305
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.g
  store ptr %i.ah, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !1305
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !1305
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !1305
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !1305
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.i, !noalias !1305

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27, !noalias !1305
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !1305
  br label %_ZN6embree13FastAllocator12threadLocal2Ev.exit

bb.j:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.k, !noalias !1305

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #27, !noalias !1305
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #11, !noalias !1305
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !1305
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #11, !noalias !1305
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !1305
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.j, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i67, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %eh.lpad-body.i, %.body.i ], [ %i.bj, %bb.l ], [ %i.bg, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN6embree13FastAllocator12threadLocal2Ev.exit:   ; preds = %bb.b, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %.05.i = phi ptr [ %i.k, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 266
  %i.bm = load i8, ptr %i.bl, align 2, !range !24, !noundef !25
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  store ptr %i.g, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN6embree13FastAllocator12threadLocal2Ev.exit, %bb.a
  %i.bq = phi ptr [ %i.g, %_ZN6embree13FastAllocator12threadLocal2Ev.exit ], [ %i.d, %bb.a ] ; 10 uses
  br i1 %5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = load i32, ptr %3, align 4
  %i.bu = sub i32 %i.bs, %i.bt
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8
  %.not = icmp ult i64 %i.bx, %i.bv
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !25, !align !27 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef %i.bv)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cc = add i64 %2, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %.not43 = icmp ult i64 %i.cc, %i.ce
  br i1 %.not43, label %bb.q, label %.critedge, !prof !30

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = load i32, ptr %3, align 4               ; 3 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %.not148 = icmp ult i64 %i.cl, %i.cj
  br i1 %.not148, label %bb.r, label %.critedge, !prof !30

.critedge:                                        ; preds = %bb.p, %bb.q
  tail call void @_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafEmRKNS_5rangeIjEES8_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecord") align 16 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4)
  br label %bb.bc

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = zext i32 %i.ch to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = add i32 %i.cg, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq i32 %i.cr, %i.cv
  br i1 %i.cw, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %_ZN6embree5lzcntEi.exit40.i54, !prof !31

_ZN6embree5lzcntEi.exit40.i54:                    ; preds = %bb.r
  %i.cx = xor i32 %i.cv, %i.cr
  %i.cy = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.cx) #30, !srcloc !32 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit40.i54.thread:             ; preds = %bb.r, %_ZN6embree5lzcntEi.exit40.i54
  tail call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.da = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.db = load i32, ptr %3, align 4               ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.df = load i32, ptr %i.cf, align 4            ; 4 uses
  %i.dg = add i32 %i.df, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i32 %i.de, %i.dj
  br i1 %i.dk, label %_ZN6embree5lzcntEi.exit.i63.thread, label %_ZN6embree5lzcntEi.exit.i63, !prof !31

_ZN6embree5lzcntEi.exit.i63:                      ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread
  %i.dl = xor i32 %i.dj, %i.de
  %i.dm = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.dl) #30, !srcloc !32 ; 2 uses
  %.not.i65 = icmp eq i32 %i.dm, -1
  br i1 %.not.i65, label %_ZN6embree5lzcntEi.exit.i63.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit.i63.thread:               ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread, %_ZN6embree5lzcntEi.exit.i63
  %i.dn = add i32 %i.df, %i.db
  %i.do = lshr i32 %i.dn, 1
  %.sroa.4135.0.insert.ext = zext nneg i32 %i.do to i64 ; 2 uses
  %.sroa.4135.0.insert.shift = shl nuw nsw i64 %.sroa.4135.0.insert.ext, 32
  %.sroa.0134.0.insert.insert = or disjoint i64 %.sroa.4135.0.insert.shift, %i.dc
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66

.critedge.i56:                                    ; preds = %_ZN6embree5lzcntEi.exit.i63, %_ZN6embree5lzcntEi.exit40.i54
  %i.dp = phi ptr [ %i.co, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.da, %_ZN6embree5lzcntEi.exit.i63 ] ; 2 uses
  %i.dq = phi i32 [ %i.cg, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.df, %_ZN6embree5lzcntEi.exit.i63 ] ; 4 uses
  %i.dr = phi i32 [ %i.ch, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.db, %_ZN6embree5lzcntEi.exit.i63 ] ; 3 uses
  %.pn = phi i32 [ %i.cy, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.dm, %_ZN6embree5lzcntEi.exit.i63 ]
  %.036.i57 = sub nsw i32 31, %.pn
  %16 = lshr exact i32 -2147483648, %.036.i57
  %i.ds = add i32 %i.dr, 1
  %.not38.i60156 = icmp eq i32 %i.ds, %i.dq
  br i1 %.not38.i60156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.i56, %.lr.ph
  %.0.i59158 = phi i32 [ %.0..i62, %.lr.ph ], [ %i.dq, %.critedge.i56 ] ; 2 uses
  %.033.i58157 = phi i32 [ %..033.i61, %.lr.ph ], [ %i.dr, %.critedge.i56 ] ; 2 uses
  %i.dt = add i32 %.0.i59158, %.033.i58157
  %i.du = lshr i32 %i.dt, 1                       ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = and i32 %i.dx, %16
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %..033.i61 = select i1 %i.dz, i32 %i.du, i32 %.033.i58157 ; 2 uses
  %.0..i62 = select i1 %i.dz, i32 %.0.i59158, i32 %i.du ; 3 uses
  %i.ea = add i32 %..033.i61, 1
  %.not38.i60 = icmp eq i32 %i.ea, %.0..i62
  br i1 %.not38.i60, label %._crit_edge, label %.lr.ph, !llvm.loop !1294

._crit_edge:                                      ; preds = %.lr.ph, %.critedge.i56
  %.0.i59.lcssa = phi i32 [ %i.dq, %.critedge.i56 ], [ %.0..i62, %.lr.ph ]
  %.sroa.4129.0.insert.ext = zext i32 %.0.i59.lcssa to i64 ; 2 uses
  %.sroa.4129.0.insert.shift = shl nuw i64 %.sroa.4129.0.insert.ext, 32
  %.sroa.0128.0.insert.ext = zext i32 %i.dr to i64
  %.sroa.0128.0.insert.insert = or disjoint i64 %.sroa.4129.0.insert.shift, %.sroa.0128.0.insert.ext
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66

_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66: ; preds = %_ZN6embree5lzcntEi.exit.i63.thread, %._crit_edge
  %.sroa.0134.0.insert.insert.sink = phi i64 [ %.sroa.0134.0.insert.insert, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.0128.0.insert.insert, %._crit_edge ]
  %.sink = phi i32 [ %i.df, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dq, %._crit_edge ]
  %.sroa.4135.0.insert.ext.sink = phi i64 [ %.sroa.4135.0.insert.ext, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.4129.0.insert.ext, %._crit_edge ]
  %i.eb = phi ptr [ %i.da, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dp, %._crit_edge ] ; 2 uses
  store i64 %.sroa.0134.0.insert.insert.sink, ptr %12, align 16
  %.sroa.4133.0.insert.ext = zext i32 %.sink to i64
  %.sroa.4133.0.insert.shift = shl nuw i64 %.sroa.4133.0.insert.ext, 32
  %.sroa.0132.0.insert.insert = or disjoint i64 %.sroa.4133.0.insert.shift, %.sroa.4135.0.insert.ext.sink
  store i64 %.sroa.0132.0.insert.insert, ptr %i.cm, align 8
  %i.ec = load i64, ptr %1, align 8
  %i.ed = icmp ugt i64 %i.ec, 2
  br i1 %i.ed, label %.preheader155, label %.thread

.preheader155:                                    ; preds = %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ] ; 2 uses
  %i.ee = phi ptr [ %i.ha, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ]
  %i.ef = phi ptr [ %i.hb, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ] ; 3 uses
  %.0168 = phi i64 [ %i.hf, %bb.v ], [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ] ; 6 uses
  %i.eg = load i64, ptr %i.ck, align 8            ; 3 uses
  %xtraiter = and i64 %.0168, 1
  %i.eh = icmp eq i64 %indvar, -1
  br i1 %i.eh, label %.epil.preheader, label %.preheader155.new

.preheader155.new:                                ; preds = %.preheader155
  %unroll_iter = and i64 %.0168, 9223372036854775806
  br label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader155
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader155 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.038160.epil.init = phi i32 [ 0, %.preheader155 ], [ %.139.1, %.unr-lcssa ]
  %.040159.epil.init = phi i32 [ -1, %.preheader155 ], [ %.141.1, %.unr-lcssa ]
  %lcmp.mod237 = trunc i64 %.0168 to i1
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.epil.init ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = load i32, ptr %i.ei, align 8
  %i.em = sub i32 %i.ek, %i.el                    ; 2 uses
  %i.en = zext i32 %i.em to i64
  %.not49.epil = icmp ult i64 %i.eg, %i.en
  %i.eo = icmp ugt i32 %i.em, %.038160.epil.init
  %or.cond.epil = select i1 %.not49.epil, i1 %i.eo, i1 false
  %i.ep = trunc nuw i64 %indvars.iv.epil.init to i32
  %.141.epil = select i1 %or.cond.epil, i32 %i.ep, i32 %.040159.epil.init
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.141.lcssa = phi i32 [ %.141.1, %.unr-lcssa ], [ %.141.epil, %.epil.preheader ] ; 2 uses
  %i.eq = icmp eq i32 %.141.lcssa, -1
  br i1 %i.eq, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.t, %.preheader155.new
  %indvars.iv = phi i64 [ 0, %.preheader155.new ], [ %indvars.iv.next.1, %bb.t ] ; 4 uses
  %.038160 = phi i32 [ 0, %.preheader155.new ], [ %.139.1, %bb.t ] ; 2 uses
  %.040159 = phi i32 [ -1, %.preheader155.new ], [ %.141.1, %bb.t ]
  %niter = phi i64 [ 0, %.preheader155.new ], [ %niter.next.1, %bb.t ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = load i32, ptr %i.er, align 16
  %i.ev = sub i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %.not49 = icmp ult i64 %i.eg, %i.ew
  %i.ex = icmp ugt i32 %i.ev, %.038160
  %or.cond = select i1 %.not49, i1 %i.ex, i1 false ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %.141 = select i1 %or.cond, i32 %i.ey, i32 %.040159
  %.139 = select i1 %or.cond, i32 %i.ev, i32 %.038160 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = load i32, ptr %i.ez, align 8
  %i.fd = sub i32 %i.fb, %i.fc                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %.not49.1 = icmp ult i64 %i.eg, %i.fe
  %i.ff = icmp ugt i32 %i.fd, %.139
  %or.cond.1 = select i1 %.not49.1, i1 %i.ff, i1 false ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv.next to i32
  %.141.1 = select i1 %or.cond.1, i32 %i.fg, i32 %.141 ; 3 uses
  %.139.1 = select i1 %or.cond.1, i32 %i.fd, i32 %.139 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.t, !llvm.loop !1295

bb.u:                                             ; preds = %bb.s
  %i.fh = sext i32 %.141.lcssa to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %12, i64 %i.fh ; 5 uses
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %i.fp = add i32 %i.fo, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %i.ft = icmp eq i32 %i.fm, %i.fs
  br i1 %i.ft, label %_ZN6embree5lzcntEi.exit40.i.thread, label %_ZN6embree5lzcntEi.exit40.i, !prof !31

_ZN6embree5lzcntEi.exit40.i:                      ; preds = %bb.u
  %i.fu = xor i32 %i.fs, %i.fm
  %i.fv = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.fu) #30, !srcloc !32 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %_ZN6embree5lzcntEi.exit40.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit40.i.thread:               ; preds = %bb.u, %_ZN6embree5lzcntEi.exit40.i
  call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fi)
  %i.fx = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.fy = load i32, ptr %i.fi, align 8            ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 8            ; 2 uses
  %i.gc = load i32, ptr %i.fn, align 4            ; 4 uses
  %i.gd = add i32 %i.gc, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = icmp eq i32 %i.gb, %i.gg
  br i1 %i.gh, label %_ZN6embree5lzcntEi.exit.i.thread, label %_ZN6embree5lzcntEi.exit.i, !prof !31

_ZN6embree5lzcntEi.exit.i:                        ; preds = %_ZN6embree5lzcntEi.exit40.i.thread
  %i.gi = xor i32 %i.gg, %i.gb
  %i.gj = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.gi) #30, !srcloc !32 ; 2 uses
  %.not.i = icmp eq i32 %i.gj, -1
  br i1 %.not.i, label %_ZN6embree5lzcntEi.exit.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit.i.thread:                 ; preds = %_ZN6embree5lzcntEi.exit40.i.thread, %_ZN6embree5lzcntEi.exit.i
  %i.gk = add i32 %i.gc, %i.fy
  %i.gl = lshr i32 %i.gk, 1
  %.sroa.4121.0.insert.ext = zext nneg i32 %i.gl to i64 ; 2 uses
  %.sroa.4121.0.insert.shift = shl nuw nsw i64 %.sroa.4121.0.insert.ext, 32
  %.sroa.0120.0.insert.insert = or disjoint i64 %.sroa.4121.0.insert.shift, %i.fz
  br label %bb.v

.critedge.i:                                      ; preds = %_ZN6embree5lzcntEi.exit.i, %_ZN6embree5lzcntEi.exit40.i
  %i.gm = phi ptr [ %i.ee, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gn = phi i32 [ %i.fo, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i ] ; 4 uses
  %i.go = phi i32 [ %i.fj, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fy, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gp = phi ptr [ %i.ef, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ]
  %.pn149 = phi i32 [ %i.fv, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gj, %_ZN6embree5lzcntEi.exit.i ]
  %.036.i = sub nsw i32 31, %.pn149
  %17 = lshr exact i32 -2147483648, %.036.i
  %i.gq = add i32 %i.go, 1
  %.not38.i162 = icmp eq i32 %i.gq, %i.gn
  br i1 %.not38.i162, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %.critedge.i, %.lr.ph165
  %.0.i52164 = phi i32 [ %.0..i, %.lr.ph165 ], [ %i.gn, %.critedge.i ] ; 2 uses
  %.033.i51163 = phi i32 [ %..033.i, %.lr.ph165 ], [ %i.go, %.critedge.i ] ; 2 uses
  %i.gr = add i32 %.0.i52164, %.033.i51163
  %i.gs = lshr i32 %i.gr, 1                       ; 3 uses
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = and i32 %i.gv, %17
  %i.gx = icmp eq i32 %i.gw, 0                    ; 2 uses
  %..033.i = select i1 %i.gx, i32 %i.gs, i32 %.033.i51163 ; 2 uses
  %.0..i = select i1 %i.gx, i32 %.0.i52164, i32 %i.gs ; 3 uses
  %i.gy = add i32 %..033.i, 1
  %.not38.i = icmp eq i32 %i.gy, %.0..i
  br i1 %.not38.i, label %._crit_edge166, label %.lr.ph165, !llvm.loop !1294

._crit_edge166:                                   ; preds = %.lr.ph165, %.critedge.i
  %i.gz = phi ptr [ %i.gp, %.critedge.i ], [ %i.gm, %.lr.ph165 ]
  %.0.i52.lcssa = phi i32 [ %i.gn, %.critedge.i ], [ %.0..i, %.lr.ph165 ]
  %.sroa.4115.0.insert.ext = zext i32 %.0.i52.lcssa to i64 ; 2 uses
  %.sroa.4115.0.insert.shift = shl nuw i64 %.sroa.4115.0.insert.ext, 32
  %.sroa.0114.0.insert.ext = zext i32 %i.go to i64
  %.sroa.0114.0.insert.insert = or disjoint i64 %.sroa.4115.0.insert.shift, %.sroa.0114.0.insert.ext
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge166, %_ZN6embree5lzcntEi.exit.i.thread
  %.sink224 = phi i32 [ %i.gn, %._crit_edge166 ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4115.0.insert.ext.sink = phi i64 [ %.sroa.4115.0.insert.ext, %._crit_edge166 ], [ %.sroa.4121.0.insert.ext, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.ha = phi ptr [ %i.gm, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.hb = phi ptr [ %i.gz, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.092.0 = phi i64 [ %.sroa.0114.0.insert.insert, %._crit_edge166 ], [ %.sroa.0120.0.insert.insert, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4112.0.insert.ext = zext i32 %.sink224 to i64
  %.sroa.4112.0.insert.shift = shl nuw i64 %.sroa.4112.0.insert.ext, 32
  %.sroa.0111.0.insert.insert = or disjoint i64 %.sroa.4112.0.insert.shift, %.sroa.4115.0.insert.ext.sink
  %i.hc = getelementptr [8 x i8], ptr %12, i64 %.0168 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 -8     ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  store i64 %i.he, ptr %i.fi, align 8
  store i64 %.sroa.092.0, ptr %i.hd, align 8
  store i64 %.sroa.0111.0.insert.insert, ptr %i.hc, align 8
  %i.hf = add nuw nsw i64 %.0168, 1               ; 3 uses
  %i.hg = load i64, ptr %1, align 8
  %i.hh = icmp ult i64 %i.hf, %i.hg
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hh, label %.preheader155, label %.thread

.thread:                                          ; preds = %bb.s, %bb.v, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66
  %.0.lcssa = phi i64 [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_17InstancePrimitiveEEENS0_19CalculateMeshBoundsINS_8InstanceEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ], [ %i.hf, %bb.v ], [ %.0168, %bb.s ] ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 128, ptr %i.a, align 8
  %i.hk = load ptr, ptr %i.hj, align 64           ; 18 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 6 uses
  %i.hm = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hn = icmp eq ptr %i.hm, %i.bq
  br i1 %i.hn, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.w

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.hk, ptr %9, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i8 1, ptr %i.ho, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.hk)
  %i.hp = load atomic ptr, ptr %i.hl seq_cst, align 8
  %.not.i2.i = icmp eq ptr %i.hp, null
  br i1 %.not.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 104
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 168
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.hx = atomicrmw add ptr %i.hw, i64 %i.hu seq_cst, align 8 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  %i.ib = load i64, ptr %i.ia, align 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 144
  %i.if = load i64, ptr %i.ie, align 16
  %i.ig = add i64 %i.hz, %i.id
  %i.ih = add i64 %i.ib, %i.if
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 288
  %i.il = atomicrmw add ptr %i.ik, i64 %i.ii seq_cst, align 8 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.in = load i64, ptr %i.im, align 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  %i.ip = load i64, ptr %i.io, align 16
  %i.iq = add i64 %i.ip, %i.in
  %i.ir = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 296
  %i.it = atomicrmw add ptr %i.is, i64 %i.iq seq_cst, align 8 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %.not.i76 = icmp eq ptr %i.bq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i8 0, i64 48, i1 false)
  br i1 %.not.i76, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.z

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.y
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

bb.z:                                             ; preds = %bb.y
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8
  store i64 %i.iy, ptr %i.iw, align 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, i8 0, i64 48, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hk, i64 160
  %i.jb = load i64, ptr %i.ix, align 8
  store i64 %i.jb, ptr %i.ja, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.z
  store atomic ptr %i.bq, ptr %i.hl seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %8, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %i.jc, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.aj

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bq, i64 304 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.bq, i64 312 ; 4 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bq, i64 320 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %.not.i80 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not.i80, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i
  store ptr %i.hk, ptr %i.jf, align 8
  %i.ji = load ptr, ptr %i.je, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jj, ptr %i.je, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.ab:                                            ; preds = %.noexc.i
  %i.jk = load ptr, ptr %i.jd, align 8            ; 4 uses
  %i.jl = ptrtoint ptr %i.jf to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.ac, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc81 unwind label %bb.af

.noexc81:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.jp = ashr exact i64 %i.jn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add nsw i64 %.sroa.speculated.i.i.i, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = call i64 @llvm.umin.i64(i64 %i.jq, i64 1152921504606846975)
  %i.jt = select i1 %i.jr, i64 1152921504606846975, i64 %i.js ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #26
          to label %.noexc82 unwind label %bb.af  ; 4 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jn ; 2 uses
  store ptr %i.hk, ptr %i.jw, align 8
  %i.jx = icmp sgt i64 %i.jn, 0
  br i1 %i.jx, label %bb.ad, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ad:                                            ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jk, i64 %i.jn, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ad, %.noexc82
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jk) #28
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

end_hunk_5
begin_hunk_6_@_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseEmRKNS_5rangeIjEES8_b:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1631

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader234

.lr.ph.i.i.i.i.i.i.i.preheader234:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader234, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader234 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646), !noalias !1644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1647), !noalias !1644
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1647, !noalias !1644
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1646, !noalias !1644
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1647, !noalias !1644
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1632

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc69
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc69 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #28, !noalias !1644
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.g
  store ptr %i.ah, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !1644
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !1644
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !1644
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !1644
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.i, !noalias !1644

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27, !noalias !1644
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !1644
  br label %_ZN6embree13FastAllocator12threadLocal2Ev.exit

bb.j:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.k, !noalias !1644

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #27, !noalias !1644
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #11, !noalias !1644
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !1644
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #11, !noalias !1644
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !1644
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.j, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i67, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %eh.lpad-body.i, %.body.i ], [ %i.bj, %bb.l ], [ %i.bg, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN6embree13FastAllocator12threadLocal2Ev.exit:   ; preds = %bb.b, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %.05.i = phi ptr [ %i.k, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 266
  %i.bm = load i8, ptr %i.bl, align 2, !range !24, !noundef !25
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  store ptr %i.g, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN6embree13FastAllocator12threadLocal2Ev.exit, %bb.a
  %i.bq = phi ptr [ %i.g, %_ZN6embree13FastAllocator12threadLocal2Ev.exit ], [ %i.d, %bb.a ] ; 10 uses
  br i1 %5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = load i32, ptr %3, align 4
  %i.bu = sub i32 %i.bs, %i.bt
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8
  %.not = icmp ult i64 %i.bx, %i.bv
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !25, !align !27 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef %i.bv)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cc = add i64 %2, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %.not43 = icmp ult i64 %i.cc, %i.ce
  br i1 %.not43, label %bb.q, label %.critedge, !prof !30

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = load i32, ptr %3, align 4               ; 3 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %.not148 = icmp ult i64 %i.cl, %i.cj
  br i1 %.not148, label %bb.r, label %.critedge, !prof !30

.critedge:                                        ; preds = %bb.p, %bb.q
  tail call void @_ZN6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafEmRKNS_5rangeIjEES8_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecord") align 16 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4)
  br label %bb.bc

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = zext i32 %i.ch to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = add i32 %i.cg, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq i32 %i.cr, %i.cv
  br i1 %i.cw, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %_ZN6embree5lzcntEi.exit40.i54, !prof !31

_ZN6embree5lzcntEi.exit40.i54:                    ; preds = %bb.r
  %i.cx = xor i32 %i.cv, %i.cr
  %i.cy = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.cx) #30, !srcloc !32 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZN6embree5lzcntEi.exit40.i54.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit40.i54.thread:             ; preds = %bb.r, %_ZN6embree5lzcntEi.exit40.i54
  tail call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.da = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.db = load i32, ptr %3, align 4               ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.df = load i32, ptr %i.cf, align 4            ; 4 uses
  %i.dg = add i32 %i.df, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i32 %i.de, %i.dj
  br i1 %i.dk, label %_ZN6embree5lzcntEi.exit.i63.thread, label %_ZN6embree5lzcntEi.exit.i63, !prof !31

_ZN6embree5lzcntEi.exit.i63:                      ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread
  %i.dl = xor i32 %i.dj, %i.de
  %i.dm = tail call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.dl) #30, !srcloc !32 ; 2 uses
  %.not.i65 = icmp eq i32 %i.dm, -1
  br i1 %.not.i65, label %_ZN6embree5lzcntEi.exit.i63.thread, label %.critedge.i56, !prof !33

_ZN6embree5lzcntEi.exit.i63.thread:               ; preds = %_ZN6embree5lzcntEi.exit40.i54.thread, %_ZN6embree5lzcntEi.exit.i63
  %i.dn = add i32 %i.df, %i.db
  %i.do = lshr i32 %i.dn, 1
  %.sroa.4135.0.insert.ext = zext nneg i32 %i.do to i64 ; 2 uses
  %.sroa.4135.0.insert.shift = shl nuw nsw i64 %.sroa.4135.0.insert.ext, 32
  %.sroa.0134.0.insert.insert = or disjoint i64 %.sroa.4135.0.insert.shift, %i.dc
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66

.critedge.i56:                                    ; preds = %_ZN6embree5lzcntEi.exit.i63, %_ZN6embree5lzcntEi.exit40.i54
  %i.dp = phi ptr [ %i.co, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.da, %_ZN6embree5lzcntEi.exit.i63 ] ; 2 uses
  %i.dq = phi i32 [ %i.cg, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.df, %_ZN6embree5lzcntEi.exit.i63 ] ; 4 uses
  %i.dr = phi i32 [ %i.ch, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.db, %_ZN6embree5lzcntEi.exit.i63 ] ; 3 uses
  %.pn = phi i32 [ %i.cy, %_ZN6embree5lzcntEi.exit40.i54 ], [ %i.dm, %_ZN6embree5lzcntEi.exit.i63 ]
  %.036.i57 = sub nsw i32 31, %.pn
  %16 = lshr exact i32 -2147483648, %.036.i57
  %i.ds = add i32 %i.dr, 1
  %.not38.i60156 = icmp eq i32 %i.ds, %i.dq
  br i1 %.not38.i60156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.i56, %.lr.ph
  %.0.i59158 = phi i32 [ %.0..i62, %.lr.ph ], [ %i.dq, %.critedge.i56 ] ; 2 uses
  %.033.i58157 = phi i32 [ %..033.i61, %.lr.ph ], [ %i.dr, %.critedge.i56 ] ; 2 uses
  %i.dt = add i32 %.0.i59158, %.033.i58157
  %i.du = lshr i32 %i.dt, 1                       ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = and i32 %i.dx, %16
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %..033.i61 = select i1 %i.dz, i32 %i.du, i32 %.033.i58157 ; 2 uses
  %.0..i62 = select i1 %i.dz, i32 %.0.i59158, i32 %i.du ; 3 uses
  %i.ea = add i32 %..033.i61, 1
  %.not38.i60 = icmp eq i32 %i.ea, %.0..i62
  br i1 %.not38.i60, label %._crit_edge, label %.lr.ph, !llvm.loop !1633

._crit_edge:                                      ; preds = %.lr.ph, %.critedge.i56
  %.0.i59.lcssa = phi i32 [ %i.dq, %.critedge.i56 ], [ %.0..i62, %.lr.ph ]
  %.sroa.4129.0.insert.ext = zext i32 %.0.i59.lcssa to i64 ; 2 uses
  %.sroa.4129.0.insert.shift = shl nuw i64 %.sroa.4129.0.insert.ext, 32
  %.sroa.0128.0.insert.ext = zext i32 %i.dr to i64
  %.sroa.0128.0.insert.insert = or disjoint i64 %.sroa.4129.0.insert.shift, %.sroa.0128.0.insert.ext
  br label %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66

_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66: ; preds = %_ZN6embree5lzcntEi.exit.i63.thread, %._crit_edge
  %.sroa.0134.0.insert.insert.sink = phi i64 [ %.sroa.0134.0.insert.insert, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.0128.0.insert.insert, %._crit_edge ]
  %.sink = phi i32 [ %i.df, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dq, %._crit_edge ]
  %.sroa.4135.0.insert.ext.sink = phi i64 [ %.sroa.4135.0.insert.ext, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %.sroa.4129.0.insert.ext, %._crit_edge ]
  %i.eb = phi ptr [ %i.da, %_ZN6embree5lzcntEi.exit.i63.thread ], [ %i.dp, %._crit_edge ] ; 2 uses
  store i64 %.sroa.0134.0.insert.insert.sink, ptr %12, align 16
  %.sroa.4133.0.insert.ext = zext i32 %.sink to i64
  %.sroa.4133.0.insert.shift = shl nuw i64 %.sroa.4133.0.insert.ext, 32
  %.sroa.0132.0.insert.insert = or disjoint i64 %.sroa.4133.0.insert.shift, %.sroa.4135.0.insert.ext.sink
  store i64 %.sroa.0132.0.insert.insert, ptr %i.cm, align 8
  %i.ec = load i64, ptr %1, align 8
  %i.ed = icmp ugt i64 %i.ec, 2
  br i1 %i.ed, label %.preheader155, label %.thread

.preheader155:                                    ; preds = %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ] ; 2 uses
  %i.ee = phi ptr [ %i.ha, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ]
  %i.ef = phi ptr [ %i.hb, %bb.v ], [ %i.eb, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ] ; 3 uses
  %.0168 = phi i64 [ %i.hf, %bb.v ], [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ] ; 6 uses
  %i.eg = load i64, ptr %i.ck, align 8            ; 3 uses
  %xtraiter = and i64 %.0168, 1
  %i.eh = icmp eq i64 %indvar, -1
  br i1 %i.eh, label %.epil.preheader, label %.preheader155.new

.preheader155.new:                                ; preds = %.preheader155
  %unroll_iter = and i64 %.0168, 9223372036854775806
  br label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader155
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader155 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.038160.epil.init = phi i32 [ 0, %.preheader155 ], [ %.139.1, %.unr-lcssa ]
  %.040159.epil.init = phi i32 [ -1, %.preheader155 ], [ %.141.1, %.unr-lcssa ]
  %lcmp.mod237 = trunc i64 %.0168 to i1
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.epil.init ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = load i32, ptr %i.ei, align 8
  %i.em = sub i32 %i.ek, %i.el                    ; 2 uses
  %i.en = zext i32 %i.em to i64
  %.not49.epil = icmp ult i64 %i.eg, %i.en
  %i.eo = icmp ugt i32 %i.em, %.038160.epil.init
  %or.cond.epil = select i1 %.not49.epil, i1 %i.eo, i1 false
  %i.ep = trunc nuw i64 %indvars.iv.epil.init to i32
  %.141.epil = select i1 %or.cond.epil, i32 %i.ep, i32 %.040159.epil.init
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.141.lcssa = phi i32 [ %.141.1, %.unr-lcssa ], [ %.141.epil, %.epil.preheader ] ; 2 uses
  %i.eq = icmp eq i32 %.141.lcssa, -1
  br i1 %i.eq, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.t, %.preheader155.new
  %indvars.iv = phi i64 [ 0, %.preheader155.new ], [ %indvars.iv.next.1, %bb.t ] ; 4 uses
  %.038160 = phi i32 [ 0, %.preheader155.new ], [ %.139.1, %bb.t ] ; 2 uses
  %.040159 = phi i32 [ -1, %.preheader155.new ], [ %.141.1, %bb.t ]
  %niter = phi i64 [ 0, %.preheader155.new ], [ %niter.next.1, %bb.t ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = load i32, ptr %i.er, align 16
  %i.ev = sub i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %.not49 = icmp ult i64 %i.eg, %i.ew
  %i.ex = icmp ugt i32 %i.ev, %.038160
  %or.cond = select i1 %.not49, i1 %i.ex, i1 false ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %.141 = select i1 %or.cond, i32 %i.ey, i32 %.040159
  %.139 = select i1 %or.cond, i32 %i.ev, i32 %.038160 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = load i32, ptr %i.ez, align 8
  %i.fd = sub i32 %i.fb, %i.fc                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %.not49.1 = icmp ult i64 %i.eg, %i.fe
  %i.ff = icmp ugt i32 %i.fd, %.139
  %or.cond.1 = select i1 %.not49.1, i1 %i.ff, i1 false ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv.next to i32
  %.141.1 = select i1 %or.cond.1, i32 %i.fg, i32 %.141 ; 3 uses
  %.139.1 = select i1 %or.cond.1, i32 %i.fd, i32 %.139 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.t, !llvm.loop !1634

bb.u:                                             ; preds = %bb.s
  %i.fh = sext i32 %.141.lcssa to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %12, i64 %i.fh ; 5 uses
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %i.fp = add i32 %i.fo, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %i.ft = icmp eq i32 %i.fm, %i.fs
  br i1 %i.ft, label %_ZN6embree5lzcntEi.exit40.i.thread, label %_ZN6embree5lzcntEi.exit40.i, !prof !31

_ZN6embree5lzcntEi.exit40.i:                      ; preds = %bb.u
  %i.fu = xor i32 %i.fs, %i.fm
  %i.fv = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.fu) #30, !srcloc !32 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %_ZN6embree5lzcntEi.exit40.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit40.i.thread:               ; preds = %bb.u, %_ZN6embree5lzcntEi.exit40.i
  call void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fi)
  %i.fx = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.fy = load i32, ptr %i.fi, align 8            ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 8            ; 2 uses
  %i.gc = load i32, ptr %i.fn, align 4            ; 4 uses
  %i.gd = add i32 %i.gc, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = icmp eq i32 %i.gb, %i.gg
  br i1 %i.gh, label %_ZN6embree5lzcntEi.exit.i.thread, label %_ZN6embree5lzcntEi.exit.i, !prof !31

_ZN6embree5lzcntEi.exit.i:                        ; preds = %_ZN6embree5lzcntEi.exit40.i.thread
  %i.gi = xor i32 %i.gg, %i.gb
  %i.gj = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.gi) #30, !srcloc !32 ; 2 uses
  %.not.i = icmp eq i32 %i.gj, -1
  br i1 %.not.i, label %_ZN6embree5lzcntEi.exit.i.thread, label %.critedge.i, !prof !33

_ZN6embree5lzcntEi.exit.i.thread:                 ; preds = %_ZN6embree5lzcntEi.exit40.i.thread, %_ZN6embree5lzcntEi.exit.i
  %i.gk = add i32 %i.gc, %i.fy
  %i.gl = lshr i32 %i.gk, 1
  %.sroa.4121.0.insert.ext = zext nneg i32 %i.gl to i64 ; 2 uses
  %.sroa.4121.0.insert.shift = shl nuw nsw i64 %.sroa.4121.0.insert.ext, 32
  %.sroa.0120.0.insert.insert = or disjoint i64 %.sroa.4121.0.insert.shift, %i.fz
  br label %bb.v

.critedge.i:                                      ; preds = %_ZN6embree5lzcntEi.exit.i, %_ZN6embree5lzcntEi.exit40.i
  %i.gm = phi ptr [ %i.ee, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gn = phi i32 [ %i.fo, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i ] ; 4 uses
  %i.go = phi i32 [ %i.fj, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fy, %_ZN6embree5lzcntEi.exit.i ] ; 3 uses
  %i.gp = phi ptr [ %i.ef, %_ZN6embree5lzcntEi.exit40.i ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i ]
  %.pn149 = phi i32 [ %i.fv, %_ZN6embree5lzcntEi.exit40.i ], [ %i.gj, %_ZN6embree5lzcntEi.exit.i ]
  %.036.i = sub nsw i32 31, %.pn149
  %17 = lshr exact i32 -2147483648, %.036.i
  %i.gq = add i32 %i.go, 1
  %.not38.i162 = icmp eq i32 %i.gq, %i.gn
  br i1 %.not38.i162, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %.critedge.i, %.lr.ph165
  %.0.i52164 = phi i32 [ %.0..i, %.lr.ph165 ], [ %i.gn, %.critedge.i ] ; 2 uses
  %.033.i51163 = phi i32 [ %..033.i, %.lr.ph165 ], [ %i.go, %.critedge.i ] ; 2 uses
  %i.gr = add i32 %.0.i52164, %.033.i51163
  %i.gs = lshr i32 %i.gr, 1                       ; 3 uses
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = and i32 %i.gv, %17
  %i.gx = icmp eq i32 %i.gw, 0                    ; 2 uses
  %..033.i = select i1 %i.gx, i32 %i.gs, i32 %.033.i51163 ; 2 uses
  %.0..i = select i1 %i.gx, i32 %.0.i52164, i32 %i.gs ; 3 uses
  %i.gy = add i32 %..033.i, 1
  %.not38.i = icmp eq i32 %i.gy, %.0..i
  br i1 %.not38.i, label %._crit_edge166, label %.lr.ph165, !llvm.loop !1633

._crit_edge166:                                   ; preds = %.lr.ph165, %.critedge.i
  %i.gz = phi ptr [ %i.gp, %.critedge.i ], [ %i.gm, %.lr.ph165 ]
  %.0.i52.lcssa = phi i32 [ %i.gn, %.critedge.i ], [ %.0..i, %.lr.ph165 ]
  %.sroa.4115.0.insert.ext = zext i32 %.0.i52.lcssa to i64 ; 2 uses
  %.sroa.4115.0.insert.shift = shl nuw i64 %.sroa.4115.0.insert.ext, 32
  %.sroa.0114.0.insert.ext = zext i32 %i.go to i64
  %.sroa.0114.0.insert.insert = or disjoint i64 %.sroa.4115.0.insert.shift, %.sroa.0114.0.insert.ext
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge166, %_ZN6embree5lzcntEi.exit.i.thread
  %.sink224 = phi i32 [ %i.gn, %._crit_edge166 ], [ %i.gc, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4115.0.insert.ext.sink = phi i64 [ %.sroa.4115.0.insert.ext, %._crit_edge166 ], [ %.sroa.4121.0.insert.ext, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.ha = phi ptr [ %i.gm, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %i.hb = phi ptr [ %i.gz, %._crit_edge166 ], [ %i.fx, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.092.0 = phi i64 [ %.sroa.0114.0.insert.insert, %._crit_edge166 ], [ %.sroa.0120.0.insert.insert, %_ZN6embree5lzcntEi.exit.i.thread ]
  %.sroa.4112.0.insert.ext = zext i32 %.sink224 to i64
  %.sroa.4112.0.insert.shift = shl nuw i64 %.sroa.4112.0.insert.ext, 32
  %.sroa.0111.0.insert.insert = or disjoint i64 %.sroa.4112.0.insert.shift, %.sroa.4115.0.insert.ext.sink
  %i.hc = getelementptr [8 x i8], ptr %12, i64 %.0168 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 -8     ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  store i64 %i.he, ptr %i.fi, align 8
  store i64 %.sroa.092.0, ptr %i.hd, align 8
  store i64 %.sroa.0111.0.insert.insert, ptr %i.hc, align 8
  %i.hf = add nuw nsw i64 %.0168, 1               ; 3 uses
  %i.hg = load i64, ptr %1, align 8
  %i.hh = icmp ult i64 %i.hf, %i.hg
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hh, label %.preheader155, label %.thread

.thread:                                          ; preds = %bb.s, %bb.v, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66
  %.0.lcssa = phi i64 [ 2, %_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS_5rangeIjEERSR_SU_.exit66 ], [ %i.hf, %bb.v ], [ %.0168, %bb.s ] ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 128, ptr %i.a, align 8
  %i.hk = load ptr, ptr %i.hj, align 64           ; 18 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 6 uses
  %i.hm = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hn = icmp eq ptr %i.hm, %i.bq
  br i1 %i.hn, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.w

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.hk, ptr %9, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i8 1, ptr %i.ho, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.hk)
  %i.hp = load atomic ptr, ptr %i.hl seq_cst, align 8
  %.not.i2.i = icmp eq ptr %i.hp, null
  br i1 %.not.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 104
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 168
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.hx = atomicrmw add ptr %i.hw, i64 %i.hu seq_cst, align 8 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  %i.ib = load i64, ptr %i.ia, align 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 144
  %i.if = load i64, ptr %i.ie, align 16
  %i.ig = add i64 %i.hz, %i.id
  %i.ih = add i64 %i.ib, %i.if
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 288
  %i.il = atomicrmw add ptr %i.ik, i64 %i.ii seq_cst, align 8 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.in = load i64, ptr %i.im, align 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  %i.ip = load i64, ptr %i.io, align 16
  %i.iq = add i64 %i.ip, %i.in
  %i.ir = load atomic ptr, ptr %i.hl seq_cst, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 296
  %i.it = atomicrmw add ptr %i.is, i64 %i.iq seq_cst, align 8 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %.not.i76 = icmp eq ptr %i.bq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i8 0, i64 48, i1 false)
  br i1 %.not.i76, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.z

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.y
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

bb.z:                                             ; preds = %bb.y
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8
  store i64 %i.iy, ptr %i.iw, align 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, i8 0, i64 48, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hk, i64 160
  %i.jb = load i64, ptr %i.ix, align 8
  store i64 %i.jb, ptr %i.ja, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.z
  store atomic ptr %i.bq, ptr %i.hl seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %8, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %i.jc, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.aj

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit78
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bq, i64 304 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.bq, i64 312 ; 4 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bq, i64 320 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %.not.i80 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not.i80, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i
  store ptr %i.hk, ptr %i.jf, align 8
  %i.ji = load ptr, ptr %i.je, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jj, ptr %i.je, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.ab:                                            ; preds = %.noexc.i
  %i.jk = load ptr, ptr %i.jd, align 8            ; 4 uses
  %i.jl = ptrtoint ptr %i.jf to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.ac, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc81 unwind label %bb.af

.noexc81:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.jp = ashr exact i64 %i.jn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add nsw i64 %.sroa.speculated.i.i.i, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = call i64 @llvm.umin.i64(i64 %i.jq, i64 1152921504606846975)
  %i.jt = select i1 %i.jr, i64 1152921504606846975, i64 %i.js ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #26
          to label %.noexc82 unwind label %bb.af  ; 4 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jn ; 2 uses
  store ptr %i.hk, ptr %i.jw, align 8
  %i.jx = icmp sgt i64 %i.jn, 0
  br i1 %i.jx, label %bb.ad, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ad:                                            ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jk, i64 %i.jn, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ad, %.noexc82
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jk) #28
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

end_hunk_6
