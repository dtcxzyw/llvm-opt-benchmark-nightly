Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/swiss-name-dictionary?download=true
inline.NumInlined: 622
inline.NumDeleted: 305
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal19SwissNameDictionary11ShallowCopyEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a

bb.bk:                                            ; preds = %._crit_edge193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ek, ptr noundef nonnull align 1 dereferenceable(12) %i.eq, i64 12, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit65

bb.bl:                                            ; preds = %._crit_edge193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ek, ptr noundef nonnull align 1 dereferenceable(13) %i.eq, i64 13, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit65

bb.bm:                                            ; preds = %._crit_edge193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ek, ptr noundef nonnull align 1 dereferenceable(14) %i.eq, i64 14, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit65

bb.bn:                                            ; preds = %._crit_edge193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ek, ptr noundef nonnull align 1 dereferenceable(15) %i.eq, i64 15, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit65

bb.bo:                                            ; preds = %._crit_edge193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ek, ptr noundef nonnull align 1 dereferenceable(16) %i.eq, i64 16, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit65

bb.bp:                                            ; preds = %._crit_edge193
  %i.ev = sext i32 %i.ed to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull align 1 %i.eq, i64 %i.ev, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit65

_ZN2v88internal7MemCopyEPvPKvm.exit65:            ; preds = %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.bs

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %bb.br
  %i.ew = phi i64 [ %.pre201, %.lr.ph192.preheader ], [ %i.gb, %bb.br ] ; 4 uses
  %indvars.iv195 = phi i64 [ 0, %.lr.ph192.preheader ], [ %indvars.iv.next196, %bb.br ] ; 4 uses
  %i.ex = add i64 %i.ew, 11
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = shl nsw i32 %i.ez, 4
  %i.fb = sext i32 %i.fa to i64
  %i.fc = add i64 %i.ew, 23
  %i.fd = add i64 %i.fc, %i.fb
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv195
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph192
  %i.fi = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.fj = mul i32 %i.ez, 17
  %i.fk = add i32 %i.fj, 40
  %i.fl = sext i32 %i.fk to i64
  %i.fm = add i64 %i.ew, -1
  %i.fn = add i64 %i.fm, %i.fl
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv195
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = add i64 %i.fi, 11
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = mul i32 %i.ft, 17
  %i.fv = add i32 %i.fu, 40
  %i.fw = sext i32 %i.fv to i64
  %i.fx = add i64 %i.fi, -1
  %i.fy = add i64 %i.fx, %i.fw
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv195
  store i8 %i.fq, ptr %i.ga, align 1
  %.pre = load i64, ptr %1, align 8
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph192, %bb.bq
  %i.gb = phi i64 [ %i.ew, %.lr.ph192 ], [ %.pre, %bb.bq ] ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge193, label %.lr.ph192, !llvm.loop !47

bb.bs:                                            ; preds = %bb.a, %_ZN2v88internal7MemCopyEPvPKvm.exit65
  %.sroa.0129.0 = phi ptr [ %i.ah, %_ZN2v88internal7MemCopyEPvPKvm.exit65 ], [ %1, %bb.a ]
  ret ptr %.sroa.0129.0
}

; Function Attrs: nounwind
declare void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal19SwissNameDictionary28NumberOfEnumerablePropertiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 !guid !50 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10624
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %0, align 8                ; 4 uses
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i

_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i: ; preds = %bb.a
  %i.i = and i64 %i.d, -262144
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, -55464
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 560 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.b, label %_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit, !prof !12

bb.b:                                             ; preds = %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #15
  br label %_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit

_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit: ; preds = %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i, %bb.b
  %.0.i4.i.i = phi ptr [ %i.w, %bb.b ], [ %i.s, %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i4.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.d, ptr %.0.i4.i.i, align 8
  %i.aa = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ab = add i64 %i.d, 15
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8            ; 5 uses
  %i.ae = icmp slt i32 %i.aa, 257
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit
  %i.af = icmp samesign ult i32 %i.aa, 65537
  %i.ag = add i64 %i.ad, -1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit
  %i.aj = add i64 %i.ad, -1
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 17
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aq, %i.an
  %i.as = add i64 %i.ad, -1
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 17
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.az, %i.aw
  br label %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit

bb.e:                                             ; preds = %bb.c
  %i.bb = load i16, ptr %i.ai, align 2
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 18
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i32
  %i.bg = add nuw nsw i32 %i.bf, %i.bc
  %i.bh = add i64 %i.ad, -1
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 18
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, %i.bl
  br label %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit

bb.f:                                             ; preds = %bb.c
  %i.bq = load i32, ptr %i.ai, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add nsw i32 %i.bs, %i.bq
  %i.bu = add i64 %i.ad, -1
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = add nsw i32 %i.bz, %i.bx
  br label %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit

_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %storemerge.i.i32.shrunk = phi i32 [ %i.ar, %bb.d ], [ %i.bt, %bb.f ], [ %i.bg, %bb.e ]
  %.sroa.010.0.insert.insert.i = phi i32 [ %i.ba, %bb.d ], [ %i.ca, %bb.f ], [ %i.bp, %bb.e ] ; 2 uses
  %.not39 = icmp eq i32 %.sroa.010.0.insert.insert.i, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cc = add i64 %.sroa.0.0.copyload.i.i.i.i.i, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = add i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit, %bb.a, %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit
  %.0.lcssa = phi i32 [ 0, %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit ], [ 0, %bb.a ], [ %.2, %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit ]
  ret i32 %.0.lcssa

bb.g:                                             ; preds = %.lr.ph, %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.017.4.extract.trunc42 = phi i32 [ 0, %.lr.ph ], [ %.sroa.017.4.extract.trunc, %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %.041 = phi i32 [ 0, %.lr.ph ], [ %.2, %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit ] ; 3 uses
  %.sroa.017.040 = phi i64 [ 0, %.lr.ph ], [ %.sroa.017.4.insert.shift, %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit ]
  %i.cf = icmp eq i32 %.sroa.017.4.extract.trunc42, %storemerge.i.i32.shrunk
  br i1 %i.cf, label %_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = load i64, ptr %.0.i4.i.i, align 8       ; 2 uses
  %i.ch = add nsw i32 %.sroa.017.4.extract.trunc42, 2 ; 2 uses
  %i.ci = add i64 %i.cg, 11
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = add i64 %i.cg, 15
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = icmp slt i32 %i.ck, 257
  br i1 %i.co, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = add i64 %i.cn, -1
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = sext i32 %i.ch to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  br label %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cw = icmp samesign ult i32 %i.ck, 65537
  %i.cx = add i64 %i.cn, -1
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.da = sext i32 %i.ch to i64                   ; 2 uses
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = zext i16 %i.dc to i32
  br label %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da
  %i.df = load i32, ptr %i.de, align 4
  br label %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i

_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.cv, %bb.i ], [ %i.dd, %bb.k ], [ %i.df, %bb.l ]
  %i.dg = sext i32 %.0.i.i.i to i64
  br label %_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit

_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit: ; preds = %bb.g, %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i
  %.sroa.03.0.i = phi i64 [ %i.dg, %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i ], [ -1, %bb.g ] ; 2 uses
  %i.dh = trunc nsw i64 %.sroa.03.0.i to i32
  %i.di = shl i32 %i.dh, 4
  %narrow.i.i.i = add i32 %i.di, 23
  %i.dj = sext i32 %narrow.i.i.i to i64
  %i.dk = add i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.dj
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8 ; 3 uses
  %i.dn = load i64, ptr %i.cb, align 8
  %.not36 = icmp eq i64 %i.dm, %i.dn
  br i1 %.not36, label %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit
  %i.do = trunc i64 %i.dm to i1
  br i1 %i.do, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.m
  %i.dp = add nsw i64 %i.dm, -1
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load atomic volatile i64, ptr %i.dq monotonic, align 8
  %i.ds = add i64 %i.dr, 11
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load atomic volatile i16, ptr %i.dt monotonic, align 2
  %i.dv = icmp eq i16 %i.du, 128
  br i1 %i.dv, label %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit

_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.m
  %i.dw = load i32, ptr %i.cd, align 4
  %i.dx = mul i32 %i.dw, 17
  %i.dy = add i32 %i.dx, 40
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add i64 %i.ce, %i.dz
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %.sroa.03.0.i
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = and i8 %i.ed, 8
  %i.ef = icmp eq i8 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %spec.select = add nsw i32 %.041, %i.eg
  br label %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit, %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit
  %.2 = phi i32 [ %.041, %_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit ], [ %spec.select, %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit ], [ %.041, %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %.sroa.017.4.insert.shift = add i64 %.sroa.017.040, 4294967296 ; 2 uses
  %.sroa.017.4.extract.shift = lshr exact i64 %.sroa.017.4.insert.shift, 32
  %.sroa.017.4.extract.trunc = trunc nuw i64 %.sroa.017.4.extract.shift to i32 ; 2 uses
  %.not = icmp eq i32 %.sroa.010.0.insert.insert.i, %.sroa.017.4.extract.trunc
  br i1 %.not, label %._crit_edge, label %bb.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal19SwissNameDictionary17SlowReverseLookupEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 !guid !51 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.b = load i64, ptr %0, align 8                ; 4 uses
  %i.c = add i64 %i.b, 11
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge, label %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i

_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i: ; preds = %bb.a
  %i.g = and i64 %i.b, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, -55464
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 560 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 568
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.b, label %_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit, !prof !12

bb.b:                                             ; preds = %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.o) #15
  br label %_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit

_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit: ; preds = %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i, %bb.b
  %.0.i4.i.i = phi ptr [ %i.u, %bb.b ], [ %i.q, %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i.i ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i4.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.p, align 8
  store i64 %i.b, ptr %.0.i4.i.i, align 8
  %i.y = load i32, ptr %i.d, align 4              ; 2 uses
  %i.z = add i64 %i.b, 15
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8            ; 5 uses
  %i.ac = icmp slt i32 %i.y, 257
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit
  %i.ad = icmp samesign ult i32 %i.y, 65537
  %i.ae = add i64 %i.ab, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_ZN2v88internal19SwissNameDictionary14IterateEntriesEv.exit
  %i.ah = add i64 %i.ab, -1
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.ao, %i.al
  %i.aq = add i64 %i.ab, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, %i.au
  br label %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit

bb.e:                                             ; preds = %bb.c
  %i.az = load i16, ptr %i.ag, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, %i.ba
  %i.bf = add i64 %i.ab, -1
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 18
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bm, %i.bj
  br label %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit

bb.f:                                             ; preds = %bb.c
  %i.bo = load i32, ptr %i.ag, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = add nsw i32 %i.bq, %i.bo
  %i.bs = add i64 %i.ab, -1
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = add nsw i32 %i.bx, %i.bv
  br label %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit

_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %storemerge.i.i38.shrunk = phi i32 [ %i.ap, %bb.d ], [ %i.br, %bb.f ], [ %i.be, %bb.e ]
  %.sroa.010.0.insert.insert.i = phi i32 [ %i.ay, %bb.d ], [ %i.by, %bb.f ], [ %i.bn, %bb.e ] ; 2 uses
  %.not48 = icmp eq i32 %.sroa.010.0.insert.insert.i, 0
  br i1 %.not48, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.ca = add i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.018.4.extract.trunc50 = phi i32 [ 0, %.lr.ph ], [ %.sroa.018.4.extract.trunc, %bb.n ] ; 2 uses
  %.sroa.018.049 = phi i64 [ 0, %.lr.ph ], [ %.sroa.018.4.insert.shift, %bb.n ]
  %i.cb = icmp eq i32 %.sroa.018.4.extract.trunc50, %storemerge.i.i38.shrunk
  br i1 %i.cb, label %_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = load i64, ptr %.0.i4.i.i, align 8       ; 2 uses
  %i.cd = add nsw i32 %.sroa.018.4.extract.trunc50, 2 ; 2 uses
  %i.ce = add i64 %i.cc, 11
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = add i64 %i.cc, 15
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i64, ptr %i.ci, align 8            ; 2 uses
  %i.ck = icmp slt i32 %i.cg, 257
  br i1 %i.ck, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cl = add i64 %i.cj, -1
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = sext i32 %i.cd to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32
  br label %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cs = icmp samesign ult i32 %i.cg, 65537
  %i.ct = add i64 %i.cj, -1
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = sext i32 %i.cd to i64                   ; 2 uses
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = zext i16 %i.cy to i32
  br label %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cw
  %i.db = load i32, ptr %i.da, align 4
  br label %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i

_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.cr, %bb.i ], [ %i.cz, %bb.k ], [ %i.db, %bb.l ]
  %i.dc = shl i32 %.0.i.i.i, 4
  br label %_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit

_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit: ; preds = %bb.g, %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i
  %.sroa.03.0.i = phi i32 [ %i.dc, %_ZN2v88internal19SwissNameDictionary24EntryForEnumerationIndexEi.exit.i ], [ -16, %bb.g ] ; 2 uses
  %narrow.i.i.i = add i32 %.sroa.03.0.i, 23
  %i.dd = sext i32 %narrow.i.i.i to i64
  %i.de = add i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.dd
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8 ; 2 uses
  %i.dh = load i64, ptr %i.bz, align 8
  %.not45 = icmp eq i64 %i.dg, %i.dh
  br i1 %.not45, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit
  %i.di = add i32 %.sroa.03.0.i, 32
  %i.dj = sext i32 %i.di to i64
  %i.dk = add i64 %i.ca, %i.dj
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.dn = icmp eq i64 %i.dm, %2
  br i1 %i.dn, label %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN2v88internal19SwissNameDictionary13IndexIteratordeEv.exit
  %.sroa.018.4.insert.shift = add i64 %.sroa.018.049, 4294967296 ; 2 uses
  %.sroa.018.4.extract.shift = lshr exact i64 %.sroa.018.4.insert.shift, 32
  %.sroa.018.4.extract.trunc = trunc nuw i64 %.sroa.018.4.extract.shift to i32 ; 2 uses
  %.not = icmp eq i32 %.sroa.010.0.insert.insert.i, %.sroa.018.4.extract.trunc
  br i1 %.not, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.n, %bb.a, %_ZN2v88internal19SwissNameDictionary13IndexIterable3endEv.exit
  %i.do = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.m, %.critedge
  %.sroa.027.0 = phi i64 [ %i.do, %.critedge ], [ %i.dg, %bb.m ]
  ret i64 %.sroa.027.0
}

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #4

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !guid !52 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !53, !noundef !54
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 55448
  %i.f = load i8, ptr %i.e, align 8, !range !53
  %i.g = trunc nuw i8 %i.f to i1
  %not..i.i = xor i1 %i.d, true
  %i.h = select i1 %not..i.i, i1 true, i1 %i.g
  br i1 %i.h, label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64088
  %i.j = load i8, ptr %i.i, align 8, !range !53, !noundef !54
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #19
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64080
  %i.m = load ptr, ptr %i.l, align 8
  br label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit

_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit: ; preds = %bb.a, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i
  %.pn.i = phi ptr [ %i.m, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i ], [ %i.b, %bb.a ]
  %i.n = lshr i32 %1, 4
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 58472
  %i.o = load ptr, ptr %.in.i, align 8
  %i.p = tail call noundef i32 @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i32 noundef %i.n) #15
  ret i32 %i.p
}

declare noundef i32 @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #9 comdat !guid !55 {
bb.a:
  tail call void @abort() #16
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4), i64, i32 noundef) unnamed_addr #4

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i64 -1550686341590135868}
!6 = !{i64 2178191227565872910}
!7 = !{i64 -4994495671553194492}
!8 = !{i64 14333961}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i64 -4628878474444314012}
!14 = !{i64 -5714653724986671128}
!15 = !{i64 2515208058334114410}
!16 = !{i64 968267166514829300}
!17 = !{i64 -416953487478677499}
!18 = !{i64 -2332512909387698437}
!19 = !{i64 7595585644482874423}
!20 = distinct !{!20, !10}
!21 = !{i64 -7667168078473826515}
!22 = distinct !{!22, !10}
!23 = !{i64 -2931086193071625839}
!24 = distinct !{!24, !10}
!25 = !{i64 2118480497985714899}
!26 = distinct !{!26, !10}
!27 = !{i64 519586390150341762}
!28 = distinct !{!28, !10}
!29 = !{i64 -5309141601978880258}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = !{i64 4369572819638729046}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = !{i64 -5439774466638663907}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = !{i64 -9054822676487524423}
!42 = distinct !{!42, i1 true, !"_ZN2v88internal10HeapObject19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!43 = distinct !{!43, !42, !"_ZN2v88internal10HeapObject19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!45 = distinct !{!45, !44, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = !{i64 882275895600839226}
!49 = !{!45, !43}
!50 = !{i64 8284046644048527330}
!51 = !{i64 3811169923107562907}
!52 = !{i64 6929858767641445014}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{i64 -5814057221191484895}
end_hunk_0
