Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/formchecker?download=true
inline.NumInlined: 4832
inline.NumDeleted: 1344
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionE:bb.a
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = ashr exact i64 %i.fd, 3
  invoke void @_ZN8WasmEdge9Validator11FormChecker9pushTypesEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr %i.ez, i64 %i.fe)
          to label %bb.ap unwind label %bb.aj

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZN8WasmEdge9Validator11FormChecker7popCtrlEv(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.155") align 8 %19, ptr noundef nonnull align 8 dereferenceable(376) %1)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i8, ptr %19, align 8, !tbaa !166, !range !139, !noundef !140
  %i.fg = trunc nuw i8 %i.ff to i1                ; 2 uses
  br i1 %i.fg, label %.critedge1386, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.fi = load i32, ptr %i.cp, align 8, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  store i32 %i.fi, ptr %i.cq, align 4, !tbaa !101
  call void @_ZN5cxx206detail21expected_storage_baseIN8WasmEdge9Validator11FormChecker9CtrlFrameENS2_7ErrCodeELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %.pre3643 = load ptr, ptr %17, align 8, !tbaa !31
  br label %bb.at

.critedge1386:                                    ; preds = %bb.aq
  call void @_ZN5cxx206detail21expected_storage_baseIN8WasmEdge9Validator11FormChecker9CtrlFrameENS2_7ErrCodeELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.fj = load ptr, ptr %i.co, align 8, !tbaa !38
  %i.fk = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = lshr exact i64 %i.fn, 3
  %i.fp = trunc i64 %i.fo to i32                  ; 2 uses
  %i.fq = load ptr, ptr %i.cs, align 8, !tbaa !24
  %i.fr = load ptr, ptr %i.cr, align 8, !tbaa !23
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = sdiv exact i64 %i.fu, 12
  %i.fw = load ptr, ptr %i.ch, align 8, !tbaa !27
  %i.fx = getelementptr inbounds nuw [80 x i8], ptr %i.fw, i64 %i.dn ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !167
  %i.ga = sub i64 %i.fv, %i.fz
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = add i32 %i.gb, %i.fp
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.03495.03590, i64 16
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !366
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.03495.03590, i64 20
  store i32 %i.fp, ptr %i.ge, align 4, !tbaa !367
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !168
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gh, %i.ct
  %i.gj = lshr exact i64 %i.gi, 5
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.03495.03590, i64 24
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !368
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.critedge1386
  %i.gm = phi ptr [ %.pre3643, %bb.as ], [ %i.fk, %.critedge1386 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = load ptr, ptr %i.cu, align 8, !tbaa !32
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gm to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gq) #22
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %i.fg, label %bb.w, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1875

bb.aw:                                            ; preds = %bb.ar, %bb.an, %bb.aj
  %.pn1367 = phi { ptr, i32 } [ %i.fh, %bb.ar ], [ %i.eu, %bb.aj ], [ %i.ey, %bb.an ]
  %i.gr = load ptr, ptr %17, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i1872 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i1872, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1873, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gs = load ptr, ptr %i.cu, align 8, !tbaa !32
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gv) #22
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1873

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1873: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ai, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1873
  %.pn1367.pn.pn = phi { ptr, i32 } [ %i.et, %bb.ai ], [ %.pn1367, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1873 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.bj

.critedge1388thread-pre-split.loopexit:           ; preds = %bb.w
  %.pr.pre = load i32, ptr %i.ar, align 4, !tbaa !143
  br label %.critedge1388

.critedge1388:                                    ; preds = %.critedge1388thread-pre-split.loopexit, %.critedge1382
  %i.gw = phi i32 [ %i.bw, %.critedge1382 ], [ %.pr.pre, %.critedge1388thread-pre-split.loopexit ] ; 3 uses
  switch i32 %i.gw, label %bb.az [
    i32 3, label %bb.ba
    i32 22, label %.critedge1388.thread3705
  ]

.critedge1388.thread3705:                         ; preds = %bb.v, %.critedge1388
  %i.gx = load ptr, ptr %2, align 16, !tbaa !101
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !365
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.ha
  br label %bb.ba

bb.az:                                            ; preds = %.critedge1388
  %i.hc = load i32, ptr %2, align 16, !tbaa !101
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.hd
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge1388, %.critedge1388.thread3705, %bb.az
  %i.hf = phi i32 [ %i.gw, %bb.az ], [ 22, %.critedge1388.thread3705 ], [ %i.gw, %.critedge1388 ]
  %.01308 = phi ptr [ %i.he, %bb.az ], [ %i.hb, %.critedge1388.thread3705 ], [ %2, %.critedge1388 ]
  invoke void @_ZN8WasmEdge9Validator11FormChecker8pushCtrlEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_PKNS_3AST11InstructionENS_6OpCodeE(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr %.sroa.03517.0.copyload, i64 %.sroa.53518.0.copyload, ptr %.sroa.63519.0.copyload, i64 %.sroa.73520.0.copyload, ptr noundef nonnull %.01308, i32 noundef %i.hf)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.hg = load i32, ptr %i.ar, align 4, !tbaa !143
  %i.hh = icmp eq i32 %i.hg, 4
  br i1 %i.hh, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !101
  %i.hk = load i32, ptr %2, align 16, !tbaa !101
  %i.hl = icmp eq i32 %i.hj, %i.hk
  br i1 %i.hl, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %.val1577.val = load ptr, ptr %1, align 8, !tbaa !42
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1577.val1578 = load ptr, ptr %i.hm, align 8, !tbaa !43
  invoke fastcc void @"_ZZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionEENK4$_10clEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEESB_"(ptr dead_on_unwind noalias nonnull writable align 4 %20, ptr %.val1577.val, ptr %.val1577.val1578, ptr %.sroa.63519.0.copyload, i64 %.sroa.73520.0.copyload, ptr %.sroa.03517.0.copyload, i64 %.sroa.53518.0.copyload)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.hn = load i8, ptr %20, align 4, !tbaa !119, !range !139, !noundef !140
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %.critedge1391, label %bb.bh

bb.bf:                                            ; preds = %bb.l, %bb.h, %bb.ba
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bg:                                            ; preds = %bb.bd
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  %i.hr = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1875

.critedge1391:                                    ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.bi

bb.bi:                                            ; preds = %.critedge1391, %bb.bc, %bb.bb
  store i64 1, ptr %0, align 4
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1875

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1875: ; preds = %bb.av, %.thread, %bb.ab, %bb.bi, %bb.q, %bb.u, %bb.bh, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZN8WasmEdge9Validator11FormChecker10StackTransEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_.exit2144

bb.bj:                                            ; preds = %bb.aa, %bb.ay, %bb.bf, %bb.bg, %bb.t, %bb.p
  %.pn1372.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.aa ], [ %.pn1367.pn.pn, %bb.ay ], [ %i.bm, %bb.p ], [ %i.hp, %bb.bf ], [ %i.bs, %bb.t ], [ %i.hq, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 8) #22
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1877

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1877: ; preds = %bb.bj, %bb.j
  %.pn1372.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn1372.pn.pn.pn, %bb.bj ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.zt

bb.bk:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @_ZN8WasmEdge9Validator11FormChecker7popCtrlEv(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.155") align 8 %21, ptr noundef nonnull align 8 dereferenceable(376) %1)
  %i.hu = load i8, ptr %21, align 8, !tbaa !166, !range !139, !noundef !140
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !101
  br label %bb.bs

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.hz = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNR5cxx208expectedIN8WasmEdge9Validator11FormChecker9CtrlFrameENS1_7ErrCodeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(88) %21)
          to label %bb.bn unwind label %bb.bp     ; 9 uses

bb.bn:                                            ; preds = %bb.bm
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !31 ; 3 uses
  store ptr %i.ia, ptr %22, align 8, !tbaa !31
  %i.ib = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.id = load <2 x ptr>, ptr %i.ic, align 8, !tbaa !169
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !38
  store <2 x ptr> %i.id, ptr %i.ib, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hz, i8 0, i64 24, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 24 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !31 ; 3 uses
  store ptr %i.ih, ptr %i.if, align 8, !tbaa !31
  %i.ii = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 32 ; 2 uses
  %i.ik = load <2 x ptr>, ptr %i.ij, align 8, !tbaa !169
  %i.il = load ptr, ptr %i.ij, align 8, !tbaa !38
  store <2 x ptr> %i.ik, ptr %i.ii, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, i8 0, i64 24, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !168 ; 2 uses
  store ptr %i.io, ptr %i.im, align 8, !tbaa !168
  %i.ip = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hz, i64 56
  %i.ir = load <2 x i64>, ptr %i.iq, align 8, !tbaa !106
  store <2 x i64> %i.ir, ptr %i.ip, align 8, !tbaa !106
  %i.is = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 72
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !170, !range !139, !noundef !140
  store i8 %i.iu, ptr %i.is, align 8, !tbaa !170
  %i.iv = getelementptr inbounds nuw i8, ptr %22, i64 76
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hz, i64 76
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !164
  store i32 %i.ix, ptr %i.iv, align 4, !tbaa !164
  %i.iy = ptrtoint ptr %i.ie to i64
  %i.iz = ptrtoint ptr %i.ia to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 3
  %i.jc = ptrtoint ptr %i.il to i64
  %i.jd = ptrtoint ptr %i.ih to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = ashr exact i64 %i.je, 3
  %i.jg = load i32, ptr %i.ar, align 4, !tbaa !143
  invoke void @_ZN8WasmEdge9Validator11FormChecker8pushCtrlEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_PKNS_3AST11InstructionENS_6OpCodeE(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr %i.ia, i64 %i.jb, ptr %i.ih, i64 %i.jf, ptr noundef %i.io, i32 noundef %i.jg)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  store i64 1, ptr %0, align 4
  call void @_ZN8WasmEdge9Validator11FormChecker9CtrlFrameD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bm
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge9Validator11FormChecker9CtrlFrameD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %22) #25
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn1364 = phi { ptr, i32 } [ %i.ji, %bb.bq ], [ %i.jh, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @_ZN5cxx206detail21expected_storage_baseIN8WasmEdge9Validator11FormChecker9CtrlFrameENS2_7ErrCodeELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.zt

bb.bs:                                            ; preds = %bb.bo, %bb.bl
  call void @_ZN5cxx206detail21expected_storage_baseIN8WasmEdge9Validator11FormChecker9CtrlFrameENS2_7ErrCodeELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZN8WasmEdge9Validator11FormChecker10StackTransEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_.exit2144

bb.bt:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.jj = load i32, ptr %2, align 16, !tbaa !101
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %.val1537.val = load ptr, ptr %i.jk, align 8, !tbaa !46
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val1537.val1540 = load ptr, ptr %i.jl, align 8, !tbaa !47
  call fastcc void @"_ZZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionEENK3$_4clEj"(ptr dead_on_unwind noalias writable align 4 %23, ptr %.val1537.val, ptr %.val1537.val1540, i32 noundef %i.jj)
  %i.jm = load i8, ptr %23, align 4, !tbaa !119, !range !139, !noundef !140
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %.critedge1393, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jo = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %_ZN8WasmEdge9Validator11FormChecker10StackTransEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_.exit2144

.critedge1393:                                    ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.jr = load i32, ptr %2, align 16, !tbaa !101
  %i.js = zext i32 %i.jr to i64
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !46
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.js
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !123
  %.val1519.val = load ptr, ptr %1, align 8, !tbaa !42
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1519.val1520 = load ptr, ptr %i.jw, align 8, !tbaa !43
  call fastcc void @"_ZZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionEENK3$_5clEjNS_8TypeCodeE"(ptr dead_on_unwind noalias writable align 8 %24, ptr %.val1519.val, ptr %.val1519.val1520, i32 noundef %i.jv, i8 noundef zeroext 96)
  %i.jx = load i8, ptr %24, align 8, !tbaa !172, !range !139, !noundef !140
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.critedge1393
  %i.jz = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !101
  br label %bb.cf

bb.bw:                                            ; preds = %.critedge1393
  %i.kc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5cxx208expectedIPKN8WasmEdge3AST13CompositeTypeENS1_7ErrCodeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %24)
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  call void @_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %i.ke)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.kf = load ptr, ptr %25, align 8, !tbaa !31   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !38
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kf to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = ashr exact i64 %i.kk, 3
  invoke void @_ZN8WasmEdge9Validator11FormChecker8popTypesEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %26, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr %i.kf, i64 %i.kl)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.km = load i8, ptr %26, align 4, !tbaa !119, !range !139, !noundef !140
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %.critedge1395, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bx
  %i.kp = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.cb

.critedge1395:                                    ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  invoke void @_ZN8WasmEdge9Validator11FormChecker11unreachableEv(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(376) %1)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %.critedge1395
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz, %.critedge1395
  %i.kt = load ptr, ptr %25, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i1878 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i1878, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit1879, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ku = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !32
  %i.kw = ptrtoint ptr %i.kv to i64
end_hunk_0
