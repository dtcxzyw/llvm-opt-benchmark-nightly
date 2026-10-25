Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonFunctions?download=true
inline.NumInlined: 16949
inline.NumDeleted: 7026
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.gg = load i32, ptr %i.fg, align 4, !tbaa !136 ; 11 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %bb.ar, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14

bb.ar:                                            ; preds = %bb.aq
  %i.gi = load ptr, ptr %i.do, align 8, !tbaa !138 ; 5 uses
  %i.gj = icmp ugt ptr %i.gi, %i.c
  tail call void @llvm.assume(i1 %i.gj)
  %.not.i2.i.not.i = icmp eq i32 %i.gg, 1
  %.pre1007.i = load ptr, ptr %0, align 8, !tbaa !116 ; 5 uses
  br i1 %.not.i2.i.not.i, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 10 uses
  store ptr %i.gk, ptr %i.do, align 8, !tbaa !119
  %i.gl = load i32, ptr %i.gi, align 4, !tbaa !117
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre1007.i, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !118
  switch i8 %i.go, label %bb.aw [
    i8 91, label %bb.ax
    i8 123, label %bb.ax
    i8 58, label %bb.ax
    i8 44, label %bb.ax
    i8 93, label %bb.at
    i8 125, label %bb.at
    i8 34, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  %i.gp = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gp, ptr %i.fg, align 4, !tbaa !136
  %.not6.i.i.i = icmp samesign ugt i32 %i.gg, 2
  br i1 %.not6.i.i.i, label %bb.ax, label %.loopexit.i

bb.au:                                            ; preds = %bb.as
  %i.gq = load i32, ptr %i.gk, align 4, !tbaa !117
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %.pre1007.i, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !118
  %i.gu = icmp eq i8 %i.gt, 58
  br i1 %i.gu, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  store ptr %i.gv, ptr %i.do, align 8, !tbaa !119
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au, %bb.as
  %i.gw = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gw, ptr %i.fg, align 4, !tbaa !136
  %.not7.i.i.i = icmp samesign ugt i32 %i.gg, 2
  br i1 %.not7.i.i.i, label %bb.ax, label %.loopexit.i

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at, %bb.as, %bb.as, %bb.as, %bb.as
  %i.gx = phi i32 [ %i.gg, %bb.as ], [ %i.gg, %bb.as ], [ %i.gg, %bb.as ], [ %i.gg, %bb.as ], [ %i.gw, %bb.aw ], [ %i.gg, %bb.av ], [ %i.gp, %bb.at ] ; 2 uses
  %i.gy = phi ptr [ %i.gk, %bb.as ], [ %i.gk, %bb.as ], [ %i.gk, %bb.as ], [ %i.gk, %bb.as ], [ %i.gk, %bb.aw ], [ %i.gv, %bb.av ], [ %i.gk, %bb.at ] ; 3 uses
  %i.gz = load ptr, ptr %i.fo, align 8, !tbaa !123
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !125 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !134
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hf = zext i32 %i.hd to i64                   ; 2 uses
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !135
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hf
  %i.hi = icmp ult ptr %i.gy, %i.hh
  br i1 %i.hi, label %.lr.ph975.i, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split.i

.lr.ph975.i:                                      ; preds = %bb.ax, %bb.ba
  %i.hj = phi i32 [ %i.hs, %bb.ba ], [ %i.gx, %bb.ax ] ; 4 uses
  %i.hk = phi ptr [ %i.hl, %bb.ba ], [ %i.gy, %bb.ax ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 5 uses
  store ptr %i.hl, ptr %i.do, align 8, !tbaa !119
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !117
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %.pre1007.i, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !118
  switch i8 %i.hp, label %bb.ba [
    i8 91, label %bb.ay
    i8 123, label %bb.ay
    i8 93, label %bb.az
    i8 125, label %bb.az
  ]

bb.ay:                                            ; preds = %.lr.ph975.i, %.lr.ph975.i
  %i.hq = add nsw i32 %i.hj, 1                    ; 2 uses
  store i32 %i.hq, ptr %i.fg, align 4, !tbaa !136
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph975.i, %.lr.ph975.i
  %i.hr = add nsw i32 %i.hj, -1                   ; 2 uses
  store i32 %i.hr, ptr %i.fg, align 4, !tbaa !136
  %.not8.i.i106.i = icmp sgt i32 %i.hj, 2
  br i1 %.not8.i.i106.i, label %bb.ba, label %.loopexit.i

bb.ba:                                            ; preds = %bb.az, %bb.ay, %.lr.ph975.i
  %i.hs = phi i32 [ %i.hj, %.lr.ph975.i ], [ %i.hr, %bb.az ], [ %i.hq, %bb.ay ] ; 2 uses
  %i.ht = load ptr, ptr %i.he, align 8, !tbaa !135
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hf
  %i.hv = icmp ult ptr %i.hl, %i.hu
  br i1 %i.hv, label %.lr.ph975.i, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.az, %bb.aw, %bb.at, %bb.ar
  %i.hw = phi ptr [ %i.gk, %bb.aw ], [ %i.gi, %bb.ar ], [ %i.gk, %bb.at ], [ %i.hl, %bb.az ] ; 3 uses
  %i.hx = icmp ugt ptr %i.hw, %i.c
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4 ; 3 uses
  store ptr %i.hy, ptr %i.do, align 8, !tbaa !119
  %i.hz = load i32, ptr %i.hw, align 4, !tbaa !117
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %.pre1007.i, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !118
  switch i8 %i.ic, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split.i [
    i8 125, label %bb.bb
    i8 44, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i
  ]

bb.bb:                                            ; preds = %.loopexit.i
  store i32 0, ptr %i.fg, align 4, !tbaa !136
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split.i: ; preds = %bb.ba, %.loopexit.i, %bb.ax
  %i.id = phi ptr [ %i.hy, %.loopexit.i ], [ %i.gy, %bb.ax ], [ %i.hl, %bb.ba ]
  %.ph.i = phi i32 [ 1, %.loopexit.i ], [ %i.gx, %bb.ax ], [ %i.hs, %bb.ba ]
  store i32 3, ptr %i.fn, align 8, !tbaa !137
  %i.ie = icmp sgt i32 %.ph.i, 0
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split.i, %.loopexit.i
  %i.if = phi ptr [ %i.hy, %.loopexit.i ], [ %i.id, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split.i ]
  %i.ig = phi i1 [ true, %.loopexit.i ], [ %i.ie, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split.i ]
  br i1 %i.ig, label %bb.al, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14

bb.bc:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !117
  %i.ij = sub i32 %i.ii, %i.e
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !117
  %i.im = sub i32 %i.il, %i.e
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.ij, i32 %i.im) ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !119 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.c
  br i1 %i.ip, label %bb.bd, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !117
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ir
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i: ; preds = %bb.bd, %bb.bc
  %.0.i119.i = phi ptr [ %i.is, %bb.bd ], [ %i.g, %bb.bc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 1083
  store i8 0, ptr %i.it, align 1, !tbaa !118
  %i.iu = zext i32 %..i.i to i64                  ; 3 uses
  %i.iv = icmp ult i32 %..i.i, 1084
  br i1 %i.iv, label %bb.be, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.be:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.0.i119.i, i64 %i.iu, i1 false)
  %.not939.i = icmp eq i32 %..i.i, 1083
  br i1 %.not939.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iu
  %i.ix = sub nuw nsw i64 1083, %i.iu
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.iw, i8 32, i64 %i.ix, i1 false)
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i: ; preds = %bb.bf, %bb.be
  %i.iy = load i8, ptr %i.a, align 16, !tbaa !118
  %i.iz = icmp eq i8 %i.iy, 45                    ; 3 uses
  %.neg79.i.i.i = sext i1 %i.iz to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.iz to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %i.ja = load i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !118
  %i.jb = add i8 %i.ja, -48                       ; 2 uses
  %i.jc = icmp ult i8 %i.jb, 10                   ; 3 uses
  %narrow.i = select i1 %i.jc, i8 %i.jb, i8 0     ; 2 uses
  %spec.select929.i = zext i8 %narrow.i to i64    ; 2 uses
  %i.jd = zext i1 %i.jc to i64                    ; 2 uses
  %i.je = icmp eq i8 %narrow.i, 0                 ; 2 uses
  %.067.ptr.i.i954.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.jd
  %i.jf = load i8, ptr %.067.ptr.i.i954.i, align 1, !tbaa !118 ; 2 uses
  %i.jg = add i8 %i.jf, -48                       ; 2 uses
  %i.jh = icmp ult i8 %i.jg, 10
  br i1 %i.jh, label %.lr.ph.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i

.lr.ph.i:                                         ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i, %.lr.ph.i
  %i.ji = phi i8 [ %i.jn, %.lr.ph.i ], [ %i.jg, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i ]
  %.067.idx.i.i956.i = phi i64 [ %.067.add.i.i.i, %.lr.ph.i ], [ %i.jd, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i ] ; 2 uses
  %.1752955.i = phi i64 [ %i.jl, %.lr.ph.i ], [ %spec.select929.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i ]
  %i.jj = mul i64 %.1752955.i, 10
  %i.jk = zext nneg i8 %i.ji to i64
  %i.jl = add i64 %i.jj, %i.jk                    ; 2 uses
  %.067.add.i.i.i = add nuw nsw i64 %.067.idx.i.i956.i, 1 ; 4 uses
  %.067.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.i
  %i.jm = load i8, ptr %.067.ptr.i.i.i, align 1, !tbaa !118 ; 2 uses
  %i.jn = add i8 %i.jm, -48                       ; 2 uses
  %i.jo = icmp ult i8 %i.jn, 10
  br i1 %i.jo, label %.lr.ph.i, label %bb.bg, !llvm.loop !1

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i
  br i1 %i.jc, label %.thread.i, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.bg:                                            ; preds = %.lr.ph.i
  %.not.i.i113.i = icmp ne i64 %.067.idx.i.i956.i, 0
  %or.cond.i.i114.not.i = and i1 %i.je, %.not.i.i113.i
  br i1 %or.cond.i.i114.not.i, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i, label %.thread.i

.thread.i:                                        ; preds = %bb.bg, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i
  %.067.idx.i.i.lcssa95310511064.i = phi i64 [ %.067.add.i.i.i, %bb.bg ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ]
  %.1752.lcssa10521063.i = phi i64 [ %i.jl, %bb.bg ], [ %spec.select929.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.lcssa95210531062.i = phi i8 [ %i.jm, %bb.bg ], [ %i.jf, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.067.add.i.i.pn.i = phi i64 [ %.067.add.i.i.i, %bb.bg ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ]
  %.067.ptr.i.i.le10541061.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.pn.i ; 3 uses
  %i.jp = icmp eq i8 %.lcssa95210531062.i, 46
  br i1 %i.jp, label %bb.bh, label %bb.bm, !prof !142

bb.bh:                                            ; preds = %.thread.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le10541061.i, i64 1 ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !118
  %i.js = add i8 %i.jr, -48                       ; 2 uses
  %i.jt = icmp ult i8 %i.js, 10
  br i1 %i.jt, label %bb.bi, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.ju = mul i64 %.1752.lcssa10521063.i, 10
  %i.jv = zext nneg i8 %i.js to i64
  %i.jw = add i64 %i.ju, %i.jv                    ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le10541061.i, i64 2 ; 3 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !118 ; 2 uses
  %i.jz = add i8 %i.jy, -48                       ; 2 uses
  %i.ka = icmp ult i8 %i.jz, 10
  br i1 %i.ka, label %.lr.ph962.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i

.lr.ph962.i:                                      ; preds = %bb.bi, %.lr.ph962.i
  %i.kb = phi i8 [ %i.kh, %.lr.ph962.i ], [ %i.jz, %bb.bi ]
  %.168.i.i961.i = phi ptr [ %i.kf, %.lr.ph962.i ], [ %i.jx, %bb.bi ]
  %.6756960.i = phi i64 [ %i.ke, %.lr.ph962.i ], [ %i.jw, %bb.bi ]
  %i.kc = mul i64 %.6756960.i, 10
  %i.kd = zext nneg i8 %i.kb to i64
  %i.ke = add i64 %i.kc, %i.kd                    ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.168.i.i961.i, i64 1 ; 3 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !118 ; 2 uses
  %i.kh = add i8 %i.kg, -48                       ; 2 uses
  %i.ki = icmp ult i8 %i.kh, 10
  br i1 %i.ki, label %.lr.ph962.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i, !llvm.loop !2

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i: ; preds = %.lr.ph962.i, %bb.bi
  %i.kj = phi i8 [ %i.jy, %bb.bi ], [ %i.kg, %.lr.ph962.i ] ; 2 uses
  %.6756.lcssa.i = phi i64 [ %i.jw, %bb.bi ], [ %i.ke, %.lr.ph962.i ] ; 2 uses
  %.168.i.i.lcssa.i = phi ptr [ %i.jx, %bb.bi ], [ %i.kf, %.lr.ph962.i ] ; 3 uses
  %i.kk = ptrtoint ptr %.168.i.i.lcssa.i to i64   ; 3 uses
  %i.kl = ptrtoint ptr %i.jq to i64
  %.neg.i.i.i = sub i64 %i.kl, %i.kk              ; 2 uses
  %i.km = ptrtoint ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.kn = sub i64 %i.km, %i.kk
  %i.ko = icmp slt i64 %i.kn, -20                 ; 2 uses
  %i.kp = and i1 %i.je, %i.ko
  br i1 %i.kp, label %bb.bj, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i, !prof !143

bb.bj:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.iz, i64 3, i64 2
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %.0.i.i118.i = phi ptr [ %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.bj ], [ %i.ks, %bb.bk ] ; 3 uses
  %i.kq = load i8, ptr %.0.i.i118.i, align 1, !tbaa !118
  %i.kr = icmp eq i8 %i.kq, 48
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i.i118.i, i64 1
  br i1 %i.kr, label %bb.bk, label %bb.bl, !llvm.loop !3

bb.bl:                                            ; preds = %bb.bk
  %i.kt = ptrtoint ptr %.0.i.i118.i to i64
  %i.ku = sub i64 %i.kk, %i.kt
  %i.kv = icmp sgt i64 %i.ku, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i

bb.bm:                                            ; preds = %.thread.i
  %i.kw = icmp samesign ugt i64 %.067.idx.i.i.lcssa95310511064.i, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i: ; preds = %bb.bm, %bb.bl, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i
  %i.kx = phi i8 [ %.lcssa95210531062.i, %bb.bm ], [ %i.kj, %bb.bl ], [ %i.kj, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ] ; 2 uses
  %.3754.i = phi i64 [ %.1752.lcssa10521063.i, %bb.bm ], [ %.6756.lcssa.i, %bb.bl ], [ %.6756.lcssa.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ] ; 4 uses
  %.370.i.i.i = phi ptr [ %.067.ptr.i.i.le10541061.i, %bb.bm ], [ %.168.i.i.lcssa.i, %bb.bl ], [ %.168.i.i.lcssa.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ] ; 2 uses
  %.163.i.i.i = phi i64 [ 0, %bb.bm ], [ %.neg.i.i.i, %bb.bl ], [ %.neg.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ] ; 2 uses
  %.2.i.i.i = phi i1 [ %i.kw, %bb.bm ], [ %i.kv, %bb.bl ], [ %i.ko, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ]
  switch i8 %i.kx, label %bb.bp [
    i8 101, label %bb.bn
    i8 69, label %bb.bn
  ]

bb.bn:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %.370.i.i.i, i64 1 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !118 ; 2 uses
  %i.la = icmp eq i8 %i.kz, 45                    ; 2 uses
  %i.lb = icmp eq i8 %i.kz, 43
  %narrow940.i = or i1 %i.la, %i.lb
  %.sroa.gep994.i = getelementptr inbounds nuw i8, ptr %.370.i.i.i, i64 2
  %.sroa.sel.i = select i1 %narrow940.i, ptr %.sroa.gep994.i, ptr %i.ky ; 3 uses
  %i.lc = load i8, ptr %.sroa.sel.i, align 1, !tbaa !118
  %i.ld = add i8 %i.lc, -48                       ; 2 uses
  %i.le = icmp ult i8 %i.ld, 10
  br i1 %i.le, label %.lr.ph967.i, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

.lr.ph967.i:                                      ; preds = %bb.bn, %.lr.ph967.i
  %i.lf = phi i8 [ %i.ll, %.lr.ph967.i ], [ %i.ld, %bb.bn ]
  %.4.i.i966.i = phi ptr [ %i.lj, %.lr.ph967.i ], [ %.sroa.sel.i, %bb.bn ]
  %.0757965.i = phi i64 [ %i.li, %.lr.ph967.i ], [ 0, %bb.bn ]
  %i.lg = mul i64 %.0757965.i, 10
  %i.lh = zext nneg i8 %i.lf to i64
  %i.li = add i64 %i.lg, %i.lh                    ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.4.i.i966.i, i64 1 ; 3 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !118 ; 2 uses
  %i.ll = add i8 %i.lk, -48                       ; 2 uses
  %i.lm = icmp ult i8 %i.ll, 10
  br i1 %i.lm, label %.lr.ph967.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i, !llvm.loop !4

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i: ; preds = %.lr.ph967.i
  %i.ln = ptrtoint ptr %.sroa.sel.i to i64
  %i.lo = ptrtoint ptr %i.lj to i64
  %i.lp = sub i64 %i.lo, %i.ln
  %i.lq = icmp sgt i64 %i.lp, 19
  br i1 %i.lq, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i
  %i.lr = sub i64 0, %i.li
  %i.ls = select i1 %i.la, i64 %i.lr, i64 %i.li
  %i.lt = add i64 %i.ls, %.163.i.i.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i
  %i.lu = phi i8 [ %i.lk, %bb.bo ], [ %i.kx, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i ]
  %.3.i.i.i = phi i64 [ %i.lt, %bb.bo ], [ %.163.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i ] ; 5 uses
  %i.lv = zext i8 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !144, !range !121, !noundef !122
  %.not76.i.i.i = icmp eq i8 %i.lx, 0
  br i1 %.not76.i.i.i, label %bb.bq, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.bq:                                            ; preds = %bb.bp
  %i.ly = add i64 %.3.i.i.i, -309
  %i.lz = icmp ult i64 %i.ly, -651
  %.not78.i.i.i = select i1 %.2.i.i.i, i1 true, i1 %i.lz
  br i1 %.not78.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.br, !prof !143

bb.br:                                            ; preds = %bb.bq
  %i.ma = add nsw i64 %.3.i.i.i, 22
  %or.cond.i7.i.i = icmp ult i64 %i.ma, 45
  %i.mb = icmp ult i64 %.3754.i, 9007199254740992
  %or.cond3.i.i.i = and i1 %i.mb, %or.cond.i7.i.i
  %i.mc = icmp eq i64 %.3754.i, 0
  %or.cond.i = or i1 %i.mc, %or.cond3.i.i.i
  br i1 %or.cond.i, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.md = mul nsw i64 %.3.i.i.i, 217706
  %i.me = ashr i64 %i.md, 16
  %i.mf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.3754.i, i1 true) ; 2 uses
  %i.mg = shl i64 %.3754.i, %i.mf                 ; 2 uses
  %i.mh = trunc nsw i64 %.3.i.i.i to i32
  %i.mi = shl nsw i32 %i.mh, 1
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.mj ; 2 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 5472
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !145
  %i.mn = zext i64 %i.mg to i128
  %i.mo = zext i64 %i.mm to i128
  %i.mp = mul nuw i128 %i.mo, %i.mn               ; 2 uses
  %i.mq = trunc i128 %i.mp to i64                 ; 2 uses
  %i.mr = lshr i128 %i.mp, 64
  %i.ms = trunc nuw i128 %i.mr to i64             ; 3 uses
  %i.mt = and i64 %i.ms, 511
  %i.mu = icmp eq i64 %i.mt, 511
  br i1 %i.mu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mv = getelementptr i8, ptr %i.mk, i64 5480
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !145
  %i.mx = call i64 @llvm.umulh.i64(i64 %i.mg, i64 %i.mw) ; 2 uses
  %i.my = add i64 %i.mx, %i.mq                    ; 2 uses
  %i.mz = icmp ugt i64 %i.mx, %i.my
  %i.na = zext i1 %i.mz to i64
  %spec.select.i.i.i = add nuw i64 %i.na, %i.ms
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.7.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.bt ], [ %i.ms, %bb.bs ] ; 3 uses
  %.sroa.037.0.i.i.i = phi i64 [ %i.my, %bb.bt ], [ %i.mq, %bb.bs ]
  %i.nb = lshr i64 %.sroa.7.1.i.i.i, 63           ; 2 uses
  %i.nc = add nuw nsw i64 %i.nb, 9                ; 2 uses
  %i.nd = lshr i64 %.sroa.7.1.i.i.i, %i.nc        ; 5 uses
  %reass.sub.i = sub nsw i64 %i.me, %i.mf
  %.neg980.i = add nsw i64 %i.nb, %reass.sub.i    ; 2 uses
  %i.ne = add nsw i64 %.neg980.i, 1086
  %i.nf = icmp slt i64 %.neg980.i, -1085
  br i1 %i.nf, label %bb.by, label %bb.bv, !prof !143

bb.bv:                                            ; preds = %bb.bu
  %i.ng = icmp ult i64 %.sroa.037.0.i.i.i, 2
  %i.nh = add nsw i64 %.3.i.i.i, 4
  %i.ni = icmp ult i64 %i.nh, 28
  %or.cond7.i.i.i = and i1 %i.ni, %i.ng
  %i.nj = and i64 %i.nd, 3
  %i.nk = icmp eq i64 %i.nj, 1
  %i.nl = select i1 %or.cond7.i.i.i, i1 %i.nk, i1 false
  br i1 %i.nl, label %bb.bw, label %bb.bx, !prof !143

bb.bw:                                            ; preds = %bb.bv
  %i.nm = shl i64 %i.nd, %i.nc
  %i.nn = icmp eq i64 %i.nm, %.sroa.7.1.i.i.i
  %i.no = and i64 %i.nd, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.nn, i64 %i.no, i64 %i.nd
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions12_GLOBAL__N_18validateIN8simdjson8fallback8ondemand5valueEEENS4_10error_codeET_:bb.a
  br i1 %.not58, label %bb.ac, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ew = load i32, ptr %i.dy, align 4, !tbaa !136 ; 11 uses
  %.not791 = icmp slt i32 %i.ew, %i.dl
  br i1 %.not791, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = load ptr, ptr %i.cy, align 8, !tbaa !138 ; 5 uses
  %i.ey = icmp ugt ptr %i.ex, %i.c
  tail call void @llvm.assume(i1 %i.ey)
  %.not.i2.i = icmp samesign ugt i32 %i.ew, %i.dl
  %.pre856 = load ptr, ptr %i.a, align 8, !tbaa !116 ; 4 uses
  br i1 %.not.i2.i, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 10 uses
  store ptr %i.ez, ptr %i.cy, align 8, !tbaa !119
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !117
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre856, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !118
  switch i8 %i.fd, label %bb.ai [
    i8 91, label %bb.aj
    i8 123, label %bb.aj
    i8 58, label %bb.aj
    i8 44, label %bb.aj
    i8 93, label %bb.af
    i8 125, label %bb.af
    i8 34, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.fe = add nsw i32 %i.ew, -1                   ; 4 uses
  store i32 %i.fe, ptr %i.dy, align 4, !tbaa !136
  %.not6.i.i = icmp samesign ugt i32 %i.fe, %i.dl
  br i1 %.not6.i.i, label %bb.aj, label %.loopexit

bb.ag:                                            ; preds = %bb.ae
  %i.ff = load i32, ptr %i.ez, align 4, !tbaa !117
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre856, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !118
  %i.fj = icmp eq i8 %i.fi, 58
  br i1 %i.fj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  store ptr %i.fk, ptr %i.cy, align 8, !tbaa !119
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  %i.fl = add nsw i32 %i.ew, -1                   ; 4 uses
  store i32 %i.fl, ptr %i.dy, align 4, !tbaa !136
  %.not7.i.i = icmp samesign ugt i32 %i.fl, %i.dl
  br i1 %.not7.i.i, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ai, %bb.ah, %bb.af
  %i.fm = phi ptr [ %i.ez, %bb.ae ], [ %i.ez, %bb.ae ], [ %i.ez, %bb.ae ], [ %i.ez, %bb.ae ], [ %i.ez, %bb.ai ], [ %i.fk, %bb.ah ], [ %i.ez, %bb.af ] ; 2 uses
  %i.fn = phi i32 [ %i.ew, %bb.ae ], [ %i.ew, %bb.ae ], [ %i.ew, %bb.ae ], [ %i.ew, %bb.ae ], [ %i.fl, %bb.ai ], [ %i.ew, %bb.ah ], [ %i.fe, %bb.af ] ; 2 uses
  %i.fo = load ptr, ptr %i.eb, align 8, !tbaa !123
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !125 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !134
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.fu = zext i32 %i.fs to i64                   ; 2 uses
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !135
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fu
  %i.fx = icmp ult ptr %i.fm, %i.fw
  br i1 %i.fx, label %.lr.ph826, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i

.lr.ph826:                                        ; preds = %bb.aj, %bb.am
  %i.fy = phi i32 [ %i.gh, %bb.am ], [ %i.fn, %bb.aj ] ; 3 uses
  %i.fz = phi ptr [ %i.ga, %bb.am ], [ %i.fm, %bb.aj ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 4 uses
  store ptr %i.ga, ptr %i.cy, align 8, !tbaa !119
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !117
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.pre856, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !118
  switch i8 %i.ge, label %bb.am [
    i8 91, label %bb.ak
    i8 123, label %bb.ak
    i8 93, label %bb.al
    i8 125, label %bb.al
  ]

bb.ak:                                            ; preds = %.lr.ph826, %.lr.ph826
  %i.gf = add nuw nsw i32 %i.fy, 1                ; 2 uses
  store i32 %i.gf, ptr %i.dy, align 4, !tbaa !136
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph826, %.lr.ph826
  %i.gg = add nsw i32 %i.fy, -1                   ; 4 uses
  store i32 %i.gg, ptr %i.dy, align 4, !tbaa !136
  %.not8.i.i149 = icmp sgt i32 %i.gg, %i.dl
  br i1 %.not8.i.i149, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %.lr.ph826, %bb.al, %bb.ak
  %i.gh = phi i32 [ %i.fy, %.lr.ph826 ], [ %i.gg, %bb.al ], [ %i.gf, %bb.ak ] ; 2 uses
  %i.gi = load ptr, ptr %i.ft, align 8, !tbaa !135
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.fu
  %i.gk = icmp ult ptr %i.ga, %i.gj
  br i1 %i.gk, label %.lr.ph826, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i, !llvm.loop !0

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i: ; preds = %bb.am, %bb.aj
  %i.gl = phi i32 [ %i.fn, %bb.aj ], [ %i.gh, %bb.am ]
  store i32 3, ptr %i.dz, align 8, !tbaa !137
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

.loopexit:                                        ; preds = %bb.al, %bb.ad, %bb.af, %bb.ai
  %i.gm = phi i32 [ %i.fl, %bb.ai ], [ %i.ew, %bb.ad ], [ %i.fe, %bb.af ], [ %i.gg, %bb.al ]
  %i.gn = phi ptr [ %i.ez, %bb.ai ], [ %i.ex, %bb.ad ], [ %i.ez, %bb.af ], [ %i.ga, %bb.al ] ; 3 uses
  %i.go = icmp ugt ptr %i.gn, %i.c
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = icmp eq i32 %i.gm, %i.dl
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store ptr %i.gq, ptr %i.cy, align 8, !tbaa !119
  %i.gr = load i32, ptr %i.gn, align 4, !tbaa !117
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre856, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !118
  switch i8 %i.gu, label %bb.ao [
    i8 125, label %bb.an
    i8 44, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit
  ]

bb.an:                                            ; preds = %.loopexit
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !136
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

bb.ao:                                            ; preds = %.loopexit
  store i32 3, ptr %i.dz, align 8, !tbaa !137
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit: ; preds = %bb.ao, %bb.an, %.loopexit, %bb.ac, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i
  %i.gv = phi i32 [ %i.dl, %bb.ao ], [ %i.ec, %bb.an ], [ %i.dl, %.loopexit ], [ %i.ew, %bb.ac ], [ %i.gl, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i ] ; 2 uses
  %.not790 = icmp slt i32 %i.gv, %i.dl
  br i1 %.not790, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph1001

bb.ap:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !119 ; 5 uses
  %i.gz = icmp eq ptr %i.gy, %i.c
  br i1 %i.gz, label %bb.aq, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !117
  %i.hb = zext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hb
  %.pre = load i8, ptr %i.hc, align 1, !tbaa !118
  br label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit: ; preds = %bb.ap, %bb.aq
  %i.hd = phi i8 [ %.pre, %bb.aq ], [ %i.h, %bb.ap ]
  %i.he = phi i64 [ %i.hb, %bb.aq ], [ %i.f, %bb.ap ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.he
  %i.hg = icmp eq i8 %i.hd, 45                    ; 2 uses
  %.neg79.i = sext i1 %i.hg to i64
  %i.hh = zext i1 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hh ; 7 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !118
  %i.hk = add i8 %i.hj, -48                       ; 2 uses
  %i.hl = icmp ult i8 %i.hk, 10                   ; 3 uses
  %narrow = select i1 %i.hl, i8 %i.hk, i8 0       ; 2 uses
  %spec.select779 = zext i8 %narrow to i64        ; 2 uses
  %i.hm = zext i1 %i.hl to i64                    ; 3 uses
  %i.hn = icmp eq i8 %narrow, 0                   ; 2 uses
  %.067.ptr.i804 = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hm
  %i.ho = load i8, ptr %.067.ptr.i804, align 1, !tbaa !118 ; 2 uses
  %i.hp = add i8 %i.ho, -48                       ; 2 uses
  %i.hq = icmp ult i8 %i.hp, 10
  br i1 %i.hq, label %.lr.ph, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89

.lr.ph:                                           ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit, %.lr.ph
  %i.hr = phi i8 [ %i.hw, %.lr.ph ], [ %i.hp, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit ]
  %.067.idx.i806 = phi i64 [ %.067.add.i, %.lr.ph ], [ %i.hm, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit ] ; 2 uses
  %.0595805 = phi i64 [ %i.hu, %.lr.ph ], [ %spec.select779, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit ]
  %i.hs = mul i64 %.0595805, 10
  %i.ht = zext nneg i8 %i.hr to i64
  %i.hu = add i64 %i.hs, %i.ht                    ; 2 uses
  %.067.add.i = add nuw nsw i64 %.067.idx.i806, 1 ; 4 uses
  %.067.ptr.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.067.add.i
  %i.hv = load i8, ptr %.067.ptr.i, align 1, !tbaa !118 ; 2 uses
  %i.hw = add i8 %i.hv, -48                       ; 2 uses
  %i.hx = icmp ult i8 %i.hw, 10
  br i1 %i.hx, label %.lr.ph, label %bb.ar, !llvm.loop !1

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit
  br i1 %i.hl, label %.thread920, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ar:                                            ; preds = %.lr.ph
  %.not.i78 = icmp ne i64 %.067.idx.i806, 0
  %or.cond.i.not = and i1 %i.hn, %.not.i78
  br i1 %or.cond.i.not, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.thread920

.thread920:                                       ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89, %bb.ar
  %.067.idx.i.lcssa803916930 = phi i64 [ %.067.add.i, %bb.ar ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89 ]
  %.0595.lcssa917929 = phi i64 [ %i.hu, %bb.ar ], [ %spec.select779, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89 ] ; 2 uses
  %.lcssa802918928 = phi i8 [ %i.hv, %bb.ar ], [ %i.ho, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89 ] ; 2 uses
  %.067.add.i.pn = phi i64 [ %.067.add.i, %bb.ar ], [ %i.hm, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89 ]
  %.067.ptr.i.le919927 = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.067.add.i.pn ; 3 uses
  %i.hy = icmp eq i8 %.lcssa802918928, 46
  br i1 %i.hy, label %bb.as, label %bb.ax, !prof !142

bb.as:                                            ; preds = %.thread920
  %i.hz = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le919927, i64 1 ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !118
  %i.ib = add i8 %i.ia, -48                       ; 2 uses
  %i.ic = icmp ult i8 %i.ib, 10
  br i1 %i.ic, label %bb.at, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.at:                                            ; preds = %bb.as
  %i.id = mul i64 %.0595.lcssa917929, 10
  %i.ie = zext nneg i8 %i.ib to i64
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le919927, i64 2 ; 3 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !118 ; 2 uses
  %i.ii = add i8 %i.ih, -48                       ; 2 uses
  %i.ij = icmp ult i8 %i.ii, 10
  br i1 %i.ij, label %.lr.ph812, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit

.lr.ph812:                                        ; preds = %bb.at, %.lr.ph812
  %i.ik = phi i8 [ %i.iq, %.lr.ph812 ], [ %i.ii, %bb.at ]
  %.168.i811 = phi ptr [ %i.io, %.lr.ph812 ], [ %i.ig, %bb.at ]
  %.3598810 = phi i64 [ %i.in, %.lr.ph812 ], [ %i.if, %bb.at ]
  %i.il = mul i64 %.3598810, 10
  %i.im = zext nneg i8 %i.ik to i64
  %i.in = add i64 %i.il, %i.im                    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.168.i811, i64 1 ; 3 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !118 ; 2 uses
  %i.iq = add i8 %i.ip, -48                       ; 2 uses
  %i.ir = icmp ult i8 %i.iq, 10
  br i1 %i.ir, label %.lr.ph812, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, !llvm.loop !2

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit: ; preds = %.lr.ph812, %bb.at
  %i.is = phi i8 [ %i.ih, %bb.at ], [ %i.ip, %.lr.ph812 ] ; 2 uses
  %.3598.lcssa = phi i64 [ %i.if, %bb.at ], [ %i.in, %.lr.ph812 ] ; 2 uses
  %.168.i.lcssa = phi ptr [ %i.ig, %bb.at ], [ %i.io, %.lr.ph812 ] ; 3 uses
  %i.it = ptrtoint ptr %.168.i.lcssa to i64       ; 3 uses
  %i.iu = ptrtoint ptr %i.hz to i64
  %.neg.i = sub i64 %i.iu, %i.it                  ; 2 uses
  %i.iv = ptrtoint ptr %i.hi to i64
  %i.iw = sub i64 %i.iv, %i.it
  %i.ix = icmp slt i64 %i.iw, -20                 ; 2 uses
  %i.iy = and i1 %i.ix, %i.hn
  br i1 %i.iy, label %bb.au, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87, !prof !143

bb.au:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.0.i84 = phi ptr [ %i.iz, %bb.au ], [ %i.jc, %bb.av ] ; 3 uses
  %i.ja = load i8, ptr %.0.i84, align 1, !tbaa !118
  %i.jb = icmp eq i8 %i.ja, 48
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i84, i64 1
  br i1 %i.jb, label %bb.av, label %bb.aw, !llvm.loop !3

bb.aw:                                            ; preds = %bb.av
  %i.jd = ptrtoint ptr %.0.i84 to i64
  %i.je = sub i64 %i.it, %i.jd
  %i.jf = icmp sgt i64 %i.je, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87

bb.ax:                                            ; preds = %.thread920
  %i.jg = icmp samesign ugt i64 %.067.idx.i.lcssa803916930, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %bb.aw, %bb.ax
  %i.jh = phi i8 [ %.lcssa802918928, %bb.ax ], [ %i.is, %bb.aw ], [ %i.is, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ] ; 2 uses
  %.1596 = phi i64 [ %.0595.lcssa917929, %bb.ax ], [ %.3598.lcssa, %bb.aw ], [ %.3598.lcssa, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ] ; 4 uses
  %.370.i = phi ptr [ %.067.ptr.i.le919927, %bb.ax ], [ %.168.i.lcssa, %bb.aw ], [ %.168.i.lcssa, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ]
  %.163.i = phi i64 [ 0, %bb.ax ], [ %.neg.i, %bb.aw ], [ %.neg.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ] ; 2 uses
  %.2.i = phi i1 [ %i.jg, %bb.ax ], [ %i.jf, %bb.aw ], [ %i.ix, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ]
  switch i8 %i.jh, label %bb.ba [
    i8 101, label %bb.ay
    i8 69, label %bb.ay
  ]

bb.ay:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87
  %i.ji = getelementptr inbounds nuw i8, ptr %.370.i, i64 1 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !118 ; 2 uses
  %i.jk = icmp eq i8 %i.jj, 45                    ; 2 uses
  %i.jl = icmp eq i8 %i.jj, 43
  %narrow785 = or i1 %i.jk, %i.jl
  %i.jm = zext i1 %narrow785 to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jm ; 3 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !118
  %i.jp = add i8 %i.jo, -48                       ; 2 uses
  %i.jq = icmp ult i8 %i.jp, 10
  br i1 %i.jq, label %.lr.ph817, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

.lr.ph817:                                        ; preds = %bb.ay, %.lr.ph817
  %i.jr = phi i8 [ %i.jx, %.lr.ph817 ], [ %i.jp, %bb.ay ]
  %.4.i816 = phi ptr [ %i.jv, %.lr.ph817 ], [ %i.jn, %bb.ay ]
  %.0593815 = phi i64 [ %i.ju, %.lr.ph817 ], [ 0, %bb.ay ]
  %i.js = mul i64 %.0593815, 10
  %i.jt = zext nneg i8 %i.jr to i64
  %i.ju = add i64 %i.js, %i.jt                    ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.4.i816, i64 1 ; 3 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !118 ; 2 uses
  %i.jx = add i8 %i.jw, -48                       ; 2 uses
  %i.jy = icmp ult i8 %i.jx, 10
  br i1 %i.jy, label %.lr.ph817, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88, !llvm.loop !4

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88: ; preds = %.lr.ph817
  %i.jz = ptrtoint ptr %i.jn to i64
  %i.ka = ptrtoint ptr %i.jv to i64
  %i.kb = sub i64 %i.ka, %i.jz
  %i.kc = icmp sgt i64 %i.kb, 19
  br i1 %i.kc, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.az

bb.az:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88
  %i.kd = sub i64 0, %i.ju
  %i.ke = select i1 %i.jk, i64 %i.kd, i64 %i.ju
  %i.kf = add i64 %i.ke, %.163.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87
  %i.kg = phi i8 [ %i.jw, %bb.az ], [ %i.jh, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87 ]
  %.3.i = phi i64 [ %i.kf, %bb.az ], [ %.163.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87 ] ; 5 uses
  %i.kh = zext i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !144, !range !121, !noundef !122
  %.not76.i = icmp eq i8 %i.kj, 0
  br i1 %.not76.i, label %bb.bb, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.kk = add i64 %.3.i, -309
  %i.kl = icmp ult i64 %i.kk, -651
  %.not78.i = select i1 %.2.i, i1 true, i1 %i.kl
  br i1 %.not78.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.bc, !prof !143

bb.bc:                                            ; preds = %bb.bb
  %i.km = add nsw i64 %.3.i, 22
  %or.cond.i91 = icmp ult i64 %i.km, 45
  %i.kn = icmp ult i64 %.1596, 9007199254740992
  %or.cond3.i = and i1 %i.kn, %or.cond.i91
  %i.ko = icmp eq i64 %.1596, 0
  %or.cond = or i1 %i.ko, %or.cond3.i
  br i1 %or.cond, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kp = mul nsw i64 %.3.i, 217706
  %i.kq = ashr i64 %i.kp, 16
  %i.kr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1596, i1 true) ; 2 uses
  %i.ks = shl i64 %.1596, %i.kr                   ; 2 uses
  %i.kt = trunc nsw i64 %.3.i to i32
  %i.ku = shl nsw i32 %i.kt, 1
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.kv ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 5472
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !145
  %i.kz = zext i64 %i.ks to i128
  %i.la = zext i64 %i.ky to i128
  %i.lb = mul nuw i128 %i.la, %i.kz               ; 2 uses
  %i.lc = trunc i128 %i.lb to i64                 ; 2 uses
  %i.ld = lshr i128 %i.lb, 64
  %i.le = trunc nuw i128 %i.ld to i64             ; 3 uses
  %i.lf = and i64 %i.le, 511
  %i.lg = icmp eq i64 %i.lf, 511
  br i1 %i.lg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.lh = getelementptr i8, ptr %i.kw, i64 5480
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !145
  %i.lj = tail call i64 @llvm.umulh.i64(i64 %i.ks, i64 %i.li) ; 2 uses
  %i.lk = add i64 %i.lj, %i.lc                    ; 2 uses
  %i.ll = icmp ugt i64 %i.lj, %i.lk
  %i.lm = zext i1 %i.ll to i64
  %spec.select.i = add nuw i64 %i.lm, %i.le
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %bb.be ], [ %i.le, %bb.bd ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.lk, %bb.be ], [ %i.lc, %bb.bd ]
  %i.ln = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.lo = add nuw nsw i64 %i.ln, 9                ; 2 uses
  %i.lp = lshr i64 %.sroa.7.1.i, %i.lo            ; 5 uses
  %reass.sub = sub nsw i64 %i.kq, %i.kr
  %.neg832 = add nsw i64 %reass.sub, %i.ln        ; 2 uses
  %i.lq = add nsw i64 %.neg832, 1086
  %i.lr = icmp slt i64 %.neg832, -1085
  br i1 %i.lr, label %bb.bj, label %bb.bg, !prof !143

bb.bg:                                            ; preds = %bb.bf
  %i.ls = icmp ult i64 %.sroa.037.0.i, 2
  %i.lt = add nsw i64 %.3.i, 4
  %i.lu = icmp ult i64 %i.lt, 28
  %or.cond7.i = and i1 %i.lu, %i.ls
  %i.lv = and i64 %i.lp, 3
  %i.lw = icmp eq i64 %i.lv, 1
  %i.lx = select i1 %or.cond7.i, i1 %i.lw, i1 false
  br i1 %i.lx, label %bb.bh, label %bb.bi, !prof !143

bb.bh:                                            ; preds = %bb.bg
  %i.ly = shl i64 %i.lp, %i.lo
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
bb.o:                                             ; preds = %bb.n
  %i.cf = icmp eq i32 %i.t, 1
  call void @llvm.assume(i1 %i.cf), !noalias !2719
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !117, !noalias !2719
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !118, !noalias !2719
  %.not8.i.i.i = icmp eq i8 %i.cj, 123
  br i1 %.not8.i.i.i, label %bb.p, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  store ptr %i.ck, ptr %i.cc, align 8, !tbaa !119, !noalias !2719
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.cl = phi ptr [ %i.ck, %bb.p ], [ %i.cd, %bb.n ] ; 2 uses
  %i.cm = trunc nuw i8 %i.aa to i1
  br i1 %i.cm, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !125, !noalias !2719 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !134, !noalias !2719 ; 3 uses
  %i.cr = icmp ne i32 %i.cq, 0
  call void @llvm.assume(i1 %i.cr), !noalias !2719
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ct = add i32 %i.cq, -1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !135, !noalias !2719 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !117, !noalias !2719
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !118, !noalias !2719
  %.not.i58.i = icmp eq i8 %i.da, 125
  br i1 %.not.i58.i, label %bb.s, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.db = zext i32 %i.cq to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !117, !noalias !2719
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !118, !noalias !2719
  %i.dh = icmp eq i8 %i.dg, 125
  br i1 %i.dh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.di = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(56) %9) #26, !noalias !2719
  br i1 %i.di, label %._crit_edge681.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

._crit_edge681.i:                                 ; preds = %bb.t
  %.pre682.i = load ptr, ptr %i.cc, align 8, !tbaa !138, !noalias !2719
  %.pre683.i = load ptr, ptr %9, align 8, !tbaa !116, !noalias !2719
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge681.i, %bb.s, %bb.q
  %i.dj = phi ptr [ %.pre683.i, %._crit_edge681.i ], [ %i.af, %bb.s ], [ %i.af, %bb.q ]
  %i.dk = phi ptr [ %.pre682.i, %._crit_edge681.i ], [ %i.cl, %bb.s ], [ %i.cl, %bb.q ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.dm = icmp eq ptr %i.dk, %i.dl
  call void @llvm.assume(i1 %i.dm), !noalias !2719
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !117, !noalias !2719
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !118, !noalias !2719
  %i.dr = icmp eq i8 %i.dq, 125
  br i1 %i.dr, label %bb.v, label %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store ptr %i.ds, ptr %i.cc, align 8, !tbaa !119, !noalias !2719
  store i32 0, ptr %i.r, align 4, !tbaa !136, !noalias !2719
  br label %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i

_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i: ; preds = %bb.v, %bb.u
  store ptr %9, ptr %6, align 8, !tbaa !140
  %.sroa.019.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 1, ptr %.sroa.019.sroa.4.0..sroa_idx.i, align 8, !tbaa !117
  %.sroa.019.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %.sroa.019.sroa.5.0..sroa_idx.i, align 4
  %.sroa.019.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.x, ptr %.sroa.019.sroa.6.0..sroa_idx.i, align 8, !tbaa !135
  %i.dt = call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl23generateViewsFromObjectILb1EEEN8simdjson10error_codeENS5_8fallback8ondemand6objectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::object") align 8 %6)
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i: ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !117, !noalias !2720
  %i.dw = sub i32 %i.dv, %i.ag
  %i.dx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !117, !noalias !2720
  %i.dz = sub i32 %i.dy, %i.ag
  %..i.i88.i = call i32 @llvm.umin.i32(i32 %i.dw, i32 %i.dz)
  %i.ea = zext i32 %..i.i88.i to i64
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i
  %.0.i101.i = phi i64 [ %i.ea, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i ], [ %i.eb, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i ] ; 2 uses
  %i.eb = add i64 %.0.i101.i, -1                  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !118 ; 2 uses
  %i.ee = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %bb.x, label %bb.y, !prof !832

bb.x:                                             ; preds = %bb.w
  %i.eg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i105.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i105.i, label %bb.y, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.x
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.eh = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.y

bb.y:                                             ; preds = %.noexc.i.i, %bb.x, %bb.w
  %i.ei = icmp ult i8 %i.ed, 33
  br i1 %i.ei, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i: ; preds = %bb.y
  %i.ej = zext nneg i8 %i.ed to i64
  %i.ek = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.el = shl nuw nsw i64 1, %i.ej
  %i.em = and i64 %i.ek, %i.el
  %.not.i104.i = icmp eq i64 %i.em, 0
  br i1 %.not.i104.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %bb.w, !llvm.loop !95

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i, %bb.y
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i101.i, ptr nonnull %i.ai)
  %i.en = load ptr, ptr %i.v, align 8, !tbaa !115, !noalias !2721 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !117
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !117 ; 3 uses
  %i.er = sub i32 %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !117
  %i.eu = sub i32 %i.et, %i.eq
  %..i.i = call i32 @llvm.umin.i32(i32 %i.er, i32 %i.eu) ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !119 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.en
  br i1 %i.ex, label %bb.z, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i

bb.z:                                             ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !117
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %bb.z
  %.sink747.i = phi i32 [ %i.ey, %bb.z ], [ %i.eq, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %.sink.i = load ptr, ptr %9, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 1083
  store i8 0, ptr %i.ez, align 1, !tbaa !118
  %i.fa = zext i32 %..i.i to i64                  ; 3 uses
  %i.fb = icmp ult i32 %..i.i, 1084
  br i1 %i.fb, label %bb.aa, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.aa:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i
  %i.fc = zext i32 %.sink747.i to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.fc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %i.fd, i64 %i.fa, i1 false)
  %.not645.i = icmp eq i32 %..i.i, 1083
  br i1 %.not645.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fa
  %i.ff = sub nuw nsw i64 1083, %i.fa
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fe, i8 32, i64 %i.ff, i1 false)
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i: ; preds = %bb.ab, %bb.aa
  %i.fg = load i8, ptr %i.b, align 16, !tbaa !118
  %i.fh = icmp eq i8 %i.fg, 45                    ; 3 uses
  %.neg79.i.i.i = sext i1 %i.fh to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.fh to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %i.fi = load i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !118
  %i.fj = add i8 %i.fi, -48                       ; 2 uses
  %i.fk = icmp ult i8 %i.fj, 10                   ; 3 uses
  %narrow.i = select i1 %i.fk, i8 %i.fj, i8 0     ; 2 uses
  %spec.select.i18 = zext i8 %narrow.i to i64     ; 2 uses
  %i.fl = zext i1 %i.fk to i64                    ; 2 uses
  %i.fm = icmp eq i8 %narrow.i, 0                 ; 2 uses
  %.067.ptr.i.i651.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.fl
  %i.fn = load i8, ptr %.067.ptr.i.i651.i, align 1, !tbaa !118 ; 2 uses
  %i.fo = add i8 %i.fn, -48                       ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 10
  br i1 %i.fp, label %.lr.ph.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i

.lr.ph.i:                                         ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i, %.lr.ph.i
  %i.fq = phi i8 [ %i.fv, %.lr.ph.i ], [ %i.fo, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i ]
  %.067.idx.i.i653.i = phi i64 [ %.067.add.i.i.i, %.lr.ph.i ], [ %i.fl, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i ] ; 2 uses
  %.1529652.i = phi i64 [ %i.ft, %.lr.ph.i ], [ %spec.select.i18, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i ]
  %i.fr = mul i64 %.1529652.i, 10
  %i.fs = zext nneg i8 %i.fq to i64
  %i.ft = add i64 %i.fr, %i.fs                    ; 2 uses
  %.067.add.i.i.i = add nuw nsw i64 %.067.idx.i.i653.i, 1 ; 4 uses
  %.067.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.i
  %i.fu = load i8, ptr %.067.ptr.i.i.i, align 1, !tbaa !118 ; 2 uses
  %i.fv = add i8 %i.fu, -48                       ; 2 uses
  %i.fw = icmp ult i8 %i.fv, 10
  br i1 %i.fw, label %.lr.ph.i, label %bb.ac, !llvm.loop !1

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i
  br i1 %i.fk, label %.thread.i, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.ac:                                            ; preds = %.lr.ph.i
  %.not.i.i60.i = icmp ne i64 %.067.idx.i.i653.i, 0
  %or.cond.i.i.not.i = and i1 %i.fm, %.not.i.i60.i
  br i1 %or.cond.i.i.not.i, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i, label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i
  %.067.idx.i.i.lcssa650712725.i = phi i64 [ %.067.add.i.i.i, %bb.ac ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ]
  %.1529.lcssa713724.i = phi i64 [ %i.ft, %bb.ac ], [ %spec.select.i18, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.lcssa714723.i = phi i8 [ %i.fu, %bb.ac ], [ %i.fn, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.067.add.i.i.pn.i = phi i64 [ %.067.add.i.i.i, %bb.ac ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ]
  %.067.ptr.i.i.le715722.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.pn.i ; 3 uses
  %i.fx = icmp eq i8 %.lcssa714723.i, 46
  br i1 %i.fx, label %bb.ad, label %bb.ai, !prof !142

bb.ad:                                            ; preds = %.thread.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le715722.i, i64 1 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !118
  %i.ga = add i8 %i.fz, -48                       ; 2 uses
  %i.gb = icmp ult i8 %i.ga, 10
  br i1 %i.gb, label %bb.ae, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gc = mul i64 %.1529.lcssa713724.i, 10
  %i.gd = zext nneg i8 %i.ga to i64
  %i.ge = add i64 %i.gc, %i.gd                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le715722.i, i64 2 ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !118 ; 2 uses
  %i.gh = add i8 %i.gg, -48                       ; 2 uses
  %i.gi = icmp ult i8 %i.gh, 10
  br i1 %i.gi, label %.lr.ph659.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i

.lr.ph659.i:                                      ; preds = %bb.ae, %.lr.ph659.i
  %i.gj = phi i8 [ %i.gp, %.lr.ph659.i ], [ %i.gh, %bb.ae ]
  %.168.i.i658.i = phi ptr [ %i.gn, %.lr.ph659.i ], [ %i.gf, %bb.ae ]
  %.6657.i = phi i64 [ %i.gm, %.lr.ph659.i ], [ %i.ge, %bb.ae ]
  %i.gk = mul i64 %.6657.i, 10
  %i.gl = zext nneg i8 %i.gj to i64
  %i.gm = add i64 %i.gk, %i.gl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.168.i.i658.i, i64 1 ; 3 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !118 ; 2 uses
  %i.gp = add i8 %i.go, -48                       ; 2 uses
  %i.gq = icmp ult i8 %i.gp, 10
  br i1 %i.gq, label %.lr.ph659.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i, !llvm.loop !2

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i: ; preds = %.lr.ph659.i, %bb.ae
  %i.gr = phi i8 [ %i.gg, %bb.ae ], [ %i.go, %.lr.ph659.i ] ; 2 uses
  %.6.lcssa.i = phi i64 [ %i.ge, %bb.ae ], [ %i.gm, %.lr.ph659.i ] ; 2 uses
  %.168.i.i.lcssa.i = phi ptr [ %i.gf, %bb.ae ], [ %i.gn, %.lr.ph659.i ] ; 3 uses
  %i.gs = ptrtoint ptr %.168.i.i.lcssa.i to i64   ; 3 uses
  %i.gt = ptrtoint ptr %i.fy to i64
  %.neg.i.i.i = sub i64 %i.gt, %i.gs              ; 2 uses
  %i.gu = ptrtoint ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.gv = sub i64 %i.gu, %i.gs
  %i.gw = icmp slt i64 %i.gv, -20                 ; 2 uses
  %i.gx = and i1 %i.fm, %i.gw
  br i1 %i.gx, label %bb.af, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i, !prof !143

bb.af:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fh, i64 3, i64 2
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.0.i.i61.i = phi ptr [ %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.af ], [ %i.ha, %bb.ag ] ; 3 uses
  %i.gy = load i8, ptr %.0.i.i61.i, align 1, !tbaa !118
  %i.gz = icmp eq i8 %i.gy, 48
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i.i61.i, i64 1
  br i1 %i.gz, label %bb.ag, label %bb.ah, !llvm.loop !3

bb.ah:                                            ; preds = %bb.ag
  %i.hb = ptrtoint ptr %.0.i.i61.i to i64
  %i.hc = sub i64 %i.gs, %i.hb
  %i.hd = icmp sgt i64 %i.hc, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i

bb.ai:                                            ; preds = %.thread.i
  %i.he = icmp samesign ugt i64 %.067.idx.i.i.lcssa650712725.i, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i: ; preds = %bb.ai, %bb.ah, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i
  %i.hf = phi i8 [ %.lcssa714723.i, %bb.ai ], [ %i.gr, %bb.ah ], [ %i.gr, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ] ; 2 uses
  %.3.i = phi i64 [ %.1529.lcssa713724.i, %bb.ai ], [ %.6.lcssa.i, %bb.ah ], [ %.6.lcssa.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ] ; 4 uses
  %.370.i.i.i = phi ptr [ %.067.ptr.i.i.le715722.i, %bb.ai ], [ %.168.i.i.lcssa.i, %bb.ah ], [ %.168.i.i.lcssa.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ] ; 2 uses
  %.163.i.i.i = phi i64 [ 0, %bb.ai ], [ %.neg.i.i.i, %bb.ah ], [ %.neg.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ] ; 2 uses
  %.2.i.i.i = phi i1 [ %i.he, %bb.ai ], [ %i.hd, %bb.ah ], [ %i.gw, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ]
  switch i8 %i.hf, label %bb.al [
    i8 101, label %bb.aj
    i8 69, label %bb.aj
  ]

bb.aj:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.370.i.i.i, i64 1 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !118 ; 2 uses
  %i.hi = icmp eq i8 %i.hh, 45                    ; 2 uses
  %i.hj = icmp eq i8 %i.hh, 43
  %narrow646.i = or i1 %i.hi, %i.hj
  %.sroa.gep675.i = getelementptr inbounds nuw i8, ptr %.370.i.i.i, i64 2
  %.sroa.sel.i = select i1 %narrow646.i, ptr %.sroa.gep675.i, ptr %i.hg ; 3 uses
  %i.hk = load i8, ptr %.sroa.sel.i, align 1, !tbaa !118
  %i.hl = add i8 %i.hk, -48                       ; 2 uses
  %i.hm = icmp ult i8 %i.hl, 10
  br i1 %i.hm, label %.lr.ph664.i, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

.lr.ph664.i:                                      ; preds = %bb.aj, %.lr.ph664.i
  %i.hn = phi i8 [ %i.ht, %.lr.ph664.i ], [ %i.hl, %bb.aj ]
  %.4.i.i663.i = phi ptr [ %i.hr, %.lr.ph664.i ], [ %.sroa.sel.i, %bb.aj ]
  %.0532662.i = phi i64 [ %i.hq, %.lr.ph664.i ], [ 0, %bb.aj ]
  %i.ho = mul i64 %.0532662.i, 10
  %i.hp = zext nneg i8 %i.hn to i64
  %i.hq = add i64 %i.ho, %i.hp                    ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.4.i.i663.i, i64 1 ; 3 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !118 ; 2 uses
  %i.ht = add i8 %i.hs, -48                       ; 2 uses
  %i.hu = icmp ult i8 %i.ht, 10
  br i1 %i.hu, label %.lr.ph664.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i, !llvm.loop !4

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i: ; preds = %.lr.ph664.i
  %i.hv = ptrtoint ptr %.sroa.sel.i to i64
  %i.hw = ptrtoint ptr %i.hr to i64
  %i.hx = sub i64 %i.hw, %i.hv
  %i.hy = icmp sgt i64 %i.hx, 19
  br i1 %i.hy, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i
  %i.hz = sub i64 0, %i.hq
  %i.ia = select i1 %i.hi, i64 %i.hz, i64 %i.hq
  %i.ib = add i64 %i.ia, %.163.i.i.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i
  %i.ic = phi i8 [ %i.hs, %bb.ak ], [ %i.hf, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i ]
  %.3.i.i.i = phi i64 [ %i.ib, %bb.ak ], [ %.163.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i ] ; 5 uses
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !144, !range !121, !noundef !122
  %.not76.i.i.i = icmp eq i8 %i.if, 0
  br i1 %.not76.i.i.i, label %bb.am, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ig = add i64 %.3.i.i.i, -309
  %i.ih = icmp ult i64 %i.ig, -651
  %.not78.i.i.i = select i1 %.2.i.i.i, i1 true, i1 %i.ih
  br i1 %.not78.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.an, !prof !143

bb.an:                                            ; preds = %bb.am
  %i.ii = add nsw i64 %.3.i.i.i, 22
  %or.cond.i7.i.i = icmp ult i64 %i.ii, 45
  %i.ij = icmp ult i64 %.3.i, 9007199254740992
  %or.cond3.i.i.i = and i1 %i.ij, %or.cond.i7.i.i
  %i.ik = icmp eq i64 %.3.i, 0
  %or.cond.i = or i1 %i.ik, %or.cond3.i.i.i
  br i1 %or.cond.i, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.il = mul nsw i64 %.3.i.i.i, 217706
  %i.im = ashr i64 %i.il, 16
  %i.in = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.3.i, i1 true) ; 2 uses
  %i.io = shl i64 %.3.i, %i.in                    ; 2 uses
  %i.ip = trunc nsw i64 %.3.i.i.i to i32
  %i.iq = shl nsw i32 %i.ip, 1
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ir ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 5472
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !145
  %i.iv = zext i64 %i.io to i128
  %i.iw = zext i64 %i.iu to i128
  %i.ix = mul nuw i128 %i.iw, %i.iv               ; 2 uses
  %i.iy = trunc i128 %i.ix to i64                 ; 2 uses
  %i.iz = lshr i128 %i.ix, 64
  %i.ja = trunc nuw i128 %i.iz to i64             ; 3 uses
  %i.jb = and i64 %i.ja, 511
  %i.jc = icmp eq i64 %i.jb, 511
  br i1 %i.jc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jd = getelementptr i8, ptr %i.is, i64 5480
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !145
  %i.jf = call i64 @llvm.umulh.i64(i64 %i.io, i64 %i.je) ; 2 uses
  %i.jg = add i64 %i.jf, %i.iy                    ; 2 uses
  %i.jh = icmp ugt i64 %i.jf, %i.jg
  %i.ji = zext i1 %i.jh to i64
  %spec.select.i.i.i = add nuw i64 %i.ji, %i.ja
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.7.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.ap ], [ %i.ja, %bb.ao ] ; 3 uses
  %.sroa.037.0.i.i.i = phi i64 [ %i.jg, %bb.ap ], [ %i.iy, %bb.ao ]
  %i.jj = lshr i64 %.sroa.7.1.i.i.i, 63           ; 2 uses
  %i.jk = add nuw nsw i64 %i.jj, 9                ; 2 uses
  %i.jl = lshr i64 %.sroa.7.1.i.i.i, %i.jk        ; 5 uses
  %reass.sub.i = sub nsw i64 %i.im, %i.in
  %.neg667.i = add nsw i64 %i.jj, %reass.sub.i    ; 2 uses
  %i.jm = add nsw i64 %.neg667.i, 1086
  %i.jn = icmp slt i64 %.neg667.i, -1085
  br i1 %i.jn, label %bb.au, label %bb.ar, !prof !143

bb.ar:                                            ; preds = %bb.aq
  %i.jo = icmp ult i64 %.sroa.037.0.i.i.i, 2
  %i.jp = add nsw i64 %.3.i.i.i, 4
  %i.jq = icmp ult i64 %i.jp, 28
  %or.cond7.i.i.i = and i1 %i.jq, %i.jo
  %i.jr = and i64 %i.jl, 3
  %i.js = icmp eq i64 %i.jr, 1
  %i.jt = select i1 %or.cond7.i.i.i, i1 %i.js, i1 false
  br i1 %i.jt, label %bb.as, label %bb.at, !prof !143

bb.as:                                            ; preds = %bb.ar
  %i.ju = shl i64 %i.jl, %i.jk
  %i.jv = icmp eq i64 %i.ju, %.sroa.7.1.i.i.i
  %i.jw = and i64 %i.jl, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.jv, i64 %i.jw, i64 %i.jl
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
bb.cj:                                            ; preds = %bb.ci
  %i.rw = icmp eq i32 %i.t, 1
  call void @llvm.assume(i1 %i.rw), !noalias !2730
  %i.rx = load i32, ptr %i.ru, align 4, !tbaa !117, !noalias !2730
  %i.ry = zext i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !118, !noalias !2730
  %.not8.i.i.i168 = icmp eq i8 %i.sa, 123
  br i1 %.not8.i.i.i168, label %bb.ck, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 4 ; 2 uses
  store ptr %i.sb, ptr %i.rt, align 8, !tbaa !119, !noalias !2730
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ci
  %i.sc = phi ptr [ %i.sb, %bb.ck ], [ %i.ru, %bb.ci ] ; 2 uses
  %i.sd = trunc nuw i8 %i.aa to i1
  br i1 %i.sd, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.se = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !125, !noalias !2730 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !134, !noalias !2730 ; 3 uses
  %i.si = icmp ne i32 %i.sh, 0
  call void @llvm.assume(i1 %i.si), !noalias !2730
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sk = add i32 %i.sh, -1
  %i.sl = zext i32 %i.sk to i64
  %i.sm = load ptr, ptr %i.sj, align 8, !tbaa !135, !noalias !2730 ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.sl
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !117, !noalias !2730
  %i.sp = zext i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.sp
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !118, !noalias !2730
  %.not.i58.i160 = icmp eq i8 %i.sr, 125
  br i1 %.not.i58.i160, label %bb.cn, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.cn:                                            ; preds = %bb.cm
  %i.ss = zext i32 %i.sh to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !117, !noalias !2730
  %i.sv = zext i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !118, !noalias !2730
  %i.sy = icmp eq i8 %i.sx, 125
  br i1 %i.sy, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.sz = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(56) %9) #26, !noalias !2730
  br i1 %i.sz, label %._crit_edge681.i165, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

._crit_edge681.i165:                              ; preds = %bb.co
  %.pre682.i166 = load ptr, ptr %i.rt, align 8, !tbaa !138, !noalias !2730
  %.pre683.i167 = load ptr, ptr %9, align 8, !tbaa !116, !noalias !2730
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge681.i165, %bb.cn, %bb.cl
  %i.ta = phi ptr [ %.pre683.i167, %._crit_edge681.i165 ], [ %i.pw, %bb.cn ], [ %i.pw, %bb.cl ]
  %i.tb = phi ptr [ %.pre682.i166, %._crit_edge681.i165 ], [ %i.sc, %bb.cn ], [ %i.sc, %bb.cl ] ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.td = icmp eq ptr %i.tb, %i.tc
  call void @llvm.assume(i1 %i.td), !noalias !2730
  %i.te = load i32, ptr %i.tb, align 4, !tbaa !117, !noalias !2730
  %i.tf = zext i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !118, !noalias !2730
  %i.ti = icmp eq i8 %i.th, 125
  br i1 %i.ti, label %bb.cq, label %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i161

bb.cq:                                            ; preds = %bb.cp
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  store ptr %i.tj, ptr %i.rt, align 8, !tbaa !119, !noalias !2730
  store i32 0, ptr %i.r, align 4, !tbaa !136, !noalias !2730
  br label %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i161

_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i161: ; preds = %bb.cq, %bb.cp
  store ptr %9, ptr %4, align 8, !tbaa !140
  %.sroa.019.sroa.4.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %.sroa.019.sroa.4.0..sroa_idx.i162, align 8, !tbaa !117
  %.sroa.019.sroa.5.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %.sroa.019.sroa.5.0..sroa_idx.i163, align 4
  %.sroa.019.sroa.6.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.x, ptr %.sroa.019.sroa.6.0..sroa_idx.i164, align 8, !tbaa !135
  %i.tk = call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl23generateViewsFromObjectILb0EEEN8simdjson10error_codeENS5_8fallback8ondemand6objectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::object") align 8 %4)
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19: ; preds = %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx
  %i.tl = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !117, !noalias !2731
  %i.tn = sub i32 %i.tm, %i.px
  %i.to = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !117, !noalias !2731
  %i.tq = sub i32 %i.tp, %i.px
  %..i.i88.i20 = call i32 @llvm.umin.i32(i32 %i.tn, i32 %i.tq)
  %i.tr = zext i32 %..i.i88.i20 to i64
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i91, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
  %.0.i101.i21 = phi i64 [ %i.tr, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19 ], [ %i.ts, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i91 ] ; 2 uses
  %i.ts = add i64 %.0.i101.i21, -1                ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !118 ; 2 uses
  %i.tv = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.tw = icmp eq i8 %i.tv, 0
  br i1 %i.tw, label %bb.cs, label %bb.ct, !prof !832

bb.cs:                                            ; preds = %bb.cr
  %i.tx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i105.i93 = icmp eq i32 %i.tx, 0
  br i1 %.not.i.i105.i93, label %bb.ct, label %.noexc.i.i94

.noexc.i.i94:                                     ; preds = %bb.cs
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.ty = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.ct

bb.ct:                                            ; preds = %.noexc.i.i94, %bb.cs, %bb.cr
  %i.tz = icmp ult i8 %i.tu, 33
  br i1 %i.tz, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i91, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i22

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i91: ; preds = %bb.ct
  %i.ua = zext nneg i8 %i.tu to i64
  %i.ub = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.uc = shl nuw nsw i64 1, %i.ua
  %i.ud = and i64 %i.ub, %i.uc
  %.not.i104.i92 = icmp eq i64 %i.ud, 0
  br i1 %.not.i104.i92, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i22, label %bb.cr, !llvm.loop !95

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i22: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i.i91, %bb.ct
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i101.i21, ptr nonnull %i.pz)
  %i.ue = load ptr, ptr %i.v, align 8, !tbaa !115, !noalias !2732 ; 5 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !117
  %i.uh = load i32, ptr %i.ue, align 4, !tbaa !117 ; 3 uses
  %i.ui = sub i32 %i.ug, %i.uh
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !117
  %i.ul = sub i32 %i.uk, %i.uh
  %..i.i23 = call i32 @llvm.umin.i32(i32 %i.ui, i32 %i.ul) ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !119 ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.ue
  br i1 %i.uo, label %bb.cu, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i24

bb.cu:                                            ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i22
  %i.up = load i32, ptr %i.un, align 4, !tbaa !117
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i24

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i24: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i22, %bb.cu
  %.sink747.i25 = phi i32 [ %i.up, %bb.cu ], [ %i.uh, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit.i22 ]
  %.sink.i26 = load ptr, ptr %9, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.uq = getelementptr inbounds nuw i8, ptr %i.a, i64 1083
  store i8 0, ptr %i.uq, align 1, !tbaa !118
  %i.ur = zext i32 %..i.i23 to i64                ; 3 uses
  %i.us = icmp ult i32 %..i.i23, 1084
  br i1 %i.us, label %bb.cv, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.cv:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i24
  %i.ut = zext i32 %.sink747.i25 to i64
  %i.uu = getelementptr inbounds nuw i8, ptr %.sink.i26, i64 %i.ut
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.uu, i64 %i.ur, i1 false)
  %.not645.i30 = icmp eq i32 %..i.i23, 1083
  br i1 %.not645.i30, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.uv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ur
  %i.uw = sub nuw nsw i64 1083, %i.ur
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.uv, i8 32, i64 %i.uw, i1 false)
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31: ; preds = %bb.cw, %bb.cv
  %i.ux = load i8, ptr %i.a, align 16, !tbaa !118
  %i.uy = icmp eq i8 %i.ux, 45                    ; 3 uses
  %.neg79.i.i.i32 = sext i1 %i.uy to i64
  %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.uy to i64
  %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %i.uz = load i8, ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !118
  %i.va = add i8 %i.uz, -48                       ; 2 uses
  %i.vb = icmp ult i8 %i.va, 10                   ; 3 uses
  %narrow.i35 = select i1 %i.vb, i8 %i.va, i8 0   ; 2 uses
  %spec.select.i36 = zext i8 %narrow.i35 to i64   ; 2 uses
  %i.vc = zext i1 %i.vb to i64                    ; 2 uses
  %i.vd = icmp eq i8 %narrow.i35, 0               ; 2 uses
  %.067.ptr.i.i651.i37 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.vc
  %i.ve = load i8, ptr %.067.ptr.i.i651.i37, align 1, !tbaa !118 ; 2 uses
  %i.vf = add i8 %i.ve, -48                       ; 2 uses
  %i.vg = icmp ult i8 %i.vf, 10
  br i1 %i.vg, label %.lr.ph.i84, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38

.lr.ph.i84:                                       ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31, %.lr.ph.i84
  %i.vh = phi i8 [ %i.vm, %.lr.ph.i84 ], [ %i.vf, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31 ]
  %.067.idx.i.i653.i85 = phi i64 [ %.067.add.i.i.i87, %.lr.ph.i84 ], [ %i.vc, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31 ] ; 2 uses
  %.1529652.i86 = phi i64 [ %i.vk, %.lr.ph.i84 ], [ %spec.select.i36, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31 ]
  %i.vi = mul i64 %.1529652.i86, 10
  %i.vj = zext nneg i8 %i.vh to i64
  %i.vk = add i64 %i.vi, %i.vj                    ; 2 uses
  %.067.add.i.i.i87 = add nuw nsw i64 %.067.idx.i.i653.i85, 1 ; 4 uses
  %.067.ptr.i.i.i88 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.i87
  %i.vl = load i8, ptr %.067.ptr.i.i.i88, align 1, !tbaa !118 ; 2 uses
  %i.vm = add i8 %i.vl, -48                       ; 2 uses
  %i.vn = icmp ult i8 %i.vm, 10
  br i1 %i.vn, label %.lr.ph.i84, label %bb.cx, !llvm.loop !1

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31
  br i1 %i.vb, label %.thread.i39, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.cx:                                            ; preds = %.lr.ph.i84
  %.not.i.i60.i89 = icmp ne i64 %.067.idx.i.i653.i85, 0
  %or.cond.i.i.not.i90 = and i1 %i.vd, %.not.i.i60.i89
  br i1 %or.cond.i.i.not.i90, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27, label %.thread.i39

.thread.i39:                                      ; preds = %bb.cx, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38
  %.067.idx.i.i.lcssa650712725.i40 = phi i64 [ %.067.add.i.i.i87, %bb.cx ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38 ]
  %.1529.lcssa713724.i41 = phi i64 [ %i.vk, %bb.cx ], [ %spec.select.i36, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38 ] ; 2 uses
  %.lcssa714723.i42 = phi i8 [ %i.vl, %bb.cx ], [ %i.ve, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38 ] ; 2 uses
  %.067.add.i.i.pn.i43 = phi i64 [ %.067.add.i.i.i87, %bb.cx ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38 ]
  %.067.ptr.i.i.le715722.i44 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.pn.i43 ; 3 uses
  %i.vo = icmp eq i8 %.lcssa714723.i42, 46
  br i1 %i.vo, label %bb.cy, label %bb.dd, !prof !142

bb.cy:                                            ; preds = %.thread.i39
  %i.vp = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le715722.i44, i64 1 ; 2 uses
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !118
  %i.vr = add i8 %i.vq, -48                       ; 2 uses
  %i.vs = icmp ult i8 %i.vr, 10
  br i1 %i.vs, label %bb.cz, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.cz:                                            ; preds = %bb.cy
  %i.vt = mul i64 %.1529.lcssa713724.i41, 10
  %i.vu = zext nneg i8 %i.vr to i64
  %i.vv = add i64 %i.vt, %i.vu                    ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le715722.i44, i64 2 ; 3 uses
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !118 ; 2 uses
  %i.vy = add i8 %i.vx, -48                       ; 2 uses
  %i.vz = icmp ult i8 %i.vy, 10
  br i1 %i.vz, label %.lr.ph659.i81, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74

.lr.ph659.i81:                                    ; preds = %bb.cz, %.lr.ph659.i81
  %i.wa = phi i8 [ %i.wg, %.lr.ph659.i81 ], [ %i.vy, %bb.cz ]
  %.168.i.i658.i82 = phi ptr [ %i.we, %.lr.ph659.i81 ], [ %i.vw, %bb.cz ]
  %.6657.i83 = phi i64 [ %i.wd, %.lr.ph659.i81 ], [ %i.vv, %bb.cz ]
  %i.wb = mul i64 %.6657.i83, 10
  %i.wc = zext nneg i8 %i.wa to i64
  %i.wd = add i64 %i.wb, %i.wc                    ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.168.i.i658.i82, i64 1 ; 3 uses
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !118 ; 2 uses
  %i.wg = add i8 %i.wf, -48                       ; 2 uses
  %i.wh = icmp ult i8 %i.wg, 10
  br i1 %i.wh, label %.lr.ph659.i81, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74, !llvm.loop !2

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74: ; preds = %.lr.ph659.i81, %bb.cz
  %i.wi = phi i8 [ %i.vx, %bb.cz ], [ %i.wf, %.lr.ph659.i81 ] ; 2 uses
  %.6.lcssa.i75 = phi i64 [ %i.vv, %bb.cz ], [ %i.wd, %.lr.ph659.i81 ] ; 2 uses
  %.168.i.i.lcssa.i76 = phi ptr [ %i.vw, %bb.cz ], [ %i.we, %.lr.ph659.i81 ] ; 3 uses
  %i.wj = ptrtoint ptr %.168.i.i.lcssa.i76 to i64 ; 3 uses
  %i.wk = ptrtoint ptr %i.vp to i64
  %.neg.i.i.i77 = sub i64 %i.wk, %i.wj            ; 2 uses
  %i.wl = ptrtoint ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.wm = sub i64 %i.wl, %i.wj
  %i.wn = icmp slt i64 %i.wm, -20                 ; 2 uses
  %i.wo = and i1 %i.vd, %i.wn
  br i1 %i.wo, label %bb.da, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45, !prof !143

bb.da:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i78.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.uy, i64 3, i64 2
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i78.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.i78.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.0.i.i61.i80 = phi ptr [ %.sroa.sel.sroa.sel.v.sroa.sel.v.i78.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.da ], [ %i.wr, %bb.db ] ; 3 uses
  %i.wp = load i8, ptr %.0.i.i61.i80, align 1, !tbaa !118
  %i.wq = icmp eq i8 %i.wp, 48
  %i.wr = getelementptr inbounds nuw i8, ptr %.0.i.i61.i80, i64 1
  br i1 %i.wq, label %bb.db, label %bb.dc, !llvm.loop !3

bb.dc:                                            ; preds = %bb.db
  %i.ws = ptrtoint ptr %.0.i.i61.i80 to i64
  %i.wt = sub i64 %i.wj, %i.ws
  %i.wu = icmp sgt i64 %i.wt, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45

bb.dd:                                            ; preds = %.thread.i39
  %i.wv = icmp samesign ugt i64 %.067.idx.i.i.lcssa650712725.i40, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45: ; preds = %bb.dd, %bb.dc, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74
  %i.ww = phi i8 [ %.lcssa714723.i42, %bb.dd ], [ %i.wi, %bb.dc ], [ %i.wi, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ] ; 2 uses
  %.3.i46 = phi i64 [ %.1529.lcssa713724.i41, %bb.dd ], [ %.6.lcssa.i75, %bb.dc ], [ %.6.lcssa.i75, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ] ; 4 uses
  %.370.i.i.i47 = phi ptr [ %.067.ptr.i.i.le715722.i44, %bb.dd ], [ %.168.i.i.lcssa.i76, %bb.dc ], [ %.168.i.i.lcssa.i76, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ] ; 2 uses
  %.163.i.i.i48 = phi i64 [ 0, %bb.dd ], [ %.neg.i.i.i77, %bb.dc ], [ %.neg.i.i.i77, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ] ; 2 uses
  %.2.i.i.i49 = phi i1 [ %i.wv, %bb.dd ], [ %i.wu, %bb.dc ], [ %i.wn, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ]
  switch i8 %i.ww, label %bb.dg [
    i8 101, label %bb.de
    i8 69, label %bb.de
  ]

bb.de:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45
  %i.wx = getelementptr inbounds nuw i8, ptr %.370.i.i.i47, i64 1 ; 2 uses
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !118 ; 2 uses
  %i.wz = icmp eq i8 %i.wy, 45                    ; 2 uses
  %i.xa = icmp eq i8 %i.wy, 43
  %narrow646.i50 = or i1 %i.wz, %i.xa
  %.sroa.gep675.i51 = getelementptr inbounds nuw i8, ptr %.370.i.i.i47, i64 2
  %.sroa.sel.i52 = select i1 %narrow646.i50, ptr %.sroa.gep675.i51, ptr %i.wx ; 3 uses
  %i.xb = load i8, ptr %.sroa.sel.i52, align 1, !tbaa !118
  %i.xc = add i8 %i.xb, -48                       ; 2 uses
  %i.xd = icmp ult i8 %i.xc, 10
  br i1 %i.xd, label %.lr.ph664.i53, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

.lr.ph664.i53:                                    ; preds = %bb.de, %.lr.ph664.i53
  %i.xe = phi i8 [ %i.xk, %.lr.ph664.i53 ], [ %i.xc, %bb.de ]
  %.4.i.i663.i54 = phi ptr [ %i.xi, %.lr.ph664.i53 ], [ %.sroa.sel.i52, %bb.de ]
  %.0532662.i55 = phi i64 [ %i.xh, %.lr.ph664.i53 ], [ 0, %bb.de ]
  %i.xf = mul i64 %.0532662.i55, 10
  %i.xg = zext nneg i8 %i.xe to i64
  %i.xh = add i64 %i.xf, %i.xg                    ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.4.i.i663.i54, i64 1 ; 3 uses
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !118 ; 2 uses
  %i.xk = add i8 %i.xj, -48                       ; 2 uses
  %i.xl = icmp ult i8 %i.xk, 10
  br i1 %i.xl, label %.lr.ph664.i53, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56, !llvm.loop !4

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56: ; preds = %.lr.ph664.i53
  %i.xm = ptrtoint ptr %.sroa.sel.i52 to i64
  %i.xn = ptrtoint ptr %i.xi to i64
  %i.xo = sub i64 %i.xn, %i.xm
  %i.xp = icmp sgt i64 %i.xo, 19
  br i1 %i.xp, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27, label %bb.df

bb.df:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56
  %i.xq = sub i64 0, %i.xh
  %i.xr = select i1 %i.wz, i64 %i.xq, i64 %i.xh
  %i.xs = add i64 %i.xr, %.163.i.i.i48
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45
  %i.xt = phi i8 [ %i.xj, %bb.df ], [ %i.ww, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45 ]
  %.3.i.i.i57 = phi i64 [ %i.xs, %bb.df ], [ %.163.i.i.i48, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45 ] ; 5 uses
  %i.xu = zext i8 %i.xt to i64
  %i.xv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.xu
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !144, !range !121, !noundef !122
  %.not76.i.i.i58 = icmp eq i8 %i.xw, 0
  br i1 %.not76.i.i.i58, label %bb.dh, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.dh:                                            ; preds = %bb.dg
  %i.xx = add i64 %.3.i.i.i57, -309
  %i.xy = icmp ult i64 %i.xx, -651
  %.not78.i.i.i59 = select i1 %.2.i.i.i49, i1 true, i1 %i.xy
  br i1 %.not78.i.i.i59, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i70, label %bb.di, !prof !143

bb.di:                                            ; preds = %bb.dh
  %i.xz = add nsw i64 %.3.i.i.i57, 22
  %or.cond.i7.i.i60 = icmp ult i64 %i.xz, 45
  %i.ya = icmp ult i64 %.3.i46, 9007199254740992
  %or.cond3.i.i.i61 = and i1 %i.ya, %or.cond.i7.i.i60
  %i.yb = icmp eq i64 %.3.i46, 0
  %or.cond.i62 = or i1 %i.yb, %or.cond3.i.i.i61
  br i1 %or.cond.i62, label %bb.dp, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.yc = mul nsw i64 %.3.i.i.i57, 217706
  %i.yd = ashr i64 %i.yc, 16
  %i.ye = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.3.i46, i1 true) ; 2 uses
  %i.yf = shl i64 %.3.i46, %i.ye                  ; 2 uses
  %i.yg = trunc nsw i64 %.3.i.i.i57 to i32
  %i.yh = shl nsw i32 %i.yg, 1
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.yi ; 2 uses
  %i.yk = getelementptr i8, ptr %i.yj, i64 5472
  %i.yl = load i64, ptr %i.yk, align 8, !tbaa !145
  %i.ym = zext i64 %i.yf to i128
  %i.yn = zext i64 %i.yl to i128
  %i.yo = mul nuw i128 %i.yn, %i.ym               ; 2 uses
  %i.yp = trunc i128 %i.yo to i64                 ; 2 uses
  %i.yq = lshr i128 %i.yo, 64
  %i.yr = trunc nuw i128 %i.yq to i64             ; 3 uses
  %i.ys = and i64 %i.yr, 511
  %i.yt = icmp eq i64 %i.ys, 511
  br i1 %i.yt, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.yu = getelementptr i8, ptr %i.yj, i64 5480
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !145
  %i.yw = call i64 @llvm.umulh.i64(i64 %i.yf, i64 %i.yv) ; 2 uses
  %i.yx = add i64 %i.yw, %i.yp                    ; 2 uses
  %i.yy = icmp ugt i64 %i.yw, %i.yx
  %i.yz = zext i1 %i.yy to i64
  %spec.select.i.i.i73 = add nuw i64 %i.yz, %i.yr
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sroa.7.1.i.i.i63 = phi i64 [ %spec.select.i.i.i73, %bb.dk ], [ %i.yr, %bb.dj ] ; 3 uses
  %.sroa.037.0.i.i.i64 = phi i64 [ %i.yx, %bb.dk ], [ %i.yp, %bb.dj ]
  %i.za = lshr i64 %.sroa.7.1.i.i.i63, 63         ; 2 uses
  %i.zb = add nuw nsw i64 %i.za, 9                ; 2 uses
  %i.zc = lshr i64 %.sroa.7.1.i.i.i63, %i.zb      ; 5 uses
  %reass.sub.i65 = sub nsw i64 %i.yd, %i.ye
  %.neg667.i66 = add nsw i64 %i.za, %reass.sub.i65 ; 2 uses
  %i.zd = add nsw i64 %.neg667.i66, 1086
  %i.ze = icmp slt i64 %.neg667.i66, -1085
  br i1 %i.ze, label %bb.dp, label %bb.dm, !prof !143

bb.dm:                                            ; preds = %bb.dl
  %i.zf = icmp ult i64 %.sroa.037.0.i.i.i64, 2
  %i.zg = add nsw i64 %.3.i.i.i57, 4
  %i.zh = icmp ult i64 %i.zg, 28
  %or.cond7.i.i.i67 = and i1 %i.zh, %i.zf
  %i.zi = and i64 %i.zc, 3
  %i.zj = icmp eq i64 %i.zi, 1
  %i.zk = select i1 %or.cond7.i.i.i67, i1 %i.zj, i1 false
  br i1 %i.zk, label %bb.dn, label %bb.do, !prof !143

bb.dn:                                            ; preds = %bb.dm
  %i.zl = shl i64 %i.zc, %i.zb
  %i.zm = icmp eq i64 %i.zl, %.sroa.7.1.i.i.i63
  %i.zn = and i64 %i.zc, 72057594037927932
  %spec.select90.i.i.i72 = select i1 %i.zm, i64 %i.zn, i64 %i.zc
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.j, align 8, !tbaa !119, !noalias !2802
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.w = phi i32 [ %i.n, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
  %i.x = phi ptr [ %i.v, %bb.d ], [ %i.k, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = icmp eq ptr %i.x, %i.y
  tail call void @llvm.assume(i1 %i.z), !noalias !2802
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ab = icmp sgt i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.ab), !noalias !2802
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !117, !noalias !2802
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !118, !noalias !2802
  %i.ag = icmp eq i8 %i.af, 93
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !119, !noalias !2802
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.sink = phi i32 [ -1, %bb.e ], [ 1, %._crit_edge ]
  %i.ai = add nsw i32 %i.w, %.sink
  store i32 %i.ai, ptr %i.aa, align 4, !tbaa !136, !noalias !2802
  %.sroa.0166.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0166.sroa.5.0.copyload = load i32, ptr %.sroa.0166.sroa.5.0..sroa_idx, align 4, !noalias !2802
  store ptr %i.a, ptr %2, align 8, !tbaa !140
  %.sroa.023.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.w, ptr %.sroa.023.sroa.4.0..sroa_idx, align 8, !tbaa !117
  %.sroa.023.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.sroa.0166.sroa.5.0.copyload, ptr %.sroa.023.sroa.5.0..sroa_idx, align 4
  %.sroa.023.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %.sroa.023.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.aj = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl22generateViewsFromArrayILb1EEEN8simdjson10error_codeENS5_8fallback8ondemand5arrayE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::array") align 8 %2)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119, !noalias !2803 ; 4 uses
  %i.an = icmp eq ptr %i.am, %i.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !136, !noalias !2803 ; 3 uses
  %i.aq = load i32, ptr %i.ak, align 8, !tbaa !226, !noalias !2803 ; 2 uses
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.an, label %bb.h, label %._crit_edge465

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.ar), !noalias !2803
  %i.as = icmp sgt i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.as), !noalias !2803
  %i.at = load i32, ptr %i.am, align 4, !tbaa !117, !noalias !2803
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !118, !noalias !2803
  %.not8.i.i43 = icmp eq i8 %i.aw, 123
  br i1 %.not8.i.i43, label %bb.i, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store ptr %i.ax, ptr %i.al, align 8, !tbaa !119, !noalias !2803
  br label %._crit_edge465

._crit_edge465:                                   ; preds = %bb.g, %bb.i
  %i.ay = phi i32 [ %i.ap, %bb.i ], [ %i.aq, %bb.g ] ; 4 uses
  %i.az = phi ptr [ %i.ax, %bb.i ], [ %i.am, %bb.g ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bb = icmp eq ptr %i.az, %i.ba
  tail call void @llvm.assume(i1 %i.bb), !noalias !2803
  %i.bc = icmp sgt i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.bc), !noalias !2803
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !117, !noalias !2803
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !118, !noalias !2803
  %i.bh = icmp eq i8 %i.bg, 125
  br i1 %i.bh, label %bb.j, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

bb.j:                                             ; preds = %._crit_edge465
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bj, ptr %i.al, align 8, !tbaa !119, !noalias !2803
  %i.bk = add nsw i32 %i.ay, -1
  %or.cond.i.i44 = icmp ne i32 %i.ay, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i44), !noalias !2803
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !136, !noalias !2803
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread: ; preds = %._crit_edge465, %bb.j
  %.sroa.0193.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0193.sroa.5.0.copyload = load i32, ptr %.sroa.0193.sroa.5.0..sroa_idx, align 4
  store ptr %i.a, ptr %3, align 8, !tbaa !140
  %.sroa.019.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ay, ptr %.sroa.019.sroa.4.0..sroa_idx, align 8, !tbaa !117
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.0193.sroa.5.0.copyload, ptr %.sroa.019.sroa.5.0..sroa_idx, align 4
  %.sroa.019.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %.sroa.019.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.bl = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl23generateViewsFromObjectILb1EEEN8simdjson10error_codeENS5_8fallback8ondemand6objectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::object") align 8 %3)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !117
  %i.bp = sub i32 %i.bo, %i.e
  %i.bq = zext i32 %i.bp to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i, %bb.k
  %.0.i110 = phi i64 [ %i.bq, %bb.k ], [ %i.br, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i ] ; 2 uses
  %i.br = add i64 %.0.i110, -1                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !118 ; 2 uses
  %i.bu = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.n, !prof !832

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i114 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i114, label %bb.n, label %.noexc.i

.noexc.i:                                         ; preds = %bb.m
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.bx = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i, %bb.m, %bb.l
  %i.by = icmp ult i8 %i.bt, 33
  br i1 %i.by, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i: ; preds = %bb.n
  %i.bz = zext nneg i8 %i.bt to i64
  %i.ca = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.cb = shl nuw nsw i64 1, %i.bz
  %i.cc = and i64 %i.ca, %i.cb
  %.not.i113 = icmp eq i64 %i.cc, 0
  br i1 %.not.i113, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.l, !llvm.loop !95

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.n, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 %.0.i110, ptr nonnull %i.g)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %1, align 8, !tbaa !224   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !119 ; 5 uses
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !225 ; 3 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  %spec.select549 = select i1 %i.ci, ptr %i.cg, ptr %i.ch
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !116
  %i.ck = load i32, ptr %spec.select549, align 4, !tbaa !117
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !118
  %i.co = icmp eq i8 %i.cn, 45                    ; 2 uses
  %.neg79.i = sext i1 %i.co to i64
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp ; 7 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !118
  %i.cs = add i8 %i.cr, -48                       ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 10                   ; 3 uses
  %narrow = select i1 %i.ct, i8 %i.cs, i8 0       ; 2 uses
  %spec.select = zext i8 %narrow to i64           ; 2 uses
  %i.cu = zext i1 %i.ct to i64                    ; 3 uses
  %i.cv = icmp eq i8 %narrow, 0                   ; 2 uses
  %.067.ptr.i439 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cu
  %i.cw = load i8, ptr %.067.ptr.i439, align 1, !tbaa !118 ; 2 uses
  %i.cx = add i8 %i.cw, -48                       ; 2 uses
  %i.cy = icmp ult i8 %i.cx, 10
  br i1 %i.cy, label %.lr.ph, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55

.lr.ph:                                           ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.lr.ph
  %i.cz = phi i8 [ %i.de, %.lr.ph ], [ %i.cx, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.067.idx.i441 = phi i64 [ %.067.add.i, %.lr.ph ], [ %i.cu, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %.0324440 = phi i64 [ %i.dc, %.lr.ph ], [ %spec.select, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.da = mul i64 %.0324440, 10
  %i.db = zext nneg i8 %i.cz to i64
  %i.dc = add i64 %i.da, %i.db                    ; 2 uses
  %.067.add.i = add nuw nsw i64 %.067.idx.i441, 1 ; 4 uses
  %.067.ptr.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.067.add.i
  %i.dd = load i8, ptr %.067.ptr.i, align 1, !tbaa !118 ; 2 uses
  %i.de = add i8 %i.dd, -48                       ; 2 uses
  %i.df = icmp ult i8 %i.de, 10
  br i1 %i.df, label %.lr.ph, label %bb.o, !llvm.loop !1

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit
  br i1 %i.ct, label %.thread, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.o:                                             ; preds = %.lr.ph
  %.not.i45 = icmp ne i64 %.067.idx.i441, 0
  %or.cond.i.not = and i1 %i.cv, %.not.i45
  br i1 %or.cond.i.not, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.thread

.thread:                                          ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55, %bb.o
  %.067.idx.i.lcssa438502515 = phi i64 [ %.067.add.i, %bb.o ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ]
  %.0324.lcssa503514 = phi i64 [ %i.dc, %bb.o ], [ %spec.select, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ] ; 2 uses
  %.lcssa504513 = phi i8 [ %i.dd, %bb.o ], [ %i.cw, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ] ; 2 uses
  %.067.add.i.pn = phi i64 [ %.067.add.i, %bb.o ], [ %i.cu, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ]
  %.067.ptr.i.le505512 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.067.add.i.pn ; 3 uses
  %i.dg = icmp eq i8 %.lcssa504513, 46
  br i1 %i.dg, label %bb.p, label %bb.u, !prof !142

bb.p:                                             ; preds = %.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le505512, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !118
  %i.dj = add i8 %i.di, -48                       ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.q, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.q:                                             ; preds = %bb.p
  %i.dl = mul i64 %.0324.lcssa503514, 10
  %i.dm = zext nneg i8 %i.dj to i64
  %i.dn = add i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le505512, i64 2 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !118 ; 2 uses
  %i.dq = add i8 %i.dp, -48                       ; 2 uses
  %i.dr = icmp ult i8 %i.dq, 10
  br i1 %i.dr, label %.lr.ph447, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit

.lr.ph447:                                        ; preds = %bb.q, %.lr.ph447
  %i.ds = phi i8 [ %i.dy, %.lr.ph447 ], [ %i.dq, %bb.q ]
  %.168.i446 = phi ptr [ %i.dw, %.lr.ph447 ], [ %i.do, %bb.q ]
  %.3445 = phi i64 [ %i.dv, %.lr.ph447 ], [ %i.dn, %bb.q ]
  %i.dt = mul i64 %.3445, 10
  %i.du = zext nneg i8 %i.ds to i64
  %i.dv = add i64 %i.dt, %i.du                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.168.i446, i64 1 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !118 ; 2 uses
  %i.dy = add i8 %i.dx, -48                       ; 2 uses
  %i.dz = icmp ult i8 %i.dy, 10
  br i1 %i.dz, label %.lr.ph447, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, !llvm.loop !2

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit: ; preds = %.lr.ph447, %bb.q
  %i.ea = phi i8 [ %i.dp, %bb.q ], [ %i.dx, %.lr.ph447 ] ; 2 uses
  %.3.lcssa = phi i64 [ %i.dn, %bb.q ], [ %i.dv, %.lr.ph447 ] ; 2 uses
  %.168.i.lcssa = phi ptr [ %i.do, %bb.q ], [ %i.dw, %.lr.ph447 ] ; 3 uses
  %i.eb = ptrtoint ptr %.168.i.lcssa to i64       ; 3 uses
  %i.ec = ptrtoint ptr %i.dh to i64
  %.neg.i = sub i64 %i.ec, %i.eb                  ; 2 uses
  %i.ed = ptrtoint ptr %i.cq to i64
  %i.ee = sub i64 %i.ed, %i.eb
  %i.ef = icmp slt i64 %i.ee, -20                 ; 2 uses
  %i.eg = and i1 %i.ef, %i.cv
  br i1 %i.eg, label %bb.r, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53, !prof !143

bb.r:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.i = phi ptr [ %i.eh, %bb.r ], [ %i.ek, %bb.s ] ; 3 uses
  %i.ei = load i8, ptr %.0.i, align 1, !tbaa !118
  %i.ej = icmp eq i8 %i.ei, 48
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %i.ej, label %bb.s, label %bb.t, !llvm.loop !3

bb.t:                                             ; preds = %bb.s
  %i.el = ptrtoint ptr %.0.i to i64
  %i.em = sub i64 %i.eb, %i.el
  %i.en = icmp sgt i64 %i.em, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53

bb.u:                                             ; preds = %.thread
  %i.eo = icmp samesign ugt i64 %.067.idx.i.lcssa438502515, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %bb.t, %bb.u
  %i.ep = phi i8 [ %.lcssa504513, %bb.u ], [ %i.ea, %bb.t ], [ %i.ea, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ] ; 2 uses
  %.1325 = phi i64 [ %.0324.lcssa503514, %bb.u ], [ %.3.lcssa, %bb.t ], [ %.3.lcssa, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ] ; 4 uses
  %.370.i = phi ptr [ %.067.ptr.i.le505512, %bb.u ], [ %.168.i.lcssa, %bb.t ], [ %.168.i.lcssa, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ]
  %.163.i = phi i64 [ 0, %bb.u ], [ %.neg.i, %bb.t ], [ %.neg.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ] ; 2 uses
  %.2.i = phi i1 [ %i.eo, %bb.u ], [ %i.en, %bb.t ], [ %i.ef, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ]
  switch i8 %i.ep, label %bb.x [
    i8 101, label %bb.v
    i8 69, label %bb.v
  ]

bb.v:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53
  %i.eq = getelementptr inbounds nuw i8, ptr %.370.i, i64 1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !118 ; 2 uses
  %i.es = icmp eq i8 %i.er, 45                    ; 2 uses
  %i.et = icmp eq i8 %i.er, 43
  %narrow433 = or i1 %i.es, %i.et
  %i.eu = zext i1 %narrow433 to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eu ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !118
  %i.ex = add i8 %i.ew, -48                       ; 2 uses
  %i.ey = icmp ult i8 %i.ex, 10
  br i1 %i.ey, label %.lr.ph452, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

.lr.ph452:                                        ; preds = %bb.v, %.lr.ph452
  %i.ez = phi i8 [ %i.ff, %.lr.ph452 ], [ %i.ex, %bb.v ]
  %.4.i451 = phi ptr [ %i.fd, %.lr.ph452 ], [ %i.ev, %bb.v ]
  %.0328450 = phi i64 [ %i.fc, %.lr.ph452 ], [ 0, %bb.v ]
  %i.fa = mul i64 %.0328450, 10
  %i.fb = zext nneg i8 %i.ez to i64
  %i.fc = add i64 %i.fa, %i.fb                    ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.4.i451, i64 1 ; 3 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !118 ; 2 uses
  %i.ff = add i8 %i.fe, -48                       ; 2 uses
  %i.fg = icmp ult i8 %i.ff, 10
  br i1 %i.fg, label %.lr.ph452, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54, !llvm.loop !4

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54: ; preds = %.lr.ph452
  %i.fh = ptrtoint ptr %i.ev to i64
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = sub i64 %i.fi, %i.fh
  %i.fk = icmp sgt i64 %i.fj, 19
  br i1 %i.fk, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54
  %i.fl = sub i64 0, %i.fc
  %i.fm = select i1 %i.es, i64 %i.fl, i64 %i.fc
  %i.fn = add i64 %i.fm, %.163.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53
  %i.fo = phi i8 [ %i.fe, %bb.w ], [ %i.ep, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53 ]
  %.3.i = phi i64 [ %i.fn, %bb.w ], [ %.163.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53 ] ; 5 uses
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !144, !range !121, !noundef !122
  %.not76.i = icmp eq i8 %i.fr, 0
  br i1 %.not76.i, label %bb.y, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.y:                                             ; preds = %bb.x
  %i.fs = add i64 %.3.i, -309
  %i.ft = icmp ult i64 %i.fs, -651
  %.not78.i = select i1 %.2.i, i1 true, i1 %i.ft
  br i1 %.not78.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.z, !prof !143

bb.z:                                             ; preds = %bb.y
  %i.fu = add nsw i64 %.3.i, 22
  %or.cond.i57 = icmp ult i64 %i.fu, 45
  %i.fv = icmp ult i64 %.1325, 9007199254740992
  %or.cond3.i = and i1 %i.fv, %or.cond.i57
  %i.fw = icmp eq i64 %.1325, 0
  %or.cond = or i1 %i.fw, %or.cond3.i
  br i1 %or.cond, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = mul nsw i64 %.3.i, 217706
  %i.fy = ashr i64 %i.fx, 16
  %i.fz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1325, i1 true) ; 2 uses
  %i.ga = shl i64 %.1325, %i.fz                   ; 2 uses
  %i.gb = trunc nsw i64 %.3.i to i32
  %i.gc = shl nsw i32 %i.gb, 1
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.gd ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 5472
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !145
  %i.gh = zext i64 %i.ga to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = trunc i128 %i.gj to i64                 ; 2 uses
  %i.gl = lshr i128 %i.gj, 64
  %i.gm = trunc nuw i128 %i.gl to i64             ; 3 uses
  %i.gn = and i64 %i.gm, 511
  %i.go = icmp eq i64 %i.gn, 511
  br i1 %i.go, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gp = getelementptr i8, ptr %i.ge, i64 5480
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !145
  %i.gr = tail call i64 @llvm.umulh.i64(i64 %i.ga, i64 %i.gq) ; 2 uses
  %i.gs = add i64 %i.gr, %i.gk                    ; 2 uses
  %i.gt = icmp ugt i64 %i.gr, %i.gs
  %i.gu = zext i1 %i.gt to i64
  %spec.select.i = add nuw i64 %i.gu, %i.gm
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %bb.ab ], [ %i.gm, %bb.aa ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.gs, %bb.ab ], [ %i.gk, %bb.aa ]
  %i.gv = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.gw = add nuw nsw i64 %i.gv, 9                ; 2 uses
  %i.gx = lshr i64 %.sroa.7.1.i, %i.gw            ; 5 uses
  %reass.sub = sub nsw i64 %i.fy, %i.fz
  %.neg455 = add nsw i64 %reass.sub, %i.gv        ; 2 uses
  %i.gy = add nsw i64 %.neg455, 1086
  %i.gz = icmp slt i64 %.neg455, -1085
  br i1 %i.gz, label %bb.ag, label %bb.ad, !prof !143

bb.ad:                                            ; preds = %bb.ac
  %i.ha = icmp ult i64 %.sroa.037.0.i, 2
  %i.hb = add nsw i64 %.3.i, 4
  %i.hc = icmp ult i64 %i.hb, 28
  %or.cond7.i = and i1 %i.hc, %i.ha
  %i.hd = and i64 %i.gx, 3
  %i.he = icmp eq i64 %i.hd, 1
  %i.hf = select i1 %or.cond7.i, i1 %i.he, i1 false
  br i1 %i.hf, label %bb.ae, label %bb.af, !prof !143

bb.ae:                                            ; preds = %bb.ad
  %i.hg = shl i64 %i.gx, %i.gw
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.j, align 8, !tbaa !119, !noalias !2883
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.w = phi i32 [ %i.n, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
  %i.x = phi ptr [ %i.v, %bb.d ], [ %i.k, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = icmp eq ptr %i.x, %i.y
  tail call void @llvm.assume(i1 %i.z), !noalias !2883
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ab = icmp sgt i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.ab), !noalias !2883
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !117, !noalias !2883
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !118, !noalias !2883
  %i.ag = icmp eq i8 %i.af, 93
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !119, !noalias !2883
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.sink = phi i32 [ -1, %bb.e ], [ 1, %._crit_edge ]
  %i.ai = add nsw i32 %i.w, %.sink
  store i32 %i.ai, ptr %i.aa, align 4, !tbaa !136, !noalias !2883
  %.sroa.0166.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0166.sroa.5.0.copyload = load i32, ptr %.sroa.0166.sroa.5.0..sroa_idx, align 4, !noalias !2883
  store ptr %i.a, ptr %2, align 8, !tbaa !140
  %.sroa.023.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.w, ptr %.sroa.023.sroa.4.0..sroa_idx, align 8, !tbaa !117
  %.sroa.023.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.sroa.0166.sroa.5.0.copyload, ptr %.sroa.023.sroa.5.0..sroa_idx, align 4
  %.sroa.023.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %.sroa.023.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.aj = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl22generateViewsFromArrayILb0EEEN8simdjson10error_codeENS5_8fallback8ondemand5arrayE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::array") align 8 %2)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119, !noalias !2884 ; 4 uses
  %i.an = icmp eq ptr %i.am, %i.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !136, !noalias !2884 ; 3 uses
  %i.aq = load i32, ptr %i.ak, align 8, !tbaa !226, !noalias !2884 ; 2 uses
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.an, label %bb.h, label %._crit_edge465

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.ar), !noalias !2884
  %i.as = icmp sgt i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.as), !noalias !2884
  %i.at = load i32, ptr %i.am, align 4, !tbaa !117, !noalias !2884
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !118, !noalias !2884
  %.not8.i.i43 = icmp eq i8 %i.aw, 123
  br i1 %.not8.i.i43, label %bb.i, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store ptr %i.ax, ptr %i.al, align 8, !tbaa !119, !noalias !2884
  br label %._crit_edge465

._crit_edge465:                                   ; preds = %bb.g, %bb.i
  %i.ay = phi i32 [ %i.ap, %bb.i ], [ %i.aq, %bb.g ] ; 4 uses
  %i.az = phi ptr [ %i.ax, %bb.i ], [ %i.am, %bb.g ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bb = icmp eq ptr %i.az, %i.ba
  tail call void @llvm.assume(i1 %i.bb), !noalias !2884
  %i.bc = icmp sgt i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.bc), !noalias !2884
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !117, !noalias !2884
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !118, !noalias !2884
  %i.bh = icmp eq i8 %i.bg, 125
  br i1 %i.bh, label %bb.j, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

bb.j:                                             ; preds = %._crit_edge465
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bj, ptr %i.al, align 8, !tbaa !119, !noalias !2884
  %i.bk = add nsw i32 %i.ay, -1
  %or.cond.i.i44 = icmp ne i32 %i.ay, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i44), !noalias !2884
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !136, !noalias !2884
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread: ; preds = %._crit_edge465, %bb.j
  %.sroa.0193.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0193.sroa.5.0.copyload = load i32, ptr %.sroa.0193.sroa.5.0..sroa_idx, align 4
  store ptr %i.a, ptr %3, align 8, !tbaa !140
  %.sroa.019.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ay, ptr %.sroa.019.sroa.4.0..sroa_idx, align 8, !tbaa !117
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.0193.sroa.5.0.copyload, ptr %.sroa.019.sroa.5.0..sroa_idx, align 4
  %.sroa.019.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %.sroa.019.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.bl = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl23generateViewsFromObjectILb0EEEN8simdjson10error_codeENS5_8fallback8ondemand6objectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::object") align 8 %3)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !117
  %i.bp = sub i32 %i.bo, %i.e
  %i.bq = zext i32 %i.bp to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i, %bb.k
  %.0.i110 = phi i64 [ %i.bq, %bb.k ], [ %i.br, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i ] ; 2 uses
  %i.br = add i64 %.0.i110, -1                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !118 ; 2 uses
  %i.bu = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.n, !prof !832

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i114 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i114, label %bb.n, label %.noexc.i

.noexc.i:                                         ; preds = %bb.m
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.bx = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i, %bb.m, %bb.l
  %i.by = icmp ult i8 %i.bt, 33
  br i1 %i.by, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i: ; preds = %bb.n
  %i.bz = zext nneg i8 %i.bt to i64
  %i.ca = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.cb = shl nuw nsw i64 1, %i.bz
  %i.cc = and i64 %i.ca, %i.cb
  %.not.i113 = icmp eq i64 %i.cc, 0
  br i1 %.not.i113, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.l, !llvm.loop !95

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.n, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 %.0.i110, ptr nonnull %i.g)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %1, align 8, !tbaa !224   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !119 ; 5 uses
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !225 ; 3 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  %spec.select549 = select i1 %i.ci, ptr %i.cg, ptr %i.ch
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !116
  %i.ck = load i32, ptr %spec.select549, align 4, !tbaa !117
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !118
  %i.co = icmp eq i8 %i.cn, 45                    ; 2 uses
  %.neg79.i = sext i1 %i.co to i64
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp ; 7 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !118
  %i.cs = add i8 %i.cr, -48                       ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 10                   ; 3 uses
  %narrow = select i1 %i.ct, i8 %i.cs, i8 0       ; 2 uses
  %spec.select = zext i8 %narrow to i64           ; 2 uses
  %i.cu = zext i1 %i.ct to i64                    ; 3 uses
  %i.cv = icmp eq i8 %narrow, 0                   ; 2 uses
  %.067.ptr.i439 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cu
  %i.cw = load i8, ptr %.067.ptr.i439, align 1, !tbaa !118 ; 2 uses
  %i.cx = add i8 %i.cw, -48                       ; 2 uses
  %i.cy = icmp ult i8 %i.cx, 10
  br i1 %i.cy, label %.lr.ph, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55

.lr.ph:                                           ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.lr.ph
  %i.cz = phi i8 [ %i.de, %.lr.ph ], [ %i.cx, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.067.idx.i441 = phi i64 [ %.067.add.i, %.lr.ph ], [ %i.cu, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %.0324440 = phi i64 [ %i.dc, %.lr.ph ], [ %spec.select, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.da = mul i64 %.0324440, 10
  %i.db = zext nneg i8 %i.cz to i64
  %i.dc = add i64 %i.da, %i.db                    ; 2 uses
  %.067.add.i = add nuw nsw i64 %.067.idx.i441, 1 ; 4 uses
  %.067.ptr.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.067.add.i
  %i.dd = load i8, ptr %.067.ptr.i, align 1, !tbaa !118 ; 2 uses
  %i.de = add i8 %i.dd, -48                       ; 2 uses
  %i.df = icmp ult i8 %i.de, 10
  br i1 %i.df, label %.lr.ph, label %bb.o, !llvm.loop !1

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit
  br i1 %i.ct, label %.thread, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.o:                                             ; preds = %.lr.ph
  %.not.i45 = icmp ne i64 %.067.idx.i441, 0
  %or.cond.i.not = and i1 %i.cv, %.not.i45
  br i1 %or.cond.i.not, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.thread

.thread:                                          ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55, %bb.o
  %.067.idx.i.lcssa438502515 = phi i64 [ %.067.add.i, %bb.o ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ]
  %.0324.lcssa503514 = phi i64 [ %i.dc, %bb.o ], [ %spec.select, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ] ; 2 uses
  %.lcssa504513 = phi i8 [ %i.dd, %bb.o ], [ %i.cw, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ] ; 2 uses
  %.067.add.i.pn = phi i64 [ %.067.add.i, %bb.o ], [ %i.cu, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ]
  %.067.ptr.i.le505512 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.067.add.i.pn ; 3 uses
  %i.dg = icmp eq i8 %.lcssa504513, 46
  br i1 %i.dg, label %bb.p, label %bb.u, !prof !142

bb.p:                                             ; preds = %.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le505512, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !118
  %i.dj = add i8 %i.di, -48                       ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.q, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.q:                                             ; preds = %bb.p
  %i.dl = mul i64 %.0324.lcssa503514, 10
  %i.dm = zext nneg i8 %i.dj to i64
  %i.dn = add i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le505512, i64 2 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !118 ; 2 uses
  %i.dq = add i8 %i.dp, -48                       ; 2 uses
  %i.dr = icmp ult i8 %i.dq, 10
  br i1 %i.dr, label %.lr.ph447, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit

.lr.ph447:                                        ; preds = %bb.q, %.lr.ph447
  %i.ds = phi i8 [ %i.dy, %.lr.ph447 ], [ %i.dq, %bb.q ]
  %.168.i446 = phi ptr [ %i.dw, %.lr.ph447 ], [ %i.do, %bb.q ]
  %.3445 = phi i64 [ %i.dv, %.lr.ph447 ], [ %i.dn, %bb.q ]
  %i.dt = mul i64 %.3445, 10
  %i.du = zext nneg i8 %i.ds to i64
  %i.dv = add i64 %i.dt, %i.du                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.168.i446, i64 1 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !118 ; 2 uses
  %i.dy = add i8 %i.dx, -48                       ; 2 uses
  %i.dz = icmp ult i8 %i.dy, 10
  br i1 %i.dz, label %.lr.ph447, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, !llvm.loop !2

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit: ; preds = %.lr.ph447, %bb.q
  %i.ea = phi i8 [ %i.dp, %bb.q ], [ %i.dx, %.lr.ph447 ] ; 2 uses
  %.3.lcssa = phi i64 [ %i.dn, %bb.q ], [ %i.dv, %.lr.ph447 ] ; 2 uses
  %.168.i.lcssa = phi ptr [ %i.do, %bb.q ], [ %i.dw, %.lr.ph447 ] ; 3 uses
  %i.eb = ptrtoint ptr %.168.i.lcssa to i64       ; 3 uses
  %i.ec = ptrtoint ptr %i.dh to i64
  %.neg.i = sub i64 %i.ec, %i.eb                  ; 2 uses
  %i.ed = ptrtoint ptr %i.cq to i64
  %i.ee = sub i64 %i.ed, %i.eb
  %i.ef = icmp slt i64 %i.ee, -20                 ; 2 uses
  %i.eg = and i1 %i.ef, %i.cv
  br i1 %i.eg, label %bb.r, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53, !prof !143

bb.r:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.i = phi ptr [ %i.eh, %bb.r ], [ %i.ek, %bb.s ] ; 3 uses
  %i.ei = load i8, ptr %.0.i, align 1, !tbaa !118
  %i.ej = icmp eq i8 %i.ei, 48
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %i.ej, label %bb.s, label %bb.t, !llvm.loop !3

bb.t:                                             ; preds = %bb.s
  %i.el = ptrtoint ptr %.0.i to i64
  %i.em = sub i64 %i.eb, %i.el
  %i.en = icmp sgt i64 %i.em, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53

bb.u:                                             ; preds = %.thread
  %i.eo = icmp samesign ugt i64 %.067.idx.i.lcssa438502515, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %bb.t, %bb.u
  %i.ep = phi i8 [ %.lcssa504513, %bb.u ], [ %i.ea, %bb.t ], [ %i.ea, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ] ; 2 uses
  %.1325 = phi i64 [ %.0324.lcssa503514, %bb.u ], [ %.3.lcssa, %bb.t ], [ %.3.lcssa, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ] ; 4 uses
  %.370.i = phi ptr [ %.067.ptr.i.le505512, %bb.u ], [ %.168.i.lcssa, %bb.t ], [ %.168.i.lcssa, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ]
  %.163.i = phi i64 [ 0, %bb.u ], [ %.neg.i, %bb.t ], [ %.neg.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ] ; 2 uses
  %.2.i = phi i1 [ %i.eo, %bb.u ], [ %i.en, %bb.t ], [ %i.ef, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ]
  switch i8 %i.ep, label %bb.x [
    i8 101, label %bb.v
    i8 69, label %bb.v
  ]

bb.v:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53
  %i.eq = getelementptr inbounds nuw i8, ptr %.370.i, i64 1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !118 ; 2 uses
  %i.es = icmp eq i8 %i.er, 45                    ; 2 uses
  %i.et = icmp eq i8 %i.er, 43
  %narrow433 = or i1 %i.es, %i.et
  %i.eu = zext i1 %narrow433 to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eu ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !118
  %i.ex = add i8 %i.ew, -48                       ; 2 uses
  %i.ey = icmp ult i8 %i.ex, 10
  br i1 %i.ey, label %.lr.ph452, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

.lr.ph452:                                        ; preds = %bb.v, %.lr.ph452
  %i.ez = phi i8 [ %i.ff, %.lr.ph452 ], [ %i.ex, %bb.v ]
  %.4.i451 = phi ptr [ %i.fd, %.lr.ph452 ], [ %i.ev, %bb.v ]
  %.0328450 = phi i64 [ %i.fc, %.lr.ph452 ], [ 0, %bb.v ]
  %i.fa = mul i64 %.0328450, 10
  %i.fb = zext nneg i8 %i.ez to i64
  %i.fc = add i64 %i.fa, %i.fb                    ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.4.i451, i64 1 ; 3 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !118 ; 2 uses
  %i.ff = add i8 %i.fe, -48                       ; 2 uses
  %i.fg = icmp ult i8 %i.ff, 10
  br i1 %i.fg, label %.lr.ph452, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54, !llvm.loop !4

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54: ; preds = %.lr.ph452
  %i.fh = ptrtoint ptr %i.ev to i64
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = sub i64 %i.fi, %i.fh
  %i.fk = icmp sgt i64 %i.fj, 19
  br i1 %i.fk, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54
  %i.fl = sub i64 0, %i.fc
  %i.fm = select i1 %i.es, i64 %i.fl, i64 %i.fc
  %i.fn = add i64 %i.fm, %.163.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53
  %i.fo = phi i8 [ %i.fe, %bb.w ], [ %i.ep, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53 ]
  %.3.i = phi i64 [ %i.fn, %bb.w ], [ %.163.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53 ] ; 5 uses
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !144, !range !121, !noundef !122
  %.not76.i = icmp eq i8 %i.fr, 0
  br i1 %.not76.i, label %bb.y, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.y:                                             ; preds = %bb.x
  %i.fs = add i64 %.3.i, -309
  %i.ft = icmp ult i64 %i.fs, -651
  %.not78.i = select i1 %.2.i, i1 true, i1 %i.ft
  br i1 %.not78.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.z, !prof !143

bb.z:                                             ; preds = %bb.y
  %i.fu = add nsw i64 %.3.i, 22
  %or.cond.i57 = icmp ult i64 %i.fu, 45
  %i.fv = icmp ult i64 %.1325, 9007199254740992
  %or.cond3.i = and i1 %i.fv, %or.cond.i57
  %i.fw = icmp eq i64 %.1325, 0
  %or.cond = or i1 %i.fw, %or.cond3.i
  br i1 %or.cond, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = mul nsw i64 %.3.i, 217706
  %i.fy = ashr i64 %i.fx, 16
  %i.fz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1325, i1 true) ; 2 uses
  %i.ga = shl i64 %.1325, %i.fz                   ; 2 uses
  %i.gb = trunc nsw i64 %.3.i to i32
  %i.gc = shl nsw i32 %i.gb, 1
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.gd ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 5472
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !145
  %i.gh = zext i64 %i.ga to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = trunc i128 %i.gj to i64                 ; 2 uses
  %i.gl = lshr i128 %i.gj, 64
  %i.gm = trunc nuw i128 %i.gl to i64             ; 3 uses
  %i.gn = and i64 %i.gm, 511
  %i.go = icmp eq i64 %i.gn, 511
  br i1 %i.go, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gp = getelementptr i8, ptr %i.ge, i64 5480
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !145
  %i.gr = tail call i64 @llvm.umulh.i64(i64 %i.ga, i64 %i.gq) ; 2 uses
  %i.gs = add i64 %i.gr, %i.gk                    ; 2 uses
  %i.gt = icmp ugt i64 %i.gr, %i.gs
  %i.gu = zext i1 %i.gt to i64
  %spec.select.i = add nuw i64 %i.gu, %i.gm
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %bb.ab ], [ %i.gm, %bb.aa ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.gs, %bb.ab ], [ %i.gk, %bb.aa ]
  %i.gv = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.gw = add nuw nsw i64 %i.gv, 9                ; 2 uses
  %i.gx = lshr i64 %.sroa.7.1.i, %i.gw            ; 5 uses
  %reass.sub = sub nsw i64 %i.fy, %i.fz
  %.neg455 = add nsw i64 %reass.sub, %i.gv        ; 2 uses
  %i.gy = add nsw i64 %.neg455, 1086
  %i.gz = icmp slt i64 %.neg455, -1085
  br i1 %i.gz, label %bb.ag, label %bb.ad, !prof !143

bb.ad:                                            ; preds = %bb.ac
  %i.ha = icmp ult i64 %.sroa.037.0.i, 2
  %i.hb = add nsw i64 %.3.i, 4
  %i.hc = icmp ult i64 %i.hb, 28
  %or.cond7.i = and i1 %i.hc, %i.ha
  %i.hd = and i64 %i.gx, 3
  %i.he = icmp eq i64 %i.hd, 1
  %i.hf = select i1 %or.cond7.i, i1 %i.he, i1 false
  br i1 %i.hf, label %bb.ae, label %bb.af, !prof !143

bb.ae:                                            ; preds = %bb.ad
  %i.hg = shl i64 %i.gx, %i.gw
end_hunk_5
