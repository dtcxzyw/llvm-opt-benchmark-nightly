inline.NumInlined: 1633
inline.NumDeleted: 888
begin_hunk_0_@main:bb.a
  store i8 4, ptr %i.as, align 8, !tbaa !122
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
  %13 = or i8 %i.cp, %i.cl
  %14 = icmp ne i8 %13, 0
  %.043 = select i1 %i.co, i1 true, i1 %14
  %_ZN2clL11MinHeapSizeE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL11MinHeapSizeE, i64 8), align 8, !tbaa !8
  %_ZN2clL11MinHeapSizeE.val74 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL11MinHeapSizeE, i64 152), align 8
  %i.cq = icmp sgt i32 %_ZN2clL11MinHeapSizeE.val, 0
  %_ZN2clL12InitHeapSizeE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12InitHeapSizeE, i64 8), align 8, !tbaa !8
  %_ZN2clL12InitHeapSizeE.val73 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12InitHeapSizeE, i64 152), align 8
  %i.cr = icmp sgt i32 %_ZN2clL12InitHeapSizeE.val, 0
  %_ZN2clL11MaxHeapSizeE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL11MaxHeapSizeE, i64 8), align 8, !tbaa !8
  %_ZN2clL11MaxHeapSizeE.val72 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL11MaxHeapSizeE, i64 152), align 8
  %i.cs = icmp sgt i32 %_ZN2clL11MaxHeapSizeE.val, 0
  %_ZN2clL15OccupancyTargetE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15OccupancyTargetE, i64 8), align 8, !tbaa !8
  %_ZN2clL15OccupancyTargetE.val76219220 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15OccupancyTargetE, i64 152), align 8
  %i.ct = icmp sgt i32 %_ZN2clL15OccupancyTargetE.val, 0
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL19ShouldReleaseUnusedE, i64 8), align 8, !tbaa !8
  %i.cv = icmp sgt i32 %i.cu, 0
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL19ShouldReleaseUnusedE, i64 152), align 8
  %_ZN2clL12GCAllocYoungE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12GCAllocYoungE, i64 8), align 8, !tbaa !8
  %_ZN2clL12GCAllocYoungE.val79 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12GCAllocYoungE, i64 152), align 8
  %i.cx = icmp slt i32 %_ZN2clL12GCAllocYoungE.val, 1
  %_ZN2clL17GCRevertToYGAtTTIE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL17GCRevertToYGAtTTIE, i64 8), align 8, !tbaa !8
  %_ZN2clL17GCRevertToYGAtTTIE.val78 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL17GCRevertToYGAtTTIE, i64 152), align 8
  %i.cy = icmp slt i32 %_ZN2clL17GCRevertToYGAtTTIE.val, 1
  %_ZN2clL15TrackBytecodeIOE.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15TrackBytecodeIOE, i64 8), align 8, !tbaa !8
  %_ZN2clL15TrackBytecodeIOE.val77 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15TrackBytecodeIOE, i64 152), align 8
  %i.cz = icmp sgt i32 %_ZN2clL15TrackBytecodeIOE.val, 0
  %i.da = and i8 %_ZN2clL15TrackBytecodeIOE.val77, 1
  %i.db = zext nneg i8 %i.da to i16
  %i.dc = or disjoint i16 %i.db, 256
  %.sroa.0.0.insert.insert.i97 = select i1 %i.cz, i16 %i.dc, i16 0
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
  %15 = zext i1 %.043 to i8
  store i8 %15, ptr %i.l, align 8, !tbaa !188
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 206 ; 2 uses
  store i8 1, ptr %i.dk, align 2, !tbaa !189
  br i1 %i.cq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %_ZN2clL11MinHeapSizeE.val74, ptr %3, align 8, !tbaa !190
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i8 1, ptr %i.dl, align 8, !tbaa !191
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.cr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %_ZN2clL12InitHeapSizeE.val73, ptr %3, align 8, !tbaa !190
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i8 1, ptr %i.dm, align 8, !tbaa !191
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.cs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %_ZN2clL11MaxHeapSizeE.val72, ptr %i.g, align 8, !tbaa !192
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 202
  store i8 1, ptr %i.dn, align 2, !tbaa !193
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %_ZN2clL15OccupancyTargetE.val76219220, ptr %i.h, align 8, !tbaa !194
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 203
  store i8 1, ptr %i.do, align 1, !tbaa !195
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.cv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.cw, ptr %i.m, align 4, !tbaa !196
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 207
  store i8 1, ptr %i.dp, align 1, !tbaa !197
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.cx, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = and i8 %_ZN2clL12GCAllocYoungE.val79, 1
  store i8 %i.dq, ptr %i.s, align 8, !tbaa !198
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 210
  store i8 1, ptr %i.dr, align 2, !tbaa !199
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.cy, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = and i8 %_ZN2clL17GCRevertToYGAtTTIE.val78, 1
  store i8 %i.ds, ptr %i.t, align 2, !tbaa !200
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 212
  store i8 1, ptr %i.dt, align 4, !tbaa !201
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
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 205
  store i8 1, ptr %i.du, align 1, !tbaa !202
  br label %bb.ak

bb.ak:                                            ; preds = %.thread214, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13BytecodeFilesB5cxx11E, i64 152), align 8, !tbaa !203 ; 3 uses
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13BytecodeFilesB5cxx11E, i64 160), align 8, !tbaa !203 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 3 uses
  %i.ea = icmp ugt i64 %i.dz, 9223372036854775776
  br i1 %i.ea, label %bb.al, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.144) #31
          to label %.noexc.i109 unwind label %bb.am

.noexc.i109:                                      ; preds = %bb.al
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.ak
  %.not.i.i.i = icmp eq ptr %i.dw, %i.dv
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #32
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.am

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.ec = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %i.eb, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %i.ec, ptr %7, align 8, !tbaa !104
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dz
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !110
  %i.ef = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_(ptr %i.dv, ptr %i.dw, ptr noundef %i.ec)
          to label %bb.ao unwind label %bb.am     ; 2 uses

bb.am:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %bb.al
  %i.eg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error         ; 2 uses
  %i.eh = load ptr, ptr %7, align 8, !tbaa !104   ; 3 uses
  %.not.i.i7.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i7.i, label %.body, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !110
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #30
  br label %.body

bb.ao:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.ef, ptr %i.en, align 8, !tbaa !107
  %i.eo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL22DisableSourceHashCheckE, i64 152), align 8, !tbaa !72, !range !83, !noundef !42
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.eq = load ptr, ptr %7, align 8, !tbaa !104
  %i.er = ptrtoint ptr %i.ef to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %.not47 = icmp eq i64 %i.et, 32
  br i1 %.not47, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull @.str.124)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %bb.cy unwind label %bb.as

bb.as:                                            ; preds = %bb.cf, %_ZN4llvh11raw_ostreamlsEPKc.exit155, %bb.cd, %_ZN4llvh11raw_ostreamlsEPKc.exit148, %bb.cb, %bb.bz, %bb.br, %bb.ar
  %i.ev = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error
  br label %bb.ci

bb.at:                                            ; preds = %bb.aq
  %i.ew = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12system_error
  call void @__cxa_free_exception(ptr nonnull %i.eu) #29
  br label %bb.ci

bb.au:                                            ; preds = %bb.ap, %bb.ao
  %i.ex = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL5TraceB5cxx11E, i64 160), align 8, !tbaa !112
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.br, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %i.l, align 8, !tbaa !188
  store i8 1, ptr %i.dk, align 2, !tbaa !189
  store i8 0, ptr %i.dd, align 8, !tbaa !82
  store i8 1, ptr %i.ah, align 1, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 0, ptr %8, align 8, !tbaa !204
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #33
  store ptr %i.fa, ptr %i.ez, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL5TraceB5cxx11E, i64 152), align 8, !tbaa !93 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.fc = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32
          to label %.noexc110 unwind label %bb.bb ; 3 uses

.noexc110:                                        ; preds = %bb.av
  %.not.i.i = icmp eq ptr %i.fb, null
end_hunk_0
begin_hunk_1_@_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKNS0_18GenericOptionValueE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !112
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !93
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp ne i32 %bcmp.i.i.i, 0
  br label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.q, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !93 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !96
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !108

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !104
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16handleOccurrenceEjNS_9StringRefESB_(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !112
  store i8 0, ptr %i.b, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = invoke noundef zeroext i1 @_ZN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.k, %bb.h, %.noexc.i.i.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %6, align 8, !tbaa !93     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.b
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.b, align 8, !tbaa !96
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !110
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !111
  %i.p = load ptr, ptr %6, align 8, !tbaa !93     ; 2 uses
  %i.q = load i64, ptr %i.c, align 8, !tbaa !112  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.q, ptr %i.a, align 8, !tbaa !39
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.s, ptr %i.l, align 8, !tbaa !93
  %i.t = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.t, ptr %i.o, align 8, !tbaa !96
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.e
  %i.u = phi ptr [ %i.s, %.noexc ], [ %i.o, %bb.e ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.p, align 1, !tbaa !96
  store i8 %i.v, ptr %i.u, align 1, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !112
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !107
  br label %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit

bb.h:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit unwind label %bb.c

_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.ad, align 8, !tbaa !235
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !253 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !103
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit
  store i32 %1, ptr %i.ag, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !253
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.j:                                             ; preds = %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 4 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.k, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #31
          to label %.noexc10 unwind label %bb.c

.noexc10:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ap = ashr exact i64 %i.an, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %7 = icmp ult i64 %i.aq, %i.ap
  %i.ar = call i64 @llvm.umin.i64(i64 %i.aq, i64 2305843009213693951)
  %8 = select i1 %7, i64 2305843009213693951, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %8, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %8, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #32
          to label %.noexc11 unwind label %bb.c   ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.an ; 2 uses
  store i32 %1, ptr %i.au, align 4, !tbaa !4
  %i.av = icmp sgt i64 %i.an, 0
  br i1 %i.av, label %bb.l, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %.noexc11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %.noexc11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #30
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !101
  store ptr %i.aw, ptr %i.af, align 8, !tbaa !253
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %8
  store ptr %i.ax, ptr %i.ah, align 8, !tbaa !103
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.i, %bb.b
  %i.ay = load ptr, ptr %6, align 8, !tbaa !93    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !96
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEEE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30, !inline_history !254
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.i ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !93 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !96
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30, !inline_history !254
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !108

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.r = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #30, !inline_history !254
  br label %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i

_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i
  tail call void @free(ptr noundef %i.z) #29, !inline_history !254
  br label %_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev.exit

_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev.exit: ; preds = %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = tail call noundef i64 @_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE10setDefaultEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.not.i = icmp eq ptr %4, null
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !111, !alias.scope !255
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !112, !alias.scope !255
  store i8 0, ptr %i.b, align 8, !tbaa !96, !alias.scope !255
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !255
  store i64 %5, ptr %i.a, align 8, !tbaa !39, !noalias !255
  %i.d = icmp ugt i64 %5, 15
  br i1 %i.d, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !93, !alias.scope !255
  %i.f = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !255
  store i64 %i.f, ptr %i.b, align 8, !tbaa !96, !alias.scope !255
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.g = phi ptr [ %i.e, %.noexc.i.i ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %5, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %4, align 1, !tbaa !96
  store i8 %i.h, ptr %i.g, align 1, !tbaa !96
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !255 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !112, !alias.scope !255
  %i.k = load ptr, ptr %7, align 8, !tbaa !93, !alias.scope !255
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !255
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %bb.f
  %i.m = load ptr, ptr %6, align 8, !tbaa !93     ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %7, align 8, !tbaa !93     ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  br i1 %i.r, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  br i1 %i.r, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !112  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq ptr %7, %6
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !258

bb.h:                                             ; preds = %bb.g
  switch i64 %i.t, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %i.p, align 1, !tbaa !96
  store i8 %i.v, ptr %i.m, align 1, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.w = load i64, ptr %i.s, align 8, !tbaa !112  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !112
  %i.y = load ptr, ptr %6, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !96
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.p, ptr %6, align 8, !tbaa !93
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !96
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !96
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !96
  store ptr %i.p, ptr %6, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !96
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !96
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %7, align 8, !tbaa !93
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %7, align 8, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ah = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.m, %bb.k ], [ %i.q, %bb.l ], [ %i.p, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !112
  store i8 0, ptr %i.ah, align 1, !tbaa !96
  %i.aj = load ptr, ptr %7, align 8, !tbaa !93    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !96
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !104    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #31
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %3 = icmp ult i64 %i.j, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.k ; 4 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %4, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !111
  %i.s = load ptr, ptr %2, align 8, !tbaa !93     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !112  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.u, ptr %i.a, align 8, !tbaa !39
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !93
  %i.x = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.x, ptr %i.r, align 8, !tbaa !96
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !96
  store i8 %i.z, ptr %i.y, align 1, !tbaa !96
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !112
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !111, !alias.scope !259, !noalias !262
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !93, !alias.scope !262, !noalias !259 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !112, !alias.scope !262, !noalias !259 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !264
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !93, !alias.scope !259, !noalias !262
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !96, !alias.scope !262, !noalias !259
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !96, !alias.scope !259, !noalias !262
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !112, !alias.scope !262, !noalias !259
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.an = phi i64 [ %i.aj, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !112, !alias.scope !259, !noalias !262
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !93, !alias.scope !262, !noalias !259
  store i64 0, ptr %i.ao, align 8, !tbaa !112, !alias.scope !262, !noalias !259
  store i8 0, ptr %i.ag, align 8, !tbaa !96, !alias.scope !262, !noalias !259
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !265

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !111, !alias.scope !266, !noalias !269
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !93, !alias.scope !269, !noalias !266 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !112, !alias.scope !269, !noalias !266 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !271
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !93, !alias.scope !266, !noalias !269
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !96, !alias.scope !269, !noalias !266
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !96, !alias.scope !266, !noalias !269
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !112, !alias.scope !269, !noalias !266
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.h
  %i.bc = phi i64 [ %i.ay, %bb.h ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !112, !alias.scope !266, !noalias !269
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !93, !alias.scope !269, !noalias !266
  store i64 0, ptr %i.bd, align 8, !tbaa !112, !alias.scope !269, !noalias !266
  store i8 0, ptr %i.av, align 8, !tbaa !96, !alias.scope !269, !noalias !266
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !265

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !110
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !104
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !107
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %4
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !110
  ret void

bb.j:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #29 ; 0 uses
  %i.bq = shl nuw nsw i64 %4, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bq) #30
  invoke void @__cxa_rethrow() #31
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bm

bb.m:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #34
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !93 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !96
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !108

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef i64 @_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #6

declare void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145), i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEED2Ev(ptr noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEEE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvh11SmallVectorINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #29
  br label %_ZN4llvh11SmallVectorINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELj8EED2Ev.exit

_ZN4llvh11SmallVectorINS_2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE10OptionInfoELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEE16handleOccurrenceEjNS_9StringRefESB_(ptr noundef nonnull align 8 dereferenceable(592) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = call noundef zeroext i1 @_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEE5parseERNS0_6OptionENS_9StringRefESB_RS7_(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.a, align 4, !tbaa !272
  store i32 %i.e, ptr %i.d, align 8, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.f, align 8, !tbaa !235
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236, !nonnull !42, !align !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !238
  %.not.i = icmp eq i64 %i.d, 0
  %..i = select i1 %.not.i, i32 3, i32 2
  ret i32 %..i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEEE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEEE, i64 16), ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #29, !inline_history !273
  br label %_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEED2Ev.exit.i

_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEED2Ev.exit.i
  tail call void @free(ptr noundef %i.h) #29, !inline_history !274
  br label %_ZN4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEED2Ev.exit

_ZN4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEED2Ev.exit: ; preds = %_ZN4llvh2cl6parserIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 592) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef i64 @_ZNK4llvh2cl19generic_parser_base14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(592) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZNK4llvh2cl19generic_parser_base15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionELb0ENS0_6parserIS7_EEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(592) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvh::cl::OptionValue.64", align 8 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !123 ; 2 uses
  br i1 %2, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i8, ptr %i.a, align 4, !tbaa !129, !range !83, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, %.pre
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptions12MarkerActionEEE, i64 16), ptr %3, align 8, !tbaa !34
  store i8 1, ptr %i.j, align 4, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.pre, ptr %i.k, align 8, !tbaa !130
  call void @_ZNK4llvh2cl19generic_parser_base22printGenericOptionDiffERKNS0_6OptionERKNS0_18GenericOptionValueES7_m(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_1
