Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_table?download=true
inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 651
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN6duckdb21ColumnCheckpointState20FlushSegmentInternalENS_10unique_ptrINS_13ColumnSegmentESt14default_deleteIS2_ELb1EEEm:bb.a
  br i1 %i.y, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.z = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.ah      ; 8 uses

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !2125, !nonnull !248, !align !295
  %i.ab = invoke ptr @_ZNK6duckdb19PartialBlockManager16GetClientContextEv(ptr noundef nonnull align 8 dereferenceable(128) %i.aa)
          to label %bb.m unwind label %bb.ah      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i8 1, ptr %i.ac, align 8, !tbaa !419
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  store i64 -1, ptr %i.ad, align 8, !tbaa !418
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  store i64 0, ptr %i.ae, align 8, !tbaa !420
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !425, !nonnull !248, !align !295
  %i.ah = invoke noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560) %i.ag)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 17
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !426
  %i.ak = invoke ptr @_ZNK6duckdb8DBConfig22GetCompressionFunctionENS_15CompressionTypeENS_12PhysicalTypeE(ptr noundef nonnull align 8 dereferenceable(1360) %i.ah, i8 noundef zeroext 2, i8 noundef zeroext %i.aj)
          to label %.noexc67 unwind label %bb.ah

.noexc67:                                         ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  store ptr null, ptr %i.am, align 8, !tbaa !427
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 192 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !269 ; 8 uses
  store ptr null, ptr %i.an, align 8, !tbaa !269
  %.not.i.i.i.i12.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i12.i, label %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit, label %bb.n

bb.n:                                             ; preds = %.noexc67
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ap, align 8, !tbaa !271
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !272
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !213
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #37, !inline_history !2119
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !213
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #37, !inline_history !2119
  br label %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit

bb.p:                                             ; preds = %bb.n
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i13.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i13.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i

bb.r:                                             ; preds = %bb.p
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i15.i = phi i32 [ %i.as, %bb.q ], [ %i.bc, %bb.r ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i15.i, 1
  br i1 %i.bd, label %bb.s, label %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit, !prof !274

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #37
  br label %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit

bb.t:                                             ; preds = %bb.j
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.bb, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !347, !nonnull !248, !align !295
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488, !nonnull !248, !align !295
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !513, !nonnull !248, !align !295
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 256
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !590, !nonnull !248, !align !295
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.bk)
          to label %bb.v unwind label %bb.ah      ; 4 uses

bb.v:                                             ; preds = %bb.u
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !2125, !nonnull !248, !align !295
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 4 uses
  %i.bo = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bn) #37, !noalias !2126 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc68

.noexc68:                                         ; preds = %bb.v
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.bo) #40
  unreachable

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.v
  %i.bp = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %2)
          to label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit unwind label %bb.ah

_ZN6duckdb11NumericCastIjmvEET_T0_.exit:          ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !2125, !nonnull !248, !align !295
  invoke void @_ZN6duckdb19PartialBlockManager18GetBlockAllocationEj(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::PartialBlockAllocation") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.bq, i32 noundef %i.bp)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !2135
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !2136 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 8 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !592
  %.not141 = icmp eq ptr %i.bw, null
  br i1 %.not141, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_12PartialBlockESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.y unwind label %bb.aj      ; 3 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.by = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  %i.ca = load ptr, ptr %i.bl, align 8, !tbaa !213
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ce = load ptr, ptr %i.bl, align 8, !tbaa !213
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.cd)
          to label %bb.ab unwind label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.ac unwind label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !444
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !448
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %bb.ad unwind label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !444
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !448
  %i.cp = zext i32 %i.bu to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.co, i64 %2, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cs = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.ct = invoke noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.cu = load ptr, ptr %i.bx, align 8, !tbaa !213
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, ptr noundef nonnull align 8 dereferenceable(296) %i.cs, ptr noundef nonnull align 8 dereferenceable(240) %i.ct, i32 noundef %i.bu)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %bb.af
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ay

bb.ah:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %.noexc, %bb.m, %bb.u, %bb.bc, %bb.bb, %bb.l, %bb.k, %bb.i, %bb.h
  %.sroa.0108.0 = phi ptr [ null, %.noexc ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.bc ], [ null, %bb.bb ], [ %i.bn, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ null, %bb.u ], [ null, %bb.i ], [ null, %bb.h ]
  %.sroa.9.0 = phi i1 [ false, %.noexc ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.bc ], [ false, %bb.bb ], [ true, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ false, %bb.u ], [ false, %bb.i ], [ false, %bb.h ]
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ai:                                            ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.thread132

bb.aj:                                            ; preds = %bb.ap, %bb.ar, %bb.as, %bb.x
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit81

bb.ak:                                            ; preds = %bb.z, %bb.y
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %bb.aa
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ac, %bb.ab, %bb.af, %bb.ae, %bb.ad
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #37
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.am ], [ %i.db, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #37
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.an ], [ %i.da, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit81

bb.ap:                                            ; preds = %bb.w
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.aq unwind label %bb.aj

bb.aq:                                            ; preds = %bb.ap
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 224
  %i.df = load i64, ptr %i.de, align 8, !tbaa !593
  %.not48 = icmp eq i64 %i.df, %i.h
  br i1 %.not48, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.as unwind label %bb.aj

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN6duckdb13ColumnSegment6ResizeEm(ptr noundef nonnull align 8 dereferenceable(240) %i.dg, i64 noundef %i.h)
          to label %bb.at unwind label %bb.aj

bb.at:                                            ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !2125, !nonnull !248, !align !295
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dj = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.dk = invoke noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.dl = load ptr, ptr %5, align 8, !tbaa !2137
  invoke void @_ZN6duckdb19PartialBlockManager18CreatePartialBlockERNS_10ColumnDataERNS_13ColumnSegmentENS_17PartialBlockStateERNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.226") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %i.dh, ptr noundef nonnull align 8 dereferenceable(296) %i.dj, ptr noundef nonnull align 8 dereferenceable(240) %i.dk, ptr noundef nonnull byval(%"struct.duckdb::PartialBlockState") align 8 %i.br, ptr noundef nonnull align 8 dereferenceable(144) %i.dl)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dm = load ptr, ptr %8, align 8, !tbaa !592
  store ptr null, ptr %8, align 8, !tbaa !592
  %i.dn = load ptr, ptr %i.bv, align 8, !tbaa !592 ; 3 uses
  store ptr %i.dm, ptr %i.bv, align 8, !tbaa !592
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12PartialBlockESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_12PartialBlockESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_12PartialBlockESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.aw
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !213
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dn) #37, !inline_history !2122
  %.pr = load ptr, ptr %8, align 8, !tbaa !592    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12PartialBlockESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_12PartialBlockESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.dr = load ptr, ptr %.pr, align 8, !tbaa !213
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #37, !inline_history !2123
  br label %_ZNSt10unique_ptrIN6duckdb12PartialBlockESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12PartialBlockESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.aw, %_ZN6duckdb10unique_ptrINS_12PartialBlockESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit81

bb.ay:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12PartialBlockESt14default_deleteIS1_EED2Ev.exit, %bb.ag
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !2125, !nonnull !248, !align !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 40, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.dx = load i64, ptr %i.bv, align 8, !tbaa !592
  store i64 %i.dx, ptr %i.dw, align 8, !tbaa !592
  store ptr null, ptr %i.bv, align 8, !tbaa !592
  invoke void @_ZN6duckdb19PartialBlockManager20RegisterPartialBlockENS_22PartialBlockAllocationE(ptr noundef nonnull align 8 dereferenceable(128) %i.dv, ptr noundef nonnull %9)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !592 ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i75, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i: ; preds = %bb.az
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !213
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dy) #37, !inline_history !2124
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit

_ZN6duckdb22PartialBlockAllocationD2Ev.exit:      ; preds = %bb.az, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i
  %i.ec = load ptr, ptr %i.bv, align 8, !tbaa !592 ; 3 uses
  %.not.i.i76 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i76, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit78, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i77

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i77: ; preds = %_ZN6duckdb22PartialBlockAllocationD2Ev.exit
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !213
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ec) #37, !inline_history !2124
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit78

_ZN6duckdb22PartialBlockAllocationD2Ev.exit78:    ; preds = %_ZN6duckdb22PartialBlockAllocationD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit

bb.ba:                                            ; preds = %bb.ay
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !592 ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i79, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit81, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i80

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i80: ; preds = %bb.ba
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !213
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eh) #37, !inline_history !2124
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit81

_ZN6duckdb22PartialBlockAllocationD2Ev.exit81:    ; preds = %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i80, %bb.ba, %bb.aj, %bb.ao, %bb.ax
  %.pn52 = phi { ptr, i32 } [ %.pn.pn, %bb.ao ], [ %i.cz, %bb.aj ], [ %i.du, %bb.ax ], [ %i.eg, %bb.ba ], [ %i.eg, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i80 ] ; 2 uses
  %i.el = load ptr, ptr %i.bv, align 8, !tbaa !592 ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.el, null
  br i1 %.not.i.i82, label %.thread132, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i83

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i83: ; preds = %_ZN6duckdb22PartialBlockAllocationD2Ev.exit81
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !213
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.el) #37, !inline_history !2124
  br label %.thread132

.thread132:                                       ; preds = %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i83, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit81, %bb.ai
  %.pn52.pn = phi { ptr, i32 } [ %i.cy, %bb.ai ], [ %.pn52, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit81 ], [ %.pn52, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.co

bb.bb:                                            ; preds = %bb.t
  %i.ep = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bc unwind label %bb.ah

bb.bc:                                            ; preds = %bb.bb
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  store i8 1, ptr %i.eq, align 8, !tbaa !419
  %i.er = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bd unwind label %bb.ah     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 184
  store ptr null, ptr %i.es, align 8, !tbaa !427
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 192 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !269 ; 8 uses
  store ptr null, ptr %i.et, align 8, !tbaa !269
  %.not.i.i.i.i85 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i85, label %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 4 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 4294967297
  %i.ey = trunc i64 %i.ew to i32                  ; 2 uses
  br i1 %i.ex, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.ev, align 8, !tbaa !271
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 0, ptr %i.ez, align 4, !tbaa !272
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !213
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  tail call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #37, !inline_history !18
  %i.fd = load ptr, ptr %i.eu, align 8, !tbaa !213
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #37, !inline_history !18
  br label %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit

bb.bg:                                            ; preds = %bb.be
  %i.fg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i86 = icmp eq i8 %i.fg, 0
  br i1 %.not.i.i.i.i.i86, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fh = add nsw i32 %i.ey, -1
  store i32 %i.fh, ptr %i.ev, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.fi = atomicrmw volatile add ptr %i.ev, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i = phi i32 [ %i.ey, %bb.bh ], [ %i.fi, %bb.bi ]
  %i.fj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fj, label %bb.bj, label %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit, !prof !274

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #37
  br label %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit

_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bf, %bb.bd, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i, %bb.o, %.noexc67, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit78
  %.sroa.0108.1 = phi ptr [ %i.bn, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit78 ], [ null, %bb.s ], [ null, %.noexc67 ], [ null, %bb.o ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i ], [ null, %bb.bd ], [ null, %bb.bf ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ null, %bb.bj ] ; 3 uses
  %.not138 = phi i1 [ false, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit78 ], [ true, %bb.s ], [ true, %.noexc67 ], [ true, %bb.o ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i ], [ true, %bb.bd ], [ true, %bb.bf ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ true, %bb.bj ]
  %.sroa.9.1 = phi i1 [ true, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit78 ], [ false, %bb.s ], [ false, %.noexc67 ], [ false, %bb.o ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i ], [ false, %bb.bd ], [ false, %bb.bf ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ false, %bb.bj ]
  %.027 = phi i64 [ %i.bs, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit78 ], [ -1, %bb.s ], [ -1, %.noexc67 ], [ -1, %bb.o ], [ -1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i ], [ -1, %bb.bd ], [ -1, %bb.bf ], [ -1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ -1, %bb.bj ]
  %.0 = phi i32 [ %i.bu, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit78 ], [ 0, %bb.s ], [ 0, %.noexc67 ], [ 0, %bb.o ], [ 0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i14.i ], [ 0, %bb.bd ], [ 0, %bb.bf ], [ 0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ 0, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.fk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  invoke void @_ZNK6duckdb14BaseStatistics4CopyEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.fl)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN6duckdb11DataPointerC1ENS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(176) %10, ptr noundef nonnull %11)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #37
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %.027, ptr %i.fm, align 8, !tbaa !605
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.0, ptr %i.fn, align 8, !tbaa !606
  store i64 0, ptr %10, align 8, !tbaa !607
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !608
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !608
  %i.fs = icmp eq ptr %i.fp, %i.fr
  br i1 %i.fs, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ft = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZN6duckdb6vectorINS_11DataPointerELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %bb.bo unwind label %bb.bw     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !607
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !609
  %i.fx = add i64 %i.fw, %i.fu
  store i64 %i.fx, ptr %10, align 8, !tbaa !607
  br label %bb.br

bb.bp:                                            ; preds = %bb.bk, %_ZN6duckdb13ColumnSegment19ConvertToPersistentENS_12QueryContextENS_12optional_ptrINS_12BlockManagerELb1EEEl.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bq:                                            ; preds = %bb.bl
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #37
  br label %bb.cm

bb.br:                                            ; preds = %bb.bo, %bb.bm
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.q, ptr %i.ga, align 8, !tbaa !609
  %i.gb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 200
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !610 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !613
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 %i.ge, ptr %i.gf, align 8, !tbaa !614
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 160
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !615 ; 2 uses
  %.not58 = icmp eq ptr %i.gh, null
  br i1 %.not58, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.gi = invoke noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  invoke void %i.gh(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.235") align 8 %12, ptr noundef nonnull align 8 dereferenceable(240) %i.gi)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 168 ; 2 uses
  %i.gk = load ptr, ptr %12, align 8, !tbaa !616
  store ptr null, ptr %12, align 8, !tbaa !616
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !616 ; 3 uses
  store ptr %i.gk, ptr %i.gj, align 8, !tbaa !616
  %.not.i.i.i.i.i87 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i87, label %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.bv
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !213
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.gl) #37, !inline_history !20
  %.pr120 = load ptr, ptr %12, align 8, !tbaa !616 ; 3 uses
  %.not.i88 = icmp eq ptr %.pr120, null
  br i1 %.not.i88, label %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.gp = load ptr, ptr %.pr120, align 8, !tbaa !213
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.pr120) #37, !inline_history !21
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bv, %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.by

bb.bw:                                            ; preds = %bb.ci, %bb.bz, %bb.bn, %bb.by, %bb.br
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bx:                                            ; preds = %bb.bu, %bb.bt
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.cl

bb.by:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit, %bb.bs
  %i.gu = load ptr, ptr %0, align 8, !tbaa !213
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = invoke noundef nonnull align 8 dereferenceable(296) ptr %i.gw(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.bz unwind label %bb.bw

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZNSt12__shared_ptrIN6duckdb13ColumnSegmentELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EEC2IS1_St14default_deleteIS1_ELb1ETnNSt9enable_ifIXaasr17compatible_with_tIT_S1_EE5valuesr3std14is_convertibleINS_10unique_ptrIS7_T0_Lb1EE7pointerEPS1_EE5valueEiE4typeELi0EEEONS8_IS7_S9_XT1_EEE.exit unwind label %bb.bw

_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EEC2IS1_St14default_deleteIS1_ELb1ETnNSt9enable_ifIXaasr17compatible_with_tIT_S1_EE5valuesr3std14is_convertibleINS_10unique_ptrIS7_T0_Lb1EE7pointerEPS1_EE5valueEiE4typeELi0EEEONS8_IS7_S9_XT1_EEE.exit: ; preds = %bb.bz
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 80
  invoke void @_ZN6duckdb11SegmentTreeINS_13ColumnSegmentELb0EE13AppendSegmentENS_10shared_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.gy, ptr noundef nonnull %13)
          to label %bb.ca unwind label %bb.ck

bb.ca:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EEC2IS1_St14default_deleteIS1_ELb1ETnNSt9enable_ifIXaasr17compatible_with_tIT_S1_EE5valuesr3std14is_convertibleINS_10unique_ptrIS7_T0_Lb1EE7pointerEPS1_EE5valueEiE4typeELi0EEEONS8_IS7_S9_XT1_EEE.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !269 ; 8 uses
  %.not.i.i.i90 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i90, label %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.hb, align 8, !tbaa !271
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !272
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !213
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #37, !inline_history !22
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !213
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #37, !inline_history !22
  br label %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i91 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i.i91, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i = phi i32 [ %i.he, %bb.ce ], [ %i.ho, %bb.cf ]
  %i.hp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.hp, label %bb.cg, label %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit, !prof !274

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #37
  br label %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.cg
  %i.hq = load ptr, ptr %i.fq, align 8, !tbaa !617 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !618
  %.not.i.i92 = icmp eq ptr %i.hq, %i.hs
  br i1 %.not.i.i92, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit
  call void @_ZN6duckdb11DataPointerC1EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.hq, ptr noundef nonnull align 8 dereferenceable(176) %10) #37
  %i.ht = load ptr, ptr %i.fq, align 8, !tbaa !617
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 176
  store ptr %i.hu, ptr %i.fq, align 8, !tbaa !617
  br label %_ZNSt6vectorIN6duckdb11DataPointerESaIS1_EE9push_backEOS1_.exit

bb.ci:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit
  invoke void @_ZNSt6vectorIN6duckdb11DataPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr %i.hq, ptr noundef nonnull align 8 dereferenceable(176) %10)
          to label %_ZNSt6vectorIN6duckdb11DataPointerESaIS1_EE9push_backEOS1_.exit unwind label %bb.bw

_ZNSt6vectorIN6duckdb11DataPointerESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ch, %bb.ci
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !616 ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i94, label %_ZN6duckdb11DataPointerD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb11DataPointerESaIS1_EE9push_backEOS1_.exit
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !213
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.hw) #37, !inline_history !23
  br label %_ZN6duckdb11DataPointerD2Ev.exit

_ZN6duckdb11DataPointerD2Ev.exit:                 ; preds = %_ZNSt6vectorIN6duckdb11DataPointerESaIS1_EE9push_backEOS1_.exit, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.ia) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %.not.i.i96 = icmp eq ptr %.sroa.0108.1, null
  %or.cond = or i1 %.not138, %.not.i.i96
  br i1 %or.cond, label %_ZNSt11unique_lockISt5mutexED2Ev.exit97, label %bb.cj

bb.cj:                                            ; preds = %_ZN6duckdb11DataPointerD2Ev.exit
  %i.ib = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0108.1) #37 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit97

_ZNSt11unique_lockISt5mutexED2Ev.exit97:          ; preds = %bb.cj, %_ZN6duckdb11DataPointerD2Ev.exit, %bb.g
  ret void

bb.ck:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EEC2IS1_St14default_deleteIS1_ELb1ETnNSt9enable_ifIXaasr17compatible_with_tIT_S1_EE5valuesr3std14is_convertibleINS_10unique_ptrIS7_T0_Lb1EE7pointerEPS1_EE5valueEiE4typeELi0EEEONS8_IS7_S9_XT1_EEE.exit
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #37
  br label %bb.cl

bb.cl:                                            ; preds = %bb.bw, %bb.bx, %bb.ck
  %.pn59.pn = phi { ptr, i32 } [ %i.gt, %bb.bx ], [ %i.gs, %bb.bw ], [ %i.ic, %bb.ck ]
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !616 ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i98, label %_ZN6duckdb11DataPointerD2Ev.exit100, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i99

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i99: ; preds = %bb.cl
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !213
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ie) #37, !inline_history !23
  br label %_ZN6duckdb11DataPointerD2Ev.exit100

_ZN6duckdb11DataPointerD2Ev.exit100:              ; preds = %bb.cl, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i99
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.ii) #37
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN6duckdb11DataPointerD2Ev.exit100, %bb.bq, %bb.bp
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %_ZN6duckdb11DataPointerD2Ev.exit100 ], [ %i.fz, %bb.bq ], [ %i.fy, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ah, %bb.cm
  %.sroa.0108.2 = phi ptr [ %.sroa.0108.1, %bb.cm ], [ %.sroa.0108.0, %bb.ah ] ; 2 uses
  %.sroa.9.2 = phi i1 [ %.sroa.9.1, %bb.cm ], [ %.sroa.9.0, %bb.ah ]
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %bb.cm ], [ %i.cx, %bb.ah ] ; 2 uses
  %.not.i.i102 = icmp ne ptr %.sroa.0108.2, null
  %or.cond140.not = and i1 %.not.i.i102, %.sroa.9.2
  br i1 %or.cond140.not, label %bb.co, label %_ZNSt11unique_lockISt5mutexED2Ev.exit103

bb.co:                                            ; preds = %bb.cn, %.thread132
  %.sroa.0108.2125137 = phi ptr [ %i.bn, %.thread132 ], [ %.sroa.0108.2, %bb.cn ]
  %.pn59.pn.pn.pn127136 = phi { ptr, i32 } [ %.pn52.pn, %.thread132 ], [ %.pn59.pn.pn.pn, %bb.cn ]
  %i.ij = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0108.2125137) #37 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit103

_ZNSt11unique_lockISt5mutexED2Ev.exit103:         ; preds = %bb.co, %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn64.pn = phi { ptr, i32 } [ %.pn64118, %bb.f ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn59.pn.pn.pn, %bb.cn ], [ %.pn59.pn.pn.pn127136, %bb.co ]
  resume { ptr, i32 } %.pn64.pn

bb.cp:                                            ; preds = %bb.d
  unreachable
}

declare noundef nonnull align 8 dereferenceable(144) ptr @_ZNK6duckdb19PartialBlockManager15GetBlockManagerEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !353    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !274

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.157, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !327    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !274

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.157, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb14BaseStatistics5MergeERKS0_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK6duckdb14BaseStatistics10IsConstantEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare ptr @_ZNK6duckdb19PartialBlockManager16GetClientContextEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 1 ptr @_ZNK6duckdb10ColumnData11GetDatabaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !488, !nonnull !248, !align !295
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !513, !nonnull !248, !align !295
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !590, !nonnull !248, !align !295
  ret ptr %i.e
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1) local_unnamed_addr #3

declare void @_ZN6duckdb19PartialBlockManager18GetBlockAllocationEj(ptr dead_on_unwind writable sret(%"struct.duckdb::PartialBlockAllocation") align 8, ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_12PartialBlockESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !592    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12PartialBlockESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !274

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.157, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZNK6duckdb10unique_ptrINS_24GeoColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv:bb.a
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_24GeoColumnCheckpointStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb8Geometry22GetSpatialGeometryTypeEv(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8) local_unnamed_addr #3

declare void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN6duckdb9DataChunk6VerifyEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13GeoColumnData10SpecializeERNS_6VectorES2_mNS_19GeometryStorageTypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6duckdb8Geometry18ToVectorizedFormatERNS_6VectorES2_mNS_19GeometryStorageTypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i8 noundef zeroext %3)
  ret void
}

declare void @_ZN6duckdb13GeometryStats13CreateUnknownENS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::BaseStatistics") align 8, ptr noundef) local_unnamed_addr #3

declare void @_ZN6duckdb14BaseStatistics8CopyBaseERKS0_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17ColumnAppendStateD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !981  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb22CompressionAppendStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb22CompressionAppendStateEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #37, !inline_history !50
  br label %_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb22CompressionAppendStateEEclEPS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !844  ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZN6duckdb14StorageLockKeyD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.g) #37
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #39
  br label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1241
  invoke void @_ZSt8_DestroyIPN6duckdb17ColumnAppendStateEEvT_S3_(ptr noundef %i.i, ptr noundef %i.k)
          to label %_ZNSt6vectorIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit unwind label %bb.b, !inline_history !2846

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #41, !inline_history !2846
  unreachable

_ZNSt6vectorIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !1240 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #39
  br label %_ZNSt12_Vector_baseIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(256) ptr @_ZNK6duckdb8RowGroup12GetTableInfoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(218) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1244
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = tail call noundef nonnull align 8 dereferenceable(256) ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb8Settings3GetINS_28GeometryMinimumShreddingSizeENS_8DBConfigEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEElEE5valueElE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(1360) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  %i.a = invoke noundef zeroext i1 @_ZN6duckdb8Settings21TryGetSettingInternalERKNS_8DBConfigEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1360) %0, i64 noundef 51, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not = xor i1 %i.a, true
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !315
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.d
  br i1 %or.cond, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef i64 @_ZN6duckdb11BigIntValue3GetERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.i unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.204, i64 5, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.i, align 8, !tbaa !288
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.j, align 1, !tbaa !273
  %i.k = invoke noundef i64 @_ZN6duckdb10StringUtil8ToSignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.l = load ptr, ptr %3, align 8, !tbaa !227    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.l) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %3, align 8, !tbaa !227    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.o) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.06 = phi i64 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %bb.d ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret i64 %.06

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.g, %bb.f ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.f, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig3GetERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #3

declare noundef nonnull align 1 dereferenceable(4) ptr @_ZN6duckdb13GeometryStats8GetTypesERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZN6duckdb13GeometryStats8GetFlagsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb15GeometryTypeSet16TryGetSingleTypeERNS_12GeometryTypeERNS_10VertexTypeE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat align 2 {
.preheader:
  %i.a = load i8, ptr %0, align 1, !tbaa !273     ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 6 uses
  %3 = and i32 %i.b, 2
  %.not.not = icmp eq i32 %3, 0
  %i.c = and i32 %i.b, 4                          ; 2 uses
  %.not.1 = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %.not.not, label %bb.a, label %.thread

bb.a:                                             ; preds = %.preheader
  %spec.select = select i1 %.not.1, i8 0, i8 2
  %.lobit = lshr exact i32 %i.c, 2
  %spec.select84 = trunc nuw nsw i32 %.lobit to i8
  br label %bb.b

.thread:                                          ; preds = %.preheader
  br i1 %.not.1, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a, %.thread
  %.229.1 = phi i8 [ %spec.select, %bb.a ], [ 1, %.thread ]
  %.2.1 = phi i8 [ %spec.select84, %bb.a ], [ 1, %.thread ] ; 2 uses
  %i.d = and i32 %i.b, 8
  %.not.2 = icmp eq i32 %i.d, 0
  br i1 %.not.2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw i8 %.2.1 to i1
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.229.2 = phi i8 [ %.229.1, %bb.b ], [ 3, %bb.c ]
  %.2.2 = phi i8 [ %.2.1, %bb.b ], [ 1, %bb.c ]   ; 2 uses
  %i.f = and i32 %i.b, 16
  %.not.3 = icmp eq i32 %i.f, 0
  br i1 %.not.3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = trunc nuw i8 %.2.2 to i1
  br i1 %i.g, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.229.3 = phi i8 [ %.229.2, %bb.d ], [ 4, %bb.e ]
  %.2.3 = phi i8 [ %.2.2, %bb.d ], [ 1, %bb.e ]   ; 2 uses
  %i.h = and i32 %i.b, 32
  %.not.4 = icmp eq i32 %i.h, 0
  br i1 %.not.4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = trunc nuw i8 %.2.3 to i1
  br i1 %i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.229.4 = phi i8 [ %.229.3, %bb.f ], [ 5, %bb.g ]
  %.2.4 = phi i8 [ %.2.3, %bb.f ], [ 1, %bb.g ]   ; 2 uses
  %i.j = and i32 %i.b, 64
  %.not.5 = icmp eq i32 %i.j, 0
  br i1 %.not.5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = trunc nuw i8 %.2.4 to i1
  br i1 %i.k, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.229.5 = phi i8 [ %.229.4, %bb.h ], [ 6, %bb.i ]
  %.2.5 = phi i8 [ %.2.4, %bb.h ], [ 1, %bb.i ]   ; 2 uses
  %.not.6 = icmp sgt i8 %i.a, -1
  br i1 %.not.6, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = trunc nuw i8 %.2.5 to i1
  br i1 %i.l, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.j
  %.229.6 = phi i8 [ %.229.5, %bb.j ], [ 7, %bb.k ]
  %.2.6 = phi i8 [ %.2.5, %bb.j ], [ 1, %bb.k ]   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !273   ; 2 uses
  %i.o = zext i8 %i.n to i32                      ; 6 uses
  %i.p = and i32 %i.o, 2
  %.not.164 = icmp eq i32 %i.p, 0
  br i1 %.not.164, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.q = trunc nuw i8 %.2.6 to i1
  br i1 %i.q, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.229.165 = phi i8 [ %.229.6, %.critedge ], [ 1, %bb.l ]
  %.225.166 = phi i8 [ 0, %.critedge ], [ 1, %bb.l ]
  %.2.167 = phi i8 [ %.2.6, %.critedge ], [ 1, %bb.l ] ; 2 uses
  %i.r = and i32 %i.o, 4
  %.not.1.1 = icmp eq i32 %i.r, 0
  br i1 %.not.1.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = trunc nuw i8 %.2.167 to i1
  br i1 %i.s, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.229.1.1 = phi i8 [ %.229.165, %bb.m ], [ 2, %bb.n ]
  %.225.1.1 = phi i8 [ %.225.166, %bb.m ], [ 1, %bb.n ]
  %.2.1.1 = phi i8 [ %.2.167, %bb.m ], [ 1, %bb.n ] ; 2 uses
  %i.t = and i32 %i.o, 8
  %.not.2.1 = icmp eq i32 %i.t, 0
  br i1 %.not.2.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = trunc nuw i8 %.2.1.1 to i1
  br i1 %i.u, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.229.2.1 = phi i8 [ %.229.1.1, %bb.o ], [ 3, %bb.p ]
  %.225.2.1 = phi i8 [ %.225.1.1, %bb.o ], [ 1, %bb.p ]
  %.2.2.1 = phi i8 [ %.2.1.1, %bb.o ], [ 1, %bb.p ] ; 2 uses
  %i.v = and i32 %i.o, 16
  %.not.3.1 = icmp eq i32 %i.v, 0
  br i1 %.not.3.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = trunc nuw i8 %.2.2.1 to i1
  br i1 %i.w, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.229.3.1 = phi i8 [ %.229.2.1, %bb.q ], [ 4, %bb.r ]
  %.225.3.1 = phi i8 [ %.225.2.1, %bb.q ], [ 1, %bb.r ]
  %.2.3.1 = phi i8 [ %.2.2.1, %bb.q ], [ 1, %bb.r ] ; 2 uses
  %i.x = and i32 %i.o, 32
  %.not.4.1 = icmp eq i32 %i.x, 0
  br i1 %.not.4.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.y = trunc nuw i8 %.2.3.1 to i1
  br i1 %i.y, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.229.4.1 = phi i8 [ %.229.3.1, %bb.s ], [ 5, %bb.t ]
  %.225.4.1 = phi i8 [ %.225.3.1, %bb.s ], [ 1, %bb.t ]
  %.2.4.1 = phi i8 [ %.2.3.1, %bb.s ], [ 1, %bb.t ] ; 2 uses
  %i.z = and i32 %i.o, 64
  %.not.5.1 = icmp eq i32 %i.z, 0
  br i1 %.not.5.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aa = trunc nuw i8 %.2.4.1 to i1
  br i1 %i.aa, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.229.5.1 = phi i8 [ %.229.4.1, %bb.u ], [ 6, %bb.v ]
  %.225.5.1 = phi i8 [ %.225.4.1, %bb.u ], [ 1, %bb.v ]
  %.2.5.1 = phi i8 [ %.2.4.1, %bb.u ], [ 1, %bb.v ] ; 2 uses
  %.not.6.1 = icmp sgt i8 %i.n, -1
  br i1 %.not.6.1, label %.critedge.1, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ab = trunc nuw i8 %.2.5.1 to i1
  br i1 %i.ab, label %.loopexit, label %.critedge.1

.critedge.1:                                      ; preds = %bb.x, %bb.w
  %.229.6.1 = phi i8 [ %.229.5.1, %bb.w ], [ 7, %bb.x ]
  %.225.6.1 = phi i8 [ %.225.5.1, %bb.w ], [ 1, %bb.x ]
  %.2.6.1 = phi i8 [ %.2.5.1, %bb.w ], [ 1, %bb.x ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !273 ; 2 uses
  %i.ae = zext i8 %i.ad to i32                    ; 6 uses
  %i.af = and i32 %i.ae, 2
  %.not.268 = icmp eq i32 %i.af, 0
  br i1 %.not.268, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge.1
  %i.ag = trunc nuw i8 %.2.6.1 to i1
  br i1 %i.ag, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %.critedge.1
  %.229.269 = phi i8 [ %.229.6.1, %.critedge.1 ], [ 1, %bb.y ]
  %.225.270 = phi i8 [ %.225.6.1, %.critedge.1 ], [ 2, %bb.y ]
  %.2.271 = phi i8 [ %.2.6.1, %.critedge.1 ], [ 1, %bb.y ] ; 2 uses
  %i.ah = and i32 %i.ae, 4
  %.not.1.2 = icmp eq i32 %i.ah, 0
  br i1 %.not.1.2, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ai = trunc nuw i8 %.2.271 to i1
  br i1 %i.ai, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.229.1.2 = phi i8 [ %.229.269, %bb.z ], [ 2, %bb.aa ]
  %.225.1.2 = phi i8 [ %.225.270, %bb.z ], [ 2, %bb.aa ]
  %.2.1.2 = phi i8 [ %.2.271, %bb.z ], [ 1, %bb.aa ] ; 2 uses
  %i.aj = and i32 %i.ae, 8
  %.not.2.2 = icmp eq i32 %i.aj, 0
  br i1 %.not.2.2, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ak = trunc nuw i8 %.2.1.2 to i1
  br i1 %i.ak, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.229.2.2 = phi i8 [ %.229.1.2, %bb.ab ], [ 3, %bb.ac ]
  %.225.2.2 = phi i8 [ %.225.1.2, %bb.ab ], [ 2, %bb.ac ]
  %.2.2.2 = phi i8 [ %.2.1.2, %bb.ab ], [ 1, %bb.ac ] ; 2 uses
  %i.al = and i32 %i.ae, 16
  %.not.3.2 = icmp eq i32 %i.al, 0
  br i1 %.not.3.2, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.am = trunc nuw i8 %.2.2.2 to i1
  br i1 %i.am, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.229.3.2 = phi i8 [ %.229.2.2, %bb.ad ], [ 4, %bb.ae ]
  %.225.3.2 = phi i8 [ %.225.2.2, %bb.ad ], [ 2, %bb.ae ]
  %.2.3.2 = phi i8 [ %.2.2.2, %bb.ad ], [ 1, %bb.ae ] ; 2 uses
  %i.an = and i32 %i.ae, 32
  %.not.4.2 = icmp eq i32 %i.an, 0
  br i1 %.not.4.2, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ao = trunc nuw i8 %.2.3.2 to i1
  br i1 %i.ao, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.229.4.2 = phi i8 [ %.229.3.2, %bb.af ], [ 5, %bb.ag ]
  %.225.4.2 = phi i8 [ %.225.3.2, %bb.af ], [ 2, %bb.ag ]
  %.2.4.2 = phi i8 [ %.2.3.2, %bb.af ], [ 1, %bb.ag ] ; 2 uses
  %i.ap = and i32 %i.ae, 64
  %.not.5.2 = icmp eq i32 %i.ap, 0
  br i1 %.not.5.2, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.aq = trunc nuw i8 %.2.4.2 to i1
  br i1 %i.aq, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.229.5.2 = phi i8 [ %.229.4.2, %bb.ah ], [ 6, %bb.ai ]
  %.225.5.2 = phi i8 [ %.225.4.2, %bb.ah ], [ 2, %bb.ai ]
  %.2.5.2 = phi i8 [ %.2.4.2, %bb.ah ], [ 1, %bb.ai ] ; 2 uses
  %.not.6.2 = icmp sgt i8 %i.ad, -1
  br i1 %.not.6.2, label %.critedge.2, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ar = trunc nuw i8 %.2.5.2 to i1
  br i1 %i.ar, label %.loopexit, label %.critedge.2

.critedge.2:                                      ; preds = %bb.ak, %bb.aj
  %.229.6.2 = phi i8 [ %.229.5.2, %bb.aj ], [ 7, %bb.ak ]
  %.225.6.2 = phi i8 [ %.225.5.2, %bb.aj ], [ 2, %bb.ak ]
  %.2.6.2 = phi i8 [ %.2.5.2, %bb.aj ], [ 1, %bb.ak ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !273 ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 6 uses
  %i.av = and i32 %i.au, 2
  %.not.372 = icmp eq i32 %i.av, 0
  br i1 %.not.372, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.2
  %i.aw = trunc nuw i8 %.2.6.2 to i1
  br i1 %i.aw, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al, %.critedge.2
  %.229.373 = phi i8 [ %.229.6.2, %.critedge.2 ], [ 1, %bb.al ]
  %.225.374 = phi i8 [ %.225.6.2, %.critedge.2 ], [ 3, %bb.al ]
  %.2.375 = phi i8 [ %.2.6.2, %.critedge.2 ], [ 1, %bb.al ] ; 2 uses
  %i.ax = and i32 %i.au, 4
  %.not.1.3 = icmp eq i32 %i.ax, 0
  br i1 %.not.1.3, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ay = trunc nuw i8 %.2.375 to i1
  br i1 %i.ay, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.229.1.3 = phi i8 [ %.229.373, %bb.am ], [ 2, %bb.an ]
  %.225.1.3 = phi i8 [ %.225.374, %bb.am ], [ 3, %bb.an ]
  %.2.1.3 = phi i8 [ %.2.375, %bb.am ], [ 1, %bb.an ] ; 2 uses
  %i.az = and i32 %i.au, 8
  %.not.2.3 = icmp eq i32 %i.az, 0
  br i1 %.not.2.3, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ba = trunc nuw i8 %.2.1.3 to i1
  br i1 %i.ba, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.229.2.3 = phi i8 [ %.229.1.3, %bb.ao ], [ 3, %bb.ap ]
  %.225.2.3 = phi i8 [ %.225.1.3, %bb.ao ], [ 3, %bb.ap ]
  %.2.2.3 = phi i8 [ %.2.1.3, %bb.ao ], [ 1, %bb.ap ] ; 2 uses
  %i.bb = and i32 %i.au, 16
  %.not.3.3 = icmp eq i32 %i.bb, 0
  br i1 %.not.3.3, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bc = trunc nuw i8 %.2.2.3 to i1
  br i1 %i.bc, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.229.3.3 = phi i8 [ %.229.2.3, %bb.aq ], [ 4, %bb.ar ]
  %.225.3.3 = phi i8 [ %.225.2.3, %bb.aq ], [ 3, %bb.ar ]
  %.2.3.3 = phi i8 [ %.2.2.3, %bb.aq ], [ 1, %bb.ar ] ; 2 uses
  %i.bd = and i32 %i.au, 32
  %.not.4.3 = icmp eq i32 %i.bd, 0
  br i1 %.not.4.3, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.be = trunc nuw i8 %.2.3.3 to i1
  br i1 %i.be, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.229.4.3 = phi i8 [ %.229.3.3, %bb.as ], [ 5, %bb.at ]
  %.225.4.3 = phi i8 [ %.225.3.3, %bb.as ], [ 3, %bb.at ]
  %.2.4.3 = phi i8 [ %.2.3.3, %bb.as ], [ 1, %bb.at ] ; 2 uses
  %i.bf = and i32 %i.au, 64
  %.not.5.3 = icmp eq i32 %i.bf, 0
  br i1 %.not.5.3, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bg = trunc nuw i8 %.2.4.3 to i1
  br i1 %i.bg, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.229.5.3 = phi i8 [ %.229.4.3, %bb.au ], [ 6, %bb.av ]
  %.225.5.3 = phi i8 [ %.225.4.3, %bb.au ], [ 3, %bb.av ]
  %.2.5.3 = phi i8 [ %.2.4.3, %bb.au ], [ 1, %bb.av ]
  %.not.6.3 = icmp sgt i8 %i.at, -1
  %i.bh = trunc nuw i8 %.2.5.3 to i1              ; 2 uses
  br i1 %.not.6.3, label %.critedge.3, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.bh, label %.loopexit, label %.thread42

.critedge.3:                                      ; preds = %bb.aw
  br i1 %i.bh, label %.thread42, label %.loopexit

.thread42:                                        ; preds = %bb.ax, %.critedge.3
  %.225.6.380 = phi i8 [ %.225.5.3, %.critedge.3 ], [ 3, %bb.ax ]
  %.229.6.379 = phi i8 [ %.229.5.3, %.critedge.3 ], [ 7, %bb.ax ]
  store i8 %.229.6.379, ptr %1, align 1, !tbaa !1246
  store i8 %.225.6.380, ptr %2, align 1, !tbaa !1248
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.ax, %.critedge.3, %.thread42
  %.334 = phi i1 [ false, %.critedge.3 ], [ true, %.thread42 ], [ false, %bb.c ], [ false, %bb.ax ], [ false, %bb.av ], [ false, %bb.at ], [ false, %bb.ar ], [ false, %bb.ap ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ], [ false, %.thread ]
  ret i1 %.334
}

declare void @_ZN6duckdb8Geometry17GetVectorizedTypeENS_12GeometryTypeENS_10VertexTypeE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13GeoColumnData14InterpretStatsERNS_14BaseStatisticsES2_NS_12GeometryTypeENS_10VertexTypeE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %15 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @_ZN6duckdb14BaseStatistics8CopyBaseERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %0)
  switch i8 %2, label %bb.g [
    i8 1, label %_ZN6duckdbL14GetVertexStatsERNS_14BaseStatisticsENS_12GeometryTypeE.exit
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.e
    i8 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %_ZN6duckdbL14GetVertexStatsERNS_14BaseStatisticsENS_12GeometryTypeE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.c)
  br label %_ZN6duckdbL14GetVertexStatsERNS_14BaseStatisticsENS_12GeometryTypeE.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %_ZN6duckdbL14GetVertexStatsERNS_14BaseStatisticsENS_12GeometryTypeE.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.g = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.f)
  br label %_ZN6duckdbL14GetVertexStatsERNS_14BaseStatisticsENS_12GeometryTypeE.exit

bb.f:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.i = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.i)
  br label %_ZN6duckdbL14GetVertexStatsERNS_14BaseStatisticsENS_12GeometryTypeE.exit

bb.g:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.172, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.l = zext i8 %2 to i32
  store i32 %i.l, ptr %i.a, align 4, !tbaa !206
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJiEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.l unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.o = load ptr, ptr %16, align 8, !tbaa !227   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.o) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br i1 %.0.i, label %bb.k, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br i1 %.0.i, label %bb.k, label %common.resume

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn27.i = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #37
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.k, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %bb.aa ], [ %i.u, %bb.m ], [ %i.w, %bb.n ], [ %i.aa, %bb.o ], [ %i.ad, %bb.p ], [ %i.ah, %bb.r ], [ %i.ak, %bb.s ], [ %i.an, %bb.u ], [ %i.aq, %bb.v ], [ %i.at, %bb.x ], [ %i.aw, %bb.y ], [ %i.ba, %bb.z ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn27.i, %bb.k ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.i
  unreachable

_ZN6duckdbL14GetVertexStatsERNS_14BaseStatisticsENS_12GeometryTypeE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i = phi ptr [ %i.j, %bb.f ], [ %i.g, %bb.e ], [ %i.e, %bb.d ], [ %i.d, %bb.c ], [ %i.b, %bb.b ], [ %0, %bb.a ]
  %i.r = tail call noundef ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %.sink.i) ; 7 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb13GeometryStats9GetExtentERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %1) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %15, ptr noundef nonnull align 8 dereferenceable(128) %i.r)
  %i.t = invoke noundef double @_ZNK6duckdb5Value14GetValueUnsafeIdEET_v(ptr noundef nonnull align 8 dereferenceable(64) %15)
          to label %_ZN6duckdb12NumericStats6GetMinIdEET_RKNS_14BaseStatisticsE.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZN6duckdbL14GetVertexStatsERNS_14BaseStatisticsENS_12GeometryTypeE.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %common.resume

_ZN6duckdb12NumericStats6GetMinIdEET_RKNS_14BaseStatisticsE.exit: ; preds = %_ZN6duckdbL14GetVertexStatsERNS_14BaseStatisticsENS_12GeometryTypeE.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  store double %i.t, ptr %i.s, align 8, !tbaa !2848
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  call void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %14, ptr noundef nonnull align 8 dereferenceable(128) %i.r)
  %i.v = invoke noundef double @_ZNK6duckdb5Value14GetValueUnsafeIdEET_v(ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %_ZN6duckdb12NumericStats6GetMaxIdEET_RKNS_14BaseStatisticsE.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb12NumericStats6GetMinIdEET_RKNS_14BaseStatisticsE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %common.resume

_ZN6duckdb12NumericStats6GetMaxIdEET_RKNS_14BaseStatisticsE.exit: ; preds = %_ZN6duckdb12NumericStats6GetMinIdEET_RKNS_14BaseStatisticsE.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store double %i.v, ptr %i.x, align 8, !tbaa !2849
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %i.y)
  %i.z = invoke noundef double @_ZNK6duckdb5Value14GetValueUnsafeIdEET_v(ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %_ZN6duckdb12NumericStats6GetMinIdEET_RKNS_14BaseStatisticsE.exit38 unwind label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb12NumericStats6GetMaxIdEET_RKNS_14BaseStatisticsE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %common.resume

_ZN6duckdb12NumericStats6GetMinIdEET_RKNS_14BaseStatisticsE.exit38: ; preds = %_ZN6duckdb12NumericStats6GetMaxIdEET_RKNS_14BaseStatisticsE.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double %i.z, ptr %i.ab, align 8, !tbaa !2850
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %i.y)
  %i.ac = invoke noundef double @_ZNK6duckdb5Value14GetValueUnsafeIdEET_v(ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %_ZN6duckdb12NumericStats6GetMaxIdEET_RKNS_14BaseStatisticsE.exit39 unwind label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb12NumericStats6GetMinIdEET_RKNS_14BaseStatisticsE.exit38
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %common.resume

_ZN6duckdb12NumericStats6GetMaxIdEET_RKNS_14BaseStatisticsE.exit39: ; preds = %_ZN6duckdb12NumericStats6GetMinIdEET_RKNS_14BaseStatisticsE.exit38
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store double %i.ac, ptr %i.ae, align 8, !tbaa !2851
  switch i8 %3, label %bb.ab [
    i8 1, label %bb.q
    i8 2, label %bb.t
    i8 3, label %bb.w
  ]

bb.q:                                             ; preds = %_ZN6duckdb12NumericStats6GetMaxIdEET_RKNS_14BaseStatisticsE.exit39
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.af)
  %i.ag = invoke noundef double @_ZNK6duckdb5Value14GetValueUnsafeIdEET_v(ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %_ZN6duckdb12NumericStats6GetMinIdEET_RKNS_14BaseStatisticsE.exit40 unwind label %bb.r

end_hunk_1
