inline.NumInlined: 1956
inline.NumDeleted: 906
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal31Runtime_ScriptLocationFromLine2EiPmPNS0_7IsolateE:bb.a
  %or.cond3.i.i8 = and i1 %i.bi, %or.cond.i.i7
  br i1 %or.cond3.i.i8, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = fptosi double %.0.copyload.i.i.i.i.i6 to i32
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit13

bb.q:                                             ; preds = %bb.o
  %i.bk = bitcast double %.0.copyload.i.i.i.i.i6 to i64 ; 5 uses
  %i.bl = and i64 %i.bk, 9218868437227405312
  %i.bm = icmp eq i64 %i.bl, 0                    ; 2 uses
  %i.bn = lshr i64 %i.bk, 52
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 2047
  %i.bq = add nsw i32 %i.bp, -1075
  %.0.i.i.i9 = select i1 %i.bm, i32 -1074, i32 %i.bq ; 5 uses
  %i.br = icmp slt i32 %.0.i.i.i9, 0
  br i1 %i.br, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp samesign ult i32 %.0.i.i.i9, -52
  br i1 %i.bs, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = and i64 %i.bk, 4503599627370495         ; 2 uses
  %i.bu = or disjoint i64 %i.bt, 4503599627370496
  %.0.i17.i.i12 = select i1 %i.bm, i64 %i.bt, i64 %i.bu
  %i.bv = sub nsw i32 0, %.0.i.i.i9
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = lshr i64 %.0.i17.i.i12, %i.bw
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.by = icmp samesign ugt i32 %.0.i.i.i9, 31
  br i1 %i.by, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = zext nneg i32 %.0.i.i.i9 to i64
  %i.ca = shl i64 %i.bk, %i.bz
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0.i.i10 = phi i64 [ %i.bx, %bb.s ], [ %i.ca, %bb.u ]
  %i.cb = trunc i64 %.0.i.i10 to i32              ; 2 uses
  %i.cc = sub i32 0, %i.cb
  %i.cd = icmp slt i64 %i.bk, 0
  %i.ce = select i1 %i.cd, i32 %i.cc, i32 %i.cb
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit13

_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit13: ; preds = %bb.n, %bb.p, %bb.r, %bb.t, %bb.v
  %.0.i11 = phi i32 [ %i.bb, %bb.n ], [ %i.bj, %bb.p ], [ 0, %bb.r ], [ %i.ce, %bb.v ], [ 0, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2v88internal6Script8IteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %2) #18
  %i.cf = call i64 @_ZN2v88internal6Script8Iterator4NextEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #18 ; 2 uses
  %.not.i14 = icmp eq i64 %i.cf, 0
  br i1 %.not.i14, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit13, %bb.y
  %storemerge17.i = phi i64 [ %i.cq, %bb.y ], [ %i.cf, %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit13 ] ; 2 uses
  %i.cg = add i64 %storemerge17.i, 63
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = lshr i64 %i.ci, 32
  %i.ck = trunc nuw i64 %i.cj to i32
  %i.cl = icmp eq i32 %.0.i5, %i.ck
  br i1 %i.cl, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i
  %i.cm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cn = load ptr, ptr %i.c, align 8
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.x, label %_ZN2v88internalL41__RT_impl_Runtime_ScriptLocationFromLine2ENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.cp = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internalL41__RT_impl_Runtime_ScriptLocationFromLine2ENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.y:                                             ; preds = %.lr.ph.i
  %i.cq = call i64 @_ZN2v88internal6Script8Iterator4NextEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #18 ; 2 uses
  %.not18.i = icmp eq i64 %i.cq, 0
  br i1 %.not18.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !32

.loopexit:                                        ; preds = %bb.y, %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #19
  unreachable

_ZN2v88internalL41__RT_impl_Runtime_ScriptLocationFromLine2ENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi ptr [ %i.cp, %bb.x ], [ %i.cm, %bb.w ] ; 14 uses
  %i.cr = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cs = add i64 %i.cr, 8
  %i.ct = inttoptr i64 %i.cs to ptr
  store ptr %i.ct, ptr %i.a, align 8
  store i64 %storemerge17.i, ptr %.0.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cu = load i64, ptr %i.ar, align 8            ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 664 ; 4 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp eq i64 %i.cu, %i.cx
  br i1 %i.cy, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i: ; preds = %_ZN2v88internalL41__RT_impl_Runtime_ScriptLocationFromLine2ENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  %i.cz = load i64, ptr %i.cv, align 8
  %i.da = icmp eq i64 %i.cu, %i.cz
  br i1 %i.da, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i
  %i.db = and i64 %i.cu, 1
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.ab, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit25.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit25.i: ; preds = %bb.z
  %i.dd = add nsw i64 %i.cu, -1
  %i.de = inttoptr i64 %i.dd to ptr               ; 2 uses
  %i.df = load atomic volatile i64, ptr %i.de monotonic, align 8
  %i.dg = add i64 %i.df, 11
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i16, ptr %i.dh monotonic, align 2
  %i.dj = icmp eq i16 %i.di, 130
  br i1 %i.dj, label %bb.ac, label %bb.aa, !prof !33

bb.aa:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit25.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.32) #19
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dk = lshr i64 %i.cu, 32
  %i.dl = trunc nuw i64 %i.dk to i32
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit.i

bb.ac:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit25.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.dm, align 8 ; 5 uses
  %i.dn = call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i.i)
  %i.do = fcmp one double %i.dn, +inf
  %i.dp = fcmp ole double %.0.copyload.i.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.dp, %i.do
  %i.dq = fcmp oge double %.0.copyload.i.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.dq, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dr = fptosi double %.0.copyload.i.i.i.i.i.i to i32
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.ds = bitcast double %.0.copyload.i.i.i.i.i.i to i64 ; 5 uses
  %i.dt = and i64 %i.ds, 9218868437227405312
  %i.du = icmp eq i64 %i.dt, 0                    ; 2 uses
  %i.dv = lshr i64 %i.ds, 52
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = and i32 %i.dw, 2047
  %i.dy = add nsw i32 %i.dx, -1075
  %.0.i.i.i.i15 = select i1 %i.du, i32 -1074, i32 %i.dy ; 5 uses
  %i.dz = icmp slt i32 %.0.i.i.i.i15, 0
  br i1 %i.dz, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ea = icmp samesign ult i32 %.0.i.i.i.i15, -52
  br i1 %i.ea, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = and i64 %i.ds, 4503599627370495         ; 2 uses
  %i.ec = or disjoint i64 %i.eb, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.du, i64 %i.eb, i64 %i.ec
  %i.ed = sub nsw i32 0, %.0.i.i.i.i15
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = lshr i64 %.0.i17.i.i.i, %i.ee
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.eg = icmp samesign ugt i32 %.0.i.i.i.i15, 31
  br i1 %i.eg, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = zext nneg i32 %.0.i.i.i.i15 to i64
  %i.ei = shl i64 %i.ds, %i.eh
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.0.i.i.i16 = phi i64 [ %i.ef, %bb.ag ], [ %i.ei, %bb.ai ]
  %i.ej = trunc i64 %.0.i.i.i16 to i32            ; 2 uses
  %i.ek = sub i32 0, %i.ej
  %i.el = icmp slt i64 %i.ds, 0
  %i.em = select i1 %i.el, i32 %i.ek, i32 %i.ej
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab
  %.0.i27.i = phi i32 [ %i.dl, %bb.ab ], [ %i.dr, %bb.ad ], [ 0, %bb.af ], [ %i.em, %bb.aj ], [ 0, %bb.ah ]
  %i.en = load i64, ptr %.0.i.i.i.i, align 8
  %i.eo = add i64 %i.en, 23
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = lshr i64 %i.eq, 32
  %i.es = trunc nuw i64 %i.er to i32
  %i.et = sub nsw i32 %.0.i27.i, %i.es
  br label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i: ; preds = %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i, %_ZN2v88internalL41__RT_impl_Runtime_ScriptLocationFromLine2ENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  %.0.i17 = phi i32 [ 0, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i ], [ %i.et, %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 0, %_ZN2v88internalL41__RT_impl_Runtime_ScriptLocationFromLine2ENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit ] ; 7 uses
  %i.eu = load i64, ptr %i.at, align 8            ; 5 uses
  %i.ev = icmp eq i64 %i.eu, %i.cx
  br i1 %i.ev, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.thread.i, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.i

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.i: ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i
  %i.ew = load i64, ptr %i.cv, align 8
  %i.ex = icmp eq i64 %i.eu, %i.ew
  br i1 %i.ex, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.thread.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.i
  %i.ey = and i64 %i.eu, 1
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.am, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.ak
  %i.fa = add nsw i64 %i.eu, -1
  %i.fb = inttoptr i64 %i.fa to ptr               ; 2 uses
  %i.fc = load atomic volatile i64, ptr %i.fb monotonic, align 8
  %i.fd = add i64 %i.fc, 11
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load atomic volatile i16, ptr %i.fe monotonic, align 2
  %i.fg = icmp eq i16 %i.ff, 130
  br i1 %i.fg, label %bb.an, label %bb.al, !prof !33

bb.al:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.33) #19
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.fh = lshr i64 %i.eu, 32
  %i.fi = trunc nuw i64 %i.fh to i32
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit37.i

bb.an:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.0.copyload.i.i.i.i.i30.i = load double, ptr %i.fj, align 8 ; 5 uses
  %i.fk = call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i30.i)
  %i.fl = fcmp one double %i.fk, +inf
  %i.fm = fcmp ole double %.0.copyload.i.i.i.i.i30.i, f0x41DFFFFFFFC00000
  %or.cond.i.i31.i = and i1 %i.fm, %i.fl
  %i.fn = fcmp oge double %.0.copyload.i.i.i.i.i30.i, f0xC1E0000000000000
  %or.cond3.i.i32.i = and i1 %i.fn, %or.cond.i.i31.i
  br i1 %or.cond3.i.i32.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fo = fptosi double %.0.copyload.i.i.i.i.i30.i to i32
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit37.i

bb.ap:                                            ; preds = %bb.an
  %i.fp = bitcast double %.0.copyload.i.i.i.i.i30.i to i64 ; 5 uses
  %i.fq = and i64 %i.fp, 9218868437227405312
  %i.fr = icmp eq i64 %i.fq, 0                    ; 2 uses
  %i.fs = lshr i64 %i.fp, 52
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = and i32 %i.ft, 2047
  %i.fv = add nsw i32 %i.fu, -1075
  %.0.i.i.i33.i = select i1 %i.fr, i32 -1074, i32 %i.fv ; 5 uses
  %i.fw = icmp slt i32 %.0.i.i.i33.i, 0
  br i1 %i.fw, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.fx = icmp samesign ult i32 %.0.i.i.i33.i, -52
  br i1 %i.fx, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit37.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fy = and i64 %i.fp, 4503599627370495         ; 2 uses
  %i.fz = or disjoint i64 %i.fy, 4503599627370496
  %.0.i17.i.i36.i = select i1 %i.fr, i64 %i.fy, i64 %i.fz
  %i.ga = sub nsw i32 0, %.0.i.i.i33.i
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = lshr i64 %.0.i17.i.i36.i, %i.gb
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.gd = icmp samesign ugt i32 %.0.i.i.i33.i, 31
  br i1 %i.gd, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit37.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ge = zext nneg i32 %.0.i.i.i33.i to i64
  %i.gf = shl i64 %i.fp, %i.ge
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.0.i.i34.i = phi i64 [ %i.gc, %bb.ar ], [ %i.gf, %bb.at ]
  %i.gg = trunc i64 %.0.i.i34.i to i32            ; 2 uses
  %i.gh = sub i32 0, %i.gg
  %i.gi = icmp slt i64 %i.fp, 0
  %i.gj = select i1 %i.gi, i32 %i.gh, i32 %i.gg
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit37.i

_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit37.i: ; preds = %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am
  %.0.i35.i = phi i32 [ %i.fi, %bb.am ], [ %i.fo, %bb.ao ], [ 0, %bb.aq ], [ %i.gj, %bb.au ], [ 0, %bb.as ] ; 2 uses
  %i.gk = icmp eq i32 %.0.i17, 0
  br i1 %i.gk, label %bb.av, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.thread.i

bb.av:                                            ; preds = %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit37.i
  %i.gl = load i64, ptr %.0.i.i.i.i, align 8
  %i.gm = add i64 %i.gl, 31
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = lshr i64 %i.go, 32
  %i.gq = trunc nuw i64 %i.gp to i32
  %i.gr = sub nsw i32 %.0.i35.i, %i.gq
  br label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.thread.i

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.thread.i: ; preds = %bb.av, %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit37.i, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.i, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i
  %.021.i = phi i32 [ 0, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.i ], [ %i.gr, %bb.av ], [ %.0.i35.i, %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit37.i ], [ 0, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i ] ; 2 uses
  %i.gs = or i32 %.0.i17, %.0.i11
  %or.cond.not.i.i = icmp sgt i32 %i.gs, -1
  br i1 %or.cond.not.i.i, label %bb.aw, label %bb.bt

bb.aw:                                            ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit26.thread.i
  %i.gt = icmp eq i32 %.0.i17, 0                  ; 2 uses
  %i.gu = icmp eq i32 %.0.i11, 0
  %or.cond3.i.i18 = or i1 %i.gu, %i.gt
  br i1 %or.cond3.i.i18, label %6, label %bb.bc

6:                                                ; preds = %bb.aw
  %7 = icmp slt i32 %.0.i17, 0
  br i1 %7, label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %6
  %i.gv = load i64, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %i.gw = add i64 %i.gv, 47
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = load i64, ptr %i.gx, align 8
  %.mask.i.i.i = and i64 %i.gy, -4294967296
  %i.gz = icmp eq i64 %.mask.i.i.i, 12884901888
  br i1 %i.gz, label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ha = add i64 %i.gv, 55
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = load i64, ptr %i.hb, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i.i.i, label %bb.az, label %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i.i.i

bb.az:                                            ; preds = %bb.ay
  call preserve_mostcc void @_ZN2v88internal6Script20InitLineEndsInternalINS0_7IsolateEEEvPT_NS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.0.i.i.i.i) #18
  %.pre.i.i.i = load i64, ptr %.0.i.i.i.i, align 8
  %.pre26.i.i.i = add i64 %.pre.i.i.i, 55
  %.pre27.i.i.i = inttoptr i64 %.pre26.i.i.i to ptr
  %.pre28.i.i = load i64, ptr %.pre27.i.i.i, align 8
  br label %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i.i.i

_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i.i.i: ; preds = %bb.az, %bb.ay
  %i.hd = phi i64 [ %i.hc, %bb.ay ], [ %.pre28.i.i, %bb.az ]
  %i.he = add i64 %i.hd, -1
  %i.hf = inttoptr i64 %i.he to ptr               ; 2 uses
  br i1 %i.gt, label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = lshr i64 %i.hh, 32
  %i.hj = trunc nuw i64 %i.hi to i32
  %i.hk = icmp sgt i32 %.0.i17, %i.hj
  br i1 %i.hk, label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hl = zext nneg i32 %.0.i17 to i64
  %i.hm = getelementptr [8 x i8], ptr %i.hf, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 8
  %i.ho = load atomic volatile i64, ptr %i.hn monotonic, align 8
  %i.hp = lshr i64 %i.ho, 32
  %i.hq = trunc nuw i64 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, 1
  br label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit.i.i

_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit.i.i: ; preds = %bb.bb, %bb.ba, %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i.i.i, %bb.ax, %6
  %.1.i.i.i = phi i32 [ 0, %bb.ax ], [ -1, %6 ], [ %i.hr, %bb.bb ], [ 0, %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i.i.i ], [ -1, %bb.ba ]
  %i.hs = add nsw i32 %.1.i.i.i, %.0.i11
  br label %_ZN2v88internal12_GLOBAL__N_128ScriptLinePositionWithOffsetEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEii.exit.i

bb.bc:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  %i.ht = call noundef zeroext i1 @_ZN2v88internal6Script15GetPositionInfoENS0_12DirectHandleIS1_EEiPNS1_12PositionInfoENS1_10OffsetFlagE(ptr nonnull %.0.i.i.i.i, i32 noundef %.0.i11, ptr noundef nonnull %4, i32 noundef 0) #18
  br i1 %i.ht, label %bb.bd, label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit27.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.hu = load i32, ptr %4, align 4
  %i.hv = add nsw i32 %i.hu, %.0.i17              ; 4 uses
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit27.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hx = load i64, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %i.hy = add i64 %i.hx, 47
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = load i64, ptr %i.hz, align 8
  %.mask.i19.i.i = and i64 %i.ia, -4294967296
  %i.ib = icmp eq i64 %.mask.i19.i.i, 12884901888
  br i1 %i.ib, label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit27.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ic = add i64 %i.hx, 55
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = load i64, ptr %i.id, align 8            ; 2 uses
  %.not.i.i20.i.i = icmp eq i64 %i.ie, 0
  br i1 %.not.i.i20.i.i, label %bb.bg, label %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i21.i.i

bb.bg:                                            ; preds = %bb.bf
  call preserve_mostcc void @_ZN2v88internal6Script20InitLineEndsInternalINS0_7IsolateEEEvPT_NS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.0.i.i.i.i) #18
  %.pre.i24.i.i = load i64, ptr %.0.i.i.i.i, align 8
  %.pre26.i25.i.i = add i64 %.pre.i24.i.i, 55
  %.pre27.i26.i.i = inttoptr i64 %.pre26.i25.i.i to ptr
  %.pre.i.i = load i64, ptr %.pre27.i26.i.i, align 8
  br label %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i21.i.i

_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i21.i.i: ; preds = %bb.bg, %bb.bf
  %i.if = phi i64 [ %i.ie, %bb.bf ], [ %.pre.i.i, %bb.bg ]
  %i.ig = add i64 %i.if, -1
  %i.ih = inttoptr i64 %i.ig to ptr               ; 2 uses
  %i.ii = icmp eq i32 %i.hv, 0
  br i1 %i.ii, label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit27.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i21.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = lshr i64 %i.ik, 32
  %i.im = trunc nuw i64 %i.il to i32
  %i.in = icmp sgt i32 %i.hv, %i.im
  br i1 %i.in, label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit27.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.io = zext nneg i32 %i.hv to i64
  %i.ip = getelementptr [8 x i8], ptr %i.ih, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  %i.ir = load atomic volatile i64, ptr %i.iq monotonic, align 8
  %i.is = lshr i64 %i.ir, 32
  %i.it = trunc nuw i64 %i.is to i32
  %i.iu = add nsw i32 %i.it, 1
  br label %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit27.i.i

_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit27.i.i: ; preds = %bb.bi, %bb.bh, %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i21.i.i, %bb.be, %bb.bd, %bb.bc
  %.0.i39.i = phi i32 [ -1, %bb.bc ], [ 0, %bb.be ], [ -1, %bb.bd ], [ %i.iu, %bb.bi ], [ 0, %_ZN2v88internal6Script12InitLineEndsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i21.i.i ], [ -1, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN2v88internal12_GLOBAL__N_128ScriptLinePositionWithOffsetEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEii.exit.i

_ZN2v88internal12_GLOBAL__N_128ScriptLinePositionWithOffsetEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEii.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit27.i.i, %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit.i.i
  %.1.i.i = phi i32 [ %.0.i39.i, %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit27.i.i ], [ %i.hs, %_ZN2v88internal12_GLOBAL__N_118ScriptLinePositionEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEi.exit.i.i ] ; 2 uses
  %i.iv = icmp slt i32 %.1.i.i, 0
  %i.iw = icmp slt i32 %.021.i, 0
  %or.cond.i = select i1 %i.iv, i1 true, i1 %i.iw
  br i1 %or.cond.i, label %bb.bt, label %bb.bj

bb.bj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_128ScriptLinePositionWithOffsetEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEii.exit.i
  %i.ix = add nuw nsw i32 %.1.i.i, %.021.i        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 -1, i64 16, i1 false)
  %i.iy = call noundef zeroext i1 @_ZN2v88internal6Script15GetPositionInfoENS0_12DirectHandleIS1_EEiPNS1_12PositionInfoENS1_10OffsetFlagE(ptr nonnull %.0.i.i.i.i, i32 noundef range(i32 0, -2147483648) %i.ix, ptr noundef nonnull %3, i32 noundef 0) #18
  br i1 %i.iy, label %bb.bk, label %_ZN2v88internal12_GLOBAL__N_117GetJSPositionInfoENS0_12DirectHandleINS0_6ScriptEEEiNS3_10OffsetFlagEPNS0_7IsolateE.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.iz = load i64, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %i.ja = add i64 %i.iz, 47
  %i.jb = inttoptr i64 %i.ja to ptr
  %i.jc = load i64, ptr %i.jb, align 8
  %.mask.i.i = and i64 %i.jc, -4294967296
  %i.jd = icmp eq i64 %.mask.i.i, 12884901888
  br i1 %i.jd, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 688
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.jf = add i64 %i.iz, 7
  %i.jg = inttoptr i64 %i.jf to ptr
  %i.jh = load i64, ptr %i.jg, align 8            ; 2 uses
  %i.ji = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.jj = load ptr, ptr %i.c, align 8
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %bb.bn, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !11

bb.bn:                                            ; preds = %bb.bm
  %i.jl = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i40.i = phi ptr [ %i.jl, %bb.bn ], [ %i.ji, %bb.bm ] ; 4 uses
  %i.jm = ptrtoint ptr %.0.i.i.i40.i to i64
  %i.jn = add i64 %i.jm, 8
  %i.jo = inttoptr i64 %i.jn to ptr
  store ptr %i.jo, ptr %i.a, align 8
  store i64 %i.jh, ptr %.0.i.i.i40.i, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jq = load i32, ptr %i.jp, align 4            ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.js = load i32, ptr %i.jr, align 4            ; 2 uses
  %i.jt = icmp eq i32 %i.jq, 0
  br i1 %i.jt, label %bb.bo, label %.critedge.i.i.i

bb.bo:                                            ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %i.ju = add i64 %i.jh, -1
  %i.jv = inttoptr i64 %i.ju to ptr
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = icmp eq i32 %i.js, %i.jx
  br i1 %i.jy, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.bo, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %i.jz = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i.i40.i, i32 noundef %i.jq, i32 noundef %i.js) #18
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit.i.i

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit.i.i: ; preds = %.critedge.i.i.i, %bb.bo, %bb.bl
  %.sroa.025.0.i.i = phi ptr [ %i.je, %bb.bl ], [ %i.jz, %.critedge.i.i.i ], [ %.0.i.i.i40.i, %bb.bo ]
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ka, align 8
  %i.kb = add i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  %i.kc = inttoptr i64 %i.kb to ptr
  %i.kd = load atomic volatile i64, ptr %i.kc monotonic, align 8
  %i.ke = add i64 %i.kd, 31
  %i.kf = inttoptr i64 %i.ke to ptr
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = add i64 %i.kg, 1375
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = load atomic volatile i64, ptr %i.ki monotonic, align 8
  %i.kk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.kl = load ptr, ptr %i.c, align 8
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %bb.bp, label %_ZN2v88internal7Isolate15object_functionEv.exit.i.i, !prof !11

bb.bp:                                            ; preds = %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit.i.i
  %i.kn = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #18
  br label %_ZN2v88internal7Isolate15object_functionEv.exit.i.i

_ZN2v88internal7Isolate15object_functionEv.exit.i.i: ; preds = %bb.bp, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.kn, %bb.bp ], [ %i.kk, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit.i.i ] ; 3 uses
  %i.ko = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.kp = add i64 %i.ko, 8
  %i.kq = inttoptr i64 %i.kp to ptr
  store ptr %i.kq, ptr %i.a, align 8
  store i64 %i.kj, ptr %.0.i.i.i.i.i, align 8
  %i.kr = call ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #18 ; 6 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 7248
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.kr, ptr nonnull %i.ks, ptr nonnull %.0.i.i.i.i, i32 noundef 0) #18
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 7008
  %i.ku = zext nneg i32 %i.ix to i64
  %i.kv = shl nuw nsw i64 %i.ku, 32
  %i.kw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.kx = load ptr, ptr %i.c, align 8
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %bb.bq, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit54.i.i, !prof !11

bb.bq:                                            ; preds = %_ZN2v88internal7Isolate15object_functionEv.exit.i.i
  %i.kz = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit54.i.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit54.i.i: ; preds = %bb.bq, %_ZN2v88internal7Isolate15object_functionEv.exit.i.i
  %.0.i.i53.i.i = phi ptr [ %i.kz, %bb.bq ], [ %i.kw, %_ZN2v88internal7Isolate15object_functionEv.exit.i.i ] ; 3 uses
  %i.la = ptrtoint ptr %.0.i.i53.i.i to i64
  %i.lb = add i64 %i.la, 8
  %i.lc = inttoptr i64 %i.lb to ptr
  store ptr %i.lc, ptr %i.a, align 8
  store i64 %i.kv, ptr %.0.i.i53.i.i, align 8
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.kr, ptr nonnull %i.kt, ptr nonnull %.0.i.i53.i.i, i32 noundef 0) #18
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 6576
  %i.le = load i32, ptr %3, align 4
  %i.lf = sext i32 %i.le to i64
  %i.lg = shl nsw i64 %i.lf, 32
  %i.lh = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.li = load ptr, ptr %i.c, align 8
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %bb.br, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit52.i.i, !prof !11

bb.br:                                            ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit54.i.i
  %i.lk = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit52.i.i

end_hunk_0
