Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/wasifunc?download=true
inline.NumInlined: 4648
inline.NumDeleted: 1754
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8WasmEdge4Host14WasiPollOneoffILNS0_4WASI11TriggerTypeE0EE4bodyERKNS_7Runtime12CallingFrameEjjjj:bb.a

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIK21__wasi_subscription_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.l
  %.not150 = icmp eq i32 %5, 0
  br i1 %.not150, label %.thread176, label %bb.m

bb.m:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIK21__wasi_subscription_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ad, align 4, !tbaa !22
  br label %bb.aj

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v ; 2 uses
  %i.ah = zext i32 %4 to i64                      ; 2 uses
  %i.ai = shl nuw nsw i64 %i.w, 5
  %i.aj = add nuw nsw i64 %i.ai, %i.ah
  %i.ak = icmp ugt i64 %i.aj, %i.aa
  br i1 %i.ak, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread

.thread176:                                       ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIK21__wasi_subscription_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %i.al = zext i32 %4 to i64                      ; 2 uses
  %i.am = icmp samesign ult i64 %i.aa, %i.al
  br i1 %i.am, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread: ; preds = %.thread176, %bb.n
  %i.an = phi i64 [ %i.al, %.thread176 ], [ %i.ah, %bb.n ]
  %.sroa.0.0.i137179.a = phi ptr [ null, %.thread176 ], [ %i.ag, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  br label %bb.p

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.n
  %.not151 = icmp eq i32 %5, 0
  br i1 %.not151, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, label %bb.o

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge: ; preds = %.thread176, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.sroa.0.0.i137180184 = phi ptr [ %i.ag, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit ], [ null, %.thread176 ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.p

bb.o:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ar, align 4, !tbaa !22
  br label %bb.aj

bb.p:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread
  %.sroa.0.0.i137178 = phi ptr [ %.sroa.0.0.i137179.a, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ %.sroa.0.0.i137180184, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 5 uses
  %i.as = phi ptr [ %i.ap, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ %.pre, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 2 uses
  %.sroa.0.0.i68143 = phi ptr [ %i.aq, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ null, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 4 uses
  %i.at = zext i32 %6 to i64                      ; 2 uses
  %.not152 = icmp ule i64 %i.aa, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at ; 2 uses
  %i.av = icmp eq ptr %i.as, null
  %i.aw = select i1 %.not152, i1 true, i1 %i.av
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ax, align 4, !tbaa !22
  br label %bb.aj

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !277, !nonnull !86, !align !87
  call void @_ZN8WasmEdge4Host4WASI7Environ13acquirePollerEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.71") align 8 %7, ptr noundef nonnull align 8 dereferenceable(344) %i.az, ptr %.sroa.0.0.i68143, i64 %i.w) #23
  %i.ba = load i8, ptr %7, align 8, !tbaa !89, !range !90, !noundef !86
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.r
  %.not161 = icmp eq i32 %5, 0
  br i1 %.not161, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre164 = load i16, ptr %i.bc, align 8, !tbaa !92 ; 3 uses
  %xtraiter = and i64 %i.w, 1
  %i.bd = icmp eq i32 %5, 1
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.w, 4294967294
  br label %bb.s

_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod187 = trunc i32 %5 to i1
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i137178, i64 %indvars.iv.epil.init ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !96
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i68143, i64 %indvars.iv.epil.init ; 3 uses
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i16 %.pre164, ptr %i.bh, align 8, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !102
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  store i8 %i.bj, ptr %i.bk, align 2, !tbaa !103
  br label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread

_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread: ; preds = %.epil.preheader, %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa, %.preheader
  store i32 %5, ptr %i.au, align 4, !tbaa !104
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load i16, ptr %i.bl, align 8, !tbaa !92
  %i.bo = zext i16 %i.bn to i32
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aj

bb.s:                                             ; preds = %bb.s, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.s ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.s ]
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i137178, i64 %indvars.iv ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i68143, i64 %indvars.iv ; 3 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !100
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i16 %.pre164, ptr %i.bs, align 8, !tbaa !101
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !102
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  store i8 %i.bu, ptr %i.bv, align 2, !tbaa !103
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i137178, i64 %indvars.iv.next ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !96
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i68143, i64 %indvars.iv.next ; 3 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i16 %.pre164, ptr %i.bz, align 8, !tbaa !101
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !102
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 10
  store i8 %i.cb, ptr %i.cc, align 2, !tbaa !103
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa, label %bb.s, !llvm.loop !273

bb.t:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i137178, i64 %i.x
  %.not156 = icmp eq i32 %5, 0
  br i1 %.not156, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  br label %bb.w

._crit_edge160:                                   ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread, %bb.t
  call void @_ZN8WasmEdge4Host4WASI6Poller4waitEv(ptr noundef nonnull align 8 dereferenceable(216) %i.cd) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !108 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !109 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.not10.i = icmp eq ptr %i.cm, %i.cl
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge160, %bb.v
  %.012.i = phi i32 [ %.1.i73, %bb.v ], [ 0, %._crit_edge160 ] ; 3 uses
  %.sroa.07.011.i = phi ptr [ %i.cv, %bb.v ], [ %i.cm, %._crit_edge160 ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 32
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !111, !range !90, !noundef !86
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i
  %i.cr = zext i32 %.012.i to i64
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !114
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.011.i, i64 32, i1 false), !tbaa.struct !118
  %i.cu = add i32 %.012.i, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %.1.i73 = phi i32 [ %i.cu, %bb.u ], [ %.012.i, %.lr.ph.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 40 ; 2 uses
  %.not.i74 = icmp eq ptr %i.cv, %i.cl
  br i1 %.not.i74, label %.loopexit, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph159, %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread
  %.061157 = phi ptr [ %.sroa.0.0.i137178, %.lr.ph159 ], [ %i.ej, %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread ] ; 7 uses
  %i.cw = load i64, ptr %.061157, align 8, !tbaa !96 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.061157, i64 8
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !102 ; 5 uses
  %switch.i = icmp ugt i8 %i.cy, 2
  br i1 %switch.i, label %bb.x, label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %i.da = load ptr, ptr %i.cf, align 8, !tbaa !109 ; 4 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = sdiv exact i64 %i.dd, 40                ; 4 uses
  %i.df = load i64, ptr %i.ch, align 8, !tbaa !119
  %i.dg = icmp ult i64 %i.de, %i.df
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load ptr, ptr %i.ci, align 8, !tbaa !120
  %.not.i.i75 = icmp eq ptr %i.cz, %i.dh
  br i1 %.not.i.i75, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, i8 0, i64 40, i1 false)
  %i.di = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store ptr %i.dj, ptr %i.cg, align 8, !tbaa !108
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.dk = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.dk, label %bb.aa, label %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #26
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.de ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.de
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 230584300921369395)
  %i.do = select i1 %i.dm, i64 230584300921369395, i64 %i.dn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dp = mul nuw nsw i64 %i.do, 40
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #27
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc10.i:                                       ; preds = %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.dd ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dr, i8 0, i64 40, i1 false)
  %i.ds = icmp sgt i64 %i.dd, 0
  br i1 %i.ds, label %bb.ab, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i

bb.ab:                                            ; preds = %.noexc10.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i: ; preds = %bb.ab, %.noexc10.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %.not.i16.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i16.i.i.i, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #24
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i
  store ptr %i.dq, ptr %i.cf, align 8, !tbaa !109
  store ptr %i.dt, ptr %i.cg, align 8, !tbaa !108
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.du, ptr %i.ci, align 8, !tbaa !120
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.y
  %i.dv = phi ptr [ %i.dr, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.di, %bb.y ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i8 1, ptr %i.dw, align 8, !tbaa !111
  store i64 %i.cw, ptr %i.dv, align 8, !tbaa !100
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i16 28, ptr %i.dx, align 8, !tbaa !101
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 10
  store i8 %i.cy, ptr %i.dy, align 2, !tbaa !103
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.aa
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %lpad.loopexit.split-lp186, 0
  call void @__clang_call_terminate(ptr %i.dz) #25
  unreachable

_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit: ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.061157, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !22 ; 4 uses
  switch i8 %i.cy, label %default.unreachable [
    i8 0, label %bb.ad
    i8 1, label %bb.ag
    i8 2, label %bb.ah
  ]

bb.ad:                                            ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  %switch.i77 = icmp ugt i32 %i.eb, 3
  br i1 %switch.i77, label %.thread, label %bb.ae

.thread:                                          ; preds = %bb.ad
  call void @_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i64 noundef %i.cw, i16 noundef zeroext 28, i8 noundef zeroext %i.cy) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %.061157, i64 40
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !22 ; 2 uses
  %i.ee = icmp ugt i16 %i.ed, 1
  br i1 %i.ee, label %.thread146, label %bb.af

.thread146:                                       ; preds = %bb.ae
  call void @_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i64 noundef %i.cw, i16 noundef zeroext 28, i8 noundef zeroext %i.cy) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ef = getelementptr inbounds nuw i8, ptr %.061157, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %.061157, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !22
  call void @_ZN8WasmEdge4Host4WASI6Poller5clockE16__wasi_clockid_tmm22__wasi_subclockflags_tm(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i32 noundef %i.eb, i64 noundef %i.eg, i64 noundef %i.ei, i16 noundef zeroext %i.ed, i64 noundef %i.cw) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.ag:                                            ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  call void @_ZN8WasmEdge4Host4WASI8EVPoller4readEiNS1_11TriggerTypeEm(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i32 noundef %i.eb, i32 noundef 0, i64 noundef %i.cw) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.ah:                                            ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  call void @_ZN8WasmEdge4Host4WASI8EVPoller5writeEiNS1_11TriggerTypeEm(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i32 noundef %i.eb, i32 noundef 0, i64 noundef %i.cw) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

default.unreachable:                              ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  unreachable

_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.thread146, %.thread, %bb.af, %bb.ah, %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %.061157, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.ej, %i.ce
  br i1 %.not, label %._crit_edge160, label %bb.w

.loopexit:                                        ; preds = %bb.v, %._crit_edge160
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge160 ], [ %.1.i73, %bb.v ]
  store i32 %.0.lcssa.i, ptr %i.au, align 4, !tbaa !104
  call void @_ZN8WasmEdge4Host4WASI6Poller5resetEv(ptr noundef nonnull align 8 dereferenceable(216) %i.cd) #23
  %i.ek = load ptr, ptr %i.ay, align 8, !tbaa !277, !nonnull !86, !align !87
  call void @_ZN8WasmEdge4Host4WASI7Environ13releasePollerEONS1_8EVPollerE(ptr noundef nonnull align 8 dereferenceable(344) %i.ek, ptr noundef nonnull align 8 dereferenceable(216) %i.cd) #23
  %.pre165 = load i8, ptr %7, align 8, !tbaa !89, !range !90
  %i.el = trunc nuw i8 %.pre165 to i1
  br i1 %i.el, label %bb.ai, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit

bb.ai:                                            ; preds = %.loopexit
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN8WasmEdge4Host4WASI6PollerD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.em) #23
  br label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit: ; preds = %.loopexit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.en, align 4, !tbaa !22
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread, %bb.m, %bb.q, %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit, %bb.o, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge4Host4WASI7Environ13acquirePollerEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.71") align 8 %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr %2, i64 %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.WasmEdge::Host::WASI::EVPoller", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.b = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #23, !noalias !280
  %i.c = icmp eq i32 %i.b, 35
  br i1 %i.c, label %bb.b, label %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i unwind label %bb.e, !noalias !280

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122, !noalias !280
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122, !noalias !280 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i
  call void @_ZN8WasmEdge4Host4WASI6PollerC2ERNS1_13PollerContextE(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull align 8 dereferenceable(96) %1) #23
  br label %_ZZN8WasmEdge4Host4WASI7Environ13acquirePollerEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEEENKUlvE_clEv.exit

bb.d:                                             ; preds = %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -216
  call void @_ZN8WasmEdge4Host4WASI6PollerC2EOS2_(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull align 8 dereferenceable(216) %i.i) #23
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !124
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -216 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !124
  call void @_ZN8WasmEdge4Host4WASI6PollerD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.k) #23
  br label %_ZZN8WasmEdge4Host4WASI7Environ13acquirePollerEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEEENKUlvE_clEv.exit

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #25, !noalias !280
  unreachable

_ZZN8WasmEdge4Host4WASI7Environ13acquirePollerEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.d
  %i.n = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #23 ; 0 uses
  %i.o = call i32 @_ZN8WasmEdge4Host4WASI6Poller7prepareEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr %2, i64 %3) #23 ; 2 uses
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZZN8WasmEdge4Host4WASI7Environ13acquirePollerEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEEENKUlvE_clEv.exit
  %.sroa.53.0.extract.shift = lshr i32 %i.o, 16
  %.sroa.53.0.extract.trunc = trunc nuw i32 %.sroa.53.0.extract.shift to i16
  store i8 0, ptr %0, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.53.0.extract.trunc, ptr %i.q, align 8, !tbaa !282
  br label %bb.m

.critedge:                                        ; preds = %_ZZN8WasmEdge4Host4WASI7Environ13acquirePollerEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEEENKUlvE_clEv.exit
  store i8 1, ptr %0, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %4, align 8, !tbaa !104
  store i32 -1, ptr %4, align 8, !tbaa !104
  store i32 %i.s, ptr %i.r, align 8, !tbaa !126
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4               ; 2 uses
  %i.w = and i8 %i.v, 1
  %i.x = load i8, ptr %i.t, align 4
  %i.y = and i8 %i.x, -2
  %i.z = or disjoint i8 %i.y, %i.w
  store i8 %i.z, ptr %i.t, align 4
  %i.aa = or i8 %i.v, 1
  store i8 %i.aa, ptr %i.u, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !127
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !127
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !120
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !129 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !130 ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !130
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !131 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.au = load i64, ptr %i.at, align 8, !tbaa !133
  store i64 %i.au, ptr %i.as, align 8, !tbaa !133
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !135
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !136
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  %i.az = icmp eq ptr %i.al, %i.ay
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  store ptr %i.ax, ptr %i.aj, align 8, !tbaa !129
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !136
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !136
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %i.bb = phi ptr [ %i.ax, %bb.g ], [ %i.al, %.critedge ]
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEC2EOSD_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !104
  %i.be = sext i32 %i.bd to i64
  %i.bf = urem i64 %i.be, %i.ao
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bf
  store ptr %i.ap, ptr %i.bg, align 8, !tbaa !137
  br label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEC2EOSD_.exit.i

_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEC2EOSD_.exit.i: ; preds = %bb.i, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 0, ptr %i.bh, align 8, !tbaa !138
  store i64 1, ptr %i.an, align 8, !tbaa !130
  store ptr null, ptr %i.ay, align 8, !tbaa !136
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !129 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge4Host14WasiPollOneoffILNS0_4WASI11TriggerTypeE1EE4bodyERKNS_7Runtime12CallingFrameEjjjj:bb.a

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIK21__wasi_subscription_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.l
  %.not150 = icmp eq i32 %5, 0
  br i1 %.not150, label %.thread176, label %bb.m

bb.m:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIK21__wasi_subscription_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ad, align 4, !tbaa !22
  br label %bb.aj

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v ; 2 uses
  %i.ah = zext i32 %4 to i64                      ; 2 uses
  %i.ai = shl nuw nsw i64 %i.w, 5
  %i.aj = add nuw nsw i64 %i.ai, %i.ah
  %i.ak = icmp ugt i64 %i.aj, %i.aa
  br i1 %i.ak, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread

.thread176:                                       ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIK21__wasi_subscription_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %i.al = zext i32 %4 to i64                      ; 2 uses
  %i.am = icmp samesign ult i64 %i.aa, %i.al
  br i1 %i.am, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread: ; preds = %.thread176, %bb.n
  %i.an = phi i64 [ %i.al, %.thread176 ], [ %i.ah, %bb.n ]
  %.sroa.0.0.i137179.a = phi ptr [ null, %.thread176 ], [ %i.ag, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  br label %bb.p

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.n
  %.not151 = icmp eq i32 %5, 0
  br i1 %.not151, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, label %bb.o

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge: ; preds = %.thread176, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.sroa.0.0.i137180184 = phi ptr [ %i.ag, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit ], [ null, %.thread176 ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.p

bb.o:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ar, align 4, !tbaa !22
  br label %bb.aj

bb.p:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread
  %.sroa.0.0.i137178 = phi ptr [ %.sroa.0.0.i137179.a, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ %.sroa.0.0.i137180184, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 5 uses
  %i.as = phi ptr [ %i.ap, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ %.pre, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 2 uses
  %.sroa.0.0.i68143 = phi ptr [ %i.aq, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ null, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_event_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 4 uses
  %i.at = zext i32 %6 to i64                      ; 2 uses
  %.not152 = icmp ule i64 %i.aa, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at ; 2 uses
  %i.av = icmp eq ptr %i.as, null
  %i.aw = select i1 %.not152, i1 true, i1 %i.av
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ax, align 4, !tbaa !22
  br label %bb.aj

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !291, !nonnull !86, !align !87
  call void @_ZN8WasmEdge4Host4WASI7Environ13acquirePollerEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.71") align 8 %7, ptr noundef nonnull align 8 dereferenceable(344) %i.az, ptr %.sroa.0.0.i68143, i64 %i.w) #23
  %i.ba = load i8, ptr %7, align 8, !tbaa !89, !range !90, !noundef !86
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.r
  %.not161 = icmp eq i32 %5, 0
  br i1 %.not161, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre164 = load i16, ptr %i.bc, align 8, !tbaa !92 ; 3 uses
  %xtraiter = and i64 %i.w, 1
  %i.bd = icmp eq i32 %5, 1
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.w, 4294967294
  br label %bb.s

_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod187 = trunc i32 %5 to i1
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i137178, i64 %indvars.iv.epil.init ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !96
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i68143, i64 %indvars.iv.epil.init ; 3 uses
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i16 %.pre164, ptr %i.bh, align 8, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !102
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  store i8 %i.bj, ptr %i.bk, align 2, !tbaa !103
  br label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread

_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread: ; preds = %.epil.preheader, %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa, %.preheader
  store i32 %5, ptr %i.au, align 4, !tbaa !104
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load i16, ptr %i.bl, align 8, !tbaa !92
  %i.bo = zext i16 %i.bn to i32
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aj

bb.s:                                             ; preds = %bb.s, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.s ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.s ]
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i137178, i64 %indvars.iv ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i68143, i64 %indvars.iv ; 3 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !100
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i16 %.pre164, ptr %i.bs, align 8, !tbaa !101
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !102
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  store i8 %i.bu, ptr %i.bv, align 2, !tbaa !103
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i137178, i64 %indvars.iv.next ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !96
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i68143, i64 %indvars.iv.next ; 3 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i16 %.pre164, ptr %i.bz, align 8, !tbaa !101
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !102
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 10
  store i8 %i.cb, ptr %i.cc, align 2, !tbaa !103
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread.loopexit.unr-lcssa, label %bb.s, !llvm.loop !287

bb.t:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i137178, i64 %i.x
  %.not156 = icmp eq i32 %5, 0
  br i1 %.not156, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  br label %bb.w

._crit_edge160:                                   ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread, %bb.t
  call void @_ZN8WasmEdge4Host4WASI6Poller4waitEv(ptr noundef nonnull align 8 dereferenceable(216) %i.cd) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !108 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !109 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.not10.i = icmp eq ptr %i.cm, %i.cl
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge160, %bb.v
  %.012.i = phi i32 [ %.1.i73, %bb.v ], [ 0, %._crit_edge160 ] ; 3 uses
  %.sroa.07.011.i = phi ptr [ %i.cv, %bb.v ], [ %i.cm, %._crit_edge160 ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 32
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !111, !range !90, !noundef !86
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i
  %i.cr = zext i32 %.012.i to i64
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !114
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.011.i, i64 32, i1 false), !tbaa.struct !118
  %i.cu = add i32 %.012.i, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %.1.i73 = phi i32 [ %i.cu, %bb.u ], [ %.012.i, %.lr.ph.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 40 ; 2 uses
  %.not.i74 = icmp eq ptr %i.cv, %i.cl
  br i1 %.not.i74, label %.loopexit, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph159, %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread
  %.061157 = phi ptr [ %.sroa.0.0.i137178, %.lr.ph159 ], [ %i.ej, %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread ] ; 7 uses
  %i.cw = load i64, ptr %.061157, align 8, !tbaa !96 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.061157, i64 8
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !102 ; 5 uses
  %switch.i = icmp ugt i8 %i.cy, 2
  br i1 %switch.i, label %bb.x, label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %i.da = load ptr, ptr %i.cf, align 8, !tbaa !109 ; 4 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = sdiv exact i64 %i.dd, 40                ; 4 uses
  %i.df = load i64, ptr %i.ch, align 8, !tbaa !119
  %i.dg = icmp ult i64 %i.de, %i.df
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load ptr, ptr %i.ci, align 8, !tbaa !120
  %.not.i.i75 = icmp eq ptr %i.cz, %i.dh
  br i1 %.not.i.i75, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, i8 0, i64 40, i1 false)
  %i.di = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store ptr %i.dj, ptr %i.cg, align 8, !tbaa !108
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.dk = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.dk, label %bb.aa, label %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #26
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.de ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.de
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 230584300921369395)
  %i.do = select i1 %i.dm, i64 230584300921369395, i64 %i.dn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dp = mul nuw nsw i64 %i.do, 40
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #27
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc10.i:                                       ; preds = %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.dd ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dr, i8 0, i64 40, i1 false)
  %i.ds = icmp sgt i64 %i.dd, 0
  br i1 %i.ds, label %bb.ab, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i

bb.ab:                                            ; preds = %.noexc10.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i: ; preds = %bb.ab, %.noexc10.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %.not.i16.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i16.i.i.i, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #24
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i
  store ptr %i.dq, ptr %i.cf, align 8, !tbaa !109
  store ptr %i.dt, ptr %i.cg, align 8, !tbaa !108
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.du, ptr %i.ci, align 8, !tbaa !120
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.y
  %i.dv = phi ptr [ %i.dr, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.di, %bb.y ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i8 1, ptr %i.dw, align 8, !tbaa !111
  store i64 %i.cw, ptr %i.dv, align 8, !tbaa !100
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i16 28, ptr %i.dx, align 8, !tbaa !101
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 10
  store i8 %i.cy, ptr %i.dy, align 2, !tbaa !103
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.aa
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %lpad.loopexit.split-lp186, 0
  call void @__clang_call_terminate(ptr %i.dz) #25
  unreachable

_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit: ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.061157, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !22 ; 4 uses
  switch i8 %i.cy, label %default.unreachable [
    i8 0, label %bb.ad
    i8 1, label %bb.ag
    i8 2, label %bb.ah
  ]

bb.ad:                                            ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  %switch.i77 = icmp ugt i32 %i.eb, 3
  br i1 %switch.i77, label %.thread, label %bb.ae

.thread:                                          ; preds = %bb.ad
  call void @_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i64 noundef %i.cw, i16 noundef zeroext 28, i8 noundef zeroext %i.cy) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %.061157, i64 40
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !22 ; 2 uses
  %i.ee = icmp ugt i16 %i.ed, 1
  br i1 %i.ee, label %.thread146, label %bb.af

.thread146:                                       ; preds = %bb.ae
  call void @_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i64 noundef %i.cw, i16 noundef zeroext 28, i8 noundef zeroext %i.cy) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ef = getelementptr inbounds nuw i8, ptr %.061157, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %.061157, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !22
  call void @_ZN8WasmEdge4Host4WASI6Poller5clockE16__wasi_clockid_tmm22__wasi_subclockflags_tm(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i32 noundef %i.eb, i64 noundef %i.eg, i64 noundef %i.ei, i16 noundef zeroext %i.ed, i64 noundef %i.cw) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.ag:                                            ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  call void @_ZN8WasmEdge4Host4WASI8EVPoller4readEiNS1_11TriggerTypeEm(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i32 noundef %i.eb, i32 noundef 1, i64 noundef %i.cw) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.ah:                                            ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  call void @_ZN8WasmEdge4Host4WASI8EVPoller5writeEiNS1_11TriggerTypeEm(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i32 noundef %i.eb, i32 noundef 1, i64 noundef %i.cw) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

default.unreachable:                              ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  unreachable

_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.thread146, %.thread, %bb.af, %bb.ah, %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %.061157, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.ej, %i.ce
  br i1 %.not, label %._crit_edge160, label %bb.w

.loopexit:                                        ; preds = %bb.v, %._crit_edge160
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge160 ], [ %.1.i73, %bb.v ]
  store i32 %.0.lcssa.i, ptr %i.au, align 4, !tbaa !104
  call void @_ZN8WasmEdge4Host4WASI6Poller5resetEv(ptr noundef nonnull align 8 dereferenceable(216) %i.cd) #23
  %i.ek = load ptr, ptr %i.ay, align 8, !tbaa !291, !nonnull !86, !align !87
  call void @_ZN8WasmEdge4Host4WASI7Environ13releasePollerEONS1_8EVPollerE(ptr noundef nonnull align 8 dereferenceable(344) %i.ek, ptr noundef nonnull align 8 dereferenceable(216) %i.cd) #23
  %.pre165 = load i8, ptr %7, align 8, !tbaa !89, !range !90
  %i.el = trunc nuw i8 %.pre165 to i1
  br i1 %i.el, label %bb.ai, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit

bb.ai:                                            ; preds = %.loopexit
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN8WasmEdge4Host4WASI6PollerD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.em) #23
  br label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit: ; preds = %.loopexit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.en, align 4, !tbaa !22
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread, %bb.m, %bb.q, %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit, %bb.o, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host11WasiArgsGet4bodyERKNS_7Runtime12CallingFrameEjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %3, 3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !299
  switch i32 %i.e, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.d
    i32 35, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.f, !noalias !299

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43, !noalias !299
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !44, !noalias !299 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread40, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread40: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !299 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25, !noalias !299
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !46, !noalias !299 ; 4 uses
  %i.n = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !299 ; 0 uses
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !302, !nonnull !86, !align !87 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !193  ; 3 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !194  ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 5                   ; 3 uses
  %i.z = icmp ugt i64 %i.y, 2305843009213693951
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.h
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.aa = ashr exact i64 %i.x, 3                  ; 2 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27
          to label %.noexc8.i unwind label %bb.j  ; 9 uses

.noexc8.i:                                        ; preds = %bb.i
  %i.ac = ptrtoaddr ptr %i.ab to i64
  store i32 0, ptr %i.ab, align 4, !tbaa !104
  %i.ad = getelementptr i8, ptr %i.ab, i64 4      ; 3 uses
  %i.ae = add nsw i64 %i.y, -1                    ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.preheader.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc8.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ae, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc8.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.ad, %.noexc8.i ], [ %i.ag, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i.ph.i73 = ptrtoaddr ptr %.0.i.i.i.i.i.ph.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.sroa.0.08.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.ab, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.03.07.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.u, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.sroa.03.07.i.i, i64 8
  %.val.i.i = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.ai = trunc i64 %.val.i.i to i32
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %.sroa.0.08.i.i, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 4
  %.not.i.i19 = icmp eq ptr %i.ak, %i.t
  br i1 %.not.i.i19, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i: ; preds = %.lr.ph.i.i
  %.not5.i.i = icmp eq ptr %i.ab, %.0.i.i.i.i.i.ph.i
  br i1 %.not5.i.i, label %.loopexit.i, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i
  %i.am = add i64 %.0.i.i.i.i.i.ph.i73, -4
  %i.an = sub i64 %i.am, %i.ac                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 28
  br i1 %min.iters.check, label %.lr.ph.i9.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i9.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2
  %i.ar = getelementptr i8, ptr %i.ab, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %i.as = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !104
  %wide.load75 = load <4 x i32>, ptr %i.at, align 4, !tbaa !104
  %i.au = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.av = add <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8WasmEdge4Host17WasiSockConnectV14bodyERKNS_7Runtime12CallingFrameEijj:bb.a
  switch i32 %i.ab, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread [
    i32 4, label %bb.k
    i32 16, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i8 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !576, !nonnull !86, !align !87
  %i.ak = trunc i32 %5 to i16
  %i.al = tail call i32 @_ZN8WasmEdge4Host4WASI7Environ11sockConnectEi23__wasi_address_family_tN5cxx204spanIKhLm18446744073709551615EEEt(ptr noundef nonnull align 8 dereferenceable(344) %i.aj, i32 noundef %3, i8 noundef zeroext %.0, ptr %.sroa.0.0.i, i64 %i.ae, i16 noundef zeroext %i.ak) #23 ; 2 uses
  %i.am = trunc i32 %i.al to i1
  %.sroa.522.0.extract.shift = lshr i32 %i.al, 16
  %spec.select = select i1 %i.am, i32 0, i32 %.sroa.522.0.extract.shift
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.k, %bb.i, %bb.h, %bb.g, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread34, %bb.b, %bb.a
  %.sink = phi i32 [ 21, %bb.g ], [ 28, %bb.i ], [ 21, %bb.h ], [ %spec.select, %bb.k ], [ 4, %bb.a ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit ], [ 21, %bb.b ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread34 ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.an, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN8WasmEdge4Host4WASI7Environ11sockConnectEi23__wasi_address_family_tN5cxx204spanIKhLm18446744073709551615EEEt(ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1, i8 noundef zeroext %2, ptr %3, i64 %4, i16 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNK8WasmEdge4Host4WASI7Environ13getNodeOrNullEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %6, align 8, !tbaa !166    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call i32 @_ZN8WasmEdge4Host4WASI5INode11sockConnectE23__wasi_address_family_tN5cxx204spanIKhLm18446744073709551615EEEt(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i8 noundef zeroext %2, ptr %3, i64 %4, i16 noundef zeroext %5) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.37.0 = phi i32 [ %i.c, %bb.c ], [ 524288, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167  ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !187
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !188
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.h ], [ %i.s, %bb.i ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.j, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !189

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i32 %.sroa.37.0

bb.k:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host14WasiSockRecvV14bodyERKNS_7Runtime12CallingFrameEijjjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.WasmEdge::Host::(anonymous namespace)::StaticVector", align 8 ; 6 uses
  %i.a = and i32 %4, 3
  %.not99 = icmp eq i32 %i.a, 0
  br i1 %.not99, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.b, align 4, !tbaa !22
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %7, 3
  %.not100 = icmp eq i32 %i.c, 0
  br i1 %.not100, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.d, align 4, !tbaa !22
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.e = trunc i32 %8 to i1
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.f, align 4, !tbaa !22
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.j = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #23, !noalias !579
  switch i32 %i.j, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.i
    i32 35, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.k, !noalias !579

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43, !noalias !579
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !44, !noalias !579 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread90, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread90: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.o = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #23, !noalias !579 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25, !noalias !579
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !46, !noalias !579 ; 4 uses
  %i.s = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #23, !noalias !579 ; 0 uses
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.l

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.g, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread90, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.u, align 4, !tbaa !22
  br label %bb.x

bb.l:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.v = and i32 %6, 65532
  %.not101 = icmp eq i32 %i.v, 0                  ; 2 uses
  %i.w = trunc i32 %6 to i16
  %.sroa.483.0.extract.trunc = select i1 %.not101, i16 %i.w, i16 28
  br i1 %.not101, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.x, align 4, !tbaa !22
  br label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.y = icmp ugt i32 %5, 1024
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.z, align 4, !tbaa !22
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.aa = zext i32 %4 to i64                      ; 2 uses
  %i.ab = shl nuw nsw i32 %5, 3
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.af = shl i64 %i.ae, 16                       ; 4 uses
  %i.ag = add nuw nsw i64 %i.ac, %i.aa
  %i.ah = icmp ugt i64 %i.ag, %i.af
  br i1 %i.ah, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread: ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aa
  br label %bb.q

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.o
  %.not102 = icmp eq i32 %5, 0
  br i1 %.not102, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, label %bb.p

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge: ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.p:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.al, align 4, !tbaa !22
  br label %bb.x

bb.q:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread
  %i.am = phi ptr [ %i.aj, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ %.pre, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 4 uses
  %.sroa.6.0.i97 = phi i64 [ %i.ac, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ 0, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 2 uses
  %.sroa.0.0.i96 = phi ptr [ %i.ak, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ null, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 2 uses
  %i.an = zext i32 %7 to i64                      ; 2 uses
  %.not103 = icmp ule i64 %i.af, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = icmp eq ptr %i.am, null
  %i.aq = select i1 %.not103, i1 true, i1 %i.ap
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ar, align 4, !tbaa !22
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.as = zext i32 %8 to i64                      ; 2 uses
  %.not104.not = icmp ugt i64 %i.af, %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.as
  br i1 %.not104.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.au, align 4, !tbaa !22
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i64 0, ptr %9, align 8, !tbaa !204
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96, i64 %.sroa.6.0.i97
  %.not106 = icmp samesign eq i64 %.sroa.6.0.i97, 0
  br i1 %.not106, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.w
  %.0108 = phi ptr [ %.sroa.0.0.i96, %.lr.ph ], [ %i.bm, %bb.w ] ; 3 uses
  %.050107 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %bb.w ] ; 2 uses
  %i.ax = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.w ] ; 3 uses
  %i.ay = xor i32 %.050107, -1
  %i.az = getelementptr inbounds nuw i8, ptr %.0108, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !206 ; 2 uses
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.ay) ; 2 uses
  %i.bc = load i32, ptr %.0108, align 4, !tbaa !207
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = zext i32 %i.bb to i64                   ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, %i.bd
  %i.bg = icmp ule i64 %i.bf, %i.af               ; 2 uses
  %.not105117 = icmp eq i32 %i.bb, 0
  %.not105 = or i1 %i.bg, %.not105117
  br i1 %.not105, label %bb.w, label %.critedge55

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bd
  %.sroa.0.0.i62 = select i1 %i.bg, ptr %i.bh, ptr null
  %i.bi = tail call i32 @llvm.uadd.sat.i32(i32 %i.ba, i32 %.050107)
  %i.bj = icmp samesign ult i64 %i.ax, 1024
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  store ptr %.sroa.0.0.i62, ptr %i.bk, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bl = add nuw nsw i64 %i.ax, 1                ; 3 uses
  store i64 %i.bl, ptr %9, align 8, !tbaa !204
  %i.bm = getelementptr inbounds nuw i8, ptr %.0108, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.av
  br i1 %.not, label %.critedge, label %bb.v

.critedge:                                        ; preds = %bb.w, %bb.u
  %.val.i = phi i64 [ 0, %bb.u ], [ %i.bl, %bb.w ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !582, !nonnull !86, !align !87
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = call i32 @_ZNK8WasmEdge4Host4WASI7Environ8sockRecvEiN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tRjR16__wasi_roflags_t(ptr noundef nonnull align 8 dereferenceable(344) %i.bo, i32 noundef %3, ptr nonnull %i.bp, i64 %.val.i, i16 noundef zeroext %.sroa.483.0.extract.trunc, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 2 dereferenceable(2) %i.at) #23 ; 2 uses
  %i.br = trunc i32 %i.bq to i1
  %.sroa.567.0.extract.shift = lshr i32 %i.bq, 16
  %spec.select = select i1 %i.br, i32 0, i32 %.sroa.567.0.extract.shift
  br label %.critedge55

.critedge55:                                      ; preds = %bb.v, %.critedge
  %.sink = phi i32 [ %spec.select, %.critedge ], [ 21, %bb.v ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.bs, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %bb.t, %.critedge55, %bb.r, %.thread, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, %bb.n, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK8WasmEdge4Host4WASI7Environ8sockRecvEiN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tRjR16__wasi_roflags_t(ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1, ptr %2, i64 %3, i16 noundef zeroext %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 2 dereferenceable(2) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNK8WasmEdge4Host4WASI7Environ13getNodeOrNullEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %7, align 8, !tbaa !166    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call i32 @_ZNK8WasmEdge4Host4WASI5INode8sockRecvEN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tRjR16__wasi_roflags_t(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr %2, i64 %3, i16 noundef zeroext %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 2 dereferenceable(2) %6) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.38.0 = phi i32 [ %i.c, %bb.c ], [ 524288, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167  ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !187
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !188
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.h ], [ %i.s, %bb.i ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.j, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !189

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i32 %.sroa.38.0

bb.k:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host18WasiSockRecvFromV14bodyERKNS_7Runtime12CallingFrameEijjjjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.WasmEdge::Host::(anonymous namespace)::StaticVector", align 8 ; 6 uses
  %11 = alloca %"struct.cxx20::span.164", align 8 ; 3 uses
  %i.a = and i32 %6, 3
  %.not121 = icmp eq i32 %i.a, 0
  br i1 %.not121, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.b, align 4, !tbaa !22
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %4, 3
  %.not122 = icmp eq i32 %i.c, 0
  br i1 %.not122, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.d, align 4, !tbaa !22
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.e = and i32 %8, 3
  %.not123 = icmp eq i32 %i.e, 0
  br i1 %.not123, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.f, align 4, !tbaa !22
  br label %bb.ad

bb.g:                                             ; preds = %bb.e
  %i.g = trunc i32 %9 to i1
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.h, align 4, !tbaa !22
  br label %bb.ad

bb.i:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.l = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.k) #23, !noalias !585
  switch i32 %i.l, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.k
    i32 35, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.m, !noalias !585

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 488
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43, !noalias !585
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !44, !noalias !585 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread112, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread112: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.q = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.k) #23, !noalias !585 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #25, !noalias !585
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !46, !noalias !585 ; 3 uses
  %i.u = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.k) #23, !noalias !585 ; 0 uses
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.n

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.i, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread112, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.w, align 4, !tbaa !22
  br label %bb.ad

bb.n:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.x = zext i32 %6 to i64                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !49
  %i.aa = shl i64 %i.z, 16                        ; 6 uses
  %i.ab = add nuw nsw i64 %i.x, 8
  %i.ac = icmp ugt i64 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 7 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = select i1 %i.ac, i1 true, i1 %i.af
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ah, align 4, !tbaa !22
  br label %bb.ad

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.x ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !227 ; 2 uses
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !228
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = zext i32 %i.ak to i64                   ; 2 uses
  %i.ao = add nuw nsw i64 %i.am, %i.an
  %i.ap = icmp ule i64 %i.ao, %i.aa               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.am
  %.sroa.0.0.i = select i1 %i.ap, ptr %i.aq, ptr null
  %.not140 = icmp eq i32 %i.ak, 0
  %.not = or i1 %i.ap, %.not140
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ar, align 4, !tbaa !22
  br label %bb.ad

bb.r:                                             ; preds = %bb.p
  %i.as = and i32 %7, 65532
  %.not124 = icmp eq i32 %i.as, 0                 ; 2 uses
  %i.at = trunc i32 %7 to i16
  %.sroa.498.0.extract.trunc = select i1 %.not124, i16 %i.at, i16 28
  br i1 %.not124, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.r
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.au, align 4, !tbaa !22
  br label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.av = icmp ugt i32 %5, 1024
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.aw, align 4, !tbaa !22
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.ax = zext i32 %4 to i64                      ; 2 uses
  %i.ay = shl nuw nsw i32 %5, 3
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, %i.ax
  %i.bb = icmp ugt i64 %i.ba, %i.aa
  br i1 %i.bb, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread: ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ax
  br label %bb.w

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.u
  %.not125 = icmp eq i32 %5, 0
  br i1 %.not125, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.bd, align 4, !tbaa !22
  br label %bb.ad

bb.w:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.sroa.6.0.i69119 = phi i64 [ %i.az, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ 0, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit ] ; 2 uses
  %.sroa.0.0.i68118 = phi ptr [ %i.bc, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ null, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit ] ; 2 uses
  %i.be = zext i32 %8 to i64                      ; 2 uses
  %.not126.not = icmp ugt i64 %i.aa, %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.be
  br i1 %.not126.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.bg, align 4, !tbaa !22
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.bh = zext i32 %9 to i64                      ; 2 uses
  %.not127.not = icmp ugt i64 %i.aa, %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bh
  br i1 %.not127.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.bj, align 4, !tbaa !22
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 0, ptr %10, align 8, !tbaa !204
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68118, i64 %.sroa.6.0.i69119
  %.not61129 = icmp samesign eq i64 %.sroa.6.0.i69119, 0
  br i1 %.not61129, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ac
  %.0130 = phi ptr [ %.sroa.0.0.i68118, %.lr.ph ], [ %i.by, %bb.ac ] ; 3 uses
  %i.bm = phi i64 [ 0, %.lr.ph ], [ %i.bx, %bb.ac ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0130, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !206 ; 2 uses
  %i.bp = load i32, ptr %.0130, align 4, !tbaa !207
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = zext i32 %i.bo to i64                   ; 2 uses
  %i.bs = add nuw nsw i64 %i.bq, %i.br
  %i.bt = icmp ule i64 %i.bs, %i.aa               ; 2 uses
  %.not128141 = icmp eq i32 %i.bo, 0
  %.not128 = or i1 %i.bt, %.not128141
  br i1 %.not128, label %bb.ac, label %.critedge63

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bq
  %.sroa.0.0.i78 = select i1 %i.bt, ptr %i.bu, ptr null
  %i.bv = icmp samesign ult i64 %i.bm, 1024
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  store ptr %.sroa.0.0.i78, ptr %i.bw, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bx = add nuw nsw i64 %i.bm, 1                ; 3 uses
  store i64 %i.bx, ptr %10, align 8, !tbaa !204
  %i.by = getelementptr inbounds nuw i8, ptr %.0130, i64 8 ; 2 uses
  %.not61 = icmp eq ptr %i.by, %i.bk
  br i1 %.not61, label %.critedge, label %bb.ab

.critedge:                                        ; preds = %bb.ac, %bb.aa
  %.val.i = phi i64 [ 0, %bb.aa ], [ %i.bx, %bb.ac ]
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !588, !nonnull !86, !align !87
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.0.0.i, ptr %11, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.an, ptr %.sroa.4103.0..sroa_idx, align 8
  %i.cc = call i32 @_ZNK8WasmEdge4Host4WASI7Environ12sockRecvFromEiN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tP23__wasi_address_family_tS5_PtRjR16__wasi_roflags_t(ptr noundef nonnull align 8 dereferenceable(344) %i.ca, i32 noundef %3, ptr nonnull %i.cb, i64 %.val.i, i16 noundef zeroext %.sroa.498.0.extract.trunc, ptr noundef null, ptr noundef nonnull byval(%"struct.cxx20::span.164") align 8 %11, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 2 dereferenceable(2) %i.bi) #23 ; 2 uses
  %i.cd = trunc i32 %i.cc to i1
  %.sroa.583.0.extract.shift = lshr i32 %i.cc, 16
  %spec.select = select i1 %i.cd, i32 0, i32 %.sroa.583.0.extract.shift
  br label %.critedge63

.critedge63:                                      ; preds = %bb.ab, %.critedge
  %.sink = phi i32 [ %spec.select, %.critedge ], [ 21, %bb.ab ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.ce, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.q, %bb.t, %.thread, %bb.x, %.critedge63, %bb.z, %bb.v, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, %bb.o, %bb.h, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK8WasmEdge4Host4WASI7Environ12sockRecvFromEiN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tP23__wasi_address_family_tS5_PtRjR16__wasi_roflags_t(ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1, ptr %2, i64 %3, i16 noundef zeroext %4, ptr noundef %5, ptr noundef byval(%"struct.cxx20::span.164") align 8 %6, ptr noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 2 dereferenceable(2) %9) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.cxx20::span.164", align 8 ; 5 uses
  %11 = alloca %"class.std::shared_ptr", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNK8WasmEdge4Host4WASI7Environ13getNodeOrNullEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %11, align 8, !tbaa !166   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %6, align 8, !tbaa !230
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %10, align 8, !tbaa !230
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !231
  %i.g = call i32 @_ZNK8WasmEdge4Host4WASI5INode12sockRecvFromEN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tP23__wasi_address_family_tS5_PtRjR16__wasi_roflags_t(ptr noundef nonnull align 8 dereferenceable(200) %i.e, ptr %2, i64 %3, i16 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull byval(%"struct.cxx20::span.164") align 8 %10, ptr noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 2 dereferenceable(2) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.312.0 = phi i32 [ %i.g, %bb.c ], [ 524288, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.j, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !188
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23, !inline_history !0
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.h ], [ %i.w, %bb.i ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.j, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !189

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  ret i32 %.sroa.312.0

bb.k:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host14WasiSockSendV14bodyERKNS_7Runtime12CallingFrameEijjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.WasmEdge::Host::(anonymous namespace)::StaticVector.273", align 8 ; 8 uses
  %i.a = and i32 %4, 3
  %.not91 = icmp eq i32 %i.a, 0
  br i1 %.not91, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.b, align 4, !tbaa !22
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %7, 3
  %.not92 = icmp eq i32 %i.c, 0
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.d, align 4, !tbaa !22
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.h = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #23, !noalias !591
  switch i32 %i.h, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.g
    i32 35, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.i, !noalias !591

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43, !noalias !591
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !44, !noalias !591 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread82, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread82: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.m = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #23, !noalias !591 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25, !noalias !591
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !46, !noalias !591 ; 4 uses
  %i.q = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #23, !noalias !591 ; 0 uses
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.j

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.e, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread82, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.s, align 4, !tbaa !22
  br label %bb.t

bb.j:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.t = and i32 %6, 65535
  %i.u = icmp eq i32 %i.t, 0
  %.sroa.02.0.insert.insert.i = select i1 %i.u, i32 1, i32 1835008 ; 2 uses
  %.sroa.476.0.extract.shift = lshr i32 %.sroa.02.0.insert.insert.i, 16 ; 2 uses
  %.sroa.476.0.extract.trunc = trunc nuw nsw i32 %.sroa.476.0.extract.shift to i16
  %i.v = trunc i32 %.sroa.02.0.insert.insert.i to i1
  br i1 %i.v, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.476.0.extract.shift, ptr %i.w, align 4, !tbaa !22
end_hunk_2
begin_hunk_3_@_ZN8WasmEdge4Host17WasiSockConnectV24bodyERKNS_7Runtime12CallingFrameEijj:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !684
  switch i32 %i.e, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.d
    i32 35, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.f, !noalias !684

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43, !noalias !684
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !44, !noalias !684 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread39, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread39: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !684 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25, !noalias !684
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !46, !noalias !684 ; 3 uses
  %i.n = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !684 ; 0 uses
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %i.s = shl i64 %i.r, 16                         ; 2 uses
  %i.t = add nuw nsw i64 %i.p, 8
  %i.u = icmp ugt i64 %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = select i1 %i.u, i1 true, i1 %i.x
  br i1 %i.y, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.p ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !227 ; 3 uses
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !228
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = zext i32 %i.ab to i64
  %i.af = add nuw nsw i64 %i.ad, %i.ae
  %i.ag = icmp ule i64 %i.af, %i.s                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ad ; 2 uses
  %.sroa.0.0.i = select i1 %i.ag, ptr %i.ah, ptr null ; 3 uses
  %.not46 = icmp eq i32 %i.ab, 0
  %.not = or i1 %i.ag, %.not46
  br i1 %.not, label %bb.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.i:                                             ; preds = %bb.h
  switch i32 %i.ab, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread [
    i32 4, label %bb.l
    i32 16, label %bb.j
    i32 128, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !252
  %i.aj = trunc i16 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sroa.030.0 = phi ptr [ %.sroa.0.0.i, %bb.i ], [ %.sroa.0.0.i, %bb.j ], [ %i.ak, %bb.k ]
  %.sroa.6.0 = phi i64 [ 4, %bb.i ], [ 16, %bb.j ], [ 126, %bb.k ]
  %.018 = phi i8 [ 1, %bb.i ], [ 2, %bb.j ], [ %i.aj, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !687, !nonnull !86, !align !87
  %i.an = trunc i32 %5 to i16
  %i.ao = tail call i32 @_ZN8WasmEdge4Host4WASI7Environ11sockConnectEi23__wasi_address_family_tN5cxx204spanIKhLm18446744073709551615EEEt(ptr noundef nonnull align 8 dereferenceable(344) %i.am, i32 noundef %3, i8 noundef zeroext %.018, ptr %.sroa.030.0, i64 %.sroa.6.0, i16 noundef zeroext %i.an) #23 ; 2 uses
  %i.ap = trunc i32 %i.ao to i1
  %.sroa.526.0.extract.shift = lshr i32 %i.ao, 16
  %spec.select = select i1 %i.ap, i32 0, i32 %.sroa.526.0.extract.shift
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.l, %bb.i, %bb.h, %bb.g, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread39, %bb.b, %bb.a
  %.sink = phi i32 [ 21, %bb.g ], [ 28, %bb.i ], [ 21, %bb.h ], [ %spec.select, %bb.l ], [ 4, %bb.a ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit ], [ 21, %bb.b ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread39 ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.aq, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host14WasiSockRecvV24bodyERKNS_7Runtime12CallingFrameEijjjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.WasmEdge::Host::(anonymous namespace)::StaticVector", align 8 ; 6 uses
  %i.a = and i32 %4, 3
  %.not99 = icmp eq i32 %i.a, 0
  br i1 %.not99, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.b, align 4, !tbaa !22
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %7, 3
  %.not100 = icmp eq i32 %i.c, 0
  br i1 %.not100, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.d, align 4, !tbaa !22
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.e = trunc i32 %8 to i1
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.f, align 4, !tbaa !22
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.j = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #23, !noalias !690
  switch i32 %i.j, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.i
    i32 35, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.k, !noalias !690

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43, !noalias !690
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !44, !noalias !690 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread90, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread90: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.o = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #23, !noalias !690 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25, !noalias !690
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !46, !noalias !690 ; 4 uses
  %i.s = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #23, !noalias !690 ; 0 uses
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.l

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.g, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread90, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.u, align 4, !tbaa !22
  br label %bb.x

bb.l:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.v = and i32 %6, 65532
  %.not101 = icmp eq i32 %i.v, 0                  ; 2 uses
  %i.w = trunc i32 %6 to i16
  %.sroa.483.0.extract.trunc = select i1 %.not101, i16 %i.w, i16 28
  br i1 %.not101, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.x, align 4, !tbaa !22
  br label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.y = icmp ugt i32 %5, 1024
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.z, align 4, !tbaa !22
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.aa = zext i32 %4 to i64                      ; 2 uses
  %i.ab = shl nuw nsw i32 %5, 3
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.af = shl i64 %i.ae, 16                       ; 4 uses
  %i.ag = add nuw nsw i64 %i.ac, %i.aa
  %i.ah = icmp ugt i64 %i.ag, %i.af
  br i1 %i.ah, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread: ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aa
  br label %bb.q

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.o
  %.not102 = icmp eq i32 %5, 0
  br i1 %.not102, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, label %bb.p

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge: ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.p:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.al, align 4, !tbaa !22
  br label %bb.x

bb.q:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread
  %i.am = phi ptr [ %i.aj, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ %.pre, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 4 uses
  %.sroa.6.0.i97 = phi i64 [ %i.ac, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ 0, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 2 uses
  %.sroa.0.0.i96 = phi ptr [ %i.ak, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ null, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit._crit_edge ] ; 2 uses
  %i.an = zext i32 %7 to i64                      ; 2 uses
  %.not103 = icmp ule i64 %i.af, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = icmp eq ptr %i.am, null
  %i.aq = select i1 %.not103, i1 true, i1 %i.ap
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ar, align 4, !tbaa !22
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.as = zext i32 %8 to i64                      ; 2 uses
  %.not104.not = icmp ugt i64 %i.af, %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.as
  br i1 %.not104.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.au, align 4, !tbaa !22
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i64 0, ptr %9, align 8, !tbaa !204
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96, i64 %.sroa.6.0.i97
  %.not106 = icmp samesign eq i64 %.sroa.6.0.i97, 0
  br i1 %.not106, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.w
  %.0108 = phi ptr [ %.sroa.0.0.i96, %.lr.ph ], [ %i.bm, %bb.w ] ; 3 uses
  %.050107 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %bb.w ] ; 2 uses
  %i.ax = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.w ] ; 3 uses
  %i.ay = xor i32 %.050107, -1
  %i.az = getelementptr inbounds nuw i8, ptr %.0108, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !206 ; 2 uses
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.ay) ; 2 uses
  %i.bc = load i32, ptr %.0108, align 4, !tbaa !207
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = zext i32 %i.bb to i64                   ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, %i.bd
  %i.bg = icmp ule i64 %i.bf, %i.af               ; 2 uses
  %.not105117 = icmp eq i32 %i.bb, 0
  %.not105 = or i1 %i.bg, %.not105117
  br i1 %.not105, label %bb.w, label %.critedge55

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bd
  %.sroa.0.0.i62 = select i1 %i.bg, ptr %i.bh, ptr null
  %i.bi = tail call i32 @llvm.uadd.sat.i32(i32 %i.ba, i32 %.050107)
  %i.bj = icmp samesign ult i64 %i.ax, 1024
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  store ptr %.sroa.0.0.i62, ptr %i.bk, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bl = add nuw nsw i64 %i.ax, 1                ; 3 uses
  store i64 %i.bl, ptr %9, align 8, !tbaa !204
  %i.bm = getelementptr inbounds nuw i8, ptr %.0108, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.av
  br i1 %.not, label %.critedge, label %bb.v

.critedge:                                        ; preds = %bb.w, %bb.u
  %.val.i = phi i64 [ 0, %bb.u ], [ %i.bl, %bb.w ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !693, !nonnull !86, !align !87
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = call i32 @_ZNK8WasmEdge4Host4WASI7Environ8sockRecvEiN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tRjR16__wasi_roflags_t(ptr noundef nonnull align 8 dereferenceable(344) %i.bo, i32 noundef %3, ptr nonnull %i.bp, i64 %.val.i, i16 noundef zeroext %.sroa.483.0.extract.trunc, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 2 dereferenceable(2) %i.at) #23 ; 2 uses
  %i.br = trunc i32 %i.bq to i1
  %.sroa.567.0.extract.shift = lshr i32 %i.bq, 16
  %spec.select = select i1 %i.br, i32 0, i32 %.sroa.567.0.extract.shift
  br label %.critedge55

.critedge55:                                      ; preds = %bb.v, %.critedge
  %.sink = phi i32 [ %spec.select, %.critedge ], [ 21, %bb.v ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.bs, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %bb.t, %.critedge55, %bb.r, %.thread, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, %bb.n, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host18WasiSockRecvFromV24bodyERKNS_7Runtime12CallingFrameEijjjjjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %11 = alloca %"class.WasmEdge::Host::(anonymous namespace)::StaticVector", align 8 ; 6 uses
  %12 = alloca %"struct.cxx20::span.164", align 8 ; 3 uses
  %i.b = and i32 %4, 3
  %.not144 = icmp eq i32 %i.b, 0
  br i1 %.not144, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.c, align 4, !tbaa !22
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %6, 3
  %.not145 = icmp eq i32 %i.d, 0
  br i1 %.not145, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.e, align 4, !tbaa !22
  br label %bb.an

bb.e:                                             ; preds = %bb.c
  %i.f = trunc i32 %8 to i1
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.g, align 4, !tbaa !22
  br label %bb.an

bb.g:                                             ; preds = %bb.e
  %i.h = and i32 %9, 3
  %.not146 = icmp eq i32 %i.h, 0
  br i1 %.not146, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.i, align 4, !tbaa !22
  br label %bb.an

bb.i:                                             ; preds = %bb.g
  %i.j = trunc i32 %10 to i1
  br i1 %i.j, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.k, align 4, !tbaa !22
  br label %bb.an

bb.k:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.o = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #23, !noalias !696
  switch i32 %i.o, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.m
    i32 35, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.o, !noalias !696

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 488
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43, !noalias !696
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !44, !noalias !696 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread135, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread135: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.t = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #23, !noalias !696 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #25, !noalias !696
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !46, !noalias !696 ; 3 uses
  %i.x = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #23, !noalias !696 ; 0 uses
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.p

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.k, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread135, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.z, align 4, !tbaa !22
  br label %bb.an

bb.p:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.aa = zext i32 %6 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ad = shl i64 %i.ac, 16                       ; 7 uses
  %i.ae = add nuw nsw i64 %i.aa, 8
  %i.af = icmp ugt i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8            ; 8 uses
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ak, align 4, !tbaa !22
  br label %bb.an

bb.r:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aa ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !227 ; 3 uses
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !228
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = zext i32 %i.an to i64                   ; 3 uses
  %i.ar = add nuw nsw i64 %i.ap, %i.aq
  %i.as = icmp ule i64 %i.ar, %i.ad               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ap
  %.sroa.0.0.i = select i1 %i.as, ptr %i.at, ptr null ; 4 uses
  %.not165 = icmp eq i32 %i.an, 0
  %.not = or i1 %i.as, %.not165
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.au, align 4, !tbaa !22
  br label %bb.an

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  switch i32 %i.an, label %bb.v [
    i32 4, label %bb.w
    i32 16, label %bb.w
    i32 128, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.aw, align 4, !tbaa !22
  br label %bb.am

bb.w:                                             ; preds = %bb.t, %bb.t, %bb.u
  %.sroa.0122.0 = phi ptr [ %.sroa.0.0.i, %bb.t ], [ %.sroa.0.0.i, %bb.t ], [ %i.av, %bb.u ]
  %.sroa.6.0 = phi i64 [ %i.aq, %bb.t ], [ %i.aq, %bb.t ], [ 126, %bb.u ]
  %.070 = phi ptr [ null, %bb.t ], [ null, %bb.t ], [ %.sroa.0.0.i, %bb.u ] ; 2 uses
  %i.ax = and i32 %7, 65532
  %.not147 = icmp eq i32 %i.ax, 0                 ; 2 uses
  %i.ay = trunc i32 %7 to i16
  %.sroa.4117.0.extract.trunc = select i1 %.not147, i16 %i.ay, i16 28
  br i1 %.not147, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.w
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.az, align 4, !tbaa !22
  br label %bb.am

bb.x:                                             ; preds = %bb.w
  %i.ba = icmp ugt i32 %5, 1024
  br i1 %i.ba, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.bb, align 4, !tbaa !22
  br label %bb.am

bb.z:                                             ; preds = %bb.x
  %i.bc = zext i32 %8 to i64                      ; 2 uses
  %.not148.not = icmp ugt i64 %i.ad, %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bc
  br i1 %.not148.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.be, align 4, !tbaa !22
  br label %bb.am

bb.ab:                                            ; preds = %bb.z
  %i.bf = zext i32 %4 to i64                      ; 2 uses
  %i.bg = shl nuw nsw i32 %5, 3
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, %i.bf
  %i.bj = icmp ugt i64 %i.bi, %i.ad
  br i1 %i.bj, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread: ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bf
  br label %bb.ad

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.ab
  %.not149 = icmp eq i32 %5, 0
  br i1 %.not149, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.bl, align 4, !tbaa !22
  br label %bb.am

bb.ad:                                            ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.sroa.6.0.i87142 = phi i64 [ %i.bh, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ 0, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit ] ; 2 uses
  %.sroa.0.0.i86141 = phi ptr [ %i.bk, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit.thread ], [ null, %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI14__wasi_iovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit ] ; 2 uses
  %i.bm = zext i32 %9 to i64                      ; 2 uses
  %.not150.not = icmp ugt i64 %i.ad, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bm
  br i1 %.not150.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.bo, align 4, !tbaa !22
  br label %bb.am

bb.af:                                            ; preds = %bb.ad
  %i.bp = zext i32 %10 to i64                     ; 2 uses
  %.not151.not = icmp ugt i64 %i.ad, %i.bp
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bp
  br i1 %.not151.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.br, align 4, !tbaa !22
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i64 0, ptr %11, align 8, !tbaa !204
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i86141, i64 %.sroa.6.0.i87142
  %.not74153 = icmp samesign eq i64 %.sroa.6.0.i87142, 0
  br i1 %.not74153, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.aj
  %.0155 = phi ptr [ %.sroa.0.0.i86141, %.lr.ph ], [ %i.cj, %bb.aj ] ; 3 uses
  %.067154 = phi i32 [ 0, %.lr.ph ], [ %i.cf, %bb.aj ] ; 2 uses
  %i.bu = phi i64 [ 0, %.lr.ph ], [ %i.ci, %bb.aj ] ; 3 uses
  %i.bv = xor i32 %.067154, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %.0155, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !206 ; 2 uses
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.bv) ; 2 uses
  %i.bz = load i32, ptr %.0155, align 4, !tbaa !207
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = zext i32 %i.by to i64                   ; 2 uses
  %i.cc = add nuw nsw i64 %i.cb, %i.ca
  %i.cd = icmp ule i64 %i.cc, %i.ad               ; 2 uses
  %.not152166 = icmp eq i32 %i.by, 0
  %.not152 = or i1 %i.cd, %.not152166
  br i1 %.not152, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ca
  %.sroa.0.0.i96 = select i1 %i.cd, ptr %i.ce, ptr null
  %i.cf = tail call i32 @llvm.uadd.sat.i32(i32 %i.bx, i32 %.067154)
  %i.cg = icmp samesign ult i64 %i.bu, 1024
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  store ptr %.sroa.0.0.i96, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.cb, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ci = add nuw nsw i64 %i.bu, 1                ; 3 uses
  store i64 %i.ci, ptr %11, align 8, !tbaa !204
  %i.cj = getelementptr inbounds nuw i8, ptr %.0155, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.cj, %i.bs
  br i1 %.not74, label %.critedge, label %bb.ai

.critedge:                                        ; preds = %bb.aj, %bb.ah
  %.val.i = phi i64 [ 0, %bb.ah ], [ %i.ci, %bb.aj ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !699, !nonnull !86, !align !87
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.0122.0, ptr %12, align 8, !tbaa !230
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.6.0, ptr %i.cn, align 8, !tbaa !231
  %i.co = call i32 @_ZNK8WasmEdge4Host4WASI7Environ12sockRecvFromEiN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tP23__wasi_address_family_tS5_PtRjR16__wasi_roflags_t(ptr noundef nonnull align 8 dereferenceable(344) %i.cl, i32 noundef %3, ptr nonnull %i.cm, i64 %.val.i, i16 noundef zeroext %.sroa.4117.0.extract.trunc, ptr noundef nonnull %i.a, ptr noundef nonnull byval(%"struct.cxx20::span.164") align 8 %12, ptr noundef nonnull %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 2 dereferenceable(2) %i.bq) #23 ; 2 uses
  %i.cp = trunc i32 %i.co to i1
  br i1 %i.cp, label %.critedge77, label %bb.ak

bb.ak:                                            ; preds = %.critedge
  %.sroa.5101.0.extract.shift = lshr i32 %i.co, 16
  br label %.loopexit

.critedge77:                                      ; preds = %.critedge
  %.not75 = icmp eq ptr %.070, null
  br i1 %.not75, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %.critedge77
  %i.cq = load i8, ptr %i.a, align 1, !tbaa !250
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %.070, align 2, !tbaa !252
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %.critedge77, %bb.al, %bb.ak
  %.sink = phi i32 [ 0, %.critedge77 ], [ %.sroa.5101.0.extract.shift, %bb.ak ], [ 0, %bb.al ], [ 21, %bb.ai ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.cs, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.am

bb.am:                                            ; preds = %bb.ac, %bb.ag, %.loopexit, %bb.ae, %.thread, %bb.aa, %bb.y, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.an

bb.an:                                            ; preds = %bb.s, %bb.am, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, %bb.q, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host14WasiSockSendV24bodyERKNS_7Runtime12CallingFrameEijjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.WasmEdge::Host::(anonymous namespace)::StaticVector.273", align 8 ; 8 uses
  %i.a = and i32 %4, 3
  %.not91 = icmp eq i32 %i.a, 0
  br i1 %.not91, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.b, align 4, !tbaa !22
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %7, 3
  %.not92 = icmp eq i32 %i.c, 0
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.d, align 4, !tbaa !22
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.h = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #23, !noalias !702
  switch i32 %i.h, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.g
    i32 35, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.i, !noalias !702

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43, !noalias !702
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !44, !noalias !702 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread82, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread82: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.m = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #23, !noalias !702 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25, !noalias !702
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !46, !noalias !702 ; 4 uses
  %i.q = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #23, !noalias !702 ; 0 uses
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.j

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.e, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread82, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.s, align 4, !tbaa !22
  br label %bb.t

bb.j:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.t = and i32 %6, 65535
  %i.u = icmp eq i32 %i.t, 0
  %.sroa.02.0.insert.insert.i = select i1 %i.u, i32 1, i32 1835008 ; 2 uses
  %.sroa.476.0.extract.shift = lshr i32 %.sroa.02.0.insert.insert.i, 16 ; 2 uses
  %.sroa.476.0.extract.trunc = trunc nuw nsw i32 %.sroa.476.0.extract.shift to i16
  %i.v = trunc i32 %.sroa.02.0.insert.insert.i to i1
  br i1 %i.v, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.476.0.extract.shift, ptr %i.w, align 4, !tbaa !22
  br label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.x = icmp ugt i32 %5, 1024
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.y, align 4, !tbaa !22
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.z = zext i32 %4 to i64                       ; 2 uses
  %i.aa = shl nuw nsw i32 %5, 3
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.ae = shl i64 %i.ad, 16                       ; 4 uses
  %i.af = add nuw nsw i64 %i.ab, %i.z
  %i.ag = icmp ugt i64 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %bb.o

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.m
  %.not93 = icmp eq i32 %5, 0
  br i1 %.not93, label %.thread108, label %bb.n

bb.n:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ah, align 4, !tbaa !22
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.z ; 2 uses
  %i.al = zext i32 %7 to i64                      ; 2 uses
  %.not94 = icmp ule i64 %i.ae, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 2 uses
  %i.an = icmp eq ptr %i.aj, null
  %i.ao = select i1 %.not94, i1 true, i1 %i.an
  br i1 %i.ao, label %bb.p, label %bb.q

.thread108:                                       ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.ap = zext i32 %7 to i64                      ; 2 uses
  %.not94111 = icmp samesign ule i64 %i.ae, %i.ap
  %i.aq = icmp eq ptr %.pre, null
  %i.ar = select i1 %.not94111, i1 true, i1 %i.aq
  br i1 %i.ar, label %bb.p, label %.thread114

.thread114:                                       ; preds = %.thread108
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 0, ptr %8, align 8, !tbaa !209
  br label %.critedge

bb.p:                                             ; preds = %.thread108, %bb.o
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.at, align 4, !tbaa !22
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 0, ptr %8, align 8, !tbaa !209
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ab
  %.not96 = icmp eq i32 %5, 0
  br i1 %.not96, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_3
