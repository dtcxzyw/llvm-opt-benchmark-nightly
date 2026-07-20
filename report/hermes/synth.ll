inline.NumInlined: 1633
inline.NumDeleted: 888
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.at, align 1, !tbaa !119
  store ptr %i.z, ptr %5, align 8, !tbaa !96
  %i.au = sext i32 %i.ao to i64
  %i.av = getelementptr [8 x i8], ptr @switch.table.main, i64 %i.au
  %switch.gep = getelementptr i8, ptr %i.av, i64 -8
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.aw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #28
  %i.ax = invoke { i32, ptr } @_ZN4llvh3sys2fs19createTemporaryFileERKNS_5TwineENS_9StringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %5, ptr nonnull %switch.load, i64 %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.p       ; 0 uses

bb.d:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ay = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !61 ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.bb, ptr %6, align 8, !tbaa !111
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !39
  %i.bd = icmp ugt i32 %i.az, 15
  br i1 %i.bd, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.be, ptr %6, align 8, !tbaa !93
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !96
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.d
  %i.bg = phi ptr [ %i.be, %.noexc ], [ %i.bb, %bb.d ] ; 2 uses
  switch i32 %i.az, label %bb.f [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bh = load i8, ptr %i.ay, align 1, !tbaa !96
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !96
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !112
  %i.bj = load ptr, ptr %6, align 8, !tbaa !93
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !93 ; 6 uses
  %i.bm = icmp eq ptr %i.bl, %i.af
  %i.bn = load ptr, ptr %6, align 8, !tbaa !93    ; 5 uses
  %i.bo = icmp eq ptr %i.bn, %i.bb                ; 2 uses
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.bo, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.bo, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !112 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  switch i64 %i.bp, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !96
  store i8 %i.br, ptr %i.bl, align 1, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bn, i64 %i.bp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bs = load i64, ptr %i.bc, align 8, !tbaa !112 ; 2 uses
  store i64 %i.bs, ptr %i.ag, align 8, !tbaa !112
  %i.bt = load ptr, ptr %i.ae, align 8, !tbaa !93
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !96
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bn, ptr %i.ae, align 8, !tbaa !93
  %i.bv = load <2 x i64>, ptr %i.bc, align 8, !tbaa !96
  store <2 x i64> %i.bv, ptr %i.ag, align 8, !tbaa !96
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bw = load i64, ptr %i.af, align 8, !tbaa !96
  store ptr %i.bn, ptr %i.ae, align 8, !tbaa !93
  %i.bx = load <2 x i64>, ptr %i.bc, align 8, !tbaa !96
  store <2 x i64> %i.bx, ptr %i.ag, align 8, !tbaa !96
  %.not.i80 = icmp eq ptr %i.bl, null
  br i1 %.not.i80, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bl, ptr %6, align 8, !tbaa !93
  store i64 %i.bw, ptr %i.bb, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bb, ptr %6, align 8, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.by = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bl, %bb.k ], [ %i.bb, %bb.l ]
  store i64 0, ptr %i.bc, align 8, !tbaa !112
  store i8 0, ptr %i.by, align 1, !tbaa !96
  %i.bz = load ptr, ptr %6, align 8, !tbaa !93    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bb
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.cd = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ap
  br i1 %i.ce, label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @free(ptr noundef %i.cd) #29
  br label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit

_ZN4llvh11SmallVectorIcLj16EED2Ev.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

bb.n:                                             ; preds = %_ZN4llvh23PrettyStackTraceProgramC2EiPKPKc.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.o:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error
  br label %bb.cj

bb.p:                                             ; preds = %switch.lookup
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.r

bb.q:                                             ; preds = %.noexc.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.q ], [ %i.ch, %bb.p ]
  %i.cj = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ap
  br i1 %i.ck, label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit81, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.cj) #29
  br label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit81

_ZN4llvh11SmallVectorIcLj16EED2Ev.exit81:         ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cj

bb.t:                                             ; preds = %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13GCBeforeStatsE, i64 152), align 8, !tbaa !72, !range !83, !noundef !42 ; 2 uses
  store i8 %i.cl, ptr %i.x, align 4, !tbaa !180
  %i.cm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL22DisableSourceHashCheckE, i64 152), align 8, !tbaa !72, !range !83, !noundef !42
  store i8 %i.cm, ptr %i.y, align 1, !tbaa !181
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12GCPrintStatsE, i64 8), align 8, !tbaa !8
  %i.co = icmp slt i32 %i.cn, 1
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12GCPrintStatsE, i64 152), align 8, !range !83
  %i.cq = or i8 %i.cp, %i.cl
  %13 = icmp ne i8 %i.cq, 0
  %.043 = select i1 %i.co, i1 true, i1 %13
  %_ZN2clL11MinHeapSizeE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL11MinHeapSizeE, i64 8), align 8, !tbaa !8
  %_ZN2clL11MinHeapSizeE.val74 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL11MinHeapSizeE, i64 152), align 8
  %i.cr = icmp sgt i32 %_ZN2clL11MinHeapSizeE.val, 0
  %_ZN2clL12InitHeapSizeE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12InitHeapSizeE, i64 8), align 8, !tbaa !8
  %_ZN2clL12InitHeapSizeE.val73 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12InitHeapSizeE, i64 152), align 8
  %i.cs = icmp sgt i32 %_ZN2clL12InitHeapSizeE.val, 0
  %_ZN2clL11MaxHeapSizeE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL11MaxHeapSizeE, i64 8), align 8, !tbaa !8
  %_ZN2clL11MaxHeapSizeE.val72 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL11MaxHeapSizeE, i64 152), align 8
  %i.ct = icmp sgt i32 %_ZN2clL11MaxHeapSizeE.val, 0
  %_ZN2clL15OccupancyTargetE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15OccupancyTargetE, i64 8), align 8, !tbaa !8
  %_ZN2clL15OccupancyTargetE.val76219220 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15OccupancyTargetE, i64 152), align 8
  %i.cu = icmp sgt i32 %_ZN2clL15OccupancyTargetE.val, 0
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL19ShouldReleaseUnusedE, i64 8), align 8, !tbaa !8
  %i.cw = icmp sgt i32 %i.cv, 0
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL19ShouldReleaseUnusedE, i64 152), align 8
  %_ZN2clL12GCAllocYoungE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12GCAllocYoungE, i64 8), align 8, !tbaa !8
  %_ZN2clL12GCAllocYoungE.val79 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12GCAllocYoungE, i64 152), align 8
  %i.cy = icmp slt i32 %_ZN2clL12GCAllocYoungE.val, 1
  %_ZN2clL17GCRevertToYGAtTTIE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL17GCRevertToYGAtTTIE, i64 8), align 8, !tbaa !8
  %_ZN2clL17GCRevertToYGAtTTIE.val78 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL17GCRevertToYGAtTTIE, i64 152), align 8
  %i.cz = icmp slt i32 %_ZN2clL17GCRevertToYGAtTTIE.val, 1
  %_ZN2clL15TrackBytecodeIOE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15TrackBytecodeIOE, i64 8), align 8, !tbaa !8
  %_ZN2clL15TrackBytecodeIOE.val77 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15TrackBytecodeIOE, i64 152), align 8
  %i.da = icmp sgt i32 %_ZN2clL15TrackBytecodeIOE.val, 0
  %i.db = zext i8 %_ZN2clL15TrackBytecodeIOE.val77 to i16
  %i.dc = or disjoint i16 %i.db, 256
  %.sroa.0.0.insert.insert.i97 = select i1 %i.da, i16 %i.dc, i16 0
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 2 uses
  store i16 %.sroa.0.0.insert.insert.i97, ptr %i.dd, align 8
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL21BytecodeWarmupPercentE, i64 8), align 8, !tbaa !8
  %i.df = icmp sgt i32 %i.de, 0                   ; 2 uses
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL21BytecodeWarmupPercentE, i64 152), align 8
  %spec.select.i98 = select i1 %i.df, i32 %i.dg, i32 undef
  %.sroa.2.0.insert.shift.i99 = select i1 %i.df, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i100 = zext i32 %spec.select.i98 to i64
  %.sroa.0.0.insert.insert.i101 = or disjoint i64 %.sroa.2.0.insert.shift.i99, %.sroa.0.0.insert.ext.i100
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 308
  store i64 %.sroa.0.0.insert.insert.i101, ptr %i.dh, align 4
  %_ZN2clL14GCSanitizeRateE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL14GCSanitizeRateE, i64 8), align 8, !tbaa !8
  %_ZN2clL14GCSanitizeRateE.val75221222 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL14GCSanitizeRateE, i64 152), align 8
  %i.di = icmp sgt i32 %_ZN2clL14GCSanitizeRateE.val, 0
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL20GCSanitizeRandomSeedE, i64 152), align 8, !tbaa !50 ; 3 uses
  %.not46.not = icmp eq i64 %i.dj, 0              ; 2 uses
  %14 = zext i1 %.043 to i8
  store i8 %14, ptr %i.l, align 8, !tbaa !188
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 206 ; 2 uses
  store i8 1, ptr %i.dk, align 2, !tbaa !189
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %_ZN2clL11MinHeapSizeE.val74, ptr %3, align 8, !tbaa !190
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i8 1, ptr %i.dl, align 8, !tbaa !191
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %_ZN2clL12InitHeapSizeE.val73, ptr %3, align 8, !tbaa !190
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i8 1, ptr %i.dm, align 8, !tbaa !191
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.ct, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %_ZN2clL11MaxHeapSizeE.val72, ptr %i.g, align 8, !tbaa !192
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 202
  store i8 1, ptr %i.dn, align 2, !tbaa !193
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.cu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %_ZN2clL15OccupancyTargetE.val76219220, ptr %i.h, align 8, !tbaa !194
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 203
  store i8 1, ptr %i.do, align 1, !tbaa !195
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.cw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.cx, ptr %i.m, align 4, !tbaa !196
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 207
  store i8 1, ptr %i.dp, align 1, !tbaa !197
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.cy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %_ZN2clL12GCAllocYoungE.val79, ptr %i.s, align 8, !tbaa !198
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 210
  store i8 1, ptr %i.dq, align 2, !tbaa !199
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.cz, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %_ZN2clL17GCRevertToYGAtTTIE.val78, ptr %i.t, align 2, !tbaa !200
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 212
  store i8 1, ptr %i.dr, align 4, !tbaa !201
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.di, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not46.not, label %bb.ak, label %.thread214

bb.aj:                                            ; preds = %bb.ah
  %spec.select = select i1 %.not46.not, i64 -1, i64 %i.dj
  br label %.thread214

.thread214:                                       ; preds = %bb.ai, %bb.aj
  %.sroa.0176.0216 = phi double [ %_ZN2clL14GCSanitizeRateE.val75221222, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %.sroa.7.0 = phi i64 [ %spec.select, %bb.aj ], [ %i.dj, %bb.ai ]
  store double %.sroa.0176.0216, ptr %i.j, align 8, !tbaa !47
  store i64 %.sroa.7.0, ptr %i.k, align 8, !tbaa !39
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 205
  store i8 1, ptr %i.ds, align 1, !tbaa !202
  br label %bb.ak

bb.ak:                                            ; preds = %.thread214, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13BytecodeFilesB5cxx11E, i64 152), align 8, !tbaa !203 ; 3 uses
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13BytecodeFilesB5cxx11E, i64 160), align 8, !tbaa !203 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 9223372036854775776
  br i1 %i.dy, label %bb.al, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.144) #31
          to label %.noexc.i109 unwind label %bb.am

.noexc.i109:                                      ; preds = %bb.al
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.ak
  %.not.i.i.i = icmp eq ptr %i.du, %i.dt
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #32
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.am

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.ea = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %i.dz, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %i.ea, ptr %7, align 8, !tbaa !104
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dx
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !110
  %i.ed = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_(ptr %i.dt, ptr %i.du, ptr noundef %i.ea)
          to label %bb.ao unwind label %bb.am     ; 2 uses

bb.am:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %bb.al
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error         ; 2 uses
  %i.ef = load ptr, ptr %7, align 8, !tbaa !104   ; 3 uses
  %.not.i.i7.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i7.i, label %.body, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !110
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #30
  br label %.body

bb.ao:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.ed, ptr %i.el, align 8, !tbaa !107
  %i.em = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL22DisableSourceHashCheckE, i64 152), align 8, !tbaa !72, !range !83, !noundef !42
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.eo = load ptr, ptr %7, align 8, !tbaa !104
  %i.ep = ptrtoint ptr %i.ed to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %.not47 = icmp eq i64 %i.er, 32
  br i1 %.not47, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.es = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull @.str.124)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.es, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %bb.cy unwind label %bb.as

bb.as:                                            ; preds = %bb.cf, %_ZN4llvh11raw_ostreamlsEPKc.exit155, %bb.cd, %_ZN4llvh11raw_ostreamlsEPKc.exit148, %bb.cb, %bb.bz, %bb.br, %bb.ar
  %i.et = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error
  br label %bb.ci

bb.at:                                            ; preds = %bb.aq
  %i.eu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error
  call void @__cxa_free_exception(ptr nonnull %i.es) #29
  br label %bb.ci

bb.au:                                            ; preds = %bb.ap, %bb.ao
  %i.ev = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL5TraceB5cxx11E, i64 160), align 8, !tbaa !112
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.br, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %i.l, align 8, !tbaa !188
  store i8 1, ptr %i.dk, align 2, !tbaa !189
  store i8 0, ptr %i.dd, align 8, !tbaa !82
  store i8 1, ptr %i.ah, align 1, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 0, ptr %8, align 8, !tbaa !204
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ey = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #33
  store ptr %i.ey, ptr %i.ex, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL5TraceB5cxx11E, i64 152), align 8, !tbaa !93 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.fa = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32
          to label %.noexc110 unwind label %bb.bb ; 3 uses

.noexc110:                                        ; preds = %bb.av
  %.not.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i, label %_ZN4llvh9StringRefC2EPKc.exit.i, label %bb.aw

end_hunk_0
begin_hunk_1_@_ZN4llvh2cl5alias4doneEv:bb.a
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !238
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.d, align 1, !tbaa !119
  store ptr @.str.140, ptr %1, align 8, !tbaa !96
  store i8 3, ptr %i.c, align 8, !tbaa !122
  %i.e = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv()
  %i.f = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.j, align 1, !tbaa !119
  store ptr @.str.141, ptr %2, align 8, !tbaa !96
  store i8 3, ptr %i.i, align 8, !tbaa !122
  %i.k = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv()
  %i.l = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(18) %2, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %.pre, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.not.i = icmp eq ptr %i.m, %0
  br i1 %.not.i, label %_ZN4llvh11SmallPtrSetIPNS_2cl10SubCommandELj4EEaSERKS4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  call void @_ZN4llvh19SmallPtrSetImplBase8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.o)
  br label %_ZN4llvh11SmallPtrSetIPNS_2cl10SubCommandELj4EEaSERKS4_.exit

_ZN4llvh11SmallPtrSetIPNS_2cl10SubCommandELj4EEaSERKS4_.exit: ; preds = %bb.e, %bb.f
  call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(145) %0)
  ret void
}

declare void @_ZN4llvh19SmallPtrSetImplBase8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4llvh2cl5applyINS0_3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS8_EEEEA17_cJNS0_4descENS0_11initializerIS8_EENS0_11ValuesClassEEEEvPT_RKT0_DpRKT1_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(176) %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr nonnull %1, i64 %i.a)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %2, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !39
  %i.c = load ptr, ptr %3, align 8, !tbaa !297, !nonnull !42, !align !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.c, align 4, !tbaa !271  ; 2 uses
  store i32 %i.e, ptr %i.d, align 8, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 1, ptr %i.f, align 4, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.e, ptr %i.g, align 8, !tbaa !130
  %i.h = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !61   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.k, 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %.not12.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %_ZN4llvh2cl5applyINS0_3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS8_EEEENS0_4descEJNS0_11initializerIS8_EENS0_11ValuesClassEEEEvPT_RKT0_DpRKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE16addLiteralOptionIiEEvNS_9StringRefERKT_SA_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE16addLiteralOptionIiEEvNS_9StringRefERKT_SA_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.0.0.copyload10.i.i.i.i.i = load ptr, ptr %.013.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !4
  %.sroa.611.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %.sroa.611.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.611.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !38
  %.sroa.7.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !39
  %i.q = load i32, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !62
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE16addLiteralOptionIiEEvNS_9StringRefERKT_SA_.exit.i.i.i.i.i, label %bb.c, !prof !242

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef 0)
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.n, align 8, !tbaa !61
  br label %_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE16addLiteralOptionIiEEvNS_9StringRefERKT_SA_.exit.i.i.i.i.i

_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE16addLiteralOptionIiEEvNS_9StringRefERKT_SA_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %.pre.i.i.i.i.i.i.i, %bb.c ], [ %i.q, %bb.b ]
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.u ; 7 uses
  store ptr %.sroa.0.0.copyload10.i.i.i.i.i, ptr %i.v, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !39
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %.sroa.611.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !38
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %.sroa.7.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %i.x, align 8
  %.sroa.10.40..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  store i8 1, ptr %.sroa.10.40..sroa_idx.i.i.i.i.i.i, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEEE, i64 16), ptr %i.w, align 8, !tbaa !34
  %i.y = load i32, ptr %i.n, align 8, !tbaa !61
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !61
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !236, !nonnull !42, !align !43
  tail call void @_ZN4llvh2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145) %i.aa, ptr %.sroa.0.0.copyload10.i.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh2cl5applyINS0_3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS8_EEEENS0_4descEJNS0_11initializerIS8_EENS0_11ValuesClassEEEEvPT_RKT0_DpRKT1_.exit, label %bb.b

_ZN4llvh2cl5applyINS0_3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS8_EEEENS0_4descEJNS0_11initializerIS8_EENS0_11ValuesClassEEEEvPT_RKT0_DpRKT1_.exit: ; preds = %_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE16addLiteralOptionIiEEvNS_9StringRefERKT_SA_.exit.i.i.i.i.i, %bb.a
  ret void
}

declare void @_ZN4llvh2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145), ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.142, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 48
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #35 ; 7 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.143, i1 noundef zeroext true)
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !59     ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !61   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 48                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not11.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELb0EE18uninitialized_moveIPSA_SD_EEvT_SE_T0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4llvh11safe_mallocEm.exit
  %i.ab = add nsw i64 %.idx, -48                  ; 2 uses
  %i.ac = udiv i64 %i.ab, 48
  %2 = and i64 %i.ac, 1
  %lcmp.mod.not.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 32, i1 false), !tbaa.struct !299
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ae, ptr noundef nonnull align 8 dereferenceable(5) %i.af, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEEE, i64 16), ptr %i.ad, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.013.i.i.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %.sroa.08.012.i.i.i.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %i.ai = icmp ult i64 %i.ab, 48
  br i1 %i.ai, label %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELb0EE18uninitialized_moveIPSA_SD_EEvT_SE_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.012.i.i.i.i, i64 32, i1 false), !tbaa.struct !299
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ak, ptr noundef nonnull align 8 dereferenceable(5) %i.al, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEEE, i64 16), ptr %i.aj, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 32, i1 false), !tbaa.struct !299
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ap, ptr noundef nonnull align 8 dereferenceable(5) %i.aq, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEEE, i64 16), ptr %i.ao, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 96
  %.not.i.i.i.i.1 = icmp eq ptr %i.ar, %i.aa
  br i1 %.not.i.i.i.i.1, label %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELb0EE18uninitialized_moveIPSA_SD_EEvT_SE_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !300

_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELb0EE18uninitialized_moveIPSA_SD_EEvT_SE_T0_.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_ZN4llvh11safe_mallocEm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = icmp eq ptr %i.w, %i.at
  br i1 %i.au, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELb0EE18uninitialized_moveIPSA_SD_EEvT_SE_T0_.exit
  tail call void @free(ptr noundef %i.w) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELb0EE18uninitialized_moveIPSA_SD_EEvT_SE_T0_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !59
  %i.av = trunc i64 %.sroa.speculated to i32
  store i32 %i.av, ptr %i.a, align 4, !tbaa !62
  ret void
}

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl11initializerIA1_cE5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserISB_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = load ptr, ptr %0, align 8, !tbaa !301, !nonnull !42 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !111
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !39
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !93
  %i.g = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.g, ptr %i.c, align 8, !tbaa !96
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !96
  store i8 %i.i, ptr %i.h, align 1, !tbaa !96
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !112
  %i.l = load ptr, ptr %2, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 1, ptr %i.o, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEE15setInitialValueERKS7_.exit unwind label %bb.e

_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEE15setInitialValueERKS7_.exit: ; preds = %.noexc5
  %i.q = load ptr, ptr %2, align 8, !tbaa !93     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEE15setInitialValueERKS7_.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !96
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEE15setInitialValueERKS7_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.e:                                             ; preds = %.noexc5, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !93     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.x = load i64, ptr %i.c, align 8, !tbaa !96
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh2cl15OptionValueCopyIiE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !137, !range !83, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !137, !range !83, !noundef !42
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp ne i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4llvh2cl5applyINS0_3optIN6hermes2vm13ReleaseUnusedELb0ENS0_6parserIS5_EEEEA15_cJNS0_4descENS0_11initializerIS5_EENS0_11ValuesClassEEEEvPT_RKT0_DpRKT1_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(176) %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr nonnull %1, i64 %i.a)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %2, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !39
  %i.c = load ptr, ptr %3, align 8, !tbaa !303, !nonnull !42, !align !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.c, align 4, !tbaa !283  ; 2 uses
  store i32 %i.e, ptr %i.d, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 1, ptr %i.f, align 4, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.e, ptr %i.g, align 8, !tbaa !146
  %i.h = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !61   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.k, 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %.not12.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %_ZN4llvh2cl5applyINS0_3optIN6hermes2vm13ReleaseUnusedELb0ENS0_6parserIS5_EEEENS0_4descEJNS0_11initializerIS5_EENS0_11ValuesClassEEEEvPT_RKT0_DpRKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvh2cl6parserIN6hermes2vm13ReleaseUnusedEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZN4llvh2cl6parserIN6hermes2vm13ReleaseUnusedEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.0.0.copyload10.i.i.i.i.i = load ptr, ptr %.013.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !4
  %.sroa.611.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %.sroa.611.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.611.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !38
  %.sroa.7.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !39
  %i.q = load i32, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !62
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvh2cl6parserIN6hermes2vm13ReleaseUnusedEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i.i.i, label %bb.c, !prof !242

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes2vm13ReleaseUnusedEE10OptionInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef 0)
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.n, align 8, !tbaa !61
  br label %_ZN4llvh2cl6parserIN6hermes2vm13ReleaseUnusedEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i.i.i

_ZN4llvh2cl6parserIN6hermes2vm13ReleaseUnusedEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %.pre.i.i.i.i.i.i.i, %bb.c ], [ %i.q, %bb.b ]
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.u ; 7 uses
  store ptr %.sroa.0.0.copyload10.i.i.i.i.i, ptr %i.v, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !39
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %.sroa.611.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !38
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %.sroa.7.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %i.x, align 8
  %.sroa.10.40..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  store i8 1, ptr %.sroa.10.40..sroa_idx.i.i.i.i.i.i, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN6hermes2vm13ReleaseUnusedEEE, i64 16), ptr %i.w, align 8, !tbaa !34
  %i.y = load i32, ptr %i.n, align 8, !tbaa !61
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !61
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !236, !nonnull !42, !align !43
  tail call void @_ZN4llvh2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145) %i.aa, ptr %.sroa.0.0.copyload10.i.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh2cl5applyINS0_3optIN6hermes2vm13ReleaseUnusedELb0ENS0_6parserIS5_EEEENS0_4descEJNS0_11initializerIS5_EENS0_11ValuesClassEEEEvPT_RKT0_DpRKT1_.exit, label %bb.b

_ZN4llvh2cl5applyINS0_3optIN6hermes2vm13ReleaseUnusedELb0ENS0_6parserIS5_EEEENS0_4descEJNS0_11initializerIS5_EENS0_11ValuesClassEEEEvPT_RKT0_DpRKT1_.exit: ; preds = %_ZN4llvh2cl6parserIN6hermes2vm13ReleaseUnusedEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes2vm13ReleaseUnusedEE10OptionInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.142, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 48
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #35 ; 7 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.143, i1 noundef zeroext true)
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !59     ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !61   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 48                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not11.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes2vm13ReleaseUnusedEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4llvh11safe_mallocEm.exit
  %i.ab = add nsw i64 %.idx, -48                  ; 2 uses
  %i.ac = udiv i64 %i.ab, 48
  %2 = and i64 %i.ac, 1
  %lcmp.mod.not.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 32, i1 false), !tbaa.struct !299
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ae, ptr noundef nonnull align 8 dereferenceable(5) %i.af, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN6hermes2vm13ReleaseUnusedEEE, i64 16), ptr %i.ad, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.013.i.i.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %.sroa.08.012.i.i.i.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %i.ai = icmp ult i64 %i.ab, 48
  br i1 %i.ai, label %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes2vm13ReleaseUnusedEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.012.i.i.i.i, i64 32, i1 false), !tbaa.struct !299
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ak, ptr noundef nonnull align 8 dereferenceable(5) %i.al, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN6hermes2vm13ReleaseUnusedEEE, i64 16), ptr %i.aj, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 32, i1 false), !tbaa.struct !299
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ap, ptr noundef nonnull align 8 dereferenceable(5) %i.aq, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN6hermes2vm13ReleaseUnusedEEE, i64 16), ptr %i.ao, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 96
  %.not.i.i.i.i.1 = icmp eq ptr %i.ar, %i.aa
  br i1 %.not.i.i.i.i.1, label %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes2vm13ReleaseUnusedEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !305

_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes2vm13ReleaseUnusedEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_ZN4llvh11safe_mallocEm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = icmp eq ptr %i.w, %i.at
  br i1 %i.au, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes2vm13ReleaseUnusedEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit
  tail call void @free(ptr noundef %i.w) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes2vm13ReleaseUnusedEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !59
  %i.av = trunc i64 %.sroa.speculated to i32
  store i32 %i.av, ptr %i.a, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !111
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !93 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !112  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.e, ptr %i.a, align 8, !tbaa !39
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !93
  %i.h = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.h, ptr %i.b, align 8, !tbaa !96
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !96
  store i8 %i.j, ptr %i.i, align 1, !tbaa !96
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !112
  %i.m = load ptr, ptr %.014, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !306

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare void @_ZN4llvh14raw_fd_ostreamC1ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10shared_ptrIN8facebook3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataS9_"(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(269) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.157", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.168", align 8 ; 7 uses
  %5 = alloca %"class.std::unique_ptr.160", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !307
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !307
  %i.a = tail call noundef ptr @_ZN8facebook6hermes17makeHermesRootAPIEv(), !noalias !312 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34, !noalias !312
  %i.c = load ptr, ptr %i.b, align 8, !noalias !312
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook6hermes14IHermesRootAPI4uuidE), !noalias !312, !inline_history !315 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !316, !noalias !312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !312
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !34, !noalias !312
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !312
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.168") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(269) %2), !noalias !312, !inline_history !319
  invoke void @_ZNSt12__shared_ptrIN8facebook6hermes13HermesRuntimeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt10shared_ptrIN8facebook6hermes13HermesRuntimeEEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit.i.i.i unwind label %bb.i, !noalias !312

_ZNSt10shared_ptrIN8facebook6hermes13HermesRuntimeEEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !211, !noalias !312
  store ptr null, ptr %i.e, align 8, !tbaa !211, !noalias !312
  store ptr %i.i, ptr %5, align 8, !tbaa !320, !noalias !312
  invoke void @_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISB_EEb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(269) %2, ptr noundef nonnull %5, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %_ZNSt10shared_ptrIN8facebook6hermes13HermesRuntimeEEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit.i.i.i
  %i.j = load ptr, ptr %5, align 8, !tbaa !323, !noalias !312 ; 3 uses
  %.not.i8.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i.i.i, label %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvh11raw_ostreamEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh11raw_ostreamEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.j) #29, !inline_history !324
  br label %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh11raw_ostreamEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !325, !noalias !312 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook6hermes13HermesRuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.c

end_hunk_1
