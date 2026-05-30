inline.NumInlined: 1633
inline.NumDeleted: 888
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
  %i.db = and i8 %_ZN2clL15TrackBytecodeIOE.val77, 1
  %i.dc = zext nneg i8 %i.db to i16
  %i.dd = or disjoint i16 %i.dc, 256
  %.sroa.0.0.insert.insert.i97 = select i1 %i.da, i16 %i.dd, i16 0
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 2 uses
  store i16 %.sroa.0.0.insert.insert.i97, ptr %i.de, align 8
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL21BytecodeWarmupPercentE, i64 8), align 8, !tbaa !8
  %i.dg = icmp sgt i32 %i.df, 0                   ; 2 uses
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL21BytecodeWarmupPercentE, i64 152), align 8
  %spec.select.i98 = select i1 %i.dg, i32 %i.dh, i32 undef
  %.sroa.2.0.insert.shift.i99 = select i1 %i.dg, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i100 = zext i32 %spec.select.i98 to i64
  %.sroa.0.0.insert.insert.i101 = or disjoint i64 %.sroa.2.0.insert.shift.i99, %.sroa.0.0.insert.ext.i100
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 308
  store i64 %.sroa.0.0.insert.insert.i101, ptr %i.di, align 4
  %_ZN2clL14GCSanitizeRateE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL14GCSanitizeRateE, i64 8), align 8, !tbaa !8
  %_ZN2clL14GCSanitizeRateE.val75221222 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL14GCSanitizeRateE, i64 152), align 8
  %i.dj = icmp sgt i32 %_ZN2clL14GCSanitizeRateE.val, 0
  %i.dk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL20GCSanitizeRandomSeedE, i64 152), align 8, !tbaa !50 ; 3 uses
  %.not46.not = icmp eq i64 %i.dk, 0              ; 2 uses
  %14 = zext i1 %.043 to i8
  store i8 %14, ptr %i.l, align 8, !tbaa !188
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 206 ; 2 uses
  store i8 1, ptr %i.dl, align 2, !tbaa !189
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %_ZN2clL11MinHeapSizeE.val74, ptr %3, align 8, !tbaa !190
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i8 1, ptr %i.dm, align 8, !tbaa !191
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %_ZN2clL12InitHeapSizeE.val73, ptr %3, align 8, !tbaa !190
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i8 1, ptr %i.dn, align 8, !tbaa !191
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.ct, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %_ZN2clL11MaxHeapSizeE.val72, ptr %i.g, align 8, !tbaa !192
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 202
  store i8 1, ptr %i.do, align 2, !tbaa !193
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.cu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %_ZN2clL15OccupancyTargetE.val76219220, ptr %i.h, align 8, !tbaa !194
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 203
  store i8 1, ptr %i.dp, align 1, !tbaa !195
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.cw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.cx, ptr %i.m, align 4, !tbaa !196
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 207
  store i8 1, ptr %i.dq, align 1, !tbaa !197
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.cy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = and i8 %_ZN2clL12GCAllocYoungE.val79, 1
  store i8 %i.dr, ptr %i.s, align 8, !tbaa !198
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 210
  store i8 1, ptr %i.ds, align 2, !tbaa !199
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.cz, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dt = and i8 %_ZN2clL17GCRevertToYGAtTTIE.val78, 1
  store i8 %i.dt, ptr %i.t, align 2, !tbaa !200
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 212
  store i8 1, ptr %i.du, align 4, !tbaa !201
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.dj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not46.not, label %bb.ak, label %.thread214

bb.aj:                                            ; preds = %bb.ah
  %spec.select = select i1 %.not46.not, i64 -1, i64 %i.dk
  br label %.thread214

.thread214:                                       ; preds = %bb.ai, %bb.aj
  %.sroa.0176.0216 = phi double [ %_ZN2clL14GCSanitizeRateE.val75221222, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %.sroa.7.0 = phi i64 [ %spec.select, %bb.aj ], [ %i.dk, %bb.ai ]
  store double %.sroa.0176.0216, ptr %i.j, align 8, !tbaa !47
  store i64 %.sroa.7.0, ptr %i.k, align 8, !tbaa !39
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 205
  store i8 1, ptr %i.dv, align 1, !tbaa !202
  br label %bb.ak

bb.ak:                                            ; preds = %.thread214, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13BytecodeFilesB5cxx11E, i64 152), align 8, !tbaa !203 ; 3 uses
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13BytecodeFilesB5cxx11E, i64 160), align 8, !tbaa !203 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  %i.eb = icmp ugt i64 %i.ea, 9223372036854775776
  br i1 %i.eb, label %bb.al, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.144) #31
          to label %.noexc.i109 unwind label %bb.am

.noexc.i109:                                      ; preds = %bb.al
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.ak
  %.not.i.i.i = icmp eq ptr %i.dx, %i.dw
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #32
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.am

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.ed = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %i.ec, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %i.ed, ptr %7, align 8, !tbaa !104
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !110
  %i.eg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_(ptr %i.dw, ptr %i.dx, ptr noundef %i.ed)
          to label %bb.ao unwind label %bb.am     ; 2 uses

bb.am:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %bb.al
  %i.eh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error         ; 2 uses
  %i.ei = load ptr, ptr %7, align 8, !tbaa !104   ; 3 uses
  %.not.i.i7.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i7.i, label %.body, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !110
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #30
  br label %.body

bb.ao:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.eg, ptr %i.eo, align 8, !tbaa !107
  %i.ep = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL22DisableSourceHashCheckE, i64 152), align 8, !tbaa !72, !range !83, !noundef !42
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.er = load ptr, ptr %7, align 8, !tbaa !104
  %i.es = ptrtoint ptr %i.eg to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %.not47 = icmp eq i64 %i.eu, 32
  br i1 %.not47, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ev = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull @.str.124)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %bb.cy unwind label %bb.as

bb.as:                                            ; preds = %bb.cf, %_ZN4llvh11raw_ostreamlsEPKc.exit155, %bb.cd, %_ZN4llvh11raw_ostreamlsEPKc.exit148, %bb.cb, %bb.bz, %bb.br, %bb.ar
  %i.ew = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error
  br label %bb.ci

bb.at:                                            ; preds = %bb.aq
  %i.ex = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error
  call void @__cxa_free_exception(ptr nonnull %i.ev) #29
  br label %bb.ci

bb.au:                                            ; preds = %bb.ap, %bb.ao
  %i.ey = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL5TraceB5cxx11E, i64 160), align 8, !tbaa !112
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.br, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %i.l, align 8, !tbaa !188
  store i8 1, ptr %i.dl, align 2, !tbaa !189
  store i8 0, ptr %i.de, align 8, !tbaa !82
  store i8 1, ptr %i.ah, align 1, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 0, ptr %8, align 8, !tbaa !204
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #33
  store ptr %i.fb, ptr %i.fa, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL5TraceB5cxx11E, i64 152), align 8, !tbaa !93 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.fd = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32
          to label %.noexc110 unwind label %bb.bb ; 3 uses

.noexc110:                                        ; preds = %bb.av
  %.not.i.i = icmp eq ptr %i.fc, null
end_hunk_0
