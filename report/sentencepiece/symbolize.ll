Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/symbolize?download=true
inline.NumInlined: 205
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4absl12lts_202605269SymbolizeEPKvPci:bb.a
  %i.gb = getelementptr inbounds nuw [56 x i8], ptr %i.fc, i64 %.050179.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gb, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  br label %bb.at

.thread122.i.i.i:                                 ; preds = %bb.ar
  %i.gc = load ptr, ptr %i.bt, align 8, !tbaa !53
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 1463, ptr noundef nonnull @.str.25, ptr noundef %i.gc, i64 noundef %.050179.i.i.i, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ap
  %.252.ph.i.i.i = phi i64 [ %.050179.i.i.i, %bb.ap ], [ %.050179.i.i.i, %bb.aq ], [ %i.ga, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.gd = add nuw nsw i32 %.049180.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.gd, %i.ev
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.al, !llvm.loop !74

.loopexit.i.i.i:                                  ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit74.i.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit74.thread.i.i.i
  %i.ge = load ptr, ptr %i.bt, align 8, !tbaa !53
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 1436, ptr noundef nonnull @.str.24, ptr noundef %i.ge, i32 noundef %.049180.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.thread124.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.at
  %i.gf = icmp eq i64 %.252.ph.i.i.i, 0
  br i1 %i.gf, label %._crit_edge.thread.i.i.i, label %bb.au

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.ak
  %i.gg = load ptr, ptr %i.bt, align 8, !tbaa !53
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 1469, ptr noundef nonnull @.str.26, ptr noundef %i.gg)
  br label %.thread124.i.i.i

.thread124.i.i.i:                                 ; preds = %._crit_edge.thread.i.i.i, %.loopexit.i.i.i, %bb.aj, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN4absl12lts_2026052618debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileEPFSt10unique_ptrINS1_15SymbolDecoratorENS1_22SymbolDecoratorDeleterEEiE.exit.thread76.i.i

bb.au:                                            ; preds = %._crit_edge.i.i.i, %.thread122.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.l
  %.not62.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not62.i.i.i, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bt, i64 328 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !41
  %.not.i75.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i75.i.i.i, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.gj = load i32, ptr %i.bv, align 8, !tbaa !52
  call void %i.bu(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, i32 noundef %i.gj), !inline_history !75
  %i.gk = load ptr, ptr %8, align 8, !tbaa !41
  store ptr null, ptr %8, align 8, !tbaa !41
  %i.gl = load ptr, ptr %i.gh, align 8, !tbaa !41 ; 4 uses
  store ptr %i.gk, ptr %i.gh, align 8, !tbaa !41
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4absl12lts_2026052618debugging_internal15SymbolDecoratorENS2_22SymbolDecoratorDeleterEED2Ev.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !43
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gl) #24, !inline_history !76
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %i.gl)
          to label %_ZNSt10unique_ptrIN4absl12lts_2026052618debugging_internal15SymbolDecoratorENS2_22SymbolDecoratorDeleterEEaSEOS5_.exit.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #28
  unreachable

_ZNSt10unique_ptrIN4absl12lts_2026052618debugging_internal15SymbolDecoratorENS2_22SymbolDecoratorDeleterEEaSEOS5_.exit.i.i.i: ; preds = %bb.ay
  %.pr126.i.i.i = load ptr, ptr %8, align 8, !tbaa !41 ; 4 uses
  %.not.i76.i.i.i = icmp eq ptr %.pr126.i.i.i, null
  br i1 %.not.i76.i.i.i, label %_ZNSt10unique_ptrIN4absl12lts_2026052618debugging_internal15SymbolDecoratorENS2_22SymbolDecoratorDeleterEED2Ev.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIN4absl12lts_2026052618debugging_internal15SymbolDecoratorENS2_22SymbolDecoratorDeleterEEaSEOS5_.exit.i.i.i
  %i.gq = load ptr, ptr %.pr126.i.i.i, align 8, !tbaa !43
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr126.i.i.i) #24, !inline_history !77
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %.pr126.i.i.i)
          to label %_ZNSt10unique_ptrIN4absl12lts_2026052618debugging_internal15SymbolDecoratorENS2_22SymbolDecoratorDeleterEED2Ev.exit.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #28
  unreachable

_ZNSt10unique_ptrIN4absl12lts_2026052618debugging_internal15SymbolDecoratorENS2_22SymbolDecoratorDeleterEED2Ev.exit.i.i.i: ; preds = %bb.ba, %_ZNSt10unique_ptrIN4absl12lts_2026052618debugging_internal15SymbolDecoratorENS2_22SymbolDecoratorDeleterEEaSEOS5_.exit.i.i.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt10unique_ptrIN4absl12lts_2026052618debugging_internal15SymbolDecoratorENS2_22SymbolDecoratorDeleterEED2Ev.exit.i.i.i, %bb.aw, %bb.av
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !54
  %i.gw = ptrtoint ptr %i.gv to i64               ; 7 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !55
  %i.gz = icmp eq i32 %i.gy, 3
  br i1 %i.gz, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !56 ; 2 uses
  %.not53.i.i = icmp ugt i64 %i.hb, %i.gw
  br i1 %.not53.i.i, label %bb.bn, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hc = sub nuw i64 %i.gw, %i.hb                ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bt, i64 104 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !84
  switch i32 %i.he, label %bb.bl [
    i32 1, label %bb.bm
    i32 0, label %.thread.thread.i.i
  ], !prof !86

bb.bf:                                            ; preds = %bb.bm
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bt, i64 160 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !84
  switch i32 %i.hg, label %bb.bl [
    i32 1, label %bb.bg
    i32 0, label %.thread.thread.i.i
  ], !prof !86

bb.bg:                                            ; preds = %bb.bf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bt, i64 176
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !87
  %i.hj = add i64 %i.hi, %i.gw
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bt, i64 200
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !88
  %i.hm = add i64 %i.hj, %i.hl
  %i.hn = inttoptr i64 %i.hm to ptr
  %.not81.1.i.i = icmp ult ptr %0, %i.hn
  br i1 %.not81.1.i.i, label %.thread.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bt, i64 216 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !84
  switch i32 %i.hp, label %bb.bl [
    i32 1, label %bb.bi
    i32 0, label %.thread.thread.i.i
  ], !prof !86

bb.bi:                                            ; preds = %bb.bh
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bt, i64 232
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !87
  %i.hs = add i64 %i.hr, %i.gw
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bt, i64 256
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !88
  %i.hv = add i64 %i.hs, %i.hu
  %i.hw = inttoptr i64 %i.hv to ptr
  %.not81.2.i.i = icmp ult ptr %0, %i.hw
  br i1 %.not81.2.i.i, label %.thread.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bt, i64 272 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !84
  switch i32 %i.hy, label %bb.bl [
    i32 1, label %bb.bk
    i32 0, label %.thread.thread.i.i
  ], !prof !86

bb.bk:                                            ; preds = %bb.bj
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bt, i64 288
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !87
  %i.ib = add i64 %i.ia, %i.gw
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bt, i64 312
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !88
  %i.ie = add i64 %i.ib, %i.id
  %i.if = inttoptr i64 %i.ie to ptr
  %.not81.3.i.i = icmp ult ptr %0, %i.if
  br i1 %.not81.3.i.i, label %.thread.i.i, label %.thread.thread.i.i

bb.bl:                                            ; preds = %bb.bj, %bb.bh, %bb.bf, %bb.be
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 1507, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  unreachable

bb.bm:                                            ; preds = %bb.be
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !87
  %i.ii = add i64 %i.ih, %i.gw
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bt, i64 144
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !88
  %i.il = add i64 %i.ii, %i.ik
  %i.im = inttoptr i64 %i.il to ptr
  %.not81.i.i = icmp ult ptr %0, %i.im
  br i1 %.not81.i.i, label %.thread.i.i, label %bb.bf

.thread.thread.i.i:                               ; preds = %bb.bk, %bb.bj, %bb.bh, %bb.bf, %bb.be
  %i.in = load ptr, ptr %i.bt, align 8, !tbaa !53
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 1521, ptr noundef nonnull @.str.9, ptr noundef %i.in, ptr noundef %0, i64 noundef %i.gw)
  br label %bb.bn

.thread.i.i:                                      ; preds = %bb.bm, %bb.bk, %bb.bi, %bb.bg
  %.247.i.i = phi ptr [ %i.hd, %bb.bm ], [ %i.hf, %bb.bg ], [ %i.hx, %bb.bk ], [ %i.ho, %bb.bi ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 16
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !87
  %i.iq = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !89
  %.neg.i.i = sub i64 %i.hc, %i.ip
  %i.is = add i64 %.neg.i.i, %i.ir
  br label %bb.bn

bb.bn:                                            ; preds = %.thread.i.i, %.thread.thread.i.i, %bb.bd, %bb.bc
  %.1.i.i = phi i64 [ 0, %bb.bc ], [ 0, %bb.bd ], [ %i.hc, %.thread.thread.i.i ], [ %i.is, %.thread.i.i ] ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i, i64 11312 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.iu = load i32, ptr %i.bv, align 8, !tbaa !52
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i, i64 3106
  store i32 %i.iu, ptr %5, align 8, !tbaa !58
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !59
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 8192, ptr %i.ix, align 8, !tbaa !60
  %i.iy = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bt, i64 100 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bt, i64 80 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.je = load i16, ptr %i.ja, align 4, !tbaa !90
  %i.jf = load i64, ptr %i.jb, align 8, !tbaa !91
  %i.jg = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL22GetSectionHeaderByTypeEPNS1_12_GLOBAL__N_111CachingFileEtljP10Elf64_ShdrPcm(ptr noundef %5, i16 noundef zeroext %i.je, i64 noundef %i.jf, i32 noundef 2, ptr noundef %3, ptr noundef nonnull %i.it)
  br i1 %i.jg, label %bb.bo, label %select.unfold.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.jh = load i64, ptr %i.jb, align 8, !tbaa !91
  %i.ji = load i32, ptr %i.jc, align 8, !tbaa !92
  %i.jj = zext i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 6
  %i.jl = add i64 %i.jk, %i.jh
  %i.jm = load i32, ptr %5, align 8
  %i.jn = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.jo = load i64, ptr %i.ix, align 8
  %.pre.pre.i.i.i = load i64, ptr %i.iy, align 8, !tbaa !61
  %.pre58.pre.i.i.i = load i64, ptr %i.jd, align 8
  br label %.lr.ph.split.us.preheader.i.i.i56.i.i

.lr.ph.split.us.preheader.i.i.i56.i.i:            ; preds = %.outer.i.i.i66.i.i, %bb.bo
  %.pre58.i.i.i = phi i64 [ %.pre58.pre.i.i.i, %bb.bo ], [ %.pre5863.i.lcssa.i.i, %.outer.i.i.i66.i.i ] ; 2 uses
  %.pre.i.i.i = phi i64 [ %.pre.pre.i.i.i, %bb.bo ], [ %.pre61.i.lcssa.i.i, %.outer.i.i.i66.i.i ] ; 2 uses
  %.028.ph72.i.i.i57.i.i = phi i64 [ %i.jl, %bb.bo ], [ %i.kg, %.outer.i.i.i66.i.i ] ; 11 uses
  %.029.ph71.i.i.i58.i.i = phi ptr [ %4, %bb.bo ], [ %i.ke, %.outer.i.i.i66.i.i ] ; 2 uses
  %.030.ph70.i.i.i59.i.i = phi i64 [ 0, %bb.bo ], [ %i.kf, %.outer.i.i.i66.i.i ] ; 3 uses
  %.not.us.i.i.i61126.i.i = icmp sge i64 %.028.ph72.i.i.i57.i.i, %.pre.i.i.i
  %i.jp = icmp slt i64 %.028.ph72.i.i.i57.i.i, %.pre58.i.i.i
  %or.cond.i62127.i.i = select i1 %.not.us.i.i.i61126.i.i, i1 %i.jp, i1 false
  br i1 %or.cond.i62127.i.i, label %.outer.i.i.i66.i.i, label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %.lr.ph.split.us.preheader.i.i.i56.i.i, %.lr.ph.split.us.i.i.i60.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  %i.jq = call i64 @pread(i32 noundef %i.jm, ptr noundef %i.jn, i64 noundef %i.jo, i64 noundef %.028.ph72.i.i.i57.i.i) ; 3 uses
  %i.jr = icmp slt i64 %i.jq, 0
  br i1 %i.jr, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i22
  %i.js = icmp eq i64 %i.jq, 0
  br i1 %i.js, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i63.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i64 %.028.ph72.i.i.i57.i.i, ptr %i.iy, align 8, !tbaa !61
  %i.jt = add nsw i64 %i.jq, %.028.ph72.i.i.i57.i.i ; 2 uses
  store i64 %i.jt, ptr %i.jd, align 8, !tbaa !62
  br label %.lr.ph.split.us.i.i.i60.i.i

bb.br:                                            ; preds = %.lr.ph.i.i22
  %i.ju = tail call ptr @__errno_location() #25
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !14 ; 2 uses
  %i.jw = icmp eq i32 %i.jv, 4
  br i1 %i.jw, label %.lr.ph.split.us.i.i.i60.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i65.i.i, !llvm.loop !0

.lr.ph.split.us.i.i.i60.i.i:                      ; preds = %bb.br, %bb.bq
  %i.jx = phi i64 [ 0, %bb.br ], [ %i.jt, %bb.bq ] ; 2 uses
  %i.jy = phi i64 [ 0, %bb.br ], [ %.028.ph72.i.i.i57.i.i, %bb.bq ] ; 2 uses
  %.not.us.i.i.i61.i.i = icmp sge i64 %.028.ph72.i.i.i57.i.i, %i.jy
  %i.jz = icmp slt i64 %.028.ph72.i.i.i57.i.i, %i.jx
  %or.cond.i62.i.i = select i1 %.not.us.i.i.i61.i.i, i1 %i.jz, i1 false
  br i1 %or.cond.i62.i.i, label %.outer.i.i.i66.i.i, label %.lr.ph.i.i22

.outer.i.i.i66.i.i:                               ; preds = %.lr.ph.split.us.i.i.i60.i.i, %.lr.ph.split.us.preheader.i.i.i56.i.i
  %.pre5863.i.lcssa.i.i = phi i64 [ %.pre58.i.i.i, %.lr.ph.split.us.preheader.i.i.i56.i.i ], [ %i.jx, %.lr.ph.split.us.i.i.i60.i.i ] ; 2 uses
  %.pre61.i.lcssa.i.i = phi i64 [ %.pre.i.i.i, %.lr.ph.split.us.preheader.i.i.i56.i.i ], [ %i.jy, %.lr.ph.split.us.i.i.i60.i.i ] ; 2 uses
  %i.ka = sub nsw i64 %.028.ph72.i.i.i57.i.i, %.pre61.i.lcssa.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.ka
  %i.kc = sub nuw nsw i64 64, %.030.ph70.i.i.i59.i.i
  %i.kd = sub nsw i64 %.pre5863.i.lcssa.i.i, %.028.ph72.i.i.i57.i.i
  %.sroa.speculated.i.i.i67.i.i = call i64 @llvm.umin.i64(i64 %i.kd, i64 %i.kc) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i.i58.i.i, ptr align 1 %i.kb, i64 %.sroa.speculated.i.i.i67.i.i, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i.i58.i.i, i64 %.sroa.speculated.i.i.i67.i.i
  %i.kf = add nuw nsw i64 %.sroa.speculated.i.i.i67.i.i, %.030.ph70.i.i.i59.i.i ; 3 uses
  %i.kg = add nsw i64 %.sroa.speculated.i.i.i67.i.i, %.028.ph72.i.i.i57.i.i
  %i.kh = icmp samesign ult i64 %i.kf, 64
  br i1 %i.kh, label %.lr.ph.split.us.preheader.i.i.i56.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i63.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i65.i.i: ; preds = %bb.br
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 518, ptr noundef nonnull @.str.5, i32 noundef %i.jv)
  br label %select.unfold.i.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i63.i.i: ; preds = %.outer.i.i.i66.i.i, %bb.bp
  %.2.i.i.i64.i.i = phi i64 [ %.030.ph70.i.i.i59.i.i, %bb.bp ], [ %i.kf, %.outer.i.i.i66.i.i ]
  %i.ki = icmp eq i64 %.2.i.i.i64.i.i, 64
  br i1 %i.ki, label %bb.bs, label %select.unfold.i.i.i

bb.bs:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i63.i.i
  %.val.i.i.i = load i64, ptr %i.iz, align 8
  %i.kj = call fastcc noundef i32 @_ZN4absl12lts_2026052618debugging_internalL10FindSymbolEPKvPNS1_12_GLOBAL__N_111CachingFileEPcmlPK10Elf64_ShdrSA_SA_S7_m(ptr noundef readnone %0, ptr noundef %5, ptr noundef nonnull %i.bs, i64 noundef %.1.i.i, i64 %.val.i.i.i, ptr noundef %3, ptr noundef nonnull %i.it) ; 2 uses
  %.not32.i.i.i = icmp eq i32 %i.kj, 1
  br i1 %.not32.i.i.i, label %select.unfold.i.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i

select.unfold.i.i.i:                              ; preds = %bb.bs, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i63.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i65.i.i, %bb.bn
  %i.kk = load i16, ptr %i.ja, align 4, !tbaa !90
  %i.kl = load i64, ptr %i.jb, align 8, !tbaa !91
  %i.km = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL22GetSectionHeaderByTypeEPNS1_12_GLOBAL__N_111CachingFileEtljP10Elf64_ShdrPcm(ptr noundef %5, i16 noundef zeroext %i.kk, i64 noundef %i.kl, i32 noundef 11, ptr noundef %3, ptr noundef nonnull %i.it)
  br i1 %i.km, label %bb.bt, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i

bb.bt:                                            ; preds = %select.unfold.i.i.i
  %i.kn = load i64, ptr %i.jb, align 8, !tbaa !91
  %i.ko = load i32, ptr %i.jc, align 8, !tbaa !92
  %i.kp = zext i32 %i.ko to i64
  %i.kq = shl nuw nsw i64 %i.kp, 6
  %i.kr = add i64 %i.kq, %i.kn
  %i.ks = load i32, ptr %5, align 8
  %i.kt = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.ku = load i64, ptr %i.ix, align 8
  %.pre59.pre.i.i.i = load i64, ptr %i.iy, align 8, !tbaa !61
  %.pre60.pre.i.i.i = load i64, ptr %i.jd, align 8
  br label %.lr.ph.split.us.preheader.i.i.1.i.i.i

.lr.ph.split.us.preheader.i.i.1.i.i.i:            ; preds = %.outer.i.i.1.i.i.i, %bb.bt
  %.pre60.i.i.i = phi i64 [ %.pre60.pre.i.i.i, %bb.bt ], [ %.pre6067.i.lcssa.i.i, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.pre59.i.i.i = phi i64 [ %.pre59.pre.i.i.i, %bb.bt ], [ %.pre5965.i.lcssa.i.i, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.028.ph72.i.i.1.i.i.i = phi i64 [ %i.kr, %bb.bt ], [ %i.lm, %.outer.i.i.1.i.i.i ] ; 11 uses
  %.029.ph71.i.i.1.i.i.i = phi ptr [ %4, %bb.bt ], [ %i.lk, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.030.ph70.i.i.1.i.i.i = phi i64 [ 0, %bb.bt ], [ %i.ll, %.outer.i.i.1.i.i.i ] ; 3 uses
  %.not.us.i.i.1.i129.i.i = icmp sge i64 %.028.ph72.i.i.1.i.i.i, %.pre59.i.i.i
  %i.kv = icmp slt i64 %.028.ph72.i.i.1.i.i.i, %.pre60.i.i.i
  %or.cond.1.i130.i.i = select i1 %.not.us.i.i.1.i129.i.i, i1 %i.kv, i1 false
  br i1 %or.cond.1.i130.i.i, label %.outer.i.i.1.i.i.i, label %.lr.ph131.i.i

.lr.ph131.i.i:                                    ; preds = %.lr.ph.split.us.preheader.i.i.1.i.i.i, %.lr.ph.split.us.i.i.1.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  %i.kw = call i64 @pread(i32 noundef %i.ks, ptr noundef %i.kt, i64 noundef %i.ku, i64 noundef %.028.ph72.i.i.1.i.i.i) ; 3 uses
  %i.kx = icmp slt i64 %i.kw, 0
  br i1 %i.kx, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph131.i.i
  %i.ky = icmp eq i64 %i.kw, 0
  br i1 %i.ky, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i64 %.028.ph72.i.i.1.i.i.i, ptr %i.iy, align 8, !tbaa !61
  %i.kz = add nsw i64 %i.kw, %.028.ph72.i.i.1.i.i.i ; 2 uses
  store i64 %i.kz, ptr %i.jd, align 8, !tbaa !62
  br label %.lr.ph.split.us.i.i.1.i.i.i

bb.bw:                                            ; preds = %.lr.ph131.i.i
  %i.la = tail call ptr @__errno_location() #25
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !14 ; 2 uses
  %i.lc = icmp eq i32 %i.lb, 4
  br i1 %i.lc, label %.lr.ph.split.us.i.i.1.i.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.1.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.1.i.i.i: ; preds = %bb.bw
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 518, ptr noundef nonnull @.str.5, i32 noundef %i.lb)
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i

.lr.ph.split.us.i.i.1.i.i.i:                      ; preds = %bb.bw, %bb.bv
  %i.ld = phi i64 [ 0, %bb.bw ], [ %i.kz, %bb.bv ] ; 2 uses
  %i.le = phi i64 [ 0, %bb.bw ], [ %.028.ph72.i.i.1.i.i.i, %bb.bv ] ; 2 uses
  %.not.us.i.i.1.i.i.i = icmp sge i64 %.028.ph72.i.i.1.i.i.i, %i.le
  %i.lf = icmp slt i64 %.028.ph72.i.i.1.i.i.i, %i.ld
  %or.cond.1.i.i.i = select i1 %.not.us.i.i.1.i.i.i, i1 %i.lf, i1 false
  br i1 %or.cond.1.i.i.i, label %.outer.i.i.1.i.i.i, label %.lr.ph131.i.i

.outer.i.i.1.i.i.i:                               ; preds = %.lr.ph.split.us.i.i.1.i.i.i, %.lr.ph.split.us.preheader.i.i.1.i.i.i
  %.pre6067.i.lcssa.i.i = phi i64 [ %.pre60.i.i.i, %.lr.ph.split.us.preheader.i.i.1.i.i.i ], [ %i.ld, %.lr.ph.split.us.i.i.1.i.i.i ] ; 2 uses
  %.pre5965.i.lcssa.i.i = phi i64 [ %.pre59.i.i.i, %.lr.ph.split.us.preheader.i.i.1.i.i.i ], [ %i.le, %.lr.ph.split.us.i.i.1.i.i.i ] ; 2 uses
  %i.lg = sub nsw i64 %.028.ph72.i.i.1.i.i.i, %.pre5965.i.lcssa.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.lg
  %i.li = sub nuw nsw i64 64, %.030.ph70.i.i.1.i.i.i
  %i.lj = sub nsw i64 %.pre6067.i.lcssa.i.i, %.028.ph72.i.i.1.i.i.i
  %.sroa.speculated.i.i.1.i.i.i = call i64 @llvm.umin.i64(i64 %i.lj, i64 %i.li) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i.1.i.i.i, ptr align 1 %i.lh, i64 %.sroa.speculated.i.i.1.i.i.i, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i.1.i.i.i, i64 %.sroa.speculated.i.i.1.i.i.i
  %i.ll = add nuw nsw i64 %.sroa.speculated.i.i.1.i.i.i, %.030.ph70.i.i.1.i.i.i ; 3 uses
  %i.lm = add nsw i64 %.sroa.speculated.i.i.1.i.i.i, %.028.ph72.i.i.1.i.i.i
  %i.ln = icmp samesign ult i64 %i.ll, 64
  br i1 %i.ln, label %.lr.ph.split.us.preheader.i.i.1.i.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i: ; preds = %.outer.i.i.1.i.i.i, %bb.bu
  %.2.i.i.1.i.i.i = phi i64 [ %.030.ph70.i.i.1.i.i.i, %bb.bu ], [ %i.ll, %.outer.i.i.1.i.i.i ]
  %i.lo = icmp eq i64 %.2.i.i.1.i.i.i, 64
  br i1 %i.lo, label %bb.bx, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i
end_hunk_0
