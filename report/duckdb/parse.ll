inline.NumInlined: 971
inline.NumDeleted: 313
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10duckdb_re26Regexp5ParseERKNS_11StringPieceENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
          to label %_ZN10duckdb_re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN10duckdb_re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit.i: ; preds = %bb.ao, %bb.am
  %i.du = invoke noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.dq)
          to label %_ZN10duckdb_re26Regexp10ParseState9PushCaretEv.exit unwind label %bb.o ; 0 uses

_ZN10duckdb_re26Regexp10ParseState9PushCaretEv.exit: ; preds = %_ZN10duckdb_re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit.i
  %i.dv = load ptr, ptr %6, align 8, !tbaa !97
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store ptr %i.dw, ptr %6, align 8, !tbaa !97
  %i.dx = load i64, ptr %i.ar, align 8, !tbaa !101
  %i.dy = add i64 %i.dx, -1                       ; 2 uses
  store i64 %i.dy, ptr %i.ar, align 8, !tbaa !101
  br label %.critedge118

bb.aq:                                            ; preds = %bb.m
  %i.dz = invoke noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState10PushDollarEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.ar unwind label %bb.o      ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.ea = load ptr, ptr %6, align 8, !tbaa !97
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store ptr %i.eb, ptr %6, align 8, !tbaa !97
  %i.ec = load i64, ptr %i.ar, align 8, !tbaa !101
  %i.ed = add i64 %i.ec, -1                       ; 2 uses
  store i64 %i.ed, ptr %i.ar, align 8, !tbaa !101
  br label %.critedge118

bb.as:                                            ; preds = %bb.m
  %i.ee = invoke noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState7PushDotEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.at unwind label %bb.o      ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.ef = load ptr, ptr %6, align 8, !tbaa !97
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store ptr %i.eg, ptr %6, align 8, !tbaa !97
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !101
  %i.ei = add i64 %i.eh, -1                       ; 2 uses
  store i64 %i.ei, ptr %i.ar, align 8, !tbaa !101
  br label %.critedge118

bb.au:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.ej = invoke noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState14ParseCharClassEPNS_11StringPieceEPPS0_PNS_12RegexpStatusE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %6, ptr noundef nonnull %i.e, ptr noundef nonnull %spec.store.select)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  br i1 %i.ej, label %bb.ax, label %.critedge110

bb.aw:                                            ; preds = %bb.ax, %bb.au
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %.body

bb.ax:                                            ; preds = %bb.av
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.em = invoke noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.el)
          to label %bb.ay unwind label %bb.aw     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %.critedge118thread-pre-split

bb.az:                                            ; preds = %bb.m
  br label %bb.bb

bb.ba:                                            ; preds = %bb.m
  br label %bb.bb

bb.bb:                                            ; preds = %bb.m, %bb.ba, %bb.az
  %.065 = phi i32 [ 9, %bb.ba ], [ 8, %bb.az ], [ 7, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !16
  %i.en = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 5 uses
  store ptr %i.en, ptr %6, align 8, !tbaa !97
  %i.eo = add i64 %i.bs, -1                       ; 2 uses
  store i64 %i.eo, ptr %i.ar, align 8, !tbaa !101
  %i.ep = load i32, ptr %5, align 8, !tbaa !7
  %i.eq = and i32 %i.ep, 512
  %.not98 = icmp eq i32 %i.eq, 0
  br i1 %.not98, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.er = icmp eq i64 %i.eo, 0
  br i1 %i.er, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = load i8, ptr %i.en, align 1, !tbaa !27
  %i.et = icmp eq i8 %i.es, 63
  br i1 %i.et, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2 ; 2 uses
  store ptr %i.eu, ptr %6, align 8, !tbaa !97
  %i.ev = add i64 %i.bs, -2
  store i64 %i.ev, ptr %i.ar, align 8, !tbaa !101
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bi
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

bb.bg:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.ex = phi ptr [ %i.en, %bb.bc ], [ %i.eu, %bb.be ], [ %i.en, %bb.bd ] ; 2 uses
  %.063 = phi i1 [ false, %bb.bc ], [ true, %bb.be ], [ false, %bb.bd ]
  %i.ey = icmp eq i64 %.sroa.9.0324, 0
  br i1 %i.ey, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 11, ptr %spec.store.select, align 8, !tbaa !57
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %.sroa.0186.0325 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %.sroa.gep205 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %spec.store.select.sroa.sel206 = select i1 %i.j, ptr %i.i, ptr %.sroa.gep205
  store ptr %.sroa.0186.0325, ptr %spec.store.select.sroa.sel206, align 8, !tbaa !17
  %spec.store.select.sroa.sel206.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.j, ptr %4, ptr %2
  %spec.store.select.sroa.sel206.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel206.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.fb, ptr %spec.store.select.sroa.sel206.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !18
  br label %.loopexit246

bb.bi:                                            ; preds = %bb.bg, %bb.bb
  %i.fc = phi ptr [ %i.ex, %bb.bg ], [ %i.en, %bb.bb ]
  %.164 = phi i1 [ %.063, %bb.bg ], [ false, %bb.bb ]
  %i.fd = load ptr, ptr %8, align 8, !tbaa !97    ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  store i64 %i.fg, ptr %.sroa.4183.0..sroa_idx, align 8, !tbaa !18
  %i.fh = invoke noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState12PushRepeatOpENS_8RegexpOpERKNS_11StringPieceEb(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %.065, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext %.164)
          to label %bb.bj unwind label %bb.bf

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.fh, label %.critedge112, label %.loopexit246

.critedge112:                                     ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.critedge118thread-pre-split

.loopexit246:                                     ; preds = %bb.bj, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.thread233

bb.bk:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !16
  %i.fi = load i64, ptr %i.aw, align 8, !tbaa !101 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fk = load ptr, ptr %3, align 8, !tbaa !97    ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !27
  %.not.i143 = icmp eq i8 %i.fl, 123
  br i1 %.not.i143, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 1 ; 2 uses
  %i.fn = add i64 %i.fi, -1                       ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fp = load i8, ptr %i.fm, align 1, !tbaa !27  ; 2 uses
  %i.fq = add i8 %i.fp, -48
  %isdigit.i.i = icmp ult i8 %i.fq, 10
  br i1 %isdigit.i.i, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.fr = icmp ne i64 %i.fn, 1
  %i.fs = icmp eq i8 %i.fp, 48
  %or.cond.i.i = and i1 %i.fr, %i.fs
  br i1 %or.cond.i.i, label %bb.bp, label %.lr.ph.i.i.preheader

bb.bp:                                            ; preds = %bb.bo
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !27
  %i.fv = add i8 %i.fu, -48
  %isdigit14.i.i = icmp ult i8 %i.fv, 10
  br i1 %isdigit14.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bp, %bb.bo
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.br
  %i.fw = phi i64 [ %i.gh, %bb.br ], [ %i.fn, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.fx = phi ptr [ %i.gg, %bb.br ], [ %i.fm, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.fy = phi i32 [ %i.gf, %bb.br ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.fz = load i8, ptr %i.fx, align 1, !tbaa !27  ; 3 uses
  %i.ga = zext i8 %i.fz to i32
  %i.gb = add i8 %i.fz, -48
  %isdigit15.i.i = icmp ult i8 %i.gb, 10
  br i1 %isdigit15.i.i, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %.lr.ph.i.i
  %i.gc = icmp sgt i32 %i.fy, 99999999
  br i1 %i.gc, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gd = mul nsw i32 %i.fy, 10
  %i.ge = add i32 %i.gd, -48
  %i.gf = add i32 %i.ge, %i.ga
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.gh = add i64 %i.fw, -1                       ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !226

bb.bs:                                            ; preds = %.lr.ph.i.i
  store ptr %i.fx, ptr %3, align 8
  %i.gj = icmp eq i8 %i.fz, 44
  br i1 %i.gj, label %bb.bt, label %.thread36.sink.split.i

bb.bt:                                            ; preds = %bb.bs
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 3 uses
  store ptr %i.gk, ptr %3, align 8, !tbaa !97
  %i.gl = add i64 %i.fw, -1                       ; 3 uses
  store i64 %i.gl, ptr %i.aw, align 8, !tbaa !101
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gn = load i8, ptr %i.gk, align 1, !tbaa !27
  %i.go = icmp eq i8 %i.gn, 125
  br i1 %i.go, label %.thread36.sink.split.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gp = call fastcc noundef zeroext i1 @_ZN10duckdb_re2L12ParseIntegerEPNS_11StringPieceEPi(ptr noundef %3, ptr noundef nonnull %i.f)
  %.pre.i = load i64, ptr %i.aw, align 8          ; 2 uses
  %i.gq = icmp ne i64 %.pre.i, 0
  %or.cond.not.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond.not.i, label %..thread36.i_crit_edge, label %.loopexit

..thread36.i_crit_edge:                           ; preds = %bb.bv
  %.pre406 = load ptr, ptr %3, align 8, !tbaa !97
  br label %.thread36.i

.thread36.sink.split.i:                           ; preds = %bb.bu, %bb.bs
  %i.gr = phi ptr [ %i.gk, %bb.bu ], [ %i.fx, %bb.bs ]
  %.lcssa.sink.i = phi i32 [ -1, %bb.bu ], [ %i.fy, %bb.bs ]
  %.ph.i = phi i64 [ %i.gl, %bb.bu ], [ %i.fw, %bb.bs ]
  store i32 %.lcssa.sink.i, ptr %i.f, align 4, !tbaa !3
  br label %.thread36.i

.thread36.i:                                      ; preds = %..thread36.i_crit_edge, %.thread36.sink.split.i
  %i.gs = phi ptr [ %.pre406, %..thread36.i_crit_edge ], [ %i.gr, %.thread36.sink.split.i ] ; 2 uses
  %i.gt = phi i64 [ %.pre.i, %..thread36.i_crit_edge ], [ %.ph.i, %.thread36.sink.split.i ]
  %i.gu = load i8, ptr %i.gs, align 1, !tbaa !27
  %.not8.i = icmp eq i8 %i.gu, 125
  br i1 %.not8.i, label %bb.by, label %.loopexit

.loopexit:                                        ; preds = %bb.bq, %bb.br, %bb.bk, %bb.bm, %bb.bv, %bb.bt, %bb.bl, %.thread36.i, %bb.bn, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.gv = invoke noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState11PushLiteralEi(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef 123)
          to label %bb.bx unwind label %bb.bw     ; 0 uses

bb.bw:                                            ; preds = %.loopexit
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bx:                                            ; preds = %.loopexit
  %i.gx = load ptr, ptr %6, align 8, !tbaa !97
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store ptr %i.gy, ptr %6, align 8, !tbaa !97
  %i.gz = load i64, ptr %i.ar, align 8, !tbaa !101
  %i.ha = add i64 %i.gz, -1
  store i64 %i.ha, ptr %i.ar, align 8, !tbaa !101
  br label %.critedge114

bb.by:                                            ; preds = %.thread36.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store ptr %i.hb, ptr %3, align 8, !tbaa !97
  %i.hc = add i64 %i.gt, -1
  store i64 %i.hc, ptr %i.aw, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hd = load i32, ptr %5, align 8, !tbaa !7
  %i.he = and i32 %i.hd, 512
  %.not95 = icmp eq i32 %i.he, 0
  br i1 %.not95, label %._crit_edge407, label %bb.bz

._crit_edge407:                                   ; preds = %bb.by
  %.pre408 = load ptr, ptr %6, align 8, !tbaa !97
  br label %bb.cf

bb.bz:                                            ; preds = %bb.by
  %i.hf = load i64, ptr %i.ar, align 8, !tbaa !101 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0
  %.pre409.pre = load ptr, ptr %6, align 8, !tbaa !97 ; 4 uses
  br i1 %i.hg, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hh = load i8, ptr %.pre409.pre, align 1, !tbaa !27
  %i.hi = icmp eq i8 %i.hh, 63
  br i1 %i.hi, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.hj = getelementptr inbounds nuw i8, ptr %.pre409.pre, i64 1 ; 2 uses
  store ptr %i.hj, ptr %6, align 8, !tbaa !97
  %i.hk = add i64 %i.hf, -1
  store i64 %i.hk, ptr %i.ar, align 8, !tbaa !101
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cf
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %.pre409 = phi ptr [ %.pre409.pre, %bb.bz ], [ %i.hj, %bb.cb ], [ %.pre409.pre, %bb.ca ] ; 2 uses
  %.061 = phi i1 [ false, %bb.bz ], [ true, %bb.cb ], [ false, %bb.ca ]
  %i.hm = icmp eq i64 %.sroa.9.0324, 0
  br i1 %i.hm, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i32 11, ptr %spec.store.select, align 8, !tbaa !57
  %i.hn = ptrtoint ptr %.pre409 to i64
  %i.ho = ptrtoint ptr %.sroa.0186.0325 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %.sroa.gep208 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %spec.store.select.sroa.sel209 = select i1 %i.j, ptr %i.i, ptr %.sroa.gep208
  store ptr %.sroa.0186.0325, ptr %spec.store.select.sroa.sel209, align 8, !tbaa !17
  %spec.store.select.sroa.sel209.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.j, ptr %4, ptr %2
  %spec.store.select.sroa.sel209.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel209.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.hp, ptr %spec.store.select.sroa.sel209.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !18
  br label %.loopexit245

bb.cf:                                            ; preds = %._crit_edge407, %bb.cd
  %i.hq = phi ptr [ %.pre409, %bb.cd ], [ %.pre408, %._crit_edge407 ]
  %.162 = phi i1 [ %.061, %bb.cd ], [ false, %._crit_edge407 ]
  %i.hr = load ptr, ptr %9, align 8, !tbaa !97    ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 2 uses
  store i64 %i.hu, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %i.hv = load i32, ptr %i.f, align 4, !tbaa !3
  %i.hw = invoke noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState14PushRepetitionEiiRKNS_11StringPieceEb(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.fy, i32 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext %.162)
          to label %bb.cg unwind label %bb.cc

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.hw, label %.critedge114, label %.loopexit245

.loopexit245:                                     ; preds = %bb.cg, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %.thread233

bb.ch:                                            ; preds = %bb.cc, %bb.bw
  %.pn96 = phi { ptr, i32 } [ %i.hl, %bb.cc ], [ %i.gw, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %.body

bb.ci:                                            ; preds = %bb.m
  %i.hx = load i32, ptr %5, align 8, !tbaa !7     ; 11 uses
  %i.hy = and i32 %i.hx, 256
  %.not88 = icmp eq i32 %i.hy, 0
  br i1 %.not88, label %bb.cq, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.not = icmp eq i64 %i.bs, 1
  br i1 %.not, label %.thread224, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !27  ; 2 uses
  %i.ib = icmp eq i8 %i.ia, 98
  switch i8 %i.ia, label %bb.cq [
    i8 98, label %bb.cl
    i8 66, label %bb.cl
  ]

bb.cl:                                            ; preds = %bb.ck, %bb.ck
  %i.ic = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %.noexc147 unwind label %bb.o  ; 4 uses

.noexc147:                                        ; preds = %bb.cl
  br i1 %i.ib, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %.noexc147
  invoke void @_ZN10duckdb_re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ic, i32 noundef 16, i32 noundef %i.hx)
          to label %_ZN10duckdb_re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit.i146 unwind label %bb.cn

common.resume.i144:                               ; preds = %bb.cp, %bb.cn
  %common.resume.op.i145 = phi { ptr, i32 } [ %i.id, %bb.cn ], [ %i.ie, %bb.cp ]
  call void @_ZdlPv(ptr noundef nonnull %i.ic) #28
  br label %.body

bb.cn:                                            ; preds = %bb.cm
  %i.id = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@"_ZZN10duckdb_re2L18IsValidCaptureNameERKNS_11StringPieceEENK3$_0clEv":bb.a
  %i.u = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.u, label %_ZN10duckdb_re2L11LookupGroupERKNS_11StringPieceEPKNS_6UGroupEi.exit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i: ; preds = %.lr.ph.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  call void @llvm.assume(i1 %exitcond.not.i)
  br label %.lr.ph.i

_ZN10duckdb_re211StringPieceC2EPKc.exit.i.us._ZN10duckdb_re2L11LookupGroupERKNS_11StringPieceEPKNS_6UGroupEi.exit.loopexit_crit_edge: ; preds = %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.us
  %i.v = getelementptr inbounds nuw [48 x i8], ptr @_ZN10duckdb_re214unicode_groupsE, i64 %indvars.iv.i.us23
  br label %_ZN10duckdb_re2L11LookupGroupERKNS_11StringPieceEPKNS_6UGroupEi.exit

_ZN10duckdb_re2L11LookupGroupERKNS_11StringPieceEPKNS_6UGroupEi.exit: ; preds = %bb.d, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.us, %.lr.ph.i.us.preheader, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.us._ZN10duckdb_re2L11LookupGroupERKNS_11StringPieceEPKNS_6UGroupEi.exit.loopexit_crit_edge
  %.us-phi = phi ptr [ %i.l, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.us ], [ %i.v, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.us._ZN10duckdb_re2L11LookupGroupERKNS_11StringPieceEPKNS_6UGroupEi.exit.loopexit_crit_edge ], [ @_ZN10duckdb_re214unicode_groupsE, %.lr.ph.i.us.preheader ], [ %i.o, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i ], [ %i.o, %bb.d ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.us-phi, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !196
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph85.i, label %.preheader.i

.lr.ph85.i:                                       ; preds = %_ZN10duckdb_re2L11LookupGroupERKNS_11StringPieceEPKNS_6UGroupEi.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.us-phi, i64 16
  br label %bb.e

.preheader.i:                                     ; preds = %.noexc, %_ZN10duckdb_re2L11LookupGroupERKNS_11StringPieceEPKNS_6UGroupEi.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !197
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph87.i, label %_ZN10duckdb_re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit

.lr.ph87.i:                                       ; preds = %.preheader.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  br label %bb.h

bb.e:                                             ; preds = %.noexc, %.lr.ph85.i
  %indvars.iv99.i = phi i64 [ 0, %.lr.ph85.i ], [ %indvars.iv.next100.i, %.noexc ] ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv99.i ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !199 ; 3 uses
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !201 ; 3 uses
  %i.ak = zext i16 %i.aj to i32
  %i.al = icmp ult i16 %i.ag, 11
  %i.am = icmp ugt i16 %i.aj, 9
  %or.cond3.i15 = and i1 %i.al, %i.am
  br i1 %or.cond3.i15, label %bb.f, label %.invoke20

bb.f:                                             ; preds = %bb.e
  %i.an = icmp samesign ult i16 %i.ag, 10
  br i1 %i.an, label %bb.g, label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i16

bb.g:                                             ; preds = %bb.f
  %i.ao = invoke noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ah, i32 noundef 9)
          to label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i16 unwind label %.loopexit.split-lp, !inline_history !249 ; 0 uses

_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i16: ; preds = %bb.g, %bb.f
  %i.ap = icmp ugt i16 %i.aj, 10
  br i1 %i.ap, label %.invoke20, label %.noexc

.invoke20:                                        ; preds = %bb.e, %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i16
  %i.aq = phi i32 [ 11, %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i16 ], [ %i.ah, %bb.e ]
  %i.ar = invoke noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.aq, i32 noundef %i.ak)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !249 ; 0 uses

.noexc:                                           ; preds = %.invoke20, %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i16
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.as = load i32, ptr %i.w, align 8, !tbaa !196
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next100.i, %i.at
  br i1 %i.au, label %bb.e, label %.preheader.i, !llvm.loop !202

bb.h:                                             ; preds = %.noexc11, %.lr.ph87.i
  %indvars.iv102.i = phi i64 [ 0, %.lr.ph87.i ], [ %indvars.iv.next103.i, %.noexc11 ] ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !203
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv102.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !204 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !206 ; 3 uses
  %i.ba = icmp slt i32 %i.ax, 11
  %i.bb = icmp sgt i32 %i.az, 9
  %or.cond3.i = and i1 %i.ba, %i.bb
  br i1 %or.cond3.i, label %bb.i, label %.invoke

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp slt i32 %i.ax, 10
  br i1 %i.bc, label %bb.j, label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bd = invoke noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ax, i32 noundef 9)
          to label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i unwind label %.loopexit, !inline_history !249 ; 0 uses

_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i: ; preds = %bb.j, %bb.i
  %i.be = icmp samesign ugt i32 %i.az, 10
  br i1 %i.be, label %.invoke, label %.noexc11

.invoke:                                          ; preds = %bb.h, %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i
  %i.bf = phi i32 [ 11, %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i ], [ %i.ax, %bb.h ]
  %i.bg = invoke noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.bf, i32 noundef %i.az)
          to label %.noexc11 unwind label %.loopexit, !inline_history !249 ; 0 uses

.noexc11:                                         ; preds = %.invoke, %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %i.bh = load i32, ptr %i.aa, align 8, !tbaa !197
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next103.i, %i.bi
  br i1 %i.bj, label %bb.h, label %_ZN10duckdb_re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit, !llvm.loop !207

_ZN10duckdb_re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit: ; preds = %.noexc11, %.preheader.i
  %.08.add = add nuw nsw i64 %.08.idx4, 8         ; 2 uses
  %.not = icmp eq i64 %.08.add, 80
  br i1 %.not, label %bb.b, label %bb.c

.loopexit:                                        ; preds = %.invoke, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %.invoke20, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  invoke void @_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef %i.bm)
          to label %_ZN10duckdb_re216CharClassBuilderD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #29
  unreachable

_ZN10duckdb_re216CharClassBuilderD2Ev.exit:       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  ret ptr %i.b

bb.m:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN10duckdb_re216CharClassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

declare noundef zeroext i1 @_ZNK10duckdb_re29CharClass8ContainsEi(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN10duckdb_re2L12ParseIntegerEPNS_11StringPieceEPi(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !97     ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27    ; 2 uses
  %i.f = add i8 %i.e, -48
  %isdigit = icmp ult i8 %i.f, 10
  br i1 %isdigit, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i64 %i.b, 1
  %i.h = icmp eq i8 %i.e, 48
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27
  %i.k = add i8 %i.j, -48
  %isdigit14 = icmp ult i8 %i.k, 10
  br i1 %isdigit14, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.l = phi ptr [ %i.u, %bb.f ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.01317 = phi i32 [ %i.t, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.m = phi i64 [ %i.v, %bb.f ], [ %i.b, %.lr.ph.preheader ]
  %i.n = load i8, ptr %i.l, align 1, !tbaa !27    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = add i8 %i.n, -48
  %isdigit15 = icmp ult i8 %i.p, 10
  br i1 %isdigit15, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp sgt i32 %.01317, 99999999
  br i1 %i.q, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = mul nsw i32 %.01317, 10
  %i.s = add i32 %i.r, -48
  %i.t = add i32 %i.s, %i.o                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !97
  %i.v = add i64 %i.m, -1                         ; 3 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !101
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.critedge, label %.lr.ph, !llvm.loop !226

.critedge:                                        ; preds = %.lr.ph, %bb.f
  %.013.lcssa.ph = phi i32 [ %.01317, %.lr.ph ], [ %i.t, %bb.f ]
  store i32 %.013.lcssa.ph, ptr %1, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.critedge, %bb.d, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ true, %.critedge ], [ false, %bb.e ]
  ret i1 %.1
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re26Regexp6WalkerIiE12WalkInternalEPS0_ib(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.LogMessage, align 8          ; 11 uses
  %5 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 8 uses
  tail call void @_ZN10duckdb_re26Regexp6WalkerIiE5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i8 0, ptr %4, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.c)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.23, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !77
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.l) #28
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #30
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.thread82

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.q

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %1, ptr %5, align 8, !tbaa !243
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.s, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %2, ptr %i.t, align 4, !tbaa !251
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.u, align 8, !tbaa !246
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !238  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !252
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32
  %.not.i.i.i = icmp eq ptr %i.w, %i.z
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !253
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !238
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !238
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.thread80

.thread80:                                        ; preds = %.thread80.backedge, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !239, !noalias !255 ; 2 uses
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !235, !noalias !255
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit

bb.g:                                             ; preds = %.thread80
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !234, !noalias !255
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit: ; preds = %.thread80, %bb.g
  %i.ar = phi ptr [ %i.aq, %bb.g ], [ %i.ak, %.thread80 ] ; 12 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !243 ; 6 uses
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 7 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !250 ; 2 uses
  %cond = icmp eq i32 %i.av, -1
  br i1 %cond, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %i.aw = load i32, ptr %i.ae, align 4, !tbaa !90 ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.ae, align 4, !tbaa !90
  %i.ay = icmp slt i32 %i.aw, 1
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ai, align 8, !tbaa !79
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !251
  %i.bb = load ptr, ptr %0, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.at, i32 noundef %i.ba)
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !258
  %i.bf = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !251
  %i.bh = load ptr, ptr %0, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.at, i32 noundef %i.bg, ptr noundef nonnull %i.a) ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.ar, i64 -16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !259
  %i.bm = load i8, ptr %i.a, align 1, !tbaa !258, !range !260, !noundef !261
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.au, align 8, !tbaa !250
  %i.bo = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !246
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !61 ; 2 uses
  switch i16 %i.bq, label %bb.m [
    i16 1, label %bb.l
    i16 0, label %.thread
  ]

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds i8, ptr %i.ar, i64 -12
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !246
end_hunk_1
