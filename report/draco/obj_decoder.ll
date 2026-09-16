Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/obj_decoder?download=true
inline.NumInlined: 1024
inline.NumDeleted: 457
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5draco10ObjDecoder9ParseFaceEPNS_6StatusE:bb.a
bb.bb:                                            ; preds = %bb.ba, %_ZN5draco10ObjDecoder23MapPointToVertexIndicesENS_9IndexTypeIjNS_20PointIndex_tag_type_EEERKSt5arrayIiLm3EE.exit.1
  %i.kj = add i64 %i.db, 2                        ; 6 uses
  %i.kk = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv130 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !116 ; 4 uses
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ko = icmp slt i32 %i.km, 0
  br i1 %i.ko, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.kp = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.kq = load i32, ptr %i.cl, align 4, !tbaa !73
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.ks = sext i32 %i.kq to i64
  %i.kt = load ptr, ptr %i.kr, align 8, !tbaa !80
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ks
  %i.kv = load i32, ptr %i.cm, align 8, !tbaa !63
  %i.kw = add nsw i32 %i.kv, %i.km
  br label %.sink.split.i.2

bb.be:                                            ; preds = %bb.bb
  %i.kx = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.ky = load i32, ptr %i.cl, align 4, !tbaa !73
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.la = sext i32 %i.ky to i64
  %i.lb = load ptr, ptr %i.kz, align 8, !tbaa !80
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.la
  %i.ld = add nsw i32 %i.km, -1
  br label %.sink.split.i.2

.sink.split.i.2:                                  ; preds = %bb.be, %bb.bd
  %.sink46.in.i.2 = phi ptr [ %i.ku, %bb.bd ], [ %i.lc, %bb.be ]
  %.sink.i.2 = phi i32 [ %i.kw, %bb.bd ], [ %i.ld, %bb.be ]
  %.sink46.i.2 = load ptr, ptr %.sink46.in.i.2, align 8, !tbaa !82
  %i.le = getelementptr inbounds nuw i8, ptr %.sink46.i.2, i64 72
  %i.lf = and i64 %i.kj, 4294967295
  %i.lg = load ptr, ptr %i.le, align 8, !tbaa !130
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lf
  store i32 %.sink.i.2, ptr %i.lh, align 4, !tbaa !122
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split.i.2, %bb.bc
  br i1 %i.bx, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.li = getelementptr inbounds nuw i8, ptr %i.kk, i64 28
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !116 ; 4 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ll = icmp slt i32 %i.lj, 0
  %i.lm = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !80
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.cn
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !82 ; 2 uses
  br i1 %i.ll, label %bb.bi, label %.sink.split47.i.2

bb.bi:                                            ; preds = %bb.bh
  %i.lr = load i32, ptr %i.co, align 4, !tbaa !64
  %i.ls = add nsw i32 %i.lr, %i.lj
  br label %.sink.split47.i.2

bb.bj:                                            ; preds = %bb.bg
  %i.lt = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !80
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.cn
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !82
  %i.ly = add nsw i32 %i.lj, -1
  br label %.sink.split47.i.2

.sink.split47.i.2:                                ; preds = %bb.bj, %bb.bi, %bb.bh
  %.sink54.i.2 = phi ptr [ %i.lx, %bb.bj ], [ %i.lq, %bb.bi ], [ %i.lq, %bb.bh ]
  %.sink48.i.2 = phi i32 [ %i.ly, %bb.bj ], [ %i.ls, %bb.bi ], [ 0, %bb.bh ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.sink54.i.2, i64 72
  %i.ma = and i64 %i.kj, 4294967295
  %i.mb = load ptr, ptr %i.lz, align 8, !tbaa !130
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.ma
  store i32 %.sink48.i.2, ptr %i.mc, align 4, !tbaa !122
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split47.i.2, %bb.bf
  br i1 %i.ca, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.md = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.me = load i32, ptr %i.md, align 4, !tbaa !116 ; 4 uses
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mg = icmp slt i32 %i.me, 0
  %i.mh = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !80
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.cp
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !82 ; 2 uses
  br i1 %i.mg, label %bb.bn, label %.sink.split55.i.2

bb.bn:                                            ; preds = %bb.bm
  %i.mm = load i32, ptr %i.cq, align 8, !tbaa !65
  %i.mn = add nsw i32 %i.mm, %i.me
  br label %.sink.split55.i.2

bb.bo:                                            ; preds = %bb.bl
  %i.mo = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !80
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.cp
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !82
  %i.mt = add nsw i32 %i.me, -1
  br label %.sink.split55.i.2

.sink.split55.i.2:                                ; preds = %bb.bo, %bb.bn, %bb.bm
  %.sink62.i.2 = phi ptr [ %i.ms, %bb.bo ], [ %i.ml, %bb.bn ], [ %i.ml, %bb.bm ]
  %.sink56.i.2 = phi i32 [ %i.mt, %bb.bo ], [ %i.mn, %bb.bn ], [ 0, %bb.bm ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.sink62.i.2, i64 72
  %i.mv = and i64 %i.kj, 4294967295
  %i.mw = load ptr, ptr %i.mu, align 8, !tbaa !130
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.mv
  store i32 %.sink56.i.2, ptr %i.mx, align 4, !tbaa !122
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split55.i.2, %bb.bk
  br i1 %i.cd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.my = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !80
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.cr
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !82
  %i.nd = load i32, ptr %i.cs, align 8, !tbaa !36
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 72
  %i.nf = and i64 %i.kj, 4294967295
  %i.ng = load ptr, ptr %i.ne, align 8, !tbaa !130
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nf
  store i32 %i.nd, ptr %i.nh, align 4, !tbaa !122
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.cg, label %bb.bs, label %_ZN5draco10ObjDecoder23MapPointToVertexIndicesENS_9IndexTypeIjNS_20PointIndex_tag_type_EEERKSt5arrayIiLm3EE.exit.2

bb.bs:                                            ; preds = %bb.br
  %i.ni = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !80
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.ct
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !82
  %i.nn = load i32, ptr %i.cu, align 8, !tbaa !57
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 72
  %i.np = and i64 %i.kj, 4294967295
  %i.nq = load ptr, ptr %i.no, align 8, !tbaa !130
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.np
  store i32 %i.nn, ptr %i.nr, align 4, !tbaa !122
  br label %_ZN5draco10ObjDecoder23MapPointToVertexIndicesENS_9IndexTypeIjNS_20PointIndex_tag_type_EEERKSt5arrayIiLm3EE.exit.2

_ZN5draco10ObjDecoder23MapPointToVertexIndicesENS_9IndexTypeIjNS_20PointIndex_tag_type_EEERKSt5arrayIiLm3EE.exit.2: ; preds = %bb.bs, %bb.br
  br i1 %i.cj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZN5draco10ObjDecoder23MapPointToVertexIndicesENS_9IndexTypeIjNS_20PointIndex_tag_type_EEERKSt5arrayIiLm3EE.exit.2
  %i.ns = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !80
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.cw
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !82
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 72
  %i.ny = and i64 %i.kj, 4294967295
  %i.nz = load ptr, ptr %i.nx, align 8, !tbaa !130
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.ny
  store i32 0, ptr %i.oa, align 4, !tbaa !122
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN5draco10ObjDecoder23MapPointToVertexIndicesENS_9IndexTypeIjNS_20PointIndex_tag_type_EEERKSt5arrayIiLm3EE.exit.2
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.gr, %wide.trip.count
  br i1 %exitcond.not, label %bb.bv, label %.preheader, !llvm.loop !170

bb.bv:                                            ; preds = %bb.bu
  %i.ob = trunc i64 %indvars.iv.next to i32
  store i32 %i.ob, ptr %i.bu, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ci

bb.bw:                                            ; preds = %bb.b
  tail call void @_ZN5draco6parser14SkipWhitespaceEPNS_13DecoderBufferE(ptr noundef nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i8 0, ptr %i.e, align 1, !tbaa !131
  %i.oc = load i64, ptr %i.g, align 8, !tbaa !127
  %i.od = load i64, ptr %i.i, align 8, !tbaa !123 ; 2 uses
  %i.oe = add i64 %i.od, 1
  %.not109120 = icmp slt i64 %i.oc, %i.oe
  br i1 %.not109120, label %.noexc.i70, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68

_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68:     ; preds = %bb.bw, %.loopexit.a
  %i.of = phi i64 [ %8, %.loopexit.a ], [ %i.od, %bb.bw ]
  %.0121 = phi i32 [ %.1, %.loopexit.a ], [ 0, %bb.bw ] ; 3 uses
  %i.og = load ptr, ptr %i.f, align 8, !tbaa !126
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 %i.of
  %i.oi = load i8, ptr %i.oh, align 1
  %.not110 = icmp eq i8 %i.oi, 10
  br i1 %.not110, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68
  %i.oj = call noundef zeroext i1 @_ZN5draco6parser14PeekWhitespaceEPNS_13DecoderBufferEPb(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e)
  br i1 %i.oj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ok = load i64, ptr %i.i, align 8, !tbaa !123
  %i.ol = add nsw i64 %i.ok, 1                    ; 2 uses
  store i64 %i.ol, ptr %i.i, align 8, !tbaa !123
  br label %.loopexit.a

bb.bz:                                            ; preds = %bb.bx
  %i.om = call noundef zeroext i1 @_ZN5draco6parser14PeekWhitespaceEPNS_13DecoderBufferEPb(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e)
  %i.on = load i8, ptr %i.e, align 1, !range !76
  %i.oo = trunc nuw i8 %i.on to i1
  %i.op = select i1 %i.om, i1 true, i1 %i.oo
  br i1 %i.op, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bz, %.lr.ph
  %i.oq = load i64, ptr %i.i, align 8, !tbaa !123
  %i.or = add nsw i64 %i.oq, 1
  store i64 %i.or, ptr %i.i, align 8, !tbaa !123
  %i.os = call noundef zeroext i1 @_ZN5draco6parser14PeekWhitespaceEPNS_13DecoderBufferEPb(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e)
  %i.ot = load i8, ptr %i.e, align 1, !range !76
  %i.ou = trunc nuw i8 %i.ot to i1
  %i.ov = select i1 %i.os, i1 true, i1 %i.ou
  br i1 %i.ov, label %.loopexit, label %.lr.ph, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph, %bb.bz
  %7 = add nsw i32 %.0121, 1
  %.pre = load i64, ptr %i.i, align 8, !tbaa !123
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %.loopexit, %bb.by
  %8 = phi i64 [ %i.ol, %bb.by ], [ %.pre, %.loopexit ] ; 2 uses
  %.1 = phi i32 [ %.0121, %bb.by ], [ %7, %.loopexit ] ; 2 uses
  %i.ow = load i64, ptr %i.g, align 8, !tbaa !127
  %i.ox = add i64 %8, 1
  %.not109 = icmp slt i64 %i.ow, %i.ox
  br i1 %.not109, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68.thread, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68, !llvm.loop !172

_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68.thread: ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68, %.loopexit.a
  %.0.lcssa = phi i32 [ %.1, %.loopexit.a ], [ %.0121, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68 ] ; 3 uses
  %i.oy = icmp sgt i32 %.0.lcssa, 3
  br i1 %i.oy, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68.thread
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 242
  store i8 1, ptr %i.oz, align 2, !tbaa !78
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit68.thread
  %i.pa = add i32 %.0.lcssa, -3
  %or.cond = icmp ult i32 %i.pa, 6
  br i1 %or.cond, label %.thread, label %.noexc.i70

.noexc.i70:                                       ; preds = %bb.bw, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.pb, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 35, ptr %i.b, align 8, !tbaa !48
  %i.pc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc71 unwind label %bb.cf  ; 3 uses

.noexc71:                                         ; preds = %.noexc.i70
  store ptr %i.pc, ptr %6, align 8, !tbaa !43
  %i.pd = load i64, ptr %i.b, align 8, !tbaa !48  ; 3 uses
  store i64 %i.pd, ptr %i.pb, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.pc, ptr noundef nonnull align 1 dereferenceable(35) @.str.11, i64 35, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.pd, ptr %i.pe, align 8, !tbaa !38
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pd
  store i8 0, ptr %i.pf, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  store i32 -1, ptr %5, align 8, !tbaa !51, !alias.scope !175
  %i.pg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  store ptr %i.ph, ptr %i.pg, align 8, !tbaa !37, !alias.scope !175
  %i.pi = load ptr, ptr %6, align 8, !tbaa !43, !noalias !175 ; 2 uses
  %i.pj = load i64, ptr %i.pe, align 8, !tbaa !38, !noalias !175 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !175
  store i64 %i.pj, ptr %i.a, align 8, !tbaa !48, !noalias !175
  %i.pk = icmp ugt i64 %i.pj, 15
  br i1 %i.pk, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc71
  %i.pl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.pg, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc73 unwind label %bb.cg  ; 2 uses

.noexc73:                                         ; preds = %.noexc.i.i.i
  store ptr %i.pl, ptr %i.pg, align 8, !tbaa !43, !alias.scope !175
  %i.pm = load i64, ptr %i.a, align 8, !tbaa !48, !noalias !175
  store i64 %i.pm, ptr %i.ph, align 8, !tbaa !39, !alias.scope !175
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc73, %.noexc71
  %i.pn = phi ptr [ %i.pl, %.noexc73 ], [ %i.ph, %.noexc71 ] ; 2 uses
  switch i64 %i.pj, label %bb.cd [
    i64 1, label %bb.cc
    i64 0, label %bb.ce
  ]

bb.cc:                                            ; preds = %._crit_edge.i.i.i.i
  %i.po = load i8, ptr %i.pi, align 1, !tbaa !39
  store i8 %i.po, ptr %i.pn, align 1, !tbaa !39
  br label %bb.ce

bb.cd:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pn, ptr align 1 %i.pi, i64 %i.pj, i1 false)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %._crit_edge.i.i.i.i
  %i.pp = load i64, ptr %i.a, align 8, !tbaa !48, !noalias !175 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.pp, ptr %i.pq, align 8, !tbaa !38, !alias.scope !175
  %i.pr = load ptr, ptr %i.pg, align 8, !tbaa !43, !alias.scope !175
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pp
  store i8 0, ptr %i.ps, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !175
  %i.pt = load i32, ptr %5, align 8, !tbaa !51
  store i32 %i.pt, ptr %1, align 8, !tbaa !51
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.pu, ptr noundef nonnull align 8 dereferenceable(32) %i.pg)
          to label %_ZN5draco6StatusaSERKS0_.exit75 unwind label %bb.ch

_ZN5draco6StatusaSERKS0_.exit75:                  ; preds = %bb.ce
  %i.pv = load ptr, ptr %i.pg, align 8, !tbaa !43 ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.ph
  br i1 %i.pw, label %_ZN5draco6StatusD2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %_ZN5draco6StatusaSERKS0_.exit75
  %i.px = load i64, ptr %i.ph, align 8, !tbaa !39
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #20
  br label %_ZN5draco6StatusD2Ev.exit78

_ZN5draco6StatusD2Ev.exit78:                      ; preds = %_ZN5draco6StatusaSERKS0_.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76
  %i.pz = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.qa = icmp eq ptr %i.pz, %i.pb
  br i1 %i.qa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZN5draco6StatusD2Ev.exit78
  %i.qb = load i64, ptr %i.pb, align 8, !tbaa !39
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qc) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80

bb.cf:                                            ; preds = %.noexc.i70
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.cg:                                            ; preds = %.noexc.i.i.i
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5draco6StatusD2Ev.exit84

bb.ch:                                            ; preds = %bb.ce
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qg = load ptr, ptr %i.pg, align 8, !tbaa !43 ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.ph
  br i1 %i.qh, label %_ZN5draco6StatusD2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82: ; preds = %bb.ch
  %i.qi = load i64, ptr %i.ph, align 8, !tbaa !39
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #20
  br label %_ZN5draco6StatusD2Ev.exit84

_ZN5draco6StatusD2Ev.exit84:                      ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82, %bb.cg
  %.pn54 = phi { ptr, i32 } [ %i.qe, %bb.cg ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82 ], [ %i.qf, %bb.ch ] ; 2 uses
  %i.qk = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ql = icmp eq ptr %i.qk, %i.pb
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZN5draco6StatusD2Ev.exit84
  %i.qm = load i64, ptr %i.pb, align 8, !tbaa !39
  %i.qn = add i64 %i.qm, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZN5draco6StatusD2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.cf
  %.pn54.pn = phi { ptr, i32 } [ %i.qd, %bb.cf ], [ %.pn54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn54, %_ZN5draco6StatusD2Ev.exit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.cj

.thread:                                          ; preds = %bb.cb
  %i.qo = add nsw i32 %.0.lcssa, -2
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !62
  %i.qr = add nsw i32 %i.qo, %i.qq
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.ci

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80: ; preds = %_ZN5draco6StatusD2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit.thread

bb.ci:                                            ; preds = %.thread, %bb.bv
  call void @_ZN5draco6parser8SkipLineEPNS_13DecoderBufferE(ptr noundef nonnull %i.f)
  br label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit.thread

_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit.thread: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit, %bb.ci
  %.250 = phi i1 [ false, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit ], [ true, %bb.ci ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.250

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ]
  resume { ptr, i32 } %.pn54.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5draco10ObjDecoder13ParseMaterialEPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.74", align 1    ; 6 uses
  %3 = alloca %"class.draco::DecoderBuffer", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !34, !range !76, !noundef !77
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, -1
  %or.cond.not = select i1 %i.b, i1 true, i1 %i.e
  br i1 %or.cond.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load i64, ptr %i.g, align 8, !tbaa !127
end_hunk_0
