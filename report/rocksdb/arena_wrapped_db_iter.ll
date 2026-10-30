Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/arena_wrapped_db_iter?download=true
inline.NumInlined: 968
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7rocksdb6DBIterD2Ev:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1860
  store i32 0, ptr %i.q, align 4, !tbaa !313
  %i.r = invoke noundef i32 @_ZN7rocksdb16ThreadStatusUtil18GetThreadOperationEv()
          to label %bb.f unwind label %bb.be

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7rocksdb16ThreadStatusUtil18SetThreadOperationENS_12ThreadStatus13OperationTypeE(i32 noundef 0)
          to label %bb.g unwind label %bb.be

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !206, !range !79, !noundef !80
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7rocksdb22PinnedIteratorsManager17ReleasePinnedDataEv(ptr noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %bb.i unwind label %bb.be

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !317  ; 3 uses
  %.not.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i1, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(33) %i.x, i32 noundef 73, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.be, !inline_history !3

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %bb.i, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !318
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !319
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !319
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1869
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !194, !range !79, !noundef !80
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.k, label %_ZN7rocksdb6DBIter31ResetInternalKeysSkippedCounterEv.exit

bb.k:                                             ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  %i.aj = add i64 %i.af, -1
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !319
  br label %_ZN7rocksdb6DBIter31ResetInternalKeysSkippedCounterEv.exit

_ZN7rocksdb6DBIter31ResetInternalKeysSkippedCounterEv.exit: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, %bb.k
  store i64 0, ptr %i.ab, align 8, !tbaa !318
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !317
  invoke void @_ZN7rocksdb6DBIter15LocalStatistics20BumpGlobalStatisticsEPNS_10StatisticsE(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef %i.al)
          to label %bb.l unwind label %bb.be

bb.l:                                             ; preds = %_ZN7rocksdb6DBIter31ResetInternalKeysSkippedCounterEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104 ; 3 uses
  %.not.i2 = icmp eq ptr %i.an, null
  br i1 %.not.i2, label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE10DeleteIterEb.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1882
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !320, !range !79, !noundef !80
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !106
  %spec.select.idx = select i1 %i.aq, i64 0, i64 8
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ar, i64 %spec.select.idx
  %.sink.i = load ptr, ptr %spec.select, align 8
  tail call void %.sink.i(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #21, !inline_history !311
  br label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE10DeleteIterEb.exit

_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE10DeleteIterEb.exit: ; preds = %bb.l, %.sink.split.i
  invoke void @_ZN7rocksdb16ThreadStatusUtil18SetThreadOperationENS_12ThreadStatus13OperationTypeE(i32 noundef %i.r)
          to label %bb.m unwind label %bb.be

bb.m:                                             ; preds = %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE10DeleteIterEb.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !207 ; 3 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !321 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2112
  store i64 0, ptr %i.ax, align 8, !tbaa !208
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.ay
  br i1 %.not.i.i, label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = icmp eq ptr %i.av, null
  br i1 %i.az, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.av) #20
  %.pre.pre.i = load ptr, ptr %i.at, align 8, !tbaa !207
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.q ], [ %i.au, %bb.p ]
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !321
  br label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i

_ZN7rocksdb7IterKey11ResetBufferEv.exit.i:        ; preds = %bb.r, %bb.o
  %i.ba = phi ptr [ %i.au, %bb.o ], [ %.pre.i, %bb.r ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store i64 39, ptr %i.bb, align 8, !tbaa !322
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !323 ; 4 uses
  %i.be = icmp eq ptr %i.ba, %i.bd
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2112
  store i64 0, ptr %i.bf, align 8, !tbaa !208
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %.not.i1.i = icmp eq ptr %i.bd, %i.bg
  %i.bh = icmp eq ptr %i.bd, null
  %or.cond.i = or i1 %.not.i1.i, %i.bh
  br i1 %or.cond.i, label %_ZN7rocksdb7IterKeyD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZdaPv(ptr noundef nonnull %i.bd) #20
  br label %_ZN7rocksdb7IterKeyD2Ev.exit

_ZN7rocksdb7IterKeyD2Ev.exit:                     ; preds = %bb.t, %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store i64 39, ptr %i.bi, align 8, !tbaa !324
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !207 ; 3 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !321 ; 4 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN7rocksdb7IterKeyD2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1904
  store i64 0, ptr %i.bo, align 8, !tbaa !208
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN7rocksdb7IterKeyD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.bm, %i.bp
  br i1 %.not.i.i3, label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i6, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = icmp eq ptr %i.bm, null
  br i1 %i.bq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZdaPv(ptr noundef nonnull %i.bm) #20
  %.pre.pre.i4 = load ptr, ptr %i.bk, align 8, !tbaa !207
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre.i5 = phi ptr [ %.pre.pre.i4, %bb.y ], [ %i.bl, %bb.x ]
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !321
  br label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i6

_ZN7rocksdb7IterKey11ResetBufferEv.exit.i6:       ; preds = %bb.z, %bb.w
  %i.br = phi ptr [ %i.bl, %bb.w ], [ %.pre.i5, %bb.z ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1912
  store i64 39, ptr %i.bs, align 8, !tbaa !322
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !323 ; 4 uses
  %i.bv = icmp eq ptr %i.br, %i.bu
  br i1 %i.bv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i6
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1904
  store i64 0, ptr %i.bw, align 8, !tbaa !208
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i6
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %.not.i1.i7 = icmp eq ptr %i.bu, %i.bx
  %i.by = icmp eq ptr %i.bu, null
  %or.cond.i8 = or i1 %.not.i1.i7, %i.by
  br i1 %or.cond.i8, label %_ZN7rocksdb7IterKeyD2Ev.exit9, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdaPv(ptr noundef nonnull %i.bu) #20
  br label %_ZN7rocksdb7IterKeyD2Ev.exit9

_ZN7rocksdb7IterKeyD2Ev.exit9:                    ; preds = %bb.ab, %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2008
  store i64 39, ptr %i.bz, align 8, !tbaa !324
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1816 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !325, !range !79, !noundef !80
  %i.cc = trunc nuw i8 %i.cb to i1
  store i8 0, ptr %i.ca, align 8, !tbaa !325
  br i1 %i.cc, label %bb.ad, label %_ZNSt14_Optional_baseIN7rocksdb13MultiScanArgsELb0ELb0EED2Ev.exit

bb.ad:                                            ; preds = %_ZN7rocksdb7IterKeyD2Ev.exit9
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1744
  tail call void @_ZN7rocksdb13MultiScanArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(80) %i.cd) #21
  br label %_ZNSt14_Optional_baseIN7rocksdb13MultiScanArgsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN7rocksdb13MultiScanArgsELb0ELb0EED2Ev.exit: ; preds = %_ZN7rocksdb7IterKeyD2Ev.exit9, %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN7rocksdb13MultiScanArgsELb0ELb0EED2Ev.exit
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !20
  %i.cj = add i64 %i.ci, 1
  tail call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN7rocksdb13MultiScanArgsELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ck = load i8, ptr %i.t, align 8, !tbaa !206, !range !79, !noundef !80
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN7rocksdb22PinnedIteratorsManager17ReleasePinnedDataEv(ptr noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !209 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i, label %_ZN7rocksdb22PinnedIteratorsManagerD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !326
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #20
  br label %_ZN7rocksdb22PinnedIteratorsManagerD2Ev.exit

bb.ah:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  tail call void @__clang_call_terminate(ptr %i.cu) #23
  unreachable

_ZN7rocksdb22PinnedIteratorsManagerD2Ev.exit:     ; preds = %bb.af, %bb.ag
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(64) %i.s) #21
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1520
  tail call void @_ZN7rocksdb12MergeContextD2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.cv) #21
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !98 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i10, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb22PinnedIteratorsManagerD2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.cx) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb22PinnedIteratorsManagerD2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !327, !range !79, !noundef !80
  %i.db = trunc nuw i8 %i.da to i1
  store i8 0, ptr %i.cz, align 8, !tbaa !327
  br i1 %i.db, label %bb.ai, label %_ZNSt14_Optional_baseIN7rocksdb7IterKeyELb0ELb0EED2Ev.exit

bb.ai:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !207 ; 3 uses
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !321 ; 4 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store i64 0, ptr %i.dg, align 8, !tbaa !208
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.de, %i.dh
  br i1 %.not.i.i.i.i.i.i, label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.di = icmp eq ptr %i.de, null
  br i1 %i.di, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZdaPv(ptr noundef nonnull %i.de) #20
  %.pre.pre.i.i.i.i.i = load ptr, ptr %i.dc, align 8, !tbaa !207
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pre.i.i.i.i.i = phi ptr [ %.pre.pre.i.i.i.i.i, %bb.am ], [ %i.dd, %bb.al ]
  store ptr %i.dh, ptr %i.cy, align 8, !tbaa !321
  br label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i

_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i: ; preds = %bb.an, %bb.ak
  %i.dj = phi ptr [ %i.dd, %bb.ak ], [ %.pre.i.i.i.i.i, %bb.an ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i64 39, ptr %i.dk, align 8, !tbaa !322
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !323 ; 4 uses
  %i.dn = icmp eq ptr %i.dj, %i.dm
  br i1 %i.dn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store i64 0, ptr %i.do, align 8, !tbaa !208
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.dm, %i.dp
  %i.dq = icmp eq ptr %i.dm, null
  %or.cond.i.i.i.i.i = or i1 %.not.i1.i.i.i.i.i, %i.dq
  br i1 %or.cond.i.i.i.i.i, label %_ZNSt14_Optional_baseIN7rocksdb7IterKeyELb0ELb0EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZdaPv(ptr noundef nonnull %i.dm) #20
  br label %_ZNSt14_Optional_baseIN7rocksdb7IterKeyELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN7rocksdb7IterKeyELb0ELb0EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.ap, %bb.aq
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !328 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt14_Optional_baseIN7rocksdb7IterKeyELb0ELb0EED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !329
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #20
  br label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit.i.i: ; preds = %bb.ar, %_ZNSt14_Optional_baseIN7rocksdb7IterKeyELb0ELb0EED2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !330 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !331
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #20
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 816
  tail call void @_ZN7rocksdb20ReadPathBlobResolverD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.eg) #21
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !330 ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !331
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #20
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3.i.i

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3.i.i: ; preds = %bb.at, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i.i
  %i.eo = load ptr, ptr %i.dr, align 8, !tbaa !19 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZN7rocksdb12DirtyTrackedINS_6DBIter17ValueColumnsStateEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3.i.i
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !20
  %i.es = add i64 %i.er, 1
  tail call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #20
  br label %_ZN7rocksdb12DirtyTrackedINS_6DBIter17ValueColumnsStateEED2Ev.exit

_ZN7rocksdb12DirtyTrackedINS_6DBIter17ValueColumnsStateEED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !207 ; 3 uses
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !321 ; 4 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN7rocksdb12DirtyTrackedINS_6DBIter17ValueColumnsStateEED2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %i.ey, align 8, !tbaa !208
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN7rocksdb12DirtyTrackedINS_6DBIter17ValueColumnsStateEED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ew, %i.ez
  br i1 %.not.i.i11, label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i14, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fa = icmp eq ptr %i.ew, null
  br i1 %i.fa, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZdaPv(ptr noundef nonnull %i.ew) #20
  %.pre.pre.i12 = load ptr, ptr %i.eu, align 8, !tbaa !207
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pre.i13 = phi ptr [ %.pre.pre.i12, %bb.ax ], [ %i.ev, %bb.aw ]
  store ptr %i.ez, ptr %i.et, align 8, !tbaa !321
  br label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i14

_ZN7rocksdb7IterKey11ResetBufferEv.exit.i14:      ; preds = %bb.ay, %bb.av
  %i.fb = phi ptr [ %i.ev, %bb.av ], [ %.pre.i13, %bb.ay ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 39, ptr %i.fc, align 8, !tbaa !322
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !323 ; 4 uses
  %i.ff = icmp eq ptr %i.fb, %i.fe
  br i1 %i.ff, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i14
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %i.fg, align 8, !tbaa !208
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i14
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.not.i1.i15 = icmp eq ptr %i.fe, %i.fh
  %i.fi = icmp eq ptr %i.fe, null
  %or.cond.i16 = or i1 %.not.i1.i15, %i.fi
  br i1 %or.cond.i16, label %_ZN7rocksdb7IterKeyD2Ev.exit17, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZdaPv(ptr noundef nonnull %i.fe) #20
  br label %_ZN7rocksdb7IterKeyD2Ev.exit17

_ZN7rocksdb7IterKeyD2Ev.exit17:                   ; preds = %bb.ba, %bb.bb
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 39, ptr %i.fj, align 8, !tbaa !324
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb24OwningVersionBlobFetcherE, i64 16), ptr %i.fk, align 8, !tbaa !106
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i18, label %_ZN7rocksdb24OwningVersionBlobFetcherD2Ev.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN7rocksdb7IterKeyD2Ev.exit17
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.fo = invoke noundef zeroext i1 %i.fm(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i32 noundef 3)
          to label %_ZN7rocksdb24OwningVersionBlobFetcherD2Ev.exit.i.i.i unwind label %bb.bd, !inline_history !210 ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  tail call void @__clang_call_terminate(ptr %i.fq) #23, !inline_history !210
  unreachable

_ZN7rocksdb24OwningVersionBlobFetcherD2Ev.exit.i.i.i: ; preds = %bb.bc, %_ZN7rocksdb7IterKeyD2Ev.exit17
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !19 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZN7rocksdb12DirtyTrackedINS_6DBIter9BlobStateEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEET_SE_SE_T0_:bb.a
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !198
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !198
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_SE_SE_T0_.exit
  %.sroa.014.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_SE_SE_T0_.exit ], [ %i.bu, %bb.m ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_SE_SE_T0_.exit ], [ %.sroa.0.1.i, %bb.m ]
  %i.ba = load ptr, ptr %0, align 8, !tbaa !198   ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.014.1.i = phi ptr [ %.sroa.014.0.i, %bb.h ], [ %i.bi, %bb.j ] ; 8 uses
  %i.bb = load ptr, ptr %.sroa.014.1.i, align 8, !tbaa !198 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %.split.i10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i9

.split.i10:                                       ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !198
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !198
  %i.bg = icmp ult ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %.preheader

.preheader:                                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i9, %.split.i10
  br label %bb.k

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i9: ; preds = %bb.i
  %i.bh = icmp ult ptr %i.bb, %i.ba
  br i1 %i.bh, label %bb.j, label %.preheader

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i9, %.split.i10
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i, i64 16
  br label %bb.i, !llvm.loop !516

bb.k:                                             ; preds = %.backedge, %.preheader
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.0.i, %.preheader ], [ %.sroa.0.1.i, %.backedge ] ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -16 ; 5 uses
  %i.bj = load ptr, ptr %.sroa.0.1.i, align 8, !tbaa !198 ; 3 uses
  %i.bk = icmp eq ptr %i.ba, %i.bj
  br i1 %i.bk, label %.split17.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit11.i

.split17.i:                                       ; preds = %bb.k
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !198
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !198
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %.backedge, label %bb.l

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit11.i: ; preds = %bb.k
  %i.bp = icmp ult ptr %i.ba, %i.bj
  br i1 %i.bp, label %.backedge, label %bb.l

.backedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit11.i, %.split17.i
  br label %bb.k, !llvm.loop !517

bb.l:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit11.i, %.split17.i
  %.not.i = icmp ult ptr %.sroa.014.1.i, %.sroa.0.1.i
  br i1 %.not.i, label %bb.m, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEET_SE_SE_SE_T0_.exit

bb.m:                                             ; preds = %bb.l
  store ptr %i.bj, ptr %.sroa.014.1.i, align 8, !tbaa !198
  store ptr %i.bb, ptr %.sroa.0.1.i, align 8, !tbaa !198
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !198
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !198
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !198
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !198
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i, i64 16
  br label %bb.h, !llvm.loop !518

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEET_SE_SE_SE_T0_.exit: ; preds = %bb.l
  ret ptr %.sroa.014.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit
  %.037 = phi i64 [ %spec.select, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.037, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !198  ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !198  ; 2 uses
  %i.k = icmp ult ptr %i.i, %i.j
  %i.l = icmp eq ptr %i.i, %i.j
  br i1 %i.l, label %bb.b, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !198
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !198
  %i.q = icmp ult ptr %i.o, %i.p
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit: ; preds = %.lr.ph, %bb.b
  %.sroa.05.1.i.i = phi i1 [ %i.q, %bb.b ], [ %i.k, %.lr.ph ]
  %spec.select = select i1 %.sroa.05.1.i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %.037
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !198
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !198
  %i.u = icmp slt i64 %spec.select, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !519

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !198
  store <2 x ptr> %i.ae, ptr %i.ad, align 8, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ab, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.af = icmp sgt i64 %.1, %1
  br i1 %i.af, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_less_valEEvT_T0_SF_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.021.i = phi i64 [ %.0922.i, %bb.f ], [ %.1, %bb.e ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !198 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %3
  br i1 %i.ai, label %.split.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !198 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %4
  br i1 %i.al, label %bb.f, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_less_valEEvT_T0_SF_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i: ; preds = %.lr.ph.i
  %i.am = icmp ult ptr %i.ah, %3
  br i1 %i.am, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit._crit_edge.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_less_valEEvT_T0_SF_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit._crit_edge.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit._crit_edge.i, %.split.i
  %i.an = phi ptr [ %.pre.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit._crit_edge.i ], [ %i.ak, %.split.i ]
  %i.ao = getelementptr inbounds [16 x i8], ptr %0, i64 %.021.i ; 2 uses
  store ptr %i.ah, ptr %i.ao, align 8, !tbaa !281
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !282
  %i.aq = icmp sgt i64 %.0922.i, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_less_valEEvT_T0_SF_T1_RT2_.exit, !llvm.loop !520

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPvPFvS3_EESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_less_valEEvT_T0_SF_T1_RT2_.exit: ; preds = %.split.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i, %bb.f, %bb.e
  %.0.lcssa.i = phi i64 [ %.1, %bb.e ], [ %.021.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPvPFvS5_EESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i ], [ %.0922.i, %bb.f ], [ %.021.i, %.split.i ]
  %i.ar = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store ptr %3, ptr %i.ar, align 8, !tbaa !281
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %4, ptr %i.as, align 8, !tbaa !282
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13MultiScanArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !524  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !525  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !527, !range !79, !noundef !80
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !527
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.h) #21
  br label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !521

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !524
  br label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !528
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !529  ; 8 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !531
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !532
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #21, !inline_history !522
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #21, !inline_history !522
  br label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i1 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !283
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #21
  br label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !540  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !541 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !20
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !20
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #20
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !533

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !542
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !543
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !542    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !543
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #20
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !544
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !283  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !283
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !544
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20ReadPathBlobResolverD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZN7rocksdb9CleanableD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !546  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !547  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !549  ; 5 uses
end_hunk_1
