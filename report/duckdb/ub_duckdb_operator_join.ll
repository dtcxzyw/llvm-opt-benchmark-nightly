Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_operator_join?download=true
inline.NumInlined: 13951
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 44
begin_hunk_0_@__clang_call_terminate
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20AsOfLocalSourceState16ExecuteRightTaskERNS_16ExecutionContextERNS_9DataChunkERNS_19OperatorSourceInputE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2, ptr nofree nonnull readnone align 8 captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  call void @_ZNK6duckdb12optional_ptrINS_14AsOfSourceTaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !708
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !567
  call void @_ZNK6duckdb12optional_ptrINS_14AsOfSourceTaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !708
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !569
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.aa = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18AsOfPayloadScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2240
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !486
  %i.ad = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18AsOfPayloadScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  store i8 1, ptr %i.m, align 1, !tbaa !27
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1185
  store i8 1, ptr %i.af, align 1, !tbaa !483
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2240 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !486
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 2232
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !719
  %.unpack.i = load i64, ptr %i.ad, align 8, !tbaa !477 ; 3 uses
  %.elt2.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.unpack3.i = load i64, ptr %.elt2.i, align 8, !tbaa !477
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %.unpack3.i ; 2 uses
  %i.ak = and i64 %.unpack.i, 1
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.am = getelementptr i8, ptr %i.al, i64 %.unpack.i
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load ptr, ptr %i.an, align 8, !nosanitize !21
  br label %_ZN6duckdb18AsOfPayloadScanner4ScanERNS_9DataChunkE.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = inttoptr i64 %.unpack.i to ptr
  br label %_ZN6duckdb18AsOfPayloadScanner4ScanERNS_9DataChunkE.exit

_ZN6duckdb18AsOfPayloadScanner4ScanERNS_9DataChunkE.exit: ; preds = %bb.d, %bb.e
  %i.aq = phi ptr [ %i.ao, %bb.d ], [ %i.ap, %bb.e ]
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(2256) %i.aj), !inline_history !762 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 2152
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 2128
  call void @_ZN6duckdb9DataChunk16ReferenceColumnsERS0_RKNS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 2176
  %i.av = load i64, ptr %i.au, align 8, !tbaa !41
  %i.aw = load <2 x i64>, ptr %i.ag, align 8, !tbaa !68
  %i.ax = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.av, i64 0
  %i.ay = add <2 x i64> %i.aw, %i.ax
  store <2 x i64> %i.ay, ptr %i.ag, align 8, !tbaa !68
  call void @_ZNK6duckdb12optional_ptrINS_14AsOfSourceTaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !708
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !567
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !567
  %i.bd = load i64, ptr %i.q, align 8, !tbaa !41  ; 5 uses
  %.not93 = icmp eq i64 %i.bd, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb18AsOfPayloadScanner4ScanERNS_9DataChunkE.exit
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !790
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.ac  ; 3 uses
  %xtraiter = and i64 %i.bd, 1
  %i.bg = icmp eq i64 %i.bd, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bd, -2
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.03188.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03287.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod110 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod110)
  %i.bh = getelementptr i8, ptr %i.bf, i64 %.03188.epil.init
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27, !range !20, !noundef !21
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.bk = add i64 %.03287.epil.init, 1
  %i.bl = trunc i64 %.03188.epil.init to i32
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.03287.epil.init
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %_ZN6duckdb18AsOfPayloadScanner4ScanERNS_9DataChunkE.exit
  %.032.lcssa = phi i64 [ 0, %_ZN6duckdb18AsOfPayloadScanner4ScanERNS_9DataChunkE.exit ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.03287.epil.init, %.epil.preheader ], [ %i.bk, %bb.f ] ; 3 uses
  %.not = icmp eq i64 %.032.lcssa, 0
  br i1 %.not, label %bb.b, label %bb.l, !llvm.loop !852

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %.03188 = phi i64 [ 0, %.lr.ph.new ], [ %i.cd, %bb.k ] ; 4 uses
  %.03287 = phi i64 [ 0, %.lr.ph.new ], [ %.1.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.bo = getelementptr i8, ptr %i.bf, i64 %.03188
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !27, !range !20, !noundef !21
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = add i64 %.03287, 1
  %i.bs = trunc i64 %.03188 to i32
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.03287
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i64 [ %.03287, %bb.g ], [ %i.br, %bb.h ] ; 3 uses
  %i.bv = or disjoint i64 %.03188, 1              ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bf, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !27, !range !20, !noundef !21
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = add i64 %.1, 1
  %i.ca = trunc i64 %i.bv to i32
  %i.cb = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.1
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.1 = phi i64 [ %.1, %bb.i ], [ %i.bz, %bb.j ] ; 3 uses
  %i.cd = add nuw i64 %.03188, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !853

bb.l:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !794, !nonnull !21, !align !167
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !795, !nonnull !21, !align !167 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 noundef 0)
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !271 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !174 ; 2 uses
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !272 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 24                ; 2 uses
  %.not94 = icmp eq ptr %i.cn, %i.co
  br i1 %.not94, label %.preheader, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.m

.preheader:                                       ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit41, %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 328 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 336 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !190
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !192 ; 2 uses
  %.not95 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not95, label %.thread, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.lr.ph

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.lr.ph:    ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 824
  br label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit

bb.m:                                             ; preds = %.lr.ph91, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit41
  %.02989 = phi i64 [ 0, %.lr.ph91 ], [ %i.ei, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit41 ] ; 7 uses
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !56
  %i.db = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = sdiv exact i64 %i.de, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.02989, ptr %i.k, align 8, !tbaa !68
  store i64 %i.df, ptr %i.l, align 8, !tbaa !68
  %.not.i.i.i = icmp ult i64 %.02989, %i.df
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit, label %.noexc.i, !prof !69

.noexc.i:                                         ; preds = %bb.m
  %i.dg = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.dh, ptr %7, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 55, ptr %i.d, align 8, !tbaa !68
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.di, ptr %7, align 8, !tbaa !70
  %i.dj = load i64, ptr %i.d, align 8, !tbaa !68  ; 3 uses
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.di, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !120
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  store i8 0, ptr %i.dl, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.p unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %common.resume.sink.split

bb.o:                                             ; preds = %bb.n, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.n ], [ true, %.noexc ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !70    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dh
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.do) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40
  %.sink = phi ptr [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i50 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i35 ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i58 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39 ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i55 ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54 ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63 ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62 ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i50 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i35 ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i58 ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40 ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39 ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i55 ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54 ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54 ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62 ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40 ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63 ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i55 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.n
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.dq = getelementptr inbounds nuw [104 x i8], ptr %i.db, i64 %.02989
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.dq, i8 noundef zeroext 2)
  %i.dr = load ptr, ptr %i.ct, align 8, !tbaa !56
  %i.ds = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.02989, ptr %i.i, align 8, !tbaa !68
  store i64 %i.dw, ptr %i.j, align 8, !tbaa !68
  %.not.i.i.i34 = icmp ult i64 %.02989, %i.dw
  br i1 %.not.i.i.i34, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit41, label %.noexc.i67, !prof !69

.noexc.i67:                                       ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit
  %i.dx = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.dy, ptr %6, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 55, ptr %i.c, align 8, !tbaa !68
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc68 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i35 ; 3 uses

.noexc68:                                         ; preds = %.noexc.i67
  store ptr %i.dz, ptr %6, align 8, !tbaa !70
  %i.ea = load i64, ptr %i.c, align 8, !tbaa !68  ; 3 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dz, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !120
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ea
  store i8 0, ptr %i.ec, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.noexc68
  invoke void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.s unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i35: ; preds = %.noexc.i67
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume.sink.split

bb.r:                                             ; preds = %bb.q, %.noexc68
  %.0.i.i.i38 = phi i1 [ false, %bb.q ], [ true, %.noexc68 ] ; 2 uses
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ef = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dy
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.ef) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0.i.i.i38, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0.i.i.i38, label %common.resume.sink.split, label %common.resume

bb.s:                                             ; preds = %bb.q
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit41: ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.eh = getelementptr inbounds nuw [104 x i8], ptr %i.ds, i64 %.02989
  call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %i.eh, i1 noundef zeroext true)
  %i.ei = add nuw i64 %.02989, 1                  ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ei, %i.cs
  br i1 %exitcond96.not, label %.preheader, label %bb.m, !llvm.loop !854

.thread:                                          ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit64, %.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.032.lcssa, ptr %i.ej, align 8, !tbaa !41
  br label %_ZN6duckdb10unique_ptrINS_18AsOfPayloadScannerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit:          ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.lr.ph, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit64
  %i.ek = phi ptr [ %i.cx, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.lr.ph ], [ %i.fy, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit64 ]
  %.092 = phi i64 [ 0, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.lr.ph ], [ %i.fw, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit64 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.092
  %i.em = load i64, ptr %i.el, align 8, !tbaa !68 ; 3 uses
  %i.en = add nuw i64 %.092, %i.cs                ; 3 uses
  %i.eo = load ptr, ptr %i.cy, align 8, !tbaa !56
  %i.ep = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = sdiv exact i64 %i.es, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.en, ptr %i.g, align 8, !tbaa !68
  store i64 %i.et, ptr %i.h, align 8, !tbaa !68
  %.not.i.i.i49 = icmp ult i64 %i.en, %i.et
  br i1 %.not.i.i.i49, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit56, label %.noexc.i75, !prof !69

.noexc.i75:                                       ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit
  %i.eu = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ev, ptr %5, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 55, ptr %i.b, align 8, !tbaa !68
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc76 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i50 ; 3 uses

.noexc76:                                         ; preds = %.noexc.i75
  store ptr %i.ew, ptr %5, align 8, !tbaa !70
  %i.ex = load i64, ptr %i.b, align 8, !tbaa !68  ; 3 uses
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ew, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !120
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  store i8 0, ptr %i.ez, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc76
  invoke void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.v unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i50: ; preds = %.noexc.i75
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume.sink.split

bb.u:                                             ; preds = %bb.t, %.noexc76
  %.0.i.i.i53 = phi i1 [ false, %bb.t ], [ true, %.noexc76 ] ; 2 uses
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fc = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ev
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.fc) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0.i.i.i53, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i55: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0.i.i.i53, label %common.resume.sink.split, label %common.resume

bb.v:                                             ; preds = %bb.t
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit56: ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fe = load ptr, ptr %i.cz, align 8, !tbaa !56
  %i.ff = load ptr, ptr %i.p, align 8, !tbaa !57  ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sdiv exact i64 %i.fi, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.em, ptr %i.e, align 8, !tbaa !68
  store i64 %i.fj, ptr %i.f, align 8, !tbaa !68
  %.not.i.i.i57 = icmp ult i64 %i.em, %i.fj
  br i1 %.not.i.i.i57, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit64, label %.noexc.i79, !prof !69

.noexc.i79:                                       ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit56
  %i.fk = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.fl, ptr %4, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !68
  %i.fm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc80 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i58 ; 3 uses

.noexc80:                                         ; preds = %.noexc.i79
  store ptr %i.fm, ptr %4, align 8, !tbaa !70
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fm, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !120
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fn
  store i8 0, ptr %i.fp, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc80
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.y unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i58: ; preds = %.noexc.i79
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume.sink.split

bb.x:                                             ; preds = %bb.w, %.noexc80
  %.0.i.i.i61 = phi i1 [ false, %bb.w ], [ true, %.noexc80 ] ; 2 uses
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fs = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fl
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.fs) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0.i.i.i61, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0.i.i.i61, label %common.resume.sink.split, label %common.resume

bb.y:                                             ; preds = %bb.w
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit64: ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit56
  %i.fu = getelementptr inbounds nuw [104 x i8], ptr %i.ep, i64 %i.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fv = getelementptr inbounds nuw [104 x i8], ptr %i.ff, i64 %i.em
  call void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.fu, ptr noundef nonnull align 8 dereferenceable(104) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %.032.lcssa)
  %i.fw = add nuw i64 %.092, 1                    ; 2 uses
  %i.fx = load ptr, ptr %i.cv, align 8, !tbaa !190
  %i.fy = load ptr, ptr %i.cu, align 8, !tbaa !192 ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = ashr exact i64 %i.gb, 3
  %i.gd = icmp ult i64 %i.fw, %i.gc
  br i1 %i.gd, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit, label %.thread, !llvm.loop !855

bb.z:                                             ; preds = %bb.b
  %i.ge = load ptr, ptr %i.o, align 8, !tbaa !702 ; 7 uses
  store ptr null, ptr %i.o, align 8, !tbaa !702
  %.not.i.i.i65 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i65, label %_ZN6duckdb10unique_ptrINS_18AsOfPayloadScannerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 2152
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.gf) #30
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 2128
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb18AsOfPayloadScannerEEclEPS1_.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef nonnull %i.gh) #29
  br label %_ZNKSt14default_deleteIN6duckdb18AsOfPayloadScannerEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb18AsOfPayloadScannerEEclEPS1_.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 1320
  call void @_ZN6duckdb18SortedRunScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(808) dereferenceable(808) %i.gi) #30
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 1216
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.gj) #30
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EED2Ev(ptr noundef nonnull align 8 dereferenceable(1192) %i.gk) #30
  call void @_ZdlPv(ptr noundef nonnull %i.ge) #29
  br label %_ZN6duckdb10unique_ptrINS_18AsOfPayloadScannerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_18AsOfPayloadScannerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb18AsOfPayloadScannerEEclEPS1_.exit.i.i.i, %bb.z, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16PhysicalAsOfJoin14BuildPipelinesERNS_8PipelineERNS_12MetaPipelineE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb22PhysicalComparisonJoin24ConstructEmptyJoinResultENS_8JoinTypeEbRNS_9DataChunkES3_:bb.a
.lr.ph.i.i:                                       ; preds = %bb.g
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !764
  %i.af = shl nuw nsw i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.af, i1 false), !tbaa !68
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.g
  %.not.i.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.not.i, label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ag = and i64 %i.v, 63                        ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = shl nsw i64 -1, %i.ag
  %i.aj = select i1 %i.ah, i64 0, i64 %i.ai
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !764
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ac
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !68
  br label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.ar = load ptr, ptr %2, align 8, !tbaa !57
  %.not = icmp eq ptr %i.aq, %i.ar
  br i1 %.not, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.i
  %.lcssa = phi i64 [ 0, %bb.i ], [ %i.bi, %.lr.ph ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.au = load ptr, ptr %3, align 8, !tbaa !57
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 104
  %i.az = icmp ult i64 %.lcssa, %i.ay
  br i1 %i.az, label %.lr.ph52, label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.04550 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %bb.i ] ; 3 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.04550)
  %i.bb = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.04550)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.ba, ptr noundef nonnull align 8 dereferenceable(104) %i.bb)
  %i.bc = add nuw i64 %.04550, 1                  ; 2 uses
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.be = load ptr, ptr %2, align 8, !tbaa !57
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 104               ; 2 uses
  %i.bj = icmp ult i64 %i.bc, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.preheader, !llvm.loop !901

.lr.ph52:                                         ; preds = %.preheader, %.lr.ph52
  %.051 = phi i64 [ %i.bm, %.lr.ph52 ], [ %.lcssa, %.preheader ] ; 3 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.051)
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.bk, i8 noundef zeroext 2)
  %i.bl = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.051)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, i1 noundef zeroext true)
  %i.bm = add nuw i64 %.051, 1                    ; 2 uses
  %i.bn = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.bo = load ptr, ptr %3, align 8, !tbaa !57
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  %i.bt = icmp ult i64 %i.bm, %i.bs
  br i1 %i.bt, label %.lr.ph52, label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit, !llvm.loop !902

_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit: ; preds = %.lr.ph52, %.lr.ph57.preheader, %.preheader, %bb.d, %bb.h, %._crit_edge.i.i, %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 3) i8 @_ZN6duckdb20CrossProductExecutor7ExecuteERNS_9DataChunkES2_(ptr noundef nonnull align 8 dereferenceable(235) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !903, !nonnull !21, !align !167 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !904, !range !20, !noundef !21
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8, !tbaa !904
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 0, ptr %i.h, align 1, !tbaa !905
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 234
  store i8 0, ptr %i.i, align 2, !tbaa !893
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNK6duckdb20ColumnDataCollection14InitializeScanERNS_19ColumnDataScanStateENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i8 noundef zeroext 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.k, align 8, !tbaa !894
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !894
  %i.o = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !894
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 3 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !893, !range !20, !noundef !21 ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.in.i = select i1 %i.r, ptr %i.s, ptr %i.t
  %i.u = load i64, ptr %.in.i, align 8, !tbaa !41
  %i.v = icmp ult i64 %i.o, %i.u
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !903, !nonnull !21, !align !167
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(144) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.y) ; 0 uses
  store i64 0, ptr %i.m, align 8, !tbaa !894
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !41  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN6duckdb20CrossProductExecutor9NextValueERNS_9DataChunkES2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !41
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = zext i1 %i.ad to i8                     ; 2 uses
  store i8 %i.ae, ptr %i.p, align 2, !tbaa !893
  br label %bb.g

_ZN6duckdb20CrossProductExecutor9NextValueERNS_9DataChunkES2_.exit: ; preds = %bb.e
  store i8 0, ptr %i.e, align 8, !tbaa !904
  br label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.af = phi i8 [ %i.ae, %bb.f ], [ %i.q, %bb.d ] ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ai = select i1 %i.ag, ptr %i.ah, ptr %1      ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !57 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 104
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = load ptr, ptr %1, align 8, !tbaa !57
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 104
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ax = phi i64 [ %i.aw, %bb.h ], [ 0, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !41
  %.not = icmp eq ptr %i.ak, %i.al
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i8, ptr %i.p, align 2, !tbaa !893, !range !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.bb = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.af, %bb.i ]
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  %i.bd = select i1 %i.bc, ptr %1, ptr %i.ah      ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !56 ; 2 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 104
  br i1 %i.bc, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.02831 = phi i64 [ %i.bo, %.lr.ph ], [ 0, %bb.i ] ; 3 uses
  %i.bl = add i64 %.02831, %i.ax
  %i.bm = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bl)
  %i.bn = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %.02831)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.bm, ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
  %i.bo = add nuw i64 %.02831, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %i.ap
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !906

bb.j:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56
  %i.br = load ptr, ptr %1, align 8, !tbaa !57
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 104
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.bw = phi i64 [ %i.bv, %bb.j ], [ 0, %._crit_edge ]
  %.not35 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not35, label %.loopexit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph34, %bb.l
  %.032 = phi i64 [ 0, %.lr.ph34 ], [ %i.cd, %bb.l ] ; 3 uses
  %i.by = add i64 %.032, %i.bw
  %i.bz = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.by)
  %i.ca = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 noundef %.032)
  %i.cb = load i64, ptr %i.m, align 8, !tbaa !894
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !41
  tail call void @_ZN6duckdb14ConstantVector9ReferenceERNS_6VectorES2_mm(ptr noundef nonnull align 8 dereferenceable(104) %i.bz, ptr noundef nonnull align 8 dereferenceable(104) %i.ca, i64 noundef %i.cb, i64 noundef %i.cc)
  %i.cd = add nuw i64 %.032, 1                    ; 2 uses
  %exitcond37.not = icmp eq i64 %i.cd, %i.bk
  br i1 %exitcond37.not, label %.loopexit, label %bb.l, !llvm.loop !907

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.a, %_ZN6duckdb20CrossProductExecutor9NextValueERNS_9DataChunkES2_.exit
  %.029 = phi i8 [ 0, %_ZN6duckdb20CrossProductExecutor9NextValueERNS_9DataChunkES2_.exit ], [ 2, %bb.a ], [ 1, %bb.k ], [ 1, %bb.l ]
  ret i8 %.029
}

declare noundef i64 @_ZN6duckdb18ExpressionExecutor16SelectExpressionERNS_9DataChunkERNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb23PhysicalBlockwiseNLJoin14ParamsToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.duckdb::InsertionOrderPreservingMap") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.c, ptr %i.b, align 8, !tbaa !908
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %i.d, align 8, !tbaa !910
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !911
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.i = load i8, ptr %i.h, align 1, !tbaa !275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.j = invoke noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_8JoinTypeEEEPKcT_(i8 noundef zeroext %i.i)
          to label %.noexc unwind label %bb.t     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !119, !alias.scope !912
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %.noexc
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.52) #31
          to label %.noexc14 unwind label %bb.t

.noexc14:                                         ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.noexc
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !912
  store i64 %i.m, ptr %i.a, align 8, !tbaa !68, !noalias !912
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc15 unwind label %bb.t   ; 2 uses

.noexc15:                                         ; preds = %.noexc.i.i
  store ptr %i.o, ptr %2, align 8, !tbaa !70, !alias.scope !912
  %i.p = load i64, ptr %i.a, align 8, !tbaa !68, !noalias !912
  store i64 %i.p, ptr %i.k, align 8, !tbaa !66, !alias.scope !912
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc15, %bb.b
  %i.q = phi ptr [ %i.o, %.noexc15 ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %._crit_edge.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.j, align 1, !tbaa !66
  store i8 %i.r, ptr %i.q, align 1, !tbaa !66
  br label %._crit_edge.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.m, i1 false)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !68, !noalias !912 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !120, !alias.scope !912
  %i.u = load ptr, ptr %2, align 8, !tbaa !70, !alias.scope !912
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !912
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.w, ptr noundef nonnull align 1 dereferenceable(9) @.str.8, i64 9, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.x, align 8, !tbaa !120
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.y, align 1, !tbaa !66
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixERKS6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.u       ; 9 uses

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  %i.ad = load ptr, ptr %2, align 8, !tbaa !70    ; 6 uses
  %i.ae = icmp eq ptr %i.ad, %i.k                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.ae, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = load i64, ptr %i.t, align 8, !tbaa !120 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %.not21.i = icmp eq ptr %2, %i.z
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !67

bb.g:                                             ; preds = %bb.f
  switch i64 %i.af, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !66
  store i8 %i.ah, ptr %i.aa, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ai = load i64, ptr %i.t, align 8, !tbaa !120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !120
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !66
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !70
  %i.an = load i64, ptr %i.t, align 8, !tbaa !120
  store i64 %i.an, ptr %i.am, align 8, !tbaa !120
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !66
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !66
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !66
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !70
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !120
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !120
  %i.as = load i64, ptr %i.k, align 8, !tbaa !66
  store i64 %i.as, ptr %i.ab, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aa, ptr %2, align 8, !tbaa !70
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %2, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.at = phi ptr [ %i.aa, %bb.j ], [ %i.k, %bb.k ], [ %i.ad, %bb.f ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.t, align 8, !tbaa !120
  store i8 0, ptr %i.at, align 1, !tbaa !66
  %i.au = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.w
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.aw = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.k
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
end_hunk_1
begin_hunk_2_@_ZNK6duckdb26PhysicalPiecewiseMergeJoin20GetGlobalSourceStateERNS_13ClientContextE:bb.a

_ZNSt10unique_ptrIN6duckdb28PiecewiseJoinGlobalScanStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c
  store ptr %i.i, ptr %0, align 8, !tbaa !782
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb26PhysicalPiecewiseMergeJoin19GetLocalSourceStateERNS_16ExecutionContextERNS_17GlobalSourceStateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.551") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(80) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(664) ptr @_Znwm(i64 noundef 664) #28, !noalias !2207 ; 3 uses
  invoke void @_ZN6duckdb27PiecewiseJoinLocalScanStateC2ERNS_28PiecewiseJoinGlobalScanStateE(ptr noundef nonnull align 8 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(736) %3)
          to label %_ZNSt10unique_ptrIN6duckdb27PiecewiseJoinLocalScanStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !2207

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #29, !noalias !2207
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb27PiecewiseJoinLocalScanStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !802
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZNK6duckdb26PhysicalPiecewiseMergeJoin15GetDataInternalERNS_16ExecutionContextERNS_9DataChunkERNS_19OperatorSourceInputE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = load ptr, ptr %3, align 8, !tbaa !833, !nonnull !21, !align !167 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 2 uses
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load atomic i64, ptr %i.r seq_cst, align 8
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !834, !nonnull !21, !align !167 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 568 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 640 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 728 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 592 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.epilog-lcssa, %bb.b
  tail call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.y)
  %i.ag = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.ag) #31
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.c
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !2210
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !2213, !nonnull !21, !align !167
  %i.aj = invoke noundef zeroext i1 @_ZN6duckdb19TupleDataCollection4ScanERNS_26TupleDataParallelScanStateERNS_18TupleDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(192) %i.ai, ptr noundef nonnull align 8 dereferenceable(600) %i.ae, ptr noundef nonnull align 8 dereferenceable(560) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %_ZN6duckdb28PiecewiseJoinGlobalScanState4ScanERNS_18TupleDataScanStateERNS_9DataChunkE.exit unwind label %bb.e ; 0 uses

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i70, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i62, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.p, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i69 ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61 ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.p ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i62 ], [ %.pn8.i.i.i58, %bb.t ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i70 ], [ %.pn8.i.i.i66, %bb.y ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78 ], [ %.pn8.i.i.i74, %bb.ac ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #30 ; 0 uses
  br label %common.resume

_ZN6duckdb28PiecewiseJoinGlobalScanState4ScanERNS_18TupleDataScanStateERNS_9DataChunkE.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.am = load i64, ptr %i.af, align 8, !tbaa !41
  %i.an = load i64, ptr %i.ac, align 8, !tbaa !2210
  %i.ao = add i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.ac, align 8, !tbaa !2210
  %i.ap = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #30 ; 0 uses
  %i.aq = load i64, ptr %i.af, align 8, !tbaa !41 ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZN6duckdb28PiecewiseJoinGlobalScanState4ScanERNS_18TupleDataScanStateERNS_9DataChunkE.exit
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ah   ; 3 uses
  %xtraiter = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.aq, 1
  br i1 %i.at, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %i.aq, -2
  br label %bb.g

.thread:                                          ; preds = %_ZN6duckdb28PiecewiseJoinGlobalScanState4ScanERNS_18TupleDataScanStateERNS_9DataChunkE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !41
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i8
  br label %bb.ae

.unr-lcssa:                                       ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.046108.epil.init = phi i64 [ 0, %.preheader ], [ %i.bu, %.unr-lcssa ] ; 2 uses
  %.047107.epil.init = phi i64 [ 0, %.preheader ], [ %.1.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod141 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.ay = getelementptr i8, ptr %i.as, i64 %.046108.epil.init
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !27, !range !20, !noundef !21
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.epilog-lcssa, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.bb = add i64 %.047107.epil.init, 1
  %i.bc = trunc i64 %.046108.epil.init to i32
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.047107.epil.init
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !3
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.f, %.unr-lcssa
  %.1.lcssa = phi i64 [ %.1.1, %.unr-lcssa ], [ %.047107.epil.init, %.epil.preheader ], [ %i.bb, %bb.f ] ; 3 uses
  %.not54 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not54, label %bb.c, label %bb.l

bb.g:                                             ; preds = %bb.k, %.preheader.new
  %.046108 = phi i64 [ 0, %.preheader.new ], [ %i.bu, %bb.k ] ; 4 uses
  %.047107 = phi i64 [ 0, %.preheader.new ], [ %.1.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.bf = getelementptr i8, ptr %i.as, i64 %.046108
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !27, !range !20, !noundef !21
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = add i64 %.047107, 1
  %i.bj = trunc i64 %.046108 to i32
  %i.bk = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.047107
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i64 [ %.047107, %bb.g ], [ %i.bi, %bb.h ] ; 3 uses
  %i.bm = or disjoint i64 %.046108, 1             ; 2 uses
  %i.bn = getelementptr i8, ptr %i.as, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !27, !range !20, !noundef !21
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = add i64 %.1, 1
  %i.br = trunc i64 %i.bm to i32
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.1
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.1 = phi i64 [ %.1, %bb.i ], [ %i.bq, %bb.j ] ; 3 uses
  %i.bu = add nuw i64 %.046108, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.g, !llvm.loop !2214

bb.l:                                             ; preds = %.epilog-lcssa
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef 0)
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !271 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !174 ; 2 uses
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !272 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 24                ; 2 uses
  %.not114 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit63, %bb.l
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef 1)
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !271 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !174 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !272 ; 2 uses
  %.not115 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not115, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %._crit_edge
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 576
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit63
  %.045109 = phi i64 [ 0, %.lr.ph ], [ %i.eb, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit63 ] ; 7 uses
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !56
  %i.cu = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.045109, ptr %i.k, align 8, !tbaa !68
  store i64 %i.cy, ptr %i.l, align 8, !tbaa !68
  %.not.i.i.i55 = icmp ult i64 %.045109, %i.cy
  br i1 %.not.i.i.i55, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit, label %.noexc.i, !prof !69

.noexc.i:                                         ; preds = %bb.m
  %i.cz = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.da, ptr %7, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 55, ptr %i.d, align 8, !tbaa !68
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.db, ptr %7, align 8, !tbaa !70
  %i.dc = load i64, ptr %i.d, align 8, !tbaa !68  ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.db, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !120
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store i8 0, ptr %i.de, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.cz, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.q unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.n ], [ true, %.noexc ] ; 2 uses
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !70    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.da
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.dh) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.0.i.i.i, label %bb.p, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.0.i.i.i, label %bb.p, label %common.resume

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cz) #30
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.dj = getelementptr inbounds nuw [104 x i8], ptr %i.cu, i64 %.045109
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, i8 noundef zeroext 2)
  %i.dk = load ptr, ptr %i.cg, align 8, !tbaa !56
  %i.dl = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.045109, ptr %i.i, align 8, !tbaa !68
  store i64 %i.dp, ptr %i.j, align 8, !tbaa !68
  %.not.i.i.i56 = icmp ult i64 %.045109, %i.dp
  br i1 %.not.i.i.i56, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit63, label %.noexc.i81, !prof !69

.noexc.i81:                                       ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit
  %i.dq = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.dr, ptr %6, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 55, ptr %i.c, align 8, !tbaa !68
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc82 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i57 ; 3 uses

.noexc82:                                         ; preds = %.noexc.i81
  store ptr %i.ds, ptr %6, align 8, !tbaa !70
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !68  ; 3 uses
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ds, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !120
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc82
  invoke void @__cxa_throw(ptr nonnull %i.dq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.u unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i57: ; preds = %.noexc.i81
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %.noexc82
  %.0.i.i.i60 = phi i1 [ false, %bb.r ], [ true, %.noexc82 ] ; 2 uses
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dy = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dr
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.dy) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0.i.i.i60, label %bb.t, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i62: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0.i.i.i60, label %bb.t, label %common.resume

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i57
  %.pn8.i.i.i58 = phi { ptr, i32 } [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i57 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i62 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61 ]
  call void @__cxa_free_exception(ptr %i.dq) #30
  br label %common.resume

bb.u:                                             ; preds = %bb.r
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit63: ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ea = getelementptr inbounds nuw [104 x i8], ptr %i.dl, i64 %.045109
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ea, i1 noundef zeroext true)
  %i.eb = add nuw i64 %.045109, 1                 ; 2 uses
  %exitcond119.not = icmp eq i64 %i.eb, %i.cf
  br i1 %exitcond119.not, label %._crit_edge, label %bb.m, !llvm.loop !2215

bb.v:                                             ; preds = %.lr.ph112, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit79
  %.0110 = phi i64 [ 0, %.lr.ph112 ], [ %i.fl, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit79 ] ; 5 uses
  %i.ec = add nuw i64 %.0110, %i.cf               ; 3 uses
  %i.ed = load ptr, ptr %i.cr, align 8, !tbaa !56
  %i.ee = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = sdiv exact i64 %i.eh, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.ec, ptr %i.g, align 8, !tbaa !68
  store i64 %i.ei, ptr %i.h, align 8, !tbaa !68
  %.not.i.i.i64 = icmp ult i64 %i.ec, %i.ei
  br i1 %.not.i.i.i64, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit71, label %.noexc.i85, !prof !69

.noexc.i85:                                       ; preds = %bb.v
  %i.ej = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ek, ptr %5, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 55, ptr %i.b, align 8, !tbaa !68
  %i.el = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc86 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i65 ; 3 uses

.noexc86:                                         ; preds = %.noexc.i85
  store ptr %i.el, ptr %5, align 8, !tbaa !70
  %i.em = load i64, ptr %i.b, align 8, !tbaa !68  ; 3 uses
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.el, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !120
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  store i8 0, ptr %i.eo, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc86
  invoke void @__cxa_throw(ptr nonnull %i.ej, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.z unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i65: ; preds = %.noexc.i85
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %.noexc86
  %.0.i.i.i68 = phi i1 [ false, %bb.w ], [ true, %.noexc86 ] ; 2 uses
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.er = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ek
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i69: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.er) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0.i.i.i68, label %bb.y, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i70: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0.i.i.i68, label %bb.y, label %common.resume

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i65
  %.pn8.i.i.i66 = phi { ptr, i32 } [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i65 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i70 ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i69 ]
  call void @__cxa_free_exception(ptr %i.ej) #30
  br label %common.resume

bb.z:                                             ; preds = %bb.w
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit71: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.et = load ptr, ptr %i.cs, align 8, !tbaa !56
  %i.eu = load ptr, ptr %i.y, align 8, !tbaa !57  ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = sdiv exact i64 %i.ex, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.0110, ptr %i.e, align 8, !tbaa !68
  store i64 %i.ey, ptr %i.f, align 8, !tbaa !68
  %.not.i.i.i72 = icmp ult i64 %.0110, %i.ey
  br i1 %.not.i.i.i72, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit79, label %.noexc.i89, !prof !69

.noexc.i89:                                       ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit71
  %i.ez = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.fa, ptr %4, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !68
  %i.fb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc90 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i73 ; 3 uses

.noexc90:                                         ; preds = %.noexc.i89
  store ptr %i.fb, ptr %4, align 8, !tbaa !70
  %i.fc = load i64, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fb, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !120
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
  store i8 0, ptr %i.fe, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc90
  invoke void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ad unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i73: ; preds = %.noexc.i89
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %.noexc90
  %.0.i.i.i76 = phi i1 [ false, %bb.aa ], [ true, %.noexc90 ] ; 2 uses
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fh = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.fa
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.fh) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0.i.i.i76, label %bb.ac, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0.i.i.i76, label %bb.ac, label %common.resume

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i73
  %.pn8.i.i.i74 = phi { ptr, i32 } [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i73 ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77 ]
  call void @__cxa_free_exception(ptr %i.ez) #30
  br label %common.resume

bb.ad:                                            ; preds = %bb.aa
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit79: ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit71
  %i.fj = getelementptr inbounds nuw [104 x i8], ptr %i.ee, i64 %i.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fk = getelementptr inbounds nuw [104 x i8], ptr %i.eu, i64 %.0110
  tail call void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.fj, ptr noundef nonnull align 8 dereferenceable(104) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.1.lcssa)
  %i.fl = add nuw i64 %.0110, 1                   ; 2 uses
  %exitcond121.not = icmp eq i64 %i.fl, %i.cq
  br i1 %exitcond121.not, label %._crit_edge113, label %bb.v, !llvm.loop !2216

._crit_edge113:                                   ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit79, %._crit_edge
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.lcssa, ptr %i.fm, align 8, !tbaa !41
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %._crit_edge113, %bb.a
  %.3 = phi i8 [ 1, %bb.a ], [ %i.ax, %.thread ], [ 0, %._crit_edge113 ]
  ret i8 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22PhysicalPositionalJoinC2ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS_16PhysicalOperatorES8_m(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef captures(none) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) %4, i64 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::vector.24", align 16 ; 7 uses
  %i.a = load <2 x ptr>, ptr %2, align 8, !tbaa !694
  store <2 x ptr> %i.a, ptr %6, align 16, !tbaa !694
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  store ptr %i.d, ptr %i.b, align 16, !tbaa !175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb16PhysicalOperatorC2ERNS_12PhysicalPlanENS_20PhysicalOperatorTypeENS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 39, ptr noundef nonnull %6, i64 noundef %5)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load ptr, ptr %6, align 16, !tbaa !272   ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !174  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #30
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !274

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %6, align 16, !tbaa !272
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.f, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTVN6duckdb22PhysicalPositionalJoinE, i64 16), ptr %0, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !163, !nonnull !21, !align !167
  %i.l = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 noundef 16)
          to label %.noexc unwind label %bb.i     ; 4 uses

.noexc:                                           ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  store ptr null, ptr %i.l, align 8, !tbaa !168
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = ptrtoint ptr %3 to i64
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !173
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.o, %.noexc ]
  store ptr %i.l, ptr %i.s, align 8, !tbaa !268
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.l, ptr %i.t, align 8, !tbaa !173
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !269
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !269
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !163, !nonnull !21, !align !167
  %i.y = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 noundef 16)
          to label %.noexc11 unwind label %bb.j   ; 4 uses

.noexc11:                                         ; preds = %bb.e
  store ptr null, ptr %i.y, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = ptrtoint ptr %4 to i64
  store i64 %i.aa, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !172
  %.not.i10 = icmp eq ptr %i.ab, null
  br i1 %.not.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc11
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc11
  %i.ad = phi ptr [ %i.ac, %bb.f ], [ %i.o, %.noexc11 ]
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !268
  store ptr %i.y, ptr %i.t, align 8, !tbaa !173
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !269
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.u, align 8, !tbaa !269
  ret void

bb.h:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #30
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ah, %bb.i ]
  call void @_ZN6duckdb16PhysicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.ag, %bb.h ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22PhysicalPositionalJoin18GetGlobalSinkStateERNS_13ClientContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.57") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(512) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(568) ptr @_Znwm(i64 noundef 568) #28, !noalias !2217 ; 3 uses
  invoke void @_ZN6duckdb25PositionalJoinGlobalStateC2ERNS_13ClientContextERKNS_22PhysicalPositionalJoinE(ptr noundef nonnull align 8 dereferenceable(561) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %_ZNSt10unique_ptrIN6duckdb25PositionalJoinGlobalStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !2217

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #29, !noalias !2217
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb25PositionalJoinGlobalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb22PhysicalPositionalJoin4SinkERNS_16ExecutionContextERNS_9DataChunkERNS_17OperatorSinkInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !294, !nonnull !21, !align !167 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #31
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  invoke void @_ZN6duckdb20ColumnDataCollection6AppendERNS_21ColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #30 ; 0 uses
  ret i8 0

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #30 ; 0 uses
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv(ptr noundef nonnull align 8 dereferenceable(561) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2220, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !2220
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZNK6duckdb20ColumnDataCollection14InitializeScanERNS_19ColumnDataScanStateENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i8 noundef zeroext 1)
  br label %bb.c
end_hunk_2
begin_hunk_3_@_ZN6duckdb25PositionalJoinGlobalState8CopyDataERNS_9DataChunkEmm:bb.a
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %._crit_edge51.loopexit, %.preheader
  %i.o = phi i64 [ %.pre56, %._crit_edge51.loopexit ], [ 0, %.preheader ]
  %i.p = add i64 %i.o, %2
  store i64 %i.p, ptr %i.d, align 8, !tbaa !2229
  br label %.loopexit

.lr.ph50:                                         ; preds = %.preheader, %.lr.ph50
  %.02849 = phi i64 [ %i.t, %.lr.ph50 ], [ 0, %.preheader ] ; 3 uses
  %i.q = add i64 %.02849, %3
  %i.r = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.q)
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.02849)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %i.s)
  %i.t = add nuw i64 %.02849, 1                   ; 2 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 104
  %i.aa = icmp ult i64 %i.t, %i.z
  br i1 %i.aa, label %.lr.ph50, label %._crit_edge51.loopexit, !llvm.loop !2232

bb.c:                                             ; preds = %bb.a
  %.not52 = icmp eq i64 %2, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %._crit_edge
  %.02747 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %._crit_edge ] ; 3 uses
  %i.ag = sub nuw i64 %2, %.02747                 ; 2 uses
  %i.ah = load i8, ptr %i.ab, align 8, !tbaa !2230, !range !20, !noundef !21
  %i.ai = trunc nuw i8 %i.ah to i1
  %.pre = load i64, ptr %i.d, align 8, !tbaa !2229 ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.ak = sub i64 %i.aj, %.pre
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ak)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.am = phi i64 [ %i.al, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %i.an = add i64 %.pre, %i.am                    ; 2 uses
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %.not53 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not53, label %._crit_edge, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit

._crit_edge.loopexit:                             ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit38
  %.pre55 = load i64, ptr %i.d, align 8, !tbaa !2229
  %.pre57 = add i64 %.pre55, %i.am
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.pre-phi = phi i64 [ %.pre57, %._crit_edge.loopexit ], [ %i.an, %bb.f ]
  %i.aq = add i64 %i.am, %.02747                  ; 2 uses
  store i64 %.pre-phi, ptr %i.d, align 8, !tbaa !2229
  %i.ar = tail call noundef i64 @_ZN6duckdb25PositionalJoinGlobalState6RefillEv(ptr noundef nonnull align 8 dereferenceable(561) %0) ; 0 uses
  %i.as = icmp ult i64 %i.aq, %2
  br i1 %i.as, label %bb.d, label %.loopexit, !llvm.loop !2233

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit: ; preds = %bb.f, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit38
  %i.at = phi ptr [ %i.bq, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit38 ], [ %i.ap, %bb.f ]
  %.046 = phi i64 [ %i.bo, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit38 ], [ 0, %bb.f ] ; 3 uses
  %i.au = add nuw i64 %.046, %3                   ; 3 uses
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.aw = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.au, ptr %i.b, align 8, !tbaa !68
  store i64 %i.ba, ptr %i.c, align 8, !tbaa !68
  %.not.i.i.i31 = icmp ult i64 %i.au, %i.ba
  br i1 %.not.i.i.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit38, label %.noexc.i40, !prof !69

.noexc.i40:                                       ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !68
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc41 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i32 ; 3 uses

.noexc41:                                         ; preds = %.noexc.i40
  store ptr %i.bd, ptr %4, align 8, !tbaa !70
  %i.be = load i64, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bd, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !120
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  store i8 0, ptr %i.bg, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc41
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.k unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i32: ; preds = %.noexc.i40
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %.noexc41
  %.0.i.i.i35 = phi i1 [ false, %bb.g ], [ true, %.noexc41 ] ; 2 uses
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bj = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bc
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.bj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0.i.i.i35, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i37: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0.i.i.i35, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i32
  %.pn8.i.i.i33 = phi { ptr, i32 } [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i32 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i37 ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36 ]
  call void @__cxa_free_exception(ptr %i.bb) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36
  %.pn7.i.i.i34 = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i37 ], [ %.pn8.i.i.i33, %bb.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36 ]
  resume { ptr, i32 } %.pn7.i.i.i34

bb.k:                                             ; preds = %bb.g
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit38: ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit
  %i.bl = getelementptr inbounds nuw [104 x i8], ptr %i.at, i64 %.046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bm = getelementptr inbounds nuw [104 x i8], ptr %i.aw, i64 %i.au
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !2229
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef nonnull align 8 dereferenceable(104) %i.bm, i64 noundef %i.an, i64 noundef %i.bn, i64 noundef %.02747)
  %i.bo = add nuw i64 %.046, 1                    ; 2 uses
  %i.bp = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.bq = load ptr, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 104
  %i.bv = icmp ult i64 %i.bo, %i.bu
  br i1 %i.bv, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit, label %._crit_edge.loopexit, !llvm.loop !2234

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %._crit_edge51
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !56
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 104
  ret i64 %i.cd
}

declare void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25PositionalJoinGlobalState7ExecuteERNS_9DataChunkES2_(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #31
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !57     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 104                 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !2220, !range !20, !noundef !21
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.l, align 8, !tbaa !2220
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 480
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke void @_ZNK6duckdb20ColumnDataCollection14InitializeScanERNS_19ColumnDataScanStateENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(144) %i.q, i8 noundef zeroext 1)
          to label %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit unwind label %bb.j

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.f
  %.022 = phi i64 [ %i.t, %bb.f ], [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.022)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.s = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.022)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %i.s)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i64 %.022, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2235

bb.g:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit: ; preds = %._crit_edge, %.noexc
  %i.v = invoke noundef i64 @_ZN6duckdb25PositionalJoinGlobalState6RefillEv(ptr noundef nonnull align 8 dereferenceable(561) %0)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit
  %i.w = invoke noundef i64 @_ZN6duckdb25PositionalJoinGlobalState8CopyDataERNS_9DataChunkEmm(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.k, i64 noundef %i.i)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.k, ptr %i.x, align 8, !tbaa !41
  %i.y = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  ret void

bb.j:                                             ; preds = %.noexc, %bb.c, %bb.h, %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.z, %bb.j ]
  %i.aa = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb22PhysicalPositionalJoin7ExecuteERNS_16ExecutionContextERNS_9DataChunkES4_RNS_19GlobalOperatorStateERNS_13OperatorStateE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  tail call void @_ZN6duckdb25PositionalJoinGlobalState7ExecuteERNS_9DataChunkES2_(ptr noundef nonnull align 8 dereferenceable(561) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  ret i8 0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25PositionalJoinGlobalState7GetDataERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #31
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !2220, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store i8 1, ptr %i.c, align 8, !tbaa !2220
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke void @_ZNK6duckdb20ColumnDataCollection14InitializeScanERNS_19ColumnDataScanStateENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.h, i8 noundef zeroext 1)
          to label %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit unwind label %bb.e

_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.noexc
  %i.i = invoke noundef i64 @_ZN6duckdb25PositionalJoinGlobalState6RefillEv(ptr noundef nonnull align 8 dereferenceable(561) %0)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2230, !range !20, !noundef !21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.k, label %bb.f

bb.e:                                             ; preds = %.noexc, %bb.c, %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = load ptr, ptr %1, align 8, !tbaa !57
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %.neg = sdiv exact i64 %i.aa, -104
  %i.ab = add nsw i64 %.neg, %i.t                 ; 3 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2229
  %i.ag = sub i64 %i.ad, %i.af
  %i.ah = tail call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 2048) ; 2 uses
  %i.ai = invoke noundef i64 @_ZN6duckdb25PositionalJoinGlobalState8CopyDataERNS_9DataChunkEmm(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ah, i64 noundef %i.ab)
          to label %bb.k unwind label %bb.l       ; 0 uses

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %.024 = phi i64 [ %i.ak, %bb.i ], [ 0, %bb.f ]  ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.024)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %.lr.ph
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i8 noundef zeroext 2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2236

bb.j:                                             ; preds = %bb.h, %bb.g, %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge, %bb.d
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ah, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sink, ptr %i.am, align 8, !tbaa !41
  %i.an = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  ret void

bb.l:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.al, %bb.j ], [ %i.ao, %bb.l ]
  %i.ap = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZNK6duckdb22PhysicalPositionalJoin15GetDataInternalERNS_16ExecutionContextERNS_9DataChunkERNS_19OperatorSourceInputE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  tail call void @_ZN6duckdb25PositionalJoinGlobalState7GetDataERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(561) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq i64 %i.d, 0
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22PhysicalPositionalJoin14BuildPipelinesERNS_8PipelineERNS_12MetaPipelineE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6duckdb12PhysicalJoin18BuildJoinPipelinesERNS_8PipelineERNS_12MetaPipelineERNS_16PhysicalOperatorEb(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(136) %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22PhysicalPositionalJoin10GetSourcesEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.772") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.duckdb::vector.772") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %i.c)
  %i.g = load ptr, ptr %1, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !980  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_3
