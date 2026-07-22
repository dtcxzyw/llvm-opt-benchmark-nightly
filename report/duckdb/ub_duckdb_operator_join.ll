inline.NumInlined: 13951
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6duckdb22IEJoinLocalSourceStateC2ERNS_13ClientContextERNS_23IEJoinGlobalSourceStateE:bb.a

bb.u:                                             ; preds = %bb.t
  %i.av = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.v unwind label %bb.az      ; 3 uses

bb.v:                                             ; preds = %bb.u
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef 1)
          to label %bb.w unwind label %bb.ba

bb.w:                                             ; preds = %bb.v
  %i.ax = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.x unwind label %bb.ba      ; 3 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable19CreateIteratorStateEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.515") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.av)
          to label %bb.y unwind label %bb.bb

bb.y:                                             ; preds = %bb.x
  %i.ay = load ptr, ptr %5, align 8, !tbaa !703
  store ptr null, ptr %5, align 8, !tbaa !703
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !703 ; 3 uses
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !703
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEaSEOS6_.exit

_ZN6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEaSEOS6_.exit: ; preds = %bb.y
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EED2Ev(ptr noundef nonnull align 8 dereferenceable(1192) %i.az) #30
  call void @_ZdlPv(ptr noundef nonnull %i.az) #29
  %.pr = load ptr, ptr %5, align 8, !tbaa !703    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEEEclEPS3_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEaSEOS6_.exit
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EED2Ev(ptr noundef nonnull align 8 dereferenceable(1192) %.pr) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr) #29
  br label %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.y, %_ZN6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEaSEOS6_.exit, %_ZNKSt14default_deleteIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable19CreateIteratorStateEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.515") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.ax)
          to label %bb.z unwind label %bb.bc

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit
  %i.ba = load ptr, ptr %6, align 8, !tbaa !703
  store ptr null, ptr %6, align 8, !tbaa !703
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !703 ; 3 uses
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !703
  %.not.i.i.i.i.i73 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i73, label %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit78, label %_ZN6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEaSEOS6_.exit75

_ZN6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEaSEOS6_.exit75: ; preds = %bb.z
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EED2Ev(ptr noundef nonnull align 8 dereferenceable(1192) %i.bb) #30
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #29
  %.pr134 = load ptr, ptr %6, align 8, !tbaa !703 ; 3 uses
  %.not.i76 = icmp eq ptr %.pr134, null
  br i1 %.not.i76, label %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit78, label %_ZNKSt14default_deleteIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEEEclEPS3_.exit.i77

_ZNKSt14default_deleteIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEEEclEPS3_.exit.i77: ; preds = %_ZN6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEaSEOS6_.exit75
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EED2Ev(ptr noundef nonnull align 8 dereferenceable(1192) %.pr134) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr134) #29
  br label %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit78

_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit78: ; preds = %bb.z, %_ZN6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEaSEOS6_.exit75, %_ZNKSt14default_deleteIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEEEclEPS3_.exit.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %.noexc unwind label %bb.ba

.noexc:                                           ; preds = %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %.noexc79 unwind label %bb.ba

.noexc79:                                         ; preds = %.noexc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb19TupleDataCollection20InitializeChunkStateERNS_19TupleDataChunkStateENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(192) %i.bf, ptr noundef nonnull align 8 dereferenceable(488) %i.f, ptr noundef nonnull %4)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %.noexc79
  %i.bg = load ptr, ptr %4, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #29
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc79
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i3.i, label %.body80, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #29
  br label %.body80

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %.noexc85 unwind label %bb.ba

.noexc85:                                         ; preds = %bb.ae
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %.noexc86 unwind label %bb.ba

.noexc86:                                         ; preds = %.noexc85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb19TupleDataCollection20InitializeChunkStateERNS_19TupleDataChunkStateENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(192) %i.bm, ptr noundef nonnull align 8 dereferenceable(488) %i.o, ptr noundef nonnull %3)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.noexc86
  %i.bn = load ptr, ptr %3, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i84, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #29
  br label %bb.aj

bb.ah:                                            ; preds = %.noexc86
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i3.i82 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i3.i82, label %.body80, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #29
  br label %.body80

bb.aj:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.br = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %.noexc90 unwind label %bb.bd

.noexc90:                                         ; preds = %bb.aj
  %i.bs = invoke noalias noundef nonnull dereferenceable(808) ptr @_Znwm(i64 noundef 808) #28
          to label %.noexc91 unwind label %bb.bd  ; 3 uses

.noexc91:                                         ; preds = %.noexc90
  invoke void @_ZN6duckdb18SortedRunScanStateC1ERNS_13ClientContextERKNS_4SortE(ptr noundef nonnull align 8 dereferenceable(808) %i.bs, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(129) %i.br)
          to label %_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable15CreateScanStateERNS_13ClientContextE.exit unwind label %bb.ak, !noalias !2997

bb.ak:                                            ; preds = %.noexc91
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #29, !noalias !2997
  br label %.body80

_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable15CreateScanStateERNS_13ClientContextE.exit: ; preds = %.noexc91
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !1943 ; 3 uses
  store ptr %i.bs, ptr %i.m, align 8, !tbaa !1943
  %.not.i.i.i.i.i94 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i94, label %_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18SortedRunScanStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18SortedRunScanStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable15CreateScanStateERNS_13ClientContextE.exit
  call void @_ZN6duckdb18SortedRunScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(808) dereferenceable(808) %i.bu) #30
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #29
  br label %_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb18SortedRunScanStateEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable15CreateScanStateERNS_13ClientContextE.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bw = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %.noexc96 unwind label %bb.be

.noexc96:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit
  %i.bx = invoke noalias noundef nonnull dereferenceable(808) ptr @_Znwm(i64 noundef 808) #28
          to label %.noexc97 unwind label %bb.be  ; 3 uses

.noexc97:                                         ; preds = %.noexc96
  invoke void @_ZN6duckdb18SortedRunScanStateC1ERNS_13ClientContextERKNS_4SortE(ptr noundef nonnull align 8 dereferenceable(808) %i.bx, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(129) %i.bw)
          to label %_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable15CreateScanStateERNS_13ClientContextE.exit100 unwind label %bb.al, !noalias !3002

bb.al:                                            ; preds = %.noexc97
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #29, !noalias !3002
  br label %.body80

_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable15CreateScanStateERNS_13ClientContextE.exit100: ; preds = %.noexc97
  %i.bz = load ptr, ptr %i.v, align 8, !tbaa !1943 ; 3 uses
  store ptr %i.bx, ptr %i.v, align 8, !tbaa !1943
  %.not.i.i.i.i.i101 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i101, label %_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit106, label %_ZNKSt14default_deleteIN6duckdb18SortedRunScanStateEEclEPS1_.exit.i.i.i.i.i102

_ZNKSt14default_deleteIN6duckdb18SortedRunScanStateEEclEPS1_.exit.i.i.i.i.i102: ; preds = %_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable15CreateScanStateERNS_13ClientContextE.exit100
  call void @_ZN6duckdb18SortedRunScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(808) dereferenceable(808) %i.bz) #30
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #29
  br label %_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit106

_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit106: ; preds = %_ZNKSt14default_deleteIN6duckdb18SortedRunScanStateEEclEPS1_.exit.i.i.i.i.i102, %_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable15CreateScanStateERNS_13ClientContextE.exit100
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 144 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 152 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !158
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !157
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 24
  %i.ci = icmp ult i64 %i.ch, 3
  br i1 %i.ci, label %bb.bw, label %.lr.ph.a

bb.am:                                            ; preds = %bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.an:                                            ; preds = %bb.b
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit127

bb.ao:                                            ; preds = %bb.c
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ap:                                            ; preds = %bb.d
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.aq:                                            ; preds = %bb.e
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit125

bb.ar:                                            ; preds = %bb.f
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.as:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.at:                                            ; preds = %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.au:                                            ; preds = %bb.j
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.av:                                            ; preds = %bb.k
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.aw:                                            ; preds = %bb.l
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ax:                                            ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.ay:                                            ; preds = %bb.s
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.az:                                            ; preds = %bb.u, %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.ba:                                            ; preds = %.noexc85, %bb.ae, %.noexc, %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit78, %bb.w, %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.bb:                                            ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body80

bb.bc:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.body80

bb.bd:                                            ; preds = %.noexc90, %bb.aj
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.be:                                            ; preds = %.noexc96, %_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.lr.ph.a:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.bf

._crit_edge:                                      ; preds = %bb.bq
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 2048)
          to label %bb.bs unwind label %bb.bx

bb.bf:                                            ; preds = %.lr.ph.a, %bb.bq
  %.035136 = phi i64 [ 2, %.lr.ph.a ], [ %i.ds, %bb.bq ] ; 2 uses
  %i.dc = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef %.035136)
          to label %bb.bg unwind label %bb.br     ; 4 uses

bb.bg:                                            ; preds = %bb.bf
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.bh unwind label %bb.br

bb.bh:                                            ; preds = %bb.bg
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56 ; 2 uses
  %i.df = load ptr, ptr %9, align 8, !tbaa !174   ; 3 uses
  %i.dg = load ptr, ptr %10, align 8, !tbaa !175
  %.not.i107 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i107, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.noexc108 unwind label %bb.br

.noexc108:                                        ; preds = %bb.bi
  %i.dh = load ptr, ptr %9, align 8, !tbaa !174
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store ptr %i.di, ptr %9, align 8, !tbaa !174
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.bj:                                            ; preds = %bb.bh
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.br

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc108, %bb.bj
  %i.dj = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.bk unwind label %bb.br

bb.bk:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.dj)
          to label %bb.bl unwind label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.dk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.bm unwind label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56 ; 2 uses
  %i.dm = load ptr, ptr %11, align 8, !tbaa !174  ; 3 uses
  %i.dn = load ptr, ptr %12, align 8, !tbaa !175
  %.not.i110 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i110, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %.noexc111 unwind label %bb.br

.noexc111:                                        ; preds = %bb.bn
  %i.do = load ptr, ptr %11, align 8, !tbaa !174
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store ptr %i.dp, ptr %11, align 8, !tbaa !174
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit113

bb.bo:                                            ; preds = %bb.bm
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit113 unwind label %bb.br

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit113: ; preds = %.noexc111, %bb.bo
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dr = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit113
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %i.ab, ptr noundef nonnull align 8 dereferenceable(88) %i.dr)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ds = add nuw i64 %.035136, 1                 ; 2 uses
  %i.dt = load ptr, ptr %i.cb, align 8, !tbaa !158
  %i.du = load ptr, ptr %i.ca, align 8, !tbaa !157
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 24
  %i.dz = icmp ult i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.bf, label %._crit_edge, !llvm.loop !3007

bb.br:                                            ; preds = %bb.bo, %bb.bn, %bb.bj, %bb.bi, %bb.bp, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit113, %bb.bl, %bb.bk, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, %bb.bg, %bb.bf
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bs:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 2048)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.eb = load ptr, ptr %8, align 8, !tbaa !272   ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !174 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eb, %i.ed
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bt, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i ], [ %i.eb, %bb.bt ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #30
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !274

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !272
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bt
  %i.ef = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.eb, %bb.bt ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ef) #29
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.eg = load ptr, ptr %7, align 8, !tbaa !272   ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !174 ; 2 uses
  %.not4.i.i.i114 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not4.i.i.i114, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i120, label %.lr.ph.i.i.i115

.lr.ph.i.i.i115:                                  ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %.lr.ph.i.i.i115
  %.05.i.i.i116 = phi ptr [ %i.ej, %.lr.ph.i.i.i115 ], [ %i.eg, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i116) #30
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i.i116, i64 24 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.ej, %i.ei
  br i1 %.not.i.i.i117, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i118, label %.lr.ph.i.i.i115, !llvm.loop !274

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i118: ; preds = %.lr.ph.i.i.i115
  %.pr.i119 = load ptr, ptr %7, align 8, !tbaa !272
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i120

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i120: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i118, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ek = phi ptr [ %.pr.i119, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i118 ], [ %i.eg, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i121 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i1.i121, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit122, label %bb.bv

bb.bv:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i120
  call void @_ZdlPv(ptr noundef nonnull %i.ek) #29
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit122

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit122: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i120, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev.exit106, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit122
  ret void

bb.bx:                                            ; preds = %bb.bs, %._crit_edge
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.br
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.br ], [ %i.el, %bb.bx ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.body80

.body80:                                          ; preds = %bb.be, %bb.al, %bb.bd, %bb.ak, %bb.ad, %bb.ac, %bb.ah, %bb.ai, %bb.ba, %bb.ay, %bb.bb, %bb.bc, %bb.by, %bb.az, %bb.ax
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cu, %bb.ax ], [ %i.cv, %bb.ay ], [ %i.cw, %bb.az ], [ %.pn, %bb.by ], [ %i.bt, %bb.ak ], [ %i.bo, %bb.ah ], [ %i.cy, %bb.bb ], [ %i.cz, %bb.bc ], [ %i.bh, %bb.ac ], [ %i.bh, %bb.ad ], [ %i.cx, %bb.ba ], [ %i.bo, %bb.ai ], [ %i.da, %bb.bd ], [ %i.db, %bb.be ], [ %i.by, %bb.al ]
  %i.em = load ptr, ptr %i.ae, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %.body80
  call void @_ZdlPv(ptr noundef nonnull %i.em) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.body80, %bb.bz
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ad) #30
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.aw
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit ], [ %i.ct, %bb.aw ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ac) #30
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.av
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.ca ], [ %i.cs, %bb.av ]
  call void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.ab) #30
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.au
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.cb ], [ %i.cr, %bb.au ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.aa) #30
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.at
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cc ], [ %i.cq, %bb.at ]
  call void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.z) #30
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.as
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cd ], [ %i.cp, %bb.as ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #30
  br label %.body

.body:                                            ; preds = %bb.h, %bb.ce
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ce ], [ %i.y, %bb.h ]
  call void @_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #30
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.u) #30
  br label %bb.cf

bb.cf:                                            ; preds = %.body, %bb.ar
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.co, %bb.ar ] ; 2 uses
  %i.en = load ptr, ptr %i.p, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorImSaImEED2Ev.exit125, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZdlPv(ptr noundef nonnull %i.en) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit125

_ZNSt6vectorImSaImEED2Ev.exit125:                 ; preds = %bb.cg, %bb.cf, %bb.aq
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.aq ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cf ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cg ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.o) #30
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit125, %bb.ap
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit125 ], [ %i.cm, %bb.ap ]
  call void @_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #30
  call void @_ZNSt10unique_ptrIN6duckdb18SortedRunScanStateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #30
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.l) #30
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ao
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ch ], [ %i.cl, %bb.ao ] ; 2 uses
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i126 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorImSaImEED2Ev.exit127, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZdlPv(ptr noundef nonnull %i.eo) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit127

_ZNSt6vectorImSaImEED2Ev.exit127:                 ; preds = %bb.cj, %bb.ci, %bb.an
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.an ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ci ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cj ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.f) #30
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit127, %bb.am
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit127 ], [ %i.cj, %bb.am ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt10unique_ptrIN6duckdb18BlockIteratorStateILNS0_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #30
  call void @_ZNSt10unique_ptrIN6duckdb11IEJoinUnionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ep) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

end_hunk_0
