Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/error_handler?download=true
inline.NumInlined: 1447
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN7rocksdb12ErrorHandler29RecoverFromRetryableBGIOErrorEv:bb.a
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !151
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(33) %i.az, i32 noundef 181, i64 noundef 1)
          to label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit unwind label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit102, !inline_history !159

_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit: ; preds = %.lr.ph.split.i.preheader, %bb.k
  %i.bd = load i8, ptr %3, align 8, !tbaa !91     ; 2 uses
  %i.be = icmp eq i8 %i.bd, 8
  br i1 %i.be, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit
  %i.bf = load i8, ptr %i.ae, align 2, !tbaa !145
  %i.bg = icmp ugt i8 %i.bf, 2
  br i1 %i.bg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 0, ptr %i.bh, align 1, !tbaa !87
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !156 ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i75, label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit96, label %.lr.ph22.split.i82.preheader

.lr.ph22.split.i82.preheader:                     ; preds = %bb.m
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !151
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 216
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(33) %i.bi, i32 noundef 56, i64 noundef %i.ax)
          to label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit96 unwind label %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit105, !inline_history !159

_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit96: ; preds = %.lr.ph22.split.i82.preheader, %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.loopexit.invoke

bb.n:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit67
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit185

_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit102: ; preds = %.lr.ph.split.i.preheader
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %.loopexit.invoke
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit105: ; preds = %.lr.ph22.split.i82.preheader
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.l
  %i.br = load i8, ptr %i.x, align 8, !tbaa !91
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load i8, ptr %i.af, align 2, !tbaa !145
  %i.bu = icmp ult i8 %i.bt, 3
  br i1 %i.bu, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bv = load i8, ptr %i.z, align 1, !tbaa !141, !range !34, !noundef !35
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !82, !nonnull !35, !align !83
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 576
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !238 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !151
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 152
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef i64 %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ce = add i64 %i.cd, %i.u
  %i.cf = invoke noundef zeroext i1 @_ZN7rocksdb19InstrumentedCondVar9TimedWaitEm(ptr noundef nonnull align 8 dereferenceable(76) %i.ag, i64 noundef %i.ce)
          to label %bb.u unwind label %bb.v       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i109, label %_ZN7rocksdb6StatusD2Ev.exit111, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i110

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i110: ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit111

_ZN7rocksdb6StatusD2Ev.exit111:                   ; preds = %bb.u, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %exitcond.not = icmp eq i64 %i.ax, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !239

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.p
  %i.ci = icmp eq i8 %i.bd, 0
  br i1 %i.ci, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %bb.y unwind label %_ZNSt12_Vector_baseISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit.i118 ; 5 uses

_ZNSt12_Vector_baseISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit.i118: ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.x
  store i64 %i.ax, ptr %i.cj, align 8
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  store i32 56, ptr %.sroa.5265.0..sroa_idx, align 8
  %i.cl = load ptr, ptr %i.ad, align 8, !tbaa !156 ; 3 uses
  %.not.i.i122 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i122, label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit143, label %.lr.ph.split.i123.preheader

.lr.ph22.i128:                                    ; preds = %.lr.ph.split.i123.preheader
  %i.cm = load ptr, ptr %i.ad, align 8, !tbaa !156 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit143, label %.lr.ph22.split.i129.preheader

.lr.ph.split.i123.preheader:                      ; preds = %bb.y
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !151
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 176
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(33) %i.cl, i32 noundef 182, i64 noundef 1)
          to label %.lr.ph22.i128 unwind label %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146.loopexit.split-lp, !inline_history !159

.lr.ph22.split.i129.preheader:                    ; preds = %.lr.ph22.i128
  %i.cr = load i64, ptr %i.cj, align 8, !tbaa !90
  %i.cs = load i32, ptr %.sroa.5265.0..sroa_idx, align 8, !tbaa !169
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !151
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 216
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(33) %i.cm, i32 noundef %i.cs, i64 noundef %i.cr)
          to label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit143 unwind label %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146.loopexit, !inline_history !159

_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit143: ; preds = %.lr.ph22.split.i129.preheader, %.lr.ph22.i128, %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 16) #20
  br label %.critedge

_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146.loopexit: ; preds = %.lr.ph22.split.i129.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146

_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146.loopexit.split-lp: ; preds = %.lr.ph.split.i123.preheader
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146

_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146: ; preds = %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146.loopexit.split-lp, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 16) #20
  br label %.body

.thread:                                          ; preds = %bb.r, %bb.q, %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 0, ptr %i.cx, align 1, !tbaa !87
  %i.cy = load ptr, ptr %i.ad, align 8, !tbaa !156 ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i155, label %.loopexit, label %.lr.ph22.split.i162.preheader

.lr.ph22.split.i162.preheader:                    ; preds = %.thread
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !151
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 216
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(33) %i.cy, i32 noundef 56, i64 noundef %i.ax)
          to label %.loopexit unwind label %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit179, !inline_history !159

.loopexit:                                        ; preds = %.lr.ph22.split.i162.preheader, %.thread
  %i.dc = load i8, ptr %i.x, align 8, !tbaa !91
  %i.dd = icmp eq i8 %i.dc, 0
  %i.de = select i1 %i.dd, ptr %3, ptr %i.x
  br label %.loopexit.invoke

.loopexit.invoke:                                 ; preds = %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit96, %.loopexit
  %i.df = phi ptr [ %i.cw, %.loopexit ], [ %i.bm, %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit96 ]
  %i.dg = phi ptr [ %i.de, %.loopexit ], [ %i.bm, %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit96 ]
  %.pn427 = load ptr, ptr %i.f, align 8, !tbaa !82, !nonnull !35, !align !83
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn427, i64 304
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !41
  invoke void @_ZN7rocksdb12EventHelpers24NotifyOnErrorRecoveryEndERKSt6vectorISt10shared_ptrINS_13EventListenerEESaIS4_EERKNS_6StatusESB_PNS_17InstrumentedMutexE(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef %i.di)
          to label %.critedge unwind label %bb.o

_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit179: ; preds = %.lr.ph22.split.i162.preheader
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146, %_ZNSt12_Vector_baseISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit.i118, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit179, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit105, %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit102, %bb.v, %bb.o
  %.pn47 = phi { ptr, i32 } [ %i.bp, %bb.o ], [ %i.ck, %_ZNSt12_Vector_baseISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit.i118 ], [ %lpad.phi, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit146 ], [ %i.dj, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit179 ], [ %i.ch, %bb.v ], [ %i.bo, %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit102 ], [ %i.bq, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit105 ] ; 2 uses
  %i.dk = load ptr, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %.not.i.i183 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i183, label %_ZN7rocksdb6StatusD2Ev.exit185, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i184

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i184: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.dk) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit185

_ZN7rocksdb6StatusD2Ev.exit185:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i184, %.body, %bb.n
  %.pn47.pn = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %.pn47, %.body ], [ %.pn47, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit228

._crit_edge.loopexit:                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit111
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !82
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.dl = phi ptr [ %i.g, %bb.e ], [ %.pre, %._crit_edge.loopexit ]
  %i.dm = phi i64 [ 0, %bb.e ], [ %i.ai, %._crit_edge.loopexit ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 0, ptr %i.dn, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr @.str.55, ptr %5, align 8, !tbaa !227
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 27, ptr %i.do, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr @.str, ptr %6, align 8, !tbaa !227
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.dp, align 8, !tbaa !229
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status7AbortedERKNS_5SliceES3_.exit unwind label %bb.ab

_ZN7rocksdb6Status7AbortedERKNS_5SliceES3_.exit:  ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 304
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !41
  invoke void @_ZN7rocksdb12EventHelpers24NotifyOnErrorRecoveryEndERKSt6vectorISt10shared_ptrINS_13EventListenerEESaIS4_EERKNS_6StatusESB_PNS_17InstrumentedMutexE(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ds)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZN7rocksdb6Status7AbortedERKNS_5SliceES3_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !144 ; 2 uses
  %.not.i.i187 = icmp eq ptr %i.du, null
  br i1 %.not.i.i187, label %_ZN7rocksdb6StatusD2Ev.exit189, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i188

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i188: ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.du) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit189

_ZN7rocksdb6StatusD2Ev.exit189:                   ; preds = %bb.z, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !156 ; 3 uses
  %.not.i.i195 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i195, label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit216, label %.lr.ph22.split.i202.preheader

.lr.ph22.split.i202.preheader:                    ; preds = %_ZN7rocksdb6StatusD2Ev.exit189
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !151
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 216
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(33) %i.dw, i32 noundef 56, i64 noundef %i.dm)
          to label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit216 unwind label %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit225, !inline_history !159

.critedge:                                        ; preds = %.loopexit.invoke, %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit143
  %i.ea = load ptr, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i217, label %_ZN7rocksdb6StatusD2Ev.exit219, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i218

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i218: ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit219

_ZN7rocksdb6StatusD2Ev.exit219:                   ; preds = %.critedge, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit216

_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit216: ; preds = %_ZN7rocksdb6StatusD2Ev.exit189, %.lr.ph22.split.i202.preheader, %_ZN7rocksdb6StatusD2Ev.exit61, %_ZN7rocksdb6StatusD2Ev.exit219, %_ZN7rocksdb6StatusD2Ev.exit
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit216
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #23
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit:      ; preds = %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit216
  ret void

bb.ab:                                            ; preds = %._crit_edge
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit222

bb.ac:                                            ; preds = %_ZN7rocksdb6Status7AbortedERKNS_5SliceES3_.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !144 ; 2 uses
  %.not.i.i220 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i220, label %_ZN7rocksdb6StatusD2Ev.exit222, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i221

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i221: ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit222

_ZN7rocksdb6StatusD2Ev.exit222:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i221, %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.ab ], [ %i.ee, %bb.ac ], [ %i.ee, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit228

_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit225: ; preds = %.lr.ph22.split.i202.preheader
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit228

_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit228: ; preds = %_ZN7rocksdb6StatusD2Ev.exit64, %_ZN7rocksdb6StatusD2Ev.exit185, %_ZN7rocksdb6StatusD2Ev.exit222, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit225, %_ZN7rocksdb6StatusD2Ev.exit58
  %.pn53.pn = phi { ptr, i32 } [ %i.p, %_ZN7rocksdb6StatusD2Ev.exit58 ], [ %i.au, %_ZN7rocksdb6StatusD2Ev.exit64 ], [ %.pn47.pn, %_ZN7rocksdb6StatusD2Ev.exit185 ], [ %i.eh, %_ZNSt6vectorISt5tupleIJN7rocksdb10HistogramsEmEESaIS3_EED2Ev.exit225 ], [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit222 ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit229 unwind label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit228
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #23
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit229:   ; preds = %_ZNSt6vectorIN7rocksdb7TickersESaIS1_EED2Ev.exit228
  resume { ptr, i32 } %.pn53.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN7rocksdb19InstrumentedCondVar9TimedWaitEm(ptr noundef nonnull align 8 dereferenceable(76), i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEESt4pairIKS6_NS3_8SeverityEESt10_Select1stISA_ESt4lessIS6_ESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  invoke void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEESt4pairIKS6_NS3_8SeverityEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEESt4pairIKS6_NS3_8SeverityEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  tail call void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEESt4pairIKS6_NS3_8SeverityEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !242

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEESt4pairIKS5_NS3_8SeverityEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  invoke void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEESt4pairIKS5_NS3_8SeverityEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEESt4pairIKS5_NS3_8SeverityEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  tail call void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEESt4pairIKS5_NS3_8SeverityEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !243

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonEbEESt4pairIKS3_NS1_6Status8SeverityEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  invoke void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonEbEESt4pairIKS3_NS1_6Status8SeverityEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonEbEESt4pairIKS3_NS1_6Status8SeverityEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  tail call void @_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonEbEESt4pairIKS3_NS1_6Status8SeverityEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !244

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) unnamed_addr #5

declare void @_ZN7rocksdb4port7CondVar9SignalAllEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !207  ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
end_hunk_0
