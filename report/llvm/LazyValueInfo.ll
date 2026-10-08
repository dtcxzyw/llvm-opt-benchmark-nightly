Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LazyValueInfo?download=true
inline.NumInlined: 5363
inline.NumDeleted: 2627
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm17LazyValueInfoImpl17getEdgeValueLocalEPNS_5ValueEPNS_10BasicBlockES4_b:bb.a
  %i.hd = load i8, ptr %i.al, align 8, !tbaa !68, !range !45, !noundef !46
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.ay, label %_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit157

bb.ay:                                            ; preds = %bb.ax
  store i16 %i.ha, ptr %0, align 8
  %trunc.i.i.i.i.i.i.i.i149 = trunc i16 %i.gz to i8
  switch i8 %trunc.i.i.i.i.i.i.i.i149, label %_ZNSt22_Optional_payload_baseIN4llvm19ValueLatticeElementEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i150 [
    i8 4, label %bb.az
    i8 5, label %bb.az
    i8 2, label %bb.ba
    i8 3, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !59
  store i32 %i.hj, ptr %i.hh, align 8, !tbaa !59
  %i.hk = load i64, ptr %i.hg, align 8
  store i64 %i.hk, ptr %i.hf, align 8
  store i32 0, ptr %i.hi, align 8, !tbaa !59
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !59
  store i32 %i.hp, ptr %i.hn, align 8, !tbaa !59
  %i.hq = load i64, ptr %i.hm, align 8
  store i64 %i.hq, ptr %i.hl, align 8
  store i32 0, ptr %i.ho, align 8, !tbaa !59
  store i16 %i.gz, ptr %0, align 8
  br label %_ZNSt22_Optional_payload_baseIN4llvm19ValueLatticeElementEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i150

bb.ba:                                            ; preds = %bb.ay, %bb.ay
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !60
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !60
  br label %_ZNSt22_Optional_payload_baseIN4llvm19ValueLatticeElementEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i150

_ZNSt22_Optional_payload_baseIN4llvm19ValueLatticeElementEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i150: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.hu = and i16 %i.gz, -256
  store i16 %i.hu, ptr %7, align 8
  store i8 1, ptr %i.hc, align 8, !tbaa !68
  br label %.critedge135.thread

_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit154: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.pre340.a = load ptr, ptr %i.a, align 8, !tbaa !141 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre340.a, i64 -24
  %.pre341.a = load i8, ptr %.phi.trans.insert, align 8, !tbaa !80
  br label %bb.bh

.critedge135.thread:                              ; preds = %_ZNSt22_Optional_payload_baseIN4llvm19ValueLatticeElementEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i150, %_ZNSt8optionalIN4llvm19ValueLatticeElementEEC2EOS2_.exit
  store i8 0, ptr %i.al, align 8, !tbaa !68
  br label %bb.bb

.critedge135.a:                                   ; preds = %.critedge123, %.critedge121, %bb.z, %bb.ab
  call void @_ZN4llvm19ValueLatticeElementD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %.pre339 = load i8, ptr %i.al, align 8, !tbaa !68, !range !45
  %i.hv = trunc nuw i8 %.pre339 to i1
  store i8 0, ptr %i.al, align 8, !tbaa !68
  br i1 %i.hv, label %bb.bb, label %_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit157

bb.bb:                                            ; preds = %.critedge135.thread, %.critedge135.a
  %i.hw = load i16, ptr %7, align 8
  %i.hx = and i16 %i.hw, 254
  %switch.i.i.i.i.i.i155 = icmp eq i16 %i.hx, 4
  br i1 %switch.i.i.i.i.i.i155, label %bb.bc, label %_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit157

bb.bc:                                            ; preds = %bb.bb
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !59
  %i.ib = icmp ugt i32 %i.ia, 64
  br i1 %i.ib, label %bb.bd, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i156

bb.bd:                                            ; preds = %bb.bc
  %i.ic = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !60 ; 2 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i156, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.id) #27
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i156

_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i156:         ; preds = %bb.be, %bb.bd, %bb.bc
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !59
  %i.ih = icmp ugt i32 %i.ig, 64
  br i1 %i.ih, label %bb.bf, label %_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit157

bb.bf:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i156
  %i.ii = load ptr, ptr %i.hy, align 8, !tbaa !60 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit157, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.ii) #27
  br label %_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit157

_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit157: ; preds = %bb.g, %bb.ax, %.critedge135.a, %bb.bb, %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i156, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.thread304

bb.bh:                                            ; preds = %_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit154, %bb.a
  %i.ik = phi i8 [ %.pre341.a, %_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit154 ], [ %i.d, %bb.a ]
  %i.il = phi ptr [ %.pre340.a, %_ZNSt14_Optional_baseIN4llvm19ValueLatticeElementELb0ELb0EED2Ev.exit154 ], [ %i.b, %bb.a ] ; 3 uses
  %.not310.a = icmp eq i8 %i.ik, 34
  br i1 %.not310.a, label %bb.bi, label %_ZN4llvm19ValueLatticeElementD2Ev.exit213

bb.bi:                                            ; preds = %bb.bh
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 -32 ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !133 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !138 ; 9 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !134
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i32, ptr %i.ir, align 8            ; 2 uses
  %i.it = and i32 %i.is, 255
  %i.iu = icmp eq i32 %i.it, 12
  br i1 %i.iu, label %bb.bj, label %_ZN4llvm19ValueLatticeElementD2Ev.exit163

_ZN4llvm19ValueLatticeElementD2Ev.exit163:        ; preds = %bb.bi
  store i16 6, ptr %0, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.iv, align 8, !tbaa !68
  br label %.thread304

bb.bj:                                            ; preds = %bb.bi
  %.not117 = icmp eq ptr %i.io, %2                ; 3 uses
  br i1 %.not117, label %bb.bx, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iw = load i8, ptr %2, align 8, !tbaa !80     ; 4 uses
  %i.ix = add i8 %i.iw, -23
  %spec.select.i.i.i.i.i.i.i.i164 = icmp ult i8 %i.ix, 7
  br i1 %spec.select.i.i.i.i.i.i.i.i164, label %_ZN4llvm19ValueLatticeElementD2Ev.exit172, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iy = add i8 %i.iw, -69
  %i.iz = icmp ult i8 %i.iy, 14
  %i.ja = add i8 %i.iw, -44
  %i.jb = icmp ult i8 %i.ja, 18
  %or.cond.i166 = or i1 %i.iz, %i.jb
  %i.jc = icmp eq i8 %i.iw, 99
  %i.jd = or i1 %i.jc, %or.cond.i166
  br i1 %i.jd, label %bb.bm, label %_ZN4llvm19ValueLatticeElementD2Ev.exit172

bb.bm:                                            ; preds = %bb.bl
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.jf = load i32, ptr %i.je, align 4            ; 3 uses
  %i.jg = and i32 %i.jf, 1073741824
  %.not.i.i.i.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jh = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !133
  %.pre.i.i.i = and i32 %i.jf, 268435455
  %.pre1.i.i.i = zext nneg i32 %.pre.i.i.i to i64
  br label %_ZN4llvm4User8operandsEv.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.jj = and i32 %i.jf, 268435455
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jl = sub nsw i64 0, %i.jk
  %i.jm = getelementptr inbounds [32 x i8], ptr %2, i64 %i.jl
  br label %_ZN4llvm4User8operandsEv.exit.i

_ZN4llvm4User8operandsEv.exit.i:                  ; preds = %bb.bo, %bb.bn
  %i.jn = phi ptr [ %i.ji, %bb.bn ], [ %i.jm, %bb.bo ] ; 4 uses
  %.pre-phi2.i.i.i = phi i64 [ %.pre1.i.i.i, %bb.bn ], [ %i.jk, %bb.bo ] ; 4 uses
  %.idx2.i = shl nuw nsw i64 %.pre-phi2.i.i.i, 5  ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.idx2.i
  %i.jp = lshr i64 %.pre-phi2.i.i.i, 2            ; 2 uses
  %.not.i167 = icmp eq i64 %i.jp, 0
  br i1 %.not.i167, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm4User8operandsEv.exit.i
  %i.jq = and i64 %.idx2.i, 68719476608
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.jn, i64 %i.jq
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.jp, %.lr.ph.i.i.i.i.i ], [ %i.kd, %bb.bt ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i ], [ %i.kc, %bb.bt ] ; 9 uses
  %i.jr = load ptr, ptr %.02946.i.i.i.i.i, align 8, !tbaa !138
  %i.js = icmp eq ptr %i.jr, %i.io
  br i1 %i.js, label %.loopexit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !138
  %i.jv = icmp eq ptr %i.ju, %i.io
  br i1 %i.jv, label %.loopexit.loopexit.split.loop.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 64
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !138
  %i.jy = icmp eq ptr %i.jx, %i.io
  br i1 %i.jy, label %.loopexit.loopexit.split.loop.exit393, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 96
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !138
  %i.kb = icmp eq ptr %i.ka, %i.io
  br i1 %i.kb, label %.loopexit.loopexit.split.loop.exit395, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 128
  %i.kd = add nsw i64 %.047.i.i.i.i.i, -1
  %i.ke = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.ke, label %bb.bp, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.bt
  %i.kf = and i64 %.pre-phi2.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZN4llvm4User8operandsEv.exit.i
  %.pre-phi56.i.i.i.i.i = phi i64 [ %i.kf, %._crit_edge.loopexit.i.i.i.i.i ], [ %.pre-phi2.i.i.i, %_ZN4llvm4User8operandsEv.exit.i ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.jn, %_ZN4llvm4User8operandsEv.exit.i ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i, label %_ZN4llvm19ValueLatticeElementD2Ev.exit172 [
    i64 3, label %bb.bu
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.kg = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !138
  %i.kh = icmp eq ptr %i.kg, %i.io
  br i1 %i.kh, label %.loopexit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ki = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 32
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.bv, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.ki, %bb.bv ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.kj = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !138
  %i.kk = icmp eq ptr %i.kj, %i.io
  br i1 %i.kk, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.bw, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.kl, %bb.bw ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.km = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !138
  %i.kn = icmp eq ptr %i.km, %i.io
  br i1 %i.kn, label %.loopexit, label %_ZN4llvm19ValueLatticeElementD2Ev.exit172

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.bq
  %i.ko = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  br label %.loopexit

.loopexit.loopexit.split.loop.exit393:            ; preds = %bb.br
  %i.kp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 64
  br label %.loopexit

.loopexit.loopexit.split.loop.exit395:            ; preds = %bb.bs
  %i.kq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 96
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bp, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit393, %.loopexit.loopexit.split.loop.exit395, %bb.bu, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.bu ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.kq, %.loopexit.loopexit.split.loop.exit395 ], [ %i.kp, %.loopexit.loopexit.split.loop.exit393 ], [ %i.ko, %.loopexit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.bp ]
  %.not312 = icmp eq ptr %.028.i.i.i.i.i, %i.jo
  br i1 %.not312, label %_ZN4llvm19ValueLatticeElementD2Ev.exit172, label %bb.bx

_ZN4llvm19ValueLatticeElementD2Ev.exit172:        ; preds = %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %bb.bk, %bb.bl, %.loopexit
  store i16 6, ptr %0, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.kr, align 8, !tbaa !68
  br label %.thread304

bb.bx:                                            ; preds = %.loopexit, %bb.bj
  %i.ks = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !138
  %i.ku = icmp eq ptr %i.kt, %4                   ; 2 uses
  %i.kv = lshr i32 %i.is, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @_ZN4llvm13ConstantRangeC1Ejb(ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef %i.kv, i1 noundef zeroext %i.ku) #24
  %i.kw = getelementptr inbounds i8, ptr %i.il, i64 -20
  %i.kx = load i32, ptr %i.kw, align 4, !noalias !620
  %i.ky = and i32 %i.kx, 268435455
  %i.kz = add nsw i32 %i.ky, -2                   ; 2 uses
  %i.la = zext i32 %i.kz to i64
  %.not313327 = icmp eq i32 %i.kz, 0
  br i1 %.not313327, label %._crit_edge, label %.lr.ph329

.lr.ph329:                                        ; preds = %bb.bx
  %i.lb = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.lc = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lm = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 3 uses
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph329, %_ZN4llvm5APIntD2Ev.exit196
  %.sroa.4.0328 = phi i64 [ 0, %.lr.ph329 ], [ %i.pl, %_ZN4llvm5APIntD2Ev.exit196 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  %i.lv = load ptr, ptr %i.im, align 8, !tbaa !133
  %i.lw = load i32, ptr %i.lb, align 8, !tbaa !622
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [32 x i8], ptr %i.lv, i64 %i.lx
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %.sroa.4.0328
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !624 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !59 ; 3 uses
  store i32 %i.md, ptr %i.lc, align 8, !tbaa !59
  %i.me = icmp ult i32 %i.md, 65
  br i1 %i.me, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit.thread:               ; preds = %bb.by
  %i.mf = load i64, ptr %i.mb, align 8, !tbaa !60 ; 2 uses
  store i64 %i.mf, ptr %23, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store i32 %i.md, ptr %i.ld, align 8, !tbaa !59
  br label %bb.bz

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.by
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %i.mb) #24
  %.pr = load i32, ptr %i.lc, align 8, !tbaa !59  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store i32 %.pr, ptr %i.ld, align 8, !tbaa !59
  %i.mg = icmp ult i32 %.pr, 65
  br i1 %i.mg, label %_ZN4llvm5APIntC2ERKS0_.exit._crit_edge, label %bb.ca

_ZN4llvm5APIntC2ERKS0_.exit._crit_edge:           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %.pre342.a = load i64, ptr %23, align 8, !tbaa !60
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit._crit_edge, %_ZN4llvm5APIntC2ERKS0_.exit.thread
  %i.mh = phi i64 [ %.pre342.a, %_ZN4llvm5APIntC2ERKS0_.exit._crit_edge ], [ %i.mf, %_ZN4llvm5APIntC2ERKS0_.exit.thread ]
  store i64 %i.mh, ptr %25, align 8, !tbaa !60
  br label %_ZN4llvm5APIntC2ERKS0_.exit178

bb.ca:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %25, ptr noundef nonnull align 8 dereferenceable(12) %23) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit178

_ZN4llvm5APIntC2ERKS0_.exit178:                   ; preds = %bb.bz, %bb.ca
  call void @_ZN4llvm13ConstantRangeC1ENS_5APIntE(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr nofree noundef nonnull align 8 dereferenceable(16) %25) #24
  %i.mi = load i32, ptr %i.ld, align 8, !tbaa !59
  %i.mj = icmp ugt i32 %i.mi, 64
  br i1 %i.mj, label %bb.cb, label %_ZN4llvm5APIntD2Ev.exit179

bb.cb:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit178
  %i.mk = load ptr, ptr %25, align 8, !tbaa !60   ; 2 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %_ZN4llvm5APIntD2Ev.exit179, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZdaPv(ptr noundef nonnull %i.mk) #27
  br label %_ZN4llvm5APIntD2Ev.exit179

_ZN4llvm5APIntD2Ev.exit179:                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit178, %bb.cb, %bb.cc
  br i1 %.not117, label %bb.cq, label %bb.cd

bb.cd:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit179
  %i.mm = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call fastcc void @_ZL16constantFoldUserPN4llvm4UserEPNS_5ValueERKNS_5APIntERKNS_10DataLayoutE(ptr dead_on_unwind noalias writable align 8 %26, ptr noundef %2, ptr noundef %i.io, ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(912) %i.mm)
  %i.mn = load i16, ptr %26, align 8
  %i.mo = and i16 %i.mn, 255
  %i.mp = icmp eq i16 %i.mo, 6                    ; 2 uses
  br i1 %i.mp, label %_ZN4llvm19ValueLatticeElementD2Ev.exit184, label %bb.ce

_ZN4llvm19ValueLatticeElementD2Ev.exit184:        ; preds = %bb.cd
  store i16 6, ptr %0, align 8
  store i8 1, ptr %i.ll, align 8, !tbaa !68
  br label %_ZN4llvm13ConstantRangeaSERKS0_.exit

bb.ce:                                            ; preds = %bb.cd
  %i.mq = load i32, ptr %i.lf, align 8, !tbaa !59
  %i.mr = icmp ult i32 %i.mq, 65
  br i1 %i.mr, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ms = load i32, ptr %i.lg, align 8, !tbaa !59 ; 2 uses
  %i.mt = icmp ult i32 %i.ms, 65
  br i1 %i.mt, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.mu = load i64, ptr %i.le, align 8, !tbaa !60
  store i64 %i.mu, ptr %24, align 8, !tbaa !60
  store i32 %i.ms, ptr %i.lf, align 8, !tbaa !59
  br label %_ZN4llvm5APIntaSERKS0_.exit.i

bb.ch:                                            ; preds = %bb.cf, %bb.ce
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.le) #24
  br label %_ZN4llvm5APIntaSERKS0_.exit.i

_ZN4llvm5APIntaSERKS0_.exit.i:                    ; preds = %bb.ch, %bb.cg
  %i.mv = load i32, ptr %i.lj, align 8, !tbaa !59
  %i.mw = icmp ult i32 %i.mv, 65
  br i1 %i.mw, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %_ZN4llvm5APIntaSERKS0_.exit.i
  %i.mx = load i32, ptr %i.lk, align 8, !tbaa !59 ; 2 uses
  %i.my = icmp ult i32 %i.mx, 65
  br i1 %i.my, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mz = load i64, ptr %i.li, align 8, !tbaa !60
  store i64 %i.mz, ptr %i.lh, align 8, !tbaa !60
  store i32 %i.mx, ptr %i.lj, align 8, !tbaa !59
  br label %_ZN4llvm13ConstantRangeaSERKS0_.exit

bb.ck:                                            ; preds = %bb.ci, %_ZN4llvm5APIntaSERKS0_.exit.i
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.lh, ptr noundef nonnull align 8 dereferenceable(12) %i.li) #24
  br label %_ZN4llvm13ConstantRangeaSERKS0_.exit

_ZN4llvm13ConstantRangeaSERKS0_.exit:             ; preds = %bb.ck, %bb.cj, %_ZN4llvm19ValueLatticeElementD2Ev.exit184
  %i.na = load i16, ptr %26, align 8
  %i.nb = and i16 %i.na, 254
  %switch.i.i185 = icmp eq i16 %i.nb, 4
  br i1 %switch.i.i185, label %bb.cl, label %_ZN4llvm19ValueLatticeElementD2Ev.exit187

bb.cl:                                            ; preds = %_ZN4llvm13ConstantRangeaSERKS0_.exit
  %i.nc = load i32, ptr %i.lk, align 8, !tbaa !59
  %i.nd = icmp ugt i32 %i.nc, 64
  br i1 %i.nd, label %bb.cm, label %_ZN4llvm5APIntD2Ev.exit.i.i.i186

bb.cm:                                            ; preds = %bb.cl
  %i.ne = load ptr, ptr %i.li, align 8, !tbaa !60 ; 2 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %_ZN4llvm5APIntD2Ev.exit.i.i.i186, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZdaPv(ptr noundef nonnull %i.ne) #27
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i186

_ZN4llvm5APIntD2Ev.exit.i.i.i186:                 ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.ng = load i32, ptr %i.lg, align 8, !tbaa !59
  %i.nh = icmp ugt i32 %i.ng, 64
  br i1 %i.nh, label %bb.co, label %_ZN4llvm19ValueLatticeElementD2Ev.exit187

bb.co:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i186
  %i.ni = load ptr, ptr %i.le, align 8, !tbaa !60 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %_ZN4llvm19ValueLatticeElementD2Ev.exit187, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZdaPv(ptr noundef nonnull %i.ni) #27
  br label %_ZN4llvm19ValueLatticeElementD2Ev.exit187

_ZN4llvm19ValueLatticeElementD2Ev.exit187:        ; preds = %_ZN4llvm13ConstantRangeaSERKS0_.exit, %_ZN4llvm5APIntD2Ev.exit.i.i.i186, %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br i1 %i.mp, label %.critedge133, label %bb.cq

bb.cq:                                            ; preds = %_ZN4llvm19ValueLatticeElementD2Ev.exit187, %_ZN4llvm5APIntD2Ev.exit179
  %.not.i.i188 = icmp eq i64 %.sroa.4.0328, 4294967294
  %i.nk = add nuw nsw i64 %.sroa.4.0328, 2
end_hunk_0
