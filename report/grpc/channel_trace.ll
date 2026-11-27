Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/channel_trace?download=true
inline.NumInlined: 1376
inline.NumDeleted: 800
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9grpc_core8channelz12ChannelTrace11AppendEntryENS1_8EntryRefESt10unique_ptrINS0_6detail8RendererESt14default_deleteIS5_EE:bb.a
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN9grpc_core8channelz6detail8RendererESt14default_deleteIS3_EED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !88
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE13shrink_to_fitEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #21 ; 0 uses
  br label %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE13shrink_to_fitEv.exit

_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE13shrink_to_fitEv.exit: ; preds = %bb.i, %bb.h
  %i.ae = invoke noundef i64 @_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE13shrink_to_fitEv.exit
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.m, align 4, !tbaa !85
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.j
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #22
  unreachable

_ZNSt10unique_ptrIN9grpc_core8channelz6detail8RendererESt14default_deleteIS3_EED2Ev.exit8: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIN9grpc_core8channelz6detail8RendererEEclEPS3_.exit.i7, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %_ZNKSt14default_deleteIN9grpc_core8channelz6detail8RendererEEclEPS3_.exit.i7 ], [ %i.s, %bb.g ], [ %lpad.loopexit.split-lp16, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit9 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core8channelz6detail8RendererESt14default_deleteIS3_EED2Ev.exit8
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #22
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit9:       ; preds = %_ZNSt10unique_ptrIN9grpc_core8channelz6detail8RendererESt14default_deleteIS3_EED2Ev.exit8
  resume { ptr, i32 } %.pn

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %.critedge, %bb.a
  %.sroa.03.0 = phi i32 [ 65535, %bb.a ], [ %i.h, %.critedge ]
  ret i32 %.sroa.03.0
}

; Function Attrs: uwtable
define i32 @_ZN9grpc_core8channelz12ChannelTrace8NewEntryENS1_8EntryRefESt10unique_ptrINS0_6detail8RendererESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 %1, ptr nofree noundef align 8 captures(none) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.028.0.extract.trunc = trunc i32 %1 to i16
  %.sroa.7.0.extract.shift = lshr i32 %1, 16
  %i.a = and i32 %1, 65535                        ; 3 uses
  %.not = icmp eq i32 %i.a, 65535                 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 5
  %.not39 = icmp ugt i64 %i.j, %i.b
  br i1 %.not39, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !89
  %i.n = zext i16 %i.m to i32
  %.not40 = icmp eq i32 %.sroa.7.0.extract.shift, %i.n
  br i1 %.not40, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !90   ; 3 uses
  %.not41 = icmp eq i16 %i.p, -1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = zext i16 %i.p to i64                     ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 22
  %i.v = load i16, ptr %i.u, align 2, !tbaa !91
  store i16 %i.v, ptr %i.o, align 8, !tbaa !90
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88   ; 4 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 5                 ; 2 uses
  %i.ad = trunc i64 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  %.not.i = icmp eq ptr %i.x, %i.af
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.w, align 8, !tbaa !88
  br label %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.x)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !88
  br label %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %bb.g, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.g ], [ %.pre, %bb.h ] ; 3 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !87
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !34  ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = and i64 %i.an, -32
  %i.ap = or disjoint i64 %i.ao, 24               ; 2 uses
  %.not10.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not10.i, label %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit, %_ZN9grpc_core13MemoryUsageOfINS_8channelz12ChannelTrace5EntryEEEmRKT_.exit.i
  %.012.i = phi i64 [ %i.ax, %_ZN9grpc_core13MemoryUsageOfINS_8channelz12ChannelTrace5EntryEEEmRKT_.exit.i ], [ %i.ap, %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit ]
  %.sroa.07.011.i = phi ptr [ %i.ay, %_ZN9grpc_core13MemoryUsageOfINS_8channelz12ChannelTrace5EntryEEEmRKT_.exit.i ], [ %i.ak, %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core13MemoryUsageOfINS_8channelz12ChannelTrace5EntryEEEmRKT_.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar), !inline_history !169
  %i.aw = add i64 %i.av, 32
  br label %_ZN9grpc_core13MemoryUsageOfINS_8channelz12ChannelTrace5EntryEEEmRKT_.exit.i

_ZN9grpc_core13MemoryUsageOfINS_8channelz12ChannelTrace5EntryEEEmRKT_.exit.i: ; preds = %bb.i, %.lr.ph.i
  %.0.i.i.i = phi i64 [ %i.aw, %bb.i ], [ 32, %.lr.ph.i ]
  %i.ax = add i64 %.0.i.i.i, %.012.i              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 32 ; 2 uses
  %.not.i43 = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i43, label %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit.loopexit, label %.lr.ph.i

_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit.loopexit: ; preds = %_ZN9grpc_core13MemoryUsageOfINS_8channelz12ChannelTrace5EntryEEEmRKT_.exit.i
  %.pre45.pre = load ptr, ptr %i.q, align 8, !tbaa !34
  br label %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit

_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit: ; preds = %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit.loopexit, %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %.pre45 = phi ptr [ %i.ak, %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit ], [ %.pre45.pre, %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit.loopexit ]
  %.0.lcssa.i = phi i64 [ %i.ap, %_ZNSt6vectorIN9grpc_core8channelz12ChannelTrace5EntryESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit ], [ %i.ax, %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit.loopexit ]
  %i.az = trunc i64 %.0.lcssa.i to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !85
  %.pre47 = and i64 %i.ac, 65535
  br label %bb.j

bb.j:                                             ; preds = %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit, %bb.e
  %.pre-phi = phi i64 [ %.pre47, %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit ], [ %i.r, %bb.e ]
  %i.bb = phi ptr [ %.pre45, %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit ], [ %i.s, %bb.e ]
  %.0 = phi i16 [ %i.ad, %_ZN9grpc_core13MemoryUsageOfISt6vectorINS_8channelz12ChannelTrace5EntryESaIS4_EEEEmRKT_.exit ], [ %i.p, %bb.e ] ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.pre-phi ; 8 uses
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i, label %_ZN9grpc_core9Timestamp3NowEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
  br label %_ZN9grpc_core9Timestamp3NowEv.exit

_ZN9grpc_core9Timestamp3NowEv.exit:               ; preds = %bb.j, %bb.k
  %i.be = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !173 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !84
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.bf), !inline_history !170
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  store i16 %.sroa.028.0.extract.trunc, ptr %i.bj, align 2, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 -1, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  store i32 -1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 22
  store i16 -1, ptr %i.bm, align 2, !tbaa !91
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 3 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !82
  store ptr null, ptr %2, align 8, !tbaa !82
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !82 ; 3 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !82
  %.not.i.i.i.i44 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i44, label %_ZNSt10unique_ptrIN9grpc_core8channelz6detail8RendererESt14default_deleteIS3_EEaSEOS6_.exit, label %_ZNKSt14default_deleteIN9grpc_core8channelz6detail8RendererEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core8channelz6detail8RendererEEclEPS3_.exit.i.i.i.i: ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !84
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #21, !inline_history !171
  br label %_ZNSt10unique_ptrIN9grpc_core8channelz6detail8RendererESt14default_deleteIS3_EEaSEOS6_.exit

_ZNSt10unique_ptrIN9grpc_core8channelz6detail8RendererESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit, %_ZNKSt14default_deleteIN9grpc_core8channelz6detail8RendererEEclEPS3_.exit.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !92 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  store i16 %i.bu, ptr %i.bv, align 4, !tbaa !93
  %i.bw = icmp eq i16 %i.bu, -1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core8channelz6detail8RendererESt14default_deleteIS3_EEaSEOS6_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 %.0, ptr %i.bx, align 2, !tbaa !86
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core8channelz6detail8RendererESt14default_deleteIS3_EEaSEOS6_.exit
  %i.by = zext i16 %i.bu to i64
  %i.bz = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 22
  store i16 %.0, ptr %i.cb, align 2, !tbaa !91
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i16 %.0, ptr %i.bt, align 4, !tbaa !92
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = zext nneg i32 %i.a to i64
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !34 ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 14 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !94 ; 3 uses
  store i16 %i.cg, ptr %i.bl, align 8, !tbaa !95
  %i.ch = icmp eq i16 %i.cg, -1
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i16 %.0, ptr %i.ci, align 4, !tbaa !96
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cj = zext i16 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 18
  store i16 %.0, ptr %i.cl, align 2, !tbaa !97
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i16 %.0, ptr %i.cf, align 2, !tbaa !94
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !82 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !84
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !85
  %i.ct = trunc i64 %i.cq to i32
  %i.cu = add i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !85
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !89
  %i.cx = zext i16 %i.cw to i32
  %i.cy = shl nuw i32 %i.cx, 16
  %i.cz = zext i16 %.0 to i32
  %i.da = or disjoint i32 %i.cy, %i.cz
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.b, %bb.s
  %.sroa.4.0 = phi i32 [ %i.da, %bb.s ], [ 65535, %bb.b ], [ 65535, %bb.c ]
  ret i32 %.sroa.4.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core8channelz12ChannelTrace11DropEntryIdEt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = zext i16 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.b ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !96   ; 2 uses
  %.not43 = icmp eq i16 %i.f, -1
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi i16 [ %i.h, %.lr.ph ], [ %i.f, %bb.a ]
  tail call void @_ZN9grpc_core8channelz12ChannelTrace11DropEntryIdEt(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext %i.g)
  %i.h = load i16, ptr %i.e, align 4, !tbaa !96   ; 2 uses
  %.not = icmp eq i16 %i.h, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !93   ; 3 uses
  %.not38 = icmp eq i16 %i.j, -1
  br i1 %.not38, label %._crit_edge._crit_edge, label %bb.b

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !91
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.k = zext i16 %i.j to i64
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.o = load i16, ptr %i.n, align 2, !tbaa !91   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  store i16 %i.o, ptr %i.p, align 2, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge._crit_edge, %bb.b
  %i.q = phi i16 [ %.pre, %._crit_edge._crit_edge ], [ %i.o, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %.not39 = icmp eq i16 %i.q, -1
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext i16 %i.q to i64
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store i16 %i.j, ptr %i.v, align 4, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !95   ; 3 uses
  %.not40 = icmp eq i16 %i.x, -1
  br i1 %.not40, label %._crit_edge44, label %bb.f

._crit_edge44:                                    ; preds = %bb.e
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %.pre46 = load i16, ptr %.phi.trans.insert45, align 2, !tbaa !97
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i16 %i.x to i64
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !97 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !97
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge44, %bb.f
  %i.ae = phi i16 [ %.pre46, %._crit_edge44 ], [ %i.ac, %bb.f ] ; 3 uses
  %.not41 = icmp eq i16 %i.ae, -1
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = zext i16 %i.ae to i64
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i16 %i.x, ptr %i.ai, align 8, !tbaa !95
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !43 ; 2 uses
  %.not42 = icmp eq i16 %i.ak, -1
  br i1 %.not42, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = zext i16 %i.ak to i64
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !96
  %i.aq = icmp eq i16 %i.ap, %1
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 %i.ae, ptr %i.ao, align 4, !tbaa !96
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_0
