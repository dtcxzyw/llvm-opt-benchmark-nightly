Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonFunctions?download=true
inline.NumInlined: 16951
inline.NumDeleted: 7027
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE:bb.a
  br i1 %.not939.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iu
  %i.ix = sub nuw nsw i64 1083, %i.iu
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.iw, i8 32, i64 %i.ix, i1 false)
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i: ; preds = %bb.bf, %bb.be
  %i.iy = load i8, ptr %i.a, align 16, !tbaa !117
  %i.iz = icmp eq i8 %i.iy, 45                    ; 3 uses
  %.neg79.i.i.i = sext i1 %i.iz to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.iz to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %i.ja = load i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !117
  %i.jb = add i8 %i.ja, -48                       ; 2 uses
  %i.jc = icmp ult i8 %i.jb, 10                   ; 3 uses
  %narrow.i = select i1 %i.jc, i8 %i.jb, i8 0     ; 2 uses
  %spec.select929.i = zext i8 %narrow.i to i64    ; 2 uses
  %i.jd = zext i1 %i.jc to i64                    ; 2 uses
  %i.je = icmp eq i8 %narrow.i, 0                 ; 2 uses
  %.067.ptr.i.i954.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.jd
  %i.jf = load i8, ptr %.067.ptr.i.i954.i, align 1, !tbaa !117 ; 2 uses
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
  %.067.add.i.i.i = add nuw nsw i64 %.067.idx.i.i956.i, 1 ; 3 uses
  %.067.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.i
  %i.jm = load i8, ptr %.067.ptr.i.i.i, align 1, !tbaa !117 ; 2 uses
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
  %.067.idx.i.i.lcssa95310511064.i = phi i64 [ %.067.add.i.i.i, %bb.bg ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.1752.lcssa10521063.i = phi i64 [ %i.jl, %bb.bg ], [ %spec.select929.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.lcssa95210531062.i = phi i8 [ %i.jm, %bb.bg ], [ %i.jf, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.067.ptr.i.i.le10541061.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.idx.i.i.lcssa95310511064.i ; 3 uses
  %i.jp = icmp eq i8 %.lcssa95210531062.i, 46
  br i1 %i.jp, label %bb.bh, label %bb.bm, !prof !141

bb.bh:                                            ; preds = %.thread.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le10541061.i, i64 1 ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !117
  %i.js = add i8 %i.jr, -48                       ; 2 uses
  %i.jt = icmp ult i8 %i.js, 10
  br i1 %i.jt, label %bb.bi, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.ju = mul i64 %.1752.lcssa10521063.i, 10
  %i.jv = zext nneg i8 %i.js to i64
  %i.jw = add i64 %i.ju, %i.jv                    ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le10541061.i, i64 2 ; 3 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !117 ; 2 uses
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
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !117 ; 2 uses
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
  br i1 %i.kp, label %bb.bj, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i, !prof !142

bb.bj:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.iz, i64 3, i64 2
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %.0.i.i118.i = phi ptr [ %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.bj ], [ %i.ks, %bb.bk ] ; 3 uses
  %i.kq = load i8, ptr %.0.i.i118.i, align 1, !tbaa !117
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
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !117 ; 2 uses
  %i.la = icmp eq i8 %i.kz, 45                    ; 2 uses
  %i.lb = icmp eq i8 %i.kz, 43
  %narrow940.i = or i1 %i.la, %i.lb
  %.sroa.gep994.i = getelementptr inbounds nuw i8, ptr %.370.i.i.i, i64 2
  %.sroa.sel.i = select i1 %narrow940.i, ptr %.sroa.gep994.i, ptr %i.ky ; 3 uses
  %i.lc = load i8, ptr %.sroa.sel.i, align 1, !tbaa !117
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
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !117 ; 2 uses
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
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !143, !range !120, !noundef !121
  %.not76.i.i.i = icmp eq i8 %i.lx, 0
  br i1 %.not76.i.i.i, label %bb.bq, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.bq:                                            ; preds = %bb.bp
  %i.ly = add i64 %.3.i.i.i, -309
  %i.lz = icmp ult i64 %i.ly, -651
  %.not78.i.i.i = select i1 %.2.i.i.i, i1 true, i1 %i.lz
  br i1 %.not78.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.br, !prof !142

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
  %i.mg = shl i64 %.3754.i, %i.mf
  %i.mh = trunc nsw i64 %.3.i.i.i to i32
  %i.mi = shl nsw i32 %i.mh, 1
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.mj ; 2 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 5472
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !144
  %i.mn = zext i64 %i.mg to i128                  ; 2 uses
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
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !144
  %3 = zext i64 %i.mw to i128
  %4 = mul nuw i128 %3, %i.mn
  %5 = lshr i128 %4, 64
  %6 = trunc nuw i128 %5 to i64                   ; 2 uses
  %i.mx = add i64 %6, %i.mq                       ; 2 uses
  %7 = icmp ult i64 %i.mx, %6
  %i.my = zext i1 %7 to i64
  %spec.select.i.i.i = add nuw i64 %i.my, %i.ms
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.7.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.bt ], [ %i.ms, %bb.bs ] ; 3 uses
  %.sroa.037.0.i.i.i = phi i64 [ %i.mx, %bb.bt ], [ %i.mq, %bb.bs ]
  %i.mz = lshr i64 %.sroa.7.1.i.i.i, 63           ; 2 uses
  %i.na = add nuw nsw i64 %i.mz, 9                ; 2 uses
  %i.nb = lshr i64 %.sroa.7.1.i.i.i, %i.na        ; 5 uses
  %reass.sub.i = sub nsw i64 %i.me, %i.mf
  %.neg980.i = add nsw i64 %i.mz, %reass.sub.i    ; 2 uses
  %i.nc = add nsw i64 %.neg980.i, 1086
  %i.nd = icmp slt i64 %.neg980.i, -1085
  br i1 %i.nd, label %bb.by, label %bb.bv, !prof !142

bb.bv:                                            ; preds = %bb.bu
  %i.ne = icmp ult i64 %.sroa.037.0.i.i.i, 2
  %i.nf = add nsw i64 %.3.i.i.i, 4
  %i.ng = icmp ult i64 %i.nf, 28
  %or.cond7.i.i.i = and i1 %i.ng, %i.ne
  %i.nh = and i64 %i.nb, 3
  %i.ni = icmp eq i64 %i.nh, 1
  %i.nj = select i1 %or.cond7.i.i.i, i1 %i.ni, i1 false
  br i1 %i.nj, label %bb.bw, label %bb.bx, !prof !142

bb.bw:                                            ; preds = %bb.bv
  %i.nk = shl i64 %i.nb, %i.na
  %i.nl = icmp eq i64 %i.nk, %.sroa.7.1.i.i.i
  %i.nm = and i64 %i.nb, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.nl, i64 %i.nm, i64 %i.nb
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.080.i.i.i = phi i64 [ %i.nb, %bb.bv ], [ %spec.select90.i.i.i, %bb.bw ] ; 2 uses
  %i.nn = and i64 %.080.i.i.i, 1
  %i.no = add nuw nsw i64 %i.nn, %.080.i.i.i
  %i.np = icmp samesign ugt i64 %i.no, 18014398509481983
  %i.nq = zext i1 %i.np to i64
  %spec.select92.i.i.i = add nuw nsw i64 %i.nc, %i.nq
  %i.nr = icmp samesign ugt i64 %spec.select92.i.i.i, 2046
  br i1 %i.nr, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.by, !prof !142

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i: ; preds = %bb.bx, %bb.bq
  %i.ns = getelementptr inbounds i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.neg79.i.i.i
  %i.nt = call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.ns) #26
  %i.nu = call double @llvm.fabs.f64(double %i.nt)
  %spec.select.i.i = fcmp ule double %i.nu, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i.i, label %bb.by, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.by:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, %bb.bx, %bb.bu, %bb.br
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !122
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !124
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !133
  %i.ob = icmp eq i32 %i.oa, 1
  br i1 %i.ob, label %bb.bz, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.bz:                                            ; preds = %bb.by
  %i.oc = load ptr, ptr %i.in, align 8, !tbaa !118 ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.c
  br i1 %i.od, label %bb.ca, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store ptr %i.of, ptr %i.in, align 8, !tbaa !118
  store i32 0, ptr %i.oe, align 4, !tbaa !135
  br label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i: ; preds = %bb.ca, %bb.bz, %bb.by, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, %bb.bp, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i, %bb.bn, %bb.bh, %bb.bg, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i
  %.sroa.6658.1.i = phi i32 [ 9, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i ], [ 31, %bb.by ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ], [ 9, %bb.bp ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ], [ 9, %bb.bh ], [ 9, %bb.bg ], [ 9, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit

bb.cb:                                            ; preds = %bb.a
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !118, !noalias !877 ; 3 uses
  %i.oi = icmp eq ptr %i.oh, %i.c
  br i1 %i.oi, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i, label %.thread1069.i

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i: ; preds = %bb.cb
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ok = load i32, ptr %i.oh, align 4, !tbaa !116, !noalias !877
  %i.ol = zext i32 %i.ok to i64                   ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ol
  %.pre998.i = load i8, ptr %i.om, align 1, !tbaa !117, !noalias !877
  %i.on = icmp eq i8 %.pre998.i, 34
  br i1 %i.on, label %bb.cc, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

bb.cc:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !122, !noalias !877
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !124, !noalias !877 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !133, !noalias !877
  %i.ou = icmp eq i32 %i.ot, 1
  br i1 %i.ou, label %bb.cd, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

.thread1069.i:                                    ; preds = %bb.cb
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !122, !noalias !877
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !124, !noalias !877 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !133, !noalias !877
  %i.pb = icmp eq i32 %i.pa, 1
  br i1 %i.pb, label %.thread1070.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

bb.cd:                                            ; preds = %bb.cc
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store ptr %i.pc, ptr %i.og, align 8, !tbaa !118, !noalias !877
  store i32 0, ptr %i.oj, align 4, !tbaa !135, !noalias !877
  br label %.thread1070.i

.thread1070.i:                                    ; preds = %bb.cd, %.thread1069.i
  %i.pd = phi i64 [ %i.ol, %bb.cd ], [ %i.f, %.thread1069.i ]
  %i.pe = phi ptr [ %i.or, %bb.cd ], [ %i.oy, %.thread1069.i ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pd
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 1
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !145, !noalias !878
  %i.pj = load ptr, ptr %i.pe, align 8, !tbaa !147, !noalias !878
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 32
  %i.pl = load ptr, ptr %i.pk, align 8, !noalias !878
  %i.pm = tail call noundef ptr %i.pl(ptr noundef nonnull align 8 dereferenceable(48) %i.pe, ptr noundef nonnull %i.pg, ptr noundef %i.pi, i1 noundef zeroext false) #26, !noalias !878, !inline_history !868 ; 2 uses
  %.not.i2.i125.i = icmp eq ptr %i.pm, null
  br i1 %.not.i2.i125.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %.thread1070.i
  store ptr %i.pm, ptr %i.ph, align 8, !tbaa !145, !noalias !878
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14

bb.cf:                                            ; preds = %bb.a, %bb.a
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !116
  %i.pp = sub i32 %i.po, %i.e
  %i.pq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !116
  %i.ps = sub i32 %i.pr, %i.e
  %..i.i.i = tail call i32 @llvm.umin.i32(i32 %i.pp, i32 %i.ps) ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !118 ; 3 uses
  %i.pv = icmp ne ptr %i.pu, %i.c                 ; 2 uses
  br i1 %i.pv, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pw = load i32, ptr %i.pu, align 4, !tbaa !116
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.px
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i134.i = phi ptr [ %i.py, %bb.cg ], [ %i.g, %bb.cf ] ; 3 uses
  %i.pz = icmp ugt i32 %..i.i.i, 3
  br i1 %i.pz, label %bb.ch, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

bb.ch:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i
  %.0.copyload.i13.i.i = load i32, ptr %.0.i.i134.i, align 1 ; 2 uses
  %.not.i137.i = icmp eq i32 %.0.copyload.i13.i.i, 1702195828
  %i.qa = icmp ne i32 %..i.i.i, 4                 ; 2 uses
  br i1 %.not.i137.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.qa, label %.thread1071.i, label %.thread922.i

.thread1071.i:                                    ; preds = %bb.ci
  %i.qb = getelementptr inbounds nuw i8, ptr %.0.i.i134.i, i64 4
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !117
  %i.qd = zext i8 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !143, !range !120, !noundef !121
  %.not18 = icmp eq i8 %i.qf, 0
  br i1 %.not18, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread, label %.thread922.i

bb.cj:                                            ; preds = %bb.ch
  %.not10.i.i = icmp eq i32 %.0.copyload.i13.i.i, 1936482662
  %or.cond1111.i = and i1 %i.qa, %.not10.i.i
  br i1 %or.cond1111.i, label %bb.ck, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.qg = icmp eq i32 %..i.i.i, 5
  br i1 %i.qg, label %.thread922.i, label %.thread920.i

.thread920.i:                                     ; preds = %bb.ck
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i.i134.i, i64 5
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !117
  %i.qj = zext i8 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !143, !range !120, !noundef !121
  %.not17 = icmp eq i8 %i.ql, 0
  br i1 %.not17, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread, label %.thread922.i

.thread922.i:                                     ; preds = %.thread1071.i, %.thread920.i, %bb.ck, %bb.ci
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !122
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !124
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions12_GLOBAL__N_18validateIN8simdjson8fallback8ondemand5valueEEENS4_10error_codeET_:bb.a
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !116
  %i.hb = zext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hb
  %.pre = load i8, ptr %i.hc, align 1, !tbaa !117
  br label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit: ; preds = %bb.ap, %bb.aq
  %i.hd = phi i8 [ %.pre, %bb.aq ], [ %i.h, %bb.ap ]
  %i.he = phi i64 [ %i.hb, %bb.aq ], [ %i.f, %bb.ap ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.he
  %i.hg = icmp eq i8 %i.hd, 45                    ; 2 uses
  %.neg79.i = sext i1 %i.hg to i64
  %i.hh = zext i1 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hh ; 7 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !117
  %i.hk = add i8 %i.hj, -48                       ; 2 uses
  %i.hl = icmp ult i8 %i.hk, 10                   ; 3 uses
  %narrow = select i1 %i.hl, i8 %i.hk, i8 0       ; 2 uses
  %spec.select779 = zext i8 %narrow to i64        ; 2 uses
  %i.hm = zext i1 %i.hl to i64                    ; 3 uses
  %i.hn = icmp eq i8 %narrow, 0                   ; 2 uses
  %.067.ptr.i804 = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hm
  %i.ho = load i8, ptr %.067.ptr.i804, align 1, !tbaa !117 ; 2 uses
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
  %i.hv = load i8, ptr %.067.ptr.i, align 1, !tbaa !117 ; 2 uses
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
  %.067.idx.i.lcssa803916930 = phi i64 [ %.067.add.i, %bb.ar ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89 ]
  %.0595.lcssa917929 = phi i64 [ %i.hu, %bb.ar ], [ %spec.select779, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89 ] ; 2 uses
  %.lcssa802918928 = phi i8 [ %i.hv, %bb.ar ], [ %i.ho, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89 ] ; 2 uses
  %.067.add.i.pn = phi i64 [ %.067.add.i, %bb.ar ], [ %i.hm, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit89 ]
  %.067.ptr.i.le919927 = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.067.add.i.pn ; 3 uses
  %i.hy = icmp eq i8 %.lcssa802918928, 46
  br i1 %i.hy, label %bb.as, label %bb.ax, !prof !141

bb.as:                                            ; preds = %.thread920
  %i.hz = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le919927, i64 1 ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !117
  %i.ib = add i8 %i.ia, -48                       ; 2 uses
  %i.ic = icmp ult i8 %i.ib, 10
  br i1 %i.ic, label %bb.at, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.at:                                            ; preds = %bb.as
  %i.id = mul i64 %.0595.lcssa917929, 10
  %i.ie = zext nneg i8 %i.ib to i64
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le919927, i64 2 ; 3 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !117 ; 2 uses
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
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !117 ; 2 uses
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
  br i1 %i.iy, label %bb.au, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87, !prof !142

bb.au:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.0.i84 = phi ptr [ %i.iz, %bb.au ], [ %i.jc, %bb.av ] ; 3 uses
  %i.ja = load i8, ptr %.0.i84, align 1, !tbaa !117
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
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !117 ; 2 uses
  %i.jk = icmp eq i8 %i.jj, 45                    ; 2 uses
  %i.jl = icmp eq i8 %i.jj, 43
  %narrow785 = or i1 %i.jk, %i.jl
  %i.jm = zext i1 %narrow785 to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jm ; 3 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !117
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
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !117 ; 2 uses
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
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !143, !range !120, !noundef !121
  %.not76.i = icmp eq i8 %i.kj, 0
  br i1 %.not76.i, label %bb.bb, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.kk = add i64 %.3.i, -309
  %i.kl = icmp ult i64 %i.kk, -651
  %.not78.i = select i1 %.2.i, i1 true, i1 %i.kl
  br i1 %.not78.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.bc, !prof !142

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
  %i.ks = shl i64 %.1596, %i.kr
  %i.kt = trunc nsw i64 %.3.i to i32
  %i.ku = shl nsw i32 %i.kt, 1
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.kv ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 5472
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !144
  %i.kz = zext i64 %i.ks to i128                  ; 2 uses
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
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !144
  %3 = zext i64 %i.li to i128
  %4 = mul nuw i128 %3, %i.kz
  %5 = lshr i128 %4, 64
  %6 = trunc nuw i128 %5 to i64                   ; 2 uses
  %i.lj = add i64 %6, %i.lc                       ; 2 uses
  %7 = icmp ult i64 %i.lj, %6
  %i.lk = zext i1 %7 to i64
  %spec.select.i = add nuw i64 %i.lk, %i.le
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %bb.be ], [ %i.le, %bb.bd ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.lj, %bb.be ], [ %i.lc, %bb.bd ]
  %i.ll = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.lm = add nuw nsw i64 %i.ll, 9                ; 2 uses
  %i.ln = lshr i64 %.sroa.7.1.i, %i.lm            ; 5 uses
  %reass.sub = sub nsw i64 %i.kq, %i.kr
  %.neg832 = add nsw i64 %reass.sub, %i.ll        ; 2 uses
  %i.lo = add nsw i64 %.neg832, 1086
  %i.lp = icmp slt i64 %.neg832, -1085
  br i1 %i.lp, label %bb.bj, label %bb.bg, !prof !142

bb.bg:                                            ; preds = %bb.bf
  %i.lq = icmp ult i64 %.sroa.037.0.i, 2
  %i.lr = add nsw i64 %.3.i, 4
  %i.ls = icmp ult i64 %i.lr, 28
  %or.cond7.i = and i1 %i.ls, %i.lq
  %i.lt = and i64 %i.ln, 3
  %i.lu = icmp eq i64 %i.lt, 1
  %i.lv = select i1 %or.cond7.i, i1 %i.lu, i1 false
  br i1 %i.lv, label %bb.bh, label %bb.bi, !prof !142

bb.bh:                                            ; preds = %bb.bg
  %i.lw = shl i64 %i.ln, %i.lm
  %i.lx = icmp eq i64 %i.lw, %.sroa.7.1.i
  %i.ly = and i64 %i.ln, 72057594037927932
  %spec.select90.i = select i1 %i.lx, i64 %i.ly, i64 %i.ln
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.080.i = phi i64 [ %i.ln, %bb.bg ], [ %spec.select90.i, %bb.bh ] ; 2 uses
  %i.lz = and i64 %.080.i, 1
  %i.ma = add nuw nsw i64 %i.lz, %.080.i
  %i.mb = icmp samesign ugt i64 %i.ma, 18014398509481983
  %i.mc = zext i1 %i.mb to i64
  %spec.select92.i = add nuw nsw i64 %i.lo, %i.mc
  %i.md = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.md, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.bj, !prof !142

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit: ; preds = %bb.bi, %bb.bb
  %i.me = getelementptr inbounds i8, ptr %i.hi, i64 %.neg79.i
  %i.mf = tail call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.me) #26
  %i.mg = tail call double @llvm.fabs.f64(double %i.mf)
  %spec.select.i177 = fcmp ule double %i.mg, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i177, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit
  %.pre844 = load ptr, ptr %i.gx, align 8, !tbaa !118
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, %bb.bf, %bb.bc, %bb.bi
  %i.mh = phi ptr [ %.pre844, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge ], [ %i.gy, %bb.bf ], [ %i.gy, %bb.bc ], [ %i.gy, %bb.bi ] ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.c
  br i1 %i.mi, label %bb.bk, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bk:                                            ; preds = %bb.bj
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !135 ; 4 uses
  %i.ml = load i32, ptr %i.gw, align 8, !tbaa !225
  %i.mm = icmp eq i32 %i.mk, %i.ml
  tail call void @llvm.assume(i1 %i.mm)
  %i.mn = icmp sgt i32 %i.mk, 1
  tail call void @llvm.assume(i1 %i.mn)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store ptr %i.mo, ptr %i.gx, align 8, !tbaa !118
  %i.mp = add nsw i32 %i.mk, -1
  %or.cond.i.i86 = icmp ne i32 %i.mk, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i86)
  store i32 %i.mp, ptr %i.mj, align 4, !tbaa !135
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bl:                                            ; preds = %bb.a
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !118, !noalias !984 ; 3 uses
  %i.ms = icmp eq ptr %i.mr, %i.c
  br i1 %i.ms, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, label %.thread770

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit: ; preds = %bb.bl
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !135, !noalias !984 ; 4 uses
  %i.mw = load i32, ptr %i.mt, align 8, !tbaa !225, !noalias !984
  %i.mx = icmp eq i32 %i.mv, %i.mw
  tail call void @llvm.assume(i1 %i.mx), !noalias !984
  %i.my = icmp sgt i32 %i.mv, 0
  tail call void @llvm.assume(i1 %i.my), !noalias !984
  %i.mz = load i32, ptr %i.mr, align 4, !tbaa !116, !noalias !984
  %i.na = zext i32 %i.mz to i64                   ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !117, !noalias !984
  %.not.i99 = icmp eq i8 %i.nc, 34
  br i1 %.not.i99, label %bb.bm, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bm:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store ptr %i.nd, ptr %i.mq, align 8, !tbaa !118, !noalias !984
  %i.ne = add nsw i32 %i.mv, -1
  %or.cond.i.i107 = icmp ne i32 %i.mv, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i107), !noalias !984
  store i32 %i.ne, ptr %i.mu, align 4, !tbaa !135, !noalias !984
  br label %.thread770

.thread770:                                       ; preds = %bb.bl, %bb.bm
  %i.nf = phi i64 [ %i.na, %bb.bm ], [ %i.f, %bb.bl ]
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !122, !noalias !985
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !124, !noalias !986 ; 2 uses
  %i.nn = load ptr, ptr %i.nk, align 8, !tbaa !145, !noalias !986
  %i.no = load ptr, ptr %i.nm, align 8, !tbaa !147, !noalias !986
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  %i.nq = load ptr, ptr %i.np, align 8, !noalias !986
  %i.nr = tail call noundef ptr %i.nq(ptr noundef nonnull align 8 dereferenceable(48) %i.nm, ptr noundef nonnull %i.nh, ptr noundef %i.nn, i1 noundef zeroext false) #26, !noalias !986, !inline_history !12 ; 2 uses
  %.not.i108 = icmp eq ptr %i.nr, null
  br i1 %.not.i108, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.bn

bb.bn:                                            ; preds = %.thread770
  store ptr %i.nr, ptr %i.nk, align 8, !tbaa !145, !noalias !986
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bo:                                            ; preds = %bb.a, %bb.a
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !118 ; 3 uses
  %i.nv = icmp ne ptr %i.nu, %i.c                 ; 2 uses
  br i1 %i.nv, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nw = load i32, ptr %i.nu, align 4, !tbaa !116
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nx
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.0.i.i109 = phi ptr [ %i.ny, %bb.bp ], [ %i.g, %bb.bo ] ; 3 uses
  %.0.copyload.i112 = load i32, ptr %.0.i.i109, align 1 ; 2 uses
  %i.nz = xor i32 %.0.copyload.i112, 1936482662
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.i.i109, i64 4
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !117
  %i.oc = xor i8 %i.ob, 101
  %i.od = zext i8 %i.oc to i32
  %i.oe = or i32 %i.nz, %i.od
  %i.of = icmp ne i32 %.0.copyload.i112, 1702195828 ; 2 uses
  %i.og = icmp ne i32 %i.oe, 0
  %or.cond.i110 = select i1 %i.of, i1 %i.og, i1 false
  br i1 %or.cond.i110, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.oh = select i1 %i.of, i64 5, i64 4
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i.i109, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !117
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !143, !range !120, !noundef !121
  %.not786 = icmp ne i8 %i.om, 0                  ; 2 uses
  %brmerge = or i1 %.not786, %i.nv
  %.mux = select i1 %.not786, i32 17, i32 0
  br i1 %brmerge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.on = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !135 ; 4 uses
  %i.op = load i32, ptr %i.ns, align 8, !tbaa !225
  %i.oq = icmp eq i32 %i.oo, %i.op
  tail call void @llvm.assume(i1 %i.oq)
  %i.or = icmp sgt i32 %i.oo, 1
  tail call void @llvm.assume(i1 %i.or)
  %i.os = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  store ptr %i.os, ptr %i.nt, align 8, !tbaa !118
  %i.ot = add nsw i32 %i.oo, -1
  %or.cond.i.i.i = icmp ne i32 %i.oo, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i)
  store i32 %i.ot, ptr %i.on, align 4, !tbaa !135
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bt:                                            ; preds = %bb.a
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !118 ; 3 uses
  %i.ox = icmp ne ptr %i.ow, %i.c                 ; 2 uses
  br i1 %i.ox, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i113, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oy = load i32, ptr %i.ow, align 4, !tbaa !116
  %i.oz = zext i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.oz
  br label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i113

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i113: ; preds = %bb.bt, %bb.bu
  %.0.i.i114 = phi ptr [ %i.pa, %bb.bu ], [ %i.g, %bb.bt ] ; 2 uses
  %.0.copyload.i.i = load i32, ptr %.0.i.i114, align 1 ; 2 uses
  %.not.i121 = icmp eq i32 %.0.copyload.i.i, 1819047278
  br i1 %.not.i121, label %bb.bv, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  br i1 %.not645.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fa
  %i.ff = sub nuw nsw i64 1083, %i.fa
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fe, i8 32, i64 %i.ff, i1 false)
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i: ; preds = %bb.ab, %bb.aa
  %i.fg = load i8, ptr %i.b, align 16, !tbaa !117
  %i.fh = icmp eq i8 %i.fg, 45                    ; 3 uses
  %.neg79.i.i.i = sext i1 %i.fh to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.fh to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %i.fi = load i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !117
  %i.fj = add i8 %i.fi, -48                       ; 2 uses
  %i.fk = icmp ult i8 %i.fj, 10                   ; 3 uses
  %narrow.i = select i1 %i.fk, i8 %i.fj, i8 0     ; 2 uses
  %spec.select.i18 = zext i8 %narrow.i to i64     ; 2 uses
  %i.fl = zext i1 %i.fk to i64                    ; 2 uses
  %i.fm = icmp eq i8 %narrow.i, 0                 ; 2 uses
  %.067.ptr.i.i651.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.fl
  %i.fn = load i8, ptr %.067.ptr.i.i651.i, align 1, !tbaa !117 ; 2 uses
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
  %.067.add.i.i.i = add nuw nsw i64 %.067.idx.i.i653.i, 1 ; 3 uses
  %.067.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.i
  %i.fu = load i8, ptr %.067.ptr.i.i.i, align 1, !tbaa !117 ; 2 uses
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
  %.067.idx.i.i.lcssa650712725.i = phi i64 [ %.067.add.i.i.i, %bb.ac ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.1529.lcssa713724.i = phi i64 [ %i.ft, %bb.ac ], [ %spec.select.i18, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.lcssa714723.i = phi i8 [ %i.fu, %bb.ac ], [ %i.fn, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ] ; 2 uses
  %.067.ptr.i.i.le715722.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.idx.i.i.lcssa650712725.i ; 3 uses
  %i.fx = icmp eq i8 %.lcssa714723.i, 46
  br i1 %i.fx, label %bb.ad, label %bb.ai, !prof !141

bb.ad:                                            ; preds = %.thread.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le715722.i, i64 1 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !117
  %i.ga = add i8 %i.fz, -48                       ; 2 uses
  %i.gb = icmp ult i8 %i.ga, 10
  br i1 %i.gb, label %bb.ae, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gc = mul i64 %.1529.lcssa713724.i, 10
  %i.gd = zext nneg i8 %i.ga to i64
  %i.ge = add i64 %i.gc, %i.gd                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le715722.i, i64 2 ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !117 ; 2 uses
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
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !117 ; 2 uses
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
  br i1 %i.gx, label %bb.af, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i, !prof !142

bb.af:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fh, i64 3, i64 2
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.0.i.i61.i = phi ptr [ %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.af ], [ %i.ha, %bb.ag ] ; 3 uses
  %i.gy = load i8, ptr %.0.i.i61.i, align 1, !tbaa !117
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
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !117 ; 2 uses
  %i.hi = icmp eq i8 %i.hh, 45                    ; 2 uses
  %i.hj = icmp eq i8 %i.hh, 43
  %narrow646.i = or i1 %i.hi, %i.hj
  %.sroa.gep675.i = getelementptr inbounds nuw i8, ptr %.370.i.i.i, i64 2
  %.sroa.sel.i = select i1 %narrow646.i, ptr %.sroa.gep675.i, ptr %i.hg ; 3 uses
  %i.hk = load i8, ptr %.sroa.sel.i, align 1, !tbaa !117
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
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !117 ; 2 uses
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
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !143, !range !120, !noundef !121
  %.not76.i.i.i = icmp eq i8 %i.if, 0
  br i1 %.not76.i.i.i, label %bb.am, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ig = add i64 %.3.i.i.i, -309
  %i.ih = icmp ult i64 %i.ig, -651
  %.not78.i.i.i = select i1 %.2.i.i.i, i1 true, i1 %i.ih
  br i1 %.not78.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.an, !prof !142

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
  %i.io = shl i64 %.3.i, %i.in
  %i.ip = trunc nsw i64 %.3.i.i.i to i32
  %i.iq = shl nsw i32 %i.ip, 1
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ir ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 5472
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !144
  %i.iv = zext i64 %i.io to i128                  ; 2 uses
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
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !144
  %10 = zext i64 %i.je to i128
  %11 = mul nuw i128 %10, %i.iv
  %12 = lshr i128 %11, 64
  %13 = trunc nuw i128 %12 to i64                 ; 2 uses
  %i.jf = add i64 %13, %i.iy                      ; 2 uses
  %14 = icmp ult i64 %i.jf, %13
  %i.jg = zext i1 %14 to i64
  %spec.select.i.i.i = add nuw i64 %i.jg, %i.ja
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.7.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.ap ], [ %i.ja, %bb.ao ] ; 3 uses
  %.sroa.037.0.i.i.i = phi i64 [ %i.jf, %bb.ap ], [ %i.iy, %bb.ao ]
  %i.jh = lshr i64 %.sroa.7.1.i.i.i, 63           ; 2 uses
  %i.ji = add nuw nsw i64 %i.jh, 9                ; 2 uses
  %i.jj = lshr i64 %.sroa.7.1.i.i.i, %i.ji        ; 5 uses
  %reass.sub.i = sub nsw i64 %i.im, %i.in
  %.neg667.i = add nsw i64 %i.jh, %reass.sub.i    ; 2 uses
  %i.jk = add nsw i64 %.neg667.i, 1086
  %i.jl = icmp slt i64 %.neg667.i, -1085
  br i1 %i.jl, label %bb.au, label %bb.ar, !prof !142

bb.ar:                                            ; preds = %bb.aq
  %i.jm = icmp ult i64 %.sroa.037.0.i.i.i, 2
  %i.jn = add nsw i64 %.3.i.i.i, 4
  %i.jo = icmp ult i64 %i.jn, 28
  %or.cond7.i.i.i = and i1 %i.jo, %i.jm
  %i.jp = and i64 %i.jj, 3
  %i.jq = icmp eq i64 %i.jp, 1
  %i.jr = select i1 %or.cond7.i.i.i, i1 %i.jq, i1 false
  br i1 %i.jr, label %bb.as, label %bb.at, !prof !142

bb.as:                                            ; preds = %bb.ar
  %i.js = shl i64 %i.jj, %i.ji
  %i.jt = icmp eq i64 %i.js, %.sroa.7.1.i.i.i
  %i.ju = and i64 %i.jj, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.jt, i64 %i.ju, i64 %i.jj
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.080.i.i.i = phi i64 [ %i.jj, %bb.ar ], [ %spec.select90.i.i.i, %bb.as ] ; 2 uses
  %i.jv = and i64 %.080.i.i.i, 1
  %i.jw = add nuw nsw i64 %i.jv, %.080.i.i.i
  %i.jx = icmp samesign ugt i64 %i.jw, 18014398509481983
  %i.jy = zext i1 %i.jx to i64
  %spec.select92.i.i.i = add nuw nsw i64 %i.jk, %i.jy
  %i.jz = icmp samesign ugt i64 %spec.select92.i.i.i, 2046
  br i1 %i.jz, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.au, !prof !142

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i: ; preds = %bb.at, %bb.am
  %i.ka = getelementptr inbounds i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.neg79.i.i.i
  %i.kb = call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.ka) #26
  %i.kc = call double @llvm.fabs.f64(double %i.kb)
  %spec.select.i.i = fcmp ule double %i.kc, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i.i, label %bb.au, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.au:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, %bb.at, %bb.aq, %bb.an
  %i.kd = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !124
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !133
  %i.ki = icmp eq i32 %i.kh, 1
  br i1 %i.ki, label %bb.av, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.av:                                            ; preds = %bb.au
  %i.kj = load ptr, ptr %i.ev, align 8, !tbaa !118 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.en
  br i1 %i.kk, label %bb.aw, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store ptr %i.kl, ptr %i.ev, align 8, !tbaa !118
  store i32 0, ptr %i.r, align 4, !tbaa !135
  br label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i: ; preds = %bb.aw, %bb.av, %bb.au, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, %bb.al, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i, %bb.aj, %bb.ad, %bb.ac, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i
  %.sroa.6401.1.i = phi i32 [ 9, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i ], [ 31, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ], [ 9, %bb.al ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ], [ 9, %bb.ad ], [ 9, %bb.ac ], [ 9, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit91.i: ; preds = %bb.c
  %i.km = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !116, !noalias !2731
  %i.ko = sub i32 %i.kn, %i.ag
  %i.kp = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !116, !noalias !2731
  %i.kr = sub i32 %i.kq, %i.ag
  %..i.i87.i = call i32 @llvm.umin.i32(i32 %i.ko, i32 %i.kr)
  %i.ks = zext i32 %..i.i87.i to i64
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit91.i
  %.0.i106.i = phi i64 [ %i.ks, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit91.i ], [ %i.kt, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i ] ; 2 uses
  %i.kt = add i64 %.0.i106.i, -1                  ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !117 ; 2 uses
  %i.kw = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.kx = icmp eq i8 %i.kw, 0
  br i1 %i.kx, label %bb.ay, label %bb.az, !prof !831

bb.ay:                                            ; preds = %bb.ax
  %i.ky = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i111.i = icmp eq i32 %i.ky, 0
  br i1 %.not.i.i111.i, label %bb.az, label %.noexc.i112.i

.noexc.i112.i:                                    ; preds = %bb.ay
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.kz = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.az

bb.az:                                            ; preds = %.noexc.i112.i, %bb.ay, %bb.ax
  %i.la = icmp ult i8 %i.kv, 33
  br i1 %i.la, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i: ; preds = %bb.az
  %i.lb = zext nneg i8 %i.kv to i64
  %i.lc = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.ld = shl nuw nsw i64 1, %i.lb
  %i.le = and i64 %i.lc, %i.ld
  %.not.i110.i = icmp eq i64 %i.le, 0
  br i1 %.not.i110.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i, label %bb.ax, !llvm.loop !94

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i, %bb.az
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i106.i, ptr nonnull %i.ai)
  %i.lf = load ptr, ptr %i.v, align 8, !tbaa !114, !noalias !2732 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !118, !noalias !2733 ; 3 uses
  %i.li = icmp eq ptr %i.lh, %i.lf                ; 2 uses
  %spec.select757.i = select i1 %i.li, ptr %i.lh, ptr %i.lf
  %i.lj = load ptr, ptr %9, align 8, !tbaa !115, !noalias !2733
  %i.lk = load i32, ptr %spec.select757.i, align 4, !tbaa !116, !noalias !2733
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ll ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !117, !noalias !2733
  %.not.i67.i = icmp eq i8 %i.ln, 34
  br i1 %.not.i67.i, label %bb.ba, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.ba:                                            ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i
  %i.lo = load ptr, ptr %i.k, align 8, !tbaa !122, !noalias !2733
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !124, !noalias !2733 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !133, !noalias !2733
  %i.lt = icmp eq i32 %i.ls, 1
  br i1 %i.lt, label %bb.bb, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.li, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store ptr %i.lu, ptr %i.lg, align 8, !tbaa !118, !noalias !2733
  store i32 0, ptr %i.r, align 4, !tbaa !135, !noalias !2733
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.lw = load ptr, ptr %i.m, align 8, !tbaa !145, !noalias !2734
  %i.lx = load ptr, ptr %i.lq, align 8, !tbaa !147, !noalias !2734
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !2734
  %i.ma = call noundef ptr %i.lz(ptr noundef nonnull align 8 dereferenceable(48) %i.lq, ptr noundef nonnull %i.lv, ptr noundef %i.lw, i1 noundef zeroext true) #26, !noalias !2734, !inline_history !2695 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i2.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.ma, ptr %i.m, align 8, !tbaa !145, !noalias !2734
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread180

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit93.i: ; preds = %bb.c, %bb.c
  %i.mb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !116, !noalias !2735
  %i.md = sub i32 %i.mc, %i.ag
  %i.me = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !116, !noalias !2735
  %i.mg = sub i32 %i.mf, %i.ag
  %..i.i86.i = call i32 @llvm.umin.i32(i32 %i.md, i32 %i.mg)
  %i.mh = zext i32 %..i.i86.i to i64
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117.i, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit93.i
  %.0.i114.i = phi i64 [ %i.mh, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit93.i ], [ %i.mi, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117.i ] ; 2 uses
  %i.mi = add i64 %.0.i114.i, -1                  ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !117 ; 2 uses
  %i.ml = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.mm = icmp eq i8 %i.ml, 0
  br i1 %i.mm, label %bb.bg, label %bb.bh, !prof !831

bb.bg:                                            ; preds = %bb.bf
  %i.mn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i119.i = icmp eq i32 %i.mn, 0
  br i1 %.not.i.i119.i, label %bb.bh, label %.noexc.i120.i

.noexc.i120.i:                                    ; preds = %bb.bg
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.mo = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc.i120.i, %bb.bg, %bb.bf
  %i.mp = icmp ult i8 %i.mk, 33
  br i1 %i.mp, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121.i

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117.i: ; preds = %bb.bh
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  br i1 %.not645.i30, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ut = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.up
  %i.uu = sub nuw nsw i64 1083, %i.up
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ut, i8 32, i64 %i.uu, i1 false)
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31: ; preds = %bb.cw, %bb.cv
  %i.uv = load i8, ptr %i.a, align 16, !tbaa !117
  %i.uw = icmp eq i8 %i.uv, 45                    ; 3 uses
  %.neg79.i.i.i32 = sext i1 %i.uw to i64
  %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.uw to i64
  %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %i.ux = load i8, ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !117
  %i.uy = add i8 %i.ux, -48                       ; 2 uses
  %i.uz = icmp ult i8 %i.uy, 10                   ; 3 uses
  %narrow.i35 = select i1 %i.uz, i8 %i.uy, i8 0   ; 2 uses
  %spec.select.i36 = zext i8 %narrow.i35 to i64   ; 2 uses
  %i.va = zext i1 %i.uz to i64                    ; 2 uses
  %i.vb = icmp eq i8 %narrow.i35, 0               ; 2 uses
  %.067.ptr.i.i651.i37 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.va
  %i.vc = load i8, ptr %.067.ptr.i.i651.i37, align 1, !tbaa !117 ; 2 uses
  %i.vd = add i8 %i.vc, -48                       ; 2 uses
  %i.ve = icmp ult i8 %i.vd, 10
  br i1 %i.ve, label %.lr.ph.i84, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38

.lr.ph.i84:                                       ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31, %.lr.ph.i84
  %i.vf = phi i8 [ %i.vk, %.lr.ph.i84 ], [ %i.vd, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31 ]
  %.067.idx.i.i653.i85 = phi i64 [ %.067.add.i.i.i87, %.lr.ph.i84 ], [ %i.va, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31 ] ; 2 uses
  %.1529652.i86 = phi i64 [ %i.vi, %.lr.ph.i84 ], [ %spec.select.i36, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31 ]
  %i.vg = mul i64 %.1529652.i86, 10
  %i.vh = zext nneg i8 %i.vf to i64
  %i.vi = add i64 %i.vg, %i.vh                    ; 2 uses
  %.067.add.i.i.i87 = add nuw nsw i64 %.067.idx.i.i653.i85, 1 ; 3 uses
  %.067.ptr.i.i.i88 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.i87
  %i.vj = load i8, ptr %.067.ptr.i.i.i88, align 1, !tbaa !117 ; 2 uses
  %i.vk = add i8 %i.vj, -48                       ; 2 uses
  %i.vl = icmp ult i8 %i.vk, 10
  br i1 %i.vl, label %.lr.ph.i84, label %bb.cx, !llvm.loop !1

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit6.i.i31
  br i1 %i.uz, label %.thread.i39, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.cx:                                            ; preds = %.lr.ph.i84
  %.not.i.i60.i89 = icmp ne i64 %.067.idx.i.i653.i85, 0
  %or.cond.i.i.not.i90 = and i1 %i.vb, %.not.i.i60.i89
  br i1 %or.cond.i.i.not.i90, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27, label %.thread.i39

.thread.i39:                                      ; preds = %bb.cx, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38
  %.067.idx.i.i.lcssa650712725.i40 = phi i64 [ %.067.add.i.i.i87, %bb.cx ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38 ] ; 2 uses
  %.1529.lcssa713724.i41 = phi i64 [ %i.vi, %bb.cx ], [ %spec.select.i36, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38 ] ; 2 uses
  %.lcssa714723.i42 = phi i8 [ %i.vj, %bb.cx ], [ %i.vc, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38 ] ; 2 uses
  %.067.ptr.i.i.le715722.i44 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.idx.i.i.lcssa650712725.i40 ; 3 uses
  %i.vm = icmp eq i8 %.lcssa714723.i42, 46
  br i1 %i.vm, label %bb.cy, label %bb.dd, !prof !141

bb.cy:                                            ; preds = %.thread.i39
  %i.vn = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le715722.i44, i64 1 ; 2 uses
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !117
  %i.vp = add i8 %i.vo, -48                       ; 2 uses
  %i.vq = icmp ult i8 %i.vp, 10
  br i1 %i.vq, label %bb.cz, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.cz:                                            ; preds = %bb.cy
  %i.vr = mul i64 %.1529.lcssa713724.i41, 10
  %i.vs = zext nneg i8 %i.vp to i64
  %i.vt = add i64 %i.vr, %i.vs                    ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le715722.i44, i64 2 ; 3 uses
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !117 ; 2 uses
  %i.vw = add i8 %i.vv, -48                       ; 2 uses
  %i.vx = icmp ult i8 %i.vw, 10
  br i1 %i.vx, label %.lr.ph659.i81, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74

.lr.ph659.i81:                                    ; preds = %bb.cz, %.lr.ph659.i81
  %i.vy = phi i8 [ %i.we, %.lr.ph659.i81 ], [ %i.vw, %bb.cz ]
  %.168.i.i658.i82 = phi ptr [ %i.wc, %.lr.ph659.i81 ], [ %i.vu, %bb.cz ]
  %.6657.i83 = phi i64 [ %i.wb, %.lr.ph659.i81 ], [ %i.vt, %bb.cz ]
  %i.vz = mul i64 %.6657.i83, 10
  %i.wa = zext nneg i8 %i.vy to i64
  %i.wb = add i64 %i.vz, %i.wa                    ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.168.i.i658.i82, i64 1 ; 3 uses
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !117 ; 2 uses
  %i.we = add i8 %i.wd, -48                       ; 2 uses
  %i.wf = icmp ult i8 %i.we, 10
  br i1 %i.wf, label %.lr.ph659.i81, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74, !llvm.loop !2

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74: ; preds = %.lr.ph659.i81, %bb.cz
  %i.wg = phi i8 [ %i.vv, %bb.cz ], [ %i.wd, %.lr.ph659.i81 ] ; 2 uses
  %.6.lcssa.i75 = phi i64 [ %i.vt, %bb.cz ], [ %i.wb, %.lr.ph659.i81 ] ; 2 uses
  %.168.i.i.lcssa.i76 = phi ptr [ %i.vu, %bb.cz ], [ %i.wc, %.lr.ph659.i81 ] ; 3 uses
  %i.wh = ptrtoint ptr %.168.i.i.lcssa.i76 to i64 ; 3 uses
  %i.wi = ptrtoint ptr %i.vn to i64
  %.neg.i.i.i77 = sub i64 %i.wi, %i.wh            ; 2 uses
  %i.wj = ptrtoint ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.wk = sub i64 %i.wj, %i.wh
  %i.wl = icmp slt i64 %i.wk, -20                 ; 2 uses
  %i.wm = and i1 %i.vb, %i.wl
  br i1 %i.wm, label %bb.da, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45, !prof !142

bb.da:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i78.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.uw, i64 3, i64 2
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i78.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.i78.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.0.i.i61.i80 = phi ptr [ %.sroa.sel.sroa.sel.v.sroa.sel.v.i78.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.da ], [ %i.wp, %bb.db ] ; 3 uses
  %i.wn = load i8, ptr %.0.i.i61.i80, align 1, !tbaa !117
  %i.wo = icmp eq i8 %i.wn, 48
  %i.wp = getelementptr inbounds nuw i8, ptr %.0.i.i61.i80, i64 1
  br i1 %i.wo, label %bb.db, label %bb.dc, !llvm.loop !3

bb.dc:                                            ; preds = %bb.db
  %i.wq = ptrtoint ptr %.0.i.i61.i80 to i64
  %i.wr = sub i64 %i.wh, %i.wq
  %i.ws = icmp sgt i64 %i.wr, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45

bb.dd:                                            ; preds = %.thread.i39
  %i.wt = icmp samesign ugt i64 %.067.idx.i.i.lcssa650712725.i40, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45: ; preds = %bb.dd, %bb.dc, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74
  %i.wu = phi i8 [ %.lcssa714723.i42, %bb.dd ], [ %i.wg, %bb.dc ], [ %i.wg, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ] ; 2 uses
  %.3.i46 = phi i64 [ %.1529.lcssa713724.i41, %bb.dd ], [ %.6.lcssa.i75, %bb.dc ], [ %.6.lcssa.i75, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ] ; 4 uses
  %.370.i.i.i47 = phi ptr [ %.067.ptr.i.i.le715722.i44, %bb.dd ], [ %.168.i.i.lcssa.i76, %bb.dc ], [ %.168.i.i.lcssa.i76, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ] ; 2 uses
  %.163.i.i.i48 = phi i64 [ 0, %bb.dd ], [ %.neg.i.i.i77, %bb.dc ], [ %.neg.i.i.i77, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ] ; 2 uses
  %.2.i.i.i49 = phi i1 [ %i.wt, %bb.dd ], [ %i.ws, %bb.dc ], [ %i.wl, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i74 ]
  switch i8 %i.wu, label %bb.dg [
    i8 101, label %bb.de
    i8 69, label %bb.de
  ]

bb.de:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45
  %i.wv = getelementptr inbounds nuw i8, ptr %.370.i.i.i47, i64 1 ; 2 uses
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !117 ; 2 uses
  %i.wx = icmp eq i8 %i.ww, 45                    ; 2 uses
  %i.wy = icmp eq i8 %i.ww, 43
  %narrow646.i50 = or i1 %i.wx, %i.wy
  %.sroa.gep675.i51 = getelementptr inbounds nuw i8, ptr %.370.i.i.i47, i64 2
  %.sroa.sel.i52 = select i1 %narrow646.i50, ptr %.sroa.gep675.i51, ptr %i.wv ; 3 uses
  %i.wz = load i8, ptr %.sroa.sel.i52, align 1, !tbaa !117
  %i.xa = add i8 %i.wz, -48                       ; 2 uses
  %i.xb = icmp ult i8 %i.xa, 10
  br i1 %i.xb, label %.lr.ph664.i53, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

.lr.ph664.i53:                                    ; preds = %bb.de, %.lr.ph664.i53
  %i.xc = phi i8 [ %i.xi, %.lr.ph664.i53 ], [ %i.xa, %bb.de ]
  %.4.i.i663.i54 = phi ptr [ %i.xg, %.lr.ph664.i53 ], [ %.sroa.sel.i52, %bb.de ]
  %.0532662.i55 = phi i64 [ %i.xf, %.lr.ph664.i53 ], [ 0, %bb.de ]
  %i.xd = mul i64 %.0532662.i55, 10
  %i.xe = zext nneg i8 %i.xc to i64
  %i.xf = add i64 %i.xd, %i.xe                    ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.4.i.i663.i54, i64 1 ; 3 uses
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !117 ; 2 uses
  %i.xi = add i8 %i.xh, -48                       ; 2 uses
  %i.xj = icmp ult i8 %i.xi, 10
  br i1 %i.xj, label %.lr.ph664.i53, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56, !llvm.loop !4

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56: ; preds = %.lr.ph664.i53
  %i.xk = ptrtoint ptr %.sroa.sel.i52 to i64
  %i.xl = ptrtoint ptr %i.xg to i64
  %i.xm = sub i64 %i.xl, %i.xk
  %i.xn = icmp sgt i64 %i.xm, 19
  br i1 %i.xn, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27, label %bb.df

bb.df:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56
  %i.xo = sub i64 0, %i.xf
  %i.xp = select i1 %i.wx, i64 %i.xo, i64 %i.xf
  %i.xq = add i64 %i.xp, %.163.i.i.i48
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45
  %i.xr = phi i8 [ %i.xh, %bb.df ], [ %i.wu, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45 ]
  %.3.i.i.i57 = phi i64 [ %i.xq, %bb.df ], [ %.163.i.i.i48, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit3.i.i45 ] ; 5 uses
  %i.xs = zext i8 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !143, !range !120, !noundef !121
  %.not76.i.i.i58 = icmp eq i8 %i.xu, 0
  br i1 %.not76.i.i.i58, label %bb.dh, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.dh:                                            ; preds = %bb.dg
  %i.xv = add i64 %.3.i.i.i57, -309
  %i.xw = icmp ult i64 %i.xv, -651
  %.not78.i.i.i59 = select i1 %.2.i.i.i49, i1 true, i1 %i.xw
  br i1 %.not78.i.i.i59, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i70, label %bb.di, !prof !142

bb.di:                                            ; preds = %bb.dh
  %i.xx = add nsw i64 %.3.i.i.i57, 22
  %or.cond.i7.i.i60 = icmp ult i64 %i.xx, 45
  %i.xy = icmp ult i64 %.3.i46, 9007199254740992
  %or.cond3.i.i.i61 = and i1 %i.xy, %or.cond.i7.i.i60
  %i.xz = icmp eq i64 %.3.i46, 0
  %or.cond.i62 = or i1 %i.xz, %or.cond3.i.i.i61
  br i1 %or.cond.i62, label %bb.dp, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ya = mul nsw i64 %.3.i.i.i57, 217706
  %i.yb = ashr i64 %i.ya, 16
  %i.yc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.3.i46, i1 true) ; 2 uses
  %i.yd = shl i64 %.3.i46, %i.yc
  %i.ye = trunc nsw i64 %.3.i.i.i57 to i32
  %i.yf = shl nsw i32 %i.ye, 1
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.yg ; 2 uses
  %i.yi = getelementptr i8, ptr %i.yh, i64 5472
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !144
  %i.yk = zext i64 %i.yd to i128                  ; 2 uses
  %i.yl = zext i64 %i.yj to i128
  %i.ym = mul nuw i128 %i.yl, %i.yk               ; 2 uses
  %i.yn = trunc i128 %i.ym to i64                 ; 2 uses
  %i.yo = lshr i128 %i.ym, 64
  %i.yp = trunc nuw i128 %i.yo to i64             ; 3 uses
  %i.yq = and i64 %i.yp, 511
  %i.yr = icmp eq i64 %i.yq, 511
  br i1 %i.yr, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ys = getelementptr i8, ptr %i.yh, i64 5480
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !144
  %15 = zext i64 %i.yt to i128
  %16 = mul nuw i128 %15, %i.yk
  %17 = lshr i128 %16, 64
  %18 = trunc nuw i128 %17 to i64                 ; 2 uses
  %i.yu = add i64 %18, %i.yn                      ; 2 uses
  %19 = icmp ult i64 %i.yu, %18
  %i.yv = zext i1 %19 to i64
  %spec.select.i.i.i73 = add nuw i64 %i.yv, %i.yp
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sroa.7.1.i.i.i63 = phi i64 [ %spec.select.i.i.i73, %bb.dk ], [ %i.yp, %bb.dj ] ; 3 uses
  %.sroa.037.0.i.i.i64 = phi i64 [ %i.yu, %bb.dk ], [ %i.yn, %bb.dj ]
  %i.yw = lshr i64 %.sroa.7.1.i.i.i63, 63         ; 2 uses
  %i.yx = add nuw nsw i64 %i.yw, 9                ; 2 uses
  %i.yy = lshr i64 %.sroa.7.1.i.i.i63, %i.yx      ; 5 uses
  %reass.sub.i65 = sub nsw i64 %i.yb, %i.yc
  %.neg667.i66 = add nsw i64 %i.yw, %reass.sub.i65 ; 2 uses
  %i.yz = add nsw i64 %.neg667.i66, 1086
  %i.za = icmp slt i64 %.neg667.i66, -1085
  br i1 %i.za, label %bb.dp, label %bb.dm, !prof !142

bb.dm:                                            ; preds = %bb.dl
  %i.zb = icmp ult i64 %.sroa.037.0.i.i.i64, 2
  %i.zc = add nsw i64 %.3.i.i.i57, 4
  %i.zd = icmp ult i64 %i.zc, 28
  %or.cond7.i.i.i67 = and i1 %i.zd, %i.zb
  %i.ze = and i64 %i.yy, 3
  %i.zf = icmp eq i64 %i.ze, 1
  %i.zg = select i1 %or.cond7.i.i.i67, i1 %i.zf, i1 false
  br i1 %i.zg, label %bb.dn, label %bb.do, !prof !142

bb.dn:                                            ; preds = %bb.dm
  %i.zh = shl i64 %i.yy, %i.yx
  %i.zi = icmp eq i64 %i.zh, %.sroa.7.1.i.i.i63
  %i.zj = and i64 %i.yy, 72057594037927932
  %spec.select90.i.i.i72 = select i1 %i.zi, i64 %i.zj, i64 %i.yy
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.080.i.i.i68 = phi i64 [ %i.yy, %bb.dm ], [ %spec.select90.i.i.i72, %bb.dn ] ; 2 uses
  %i.zk = and i64 %.080.i.i.i68, 1
  %i.zl = add nuw nsw i64 %i.zk, %.080.i.i.i68
  %i.zm = icmp samesign ugt i64 %i.zl, 18014398509481983
  %i.zn = zext i1 %i.zm to i64
  %spec.select92.i.i.i69 = add nuw nsw i64 %i.yz, %i.zn
  %i.zo = icmp samesign ugt i64 %spec.select92.i.i.i69, 2046
  br i1 %i.zo, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i70, label %bb.dp, !prof !142

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i70: ; preds = %bb.do, %bb.dh
  %i.zp = getelementptr inbounds i8, ptr %.sroa.sel.idx.sroa.sel.idx.i33.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.neg79.i.i.i32
  %i.zq = call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.zp) #26
  %i.zr = call double @llvm.fabs.f64(double %i.zq)
  %spec.select.i.i71 = fcmp ule double %i.zr, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i.i71, label %bb.dp, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.dp:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i70, %bb.do, %bb.dl, %bb.di
  %i.zs = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !124
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !133
  %i.zx = icmp eq i32 %i.zw, 1
  br i1 %i.zx, label %bb.dq, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.dq:                                            ; preds = %bb.dp
  %i.zy = load ptr, ptr %i.uk, align 8, !tbaa !118 ; 2 uses
  %i.zz = icmp eq ptr %i.zy, %i.uc
  br i1 %i.zz, label %bb.dr, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.dr:                                            ; preds = %bb.dq
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 4
  store ptr %i.aaa, ptr %i.uk, align 8, !tbaa !118
  store i32 0, ptr %i.r, align 4, !tbaa !135
  br label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27: ; preds = %bb.dr, %bb.dq, %bb.dp, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i70, %bb.dg, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56, %bb.de, %bb.cy, %bb.cx, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i24
  %.sroa.6401.1.i28 = phi i32 [ 9, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i24 ], [ 31, %bb.dp ], [ 0, %bb.dr ], [ 0, %bb.dq ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38 ], [ 9, %bb.dg ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56 ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i70 ], [ 9, %bb.cy ], [ 9, %bb.cx ], [ 9, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit91.i140: ; preds = %bb.bx
  %i.aab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !116, !noalias !2742
  %i.aad = sub i32 %i.aac, %i.pv
  %i.aae = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !116, !noalias !2742
  %i.aag = sub i32 %i.aaf, %i.pv
  %..i.i87.i141 = call i32 @llvm.umin.i32(i32 %i.aad, i32 %i.aag)
  %i.aah = zext i32 %..i.i87.i141 to i64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i147, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit91.i140
  %.0.i106.i142 = phi i64 [ %i.aah, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit91.i140 ], [ %i.aai, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i147 ] ; 2 uses
  %i.aai = add i64 %.0.i106.i142, -1              ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.aai
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !117 ; 2 uses
  %i.aal = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.aam = icmp eq i8 %i.aal, 0
  br i1 %i.aam, label %bb.dt, label %bb.du, !prof !831

bb.dt:                                            ; preds = %bb.ds
  %i.aan = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i111.i149 = icmp eq i32 %i.aan, 0
  br i1 %.not.i.i111.i149, label %bb.du, label %.noexc.i112.i150

.noexc.i112.i150:                                 ; preds = %bb.dt
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.aao = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.du

bb.du:                                            ; preds = %.noexc.i112.i150, %bb.dt, %bb.ds
  %i.aap = icmp ult i8 %i.aak, 33
  br i1 %i.aap, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i147, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i143

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i147: ; preds = %bb.du
  %i.aaq = zext nneg i8 %i.aak to i64
  %i.aar = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.aas = shl nuw nsw i64 1, %i.aaq
  %i.aat = and i64 %i.aar, %i.aas
  %.not.i110.i148 = icmp eq i64 %i.aat, 0
  br i1 %.not.i110.i148, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i143, label %bb.ds, !llvm.loop !94

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i143: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i109.i147, %bb.du
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i106.i142, ptr nonnull %i.px)
  %i.aau = load ptr, ptr %i.v, align 8, !tbaa !114, !noalias !2743 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !118, !noalias !2744 ; 3 uses
  %i.aax = icmp eq ptr %i.aaw, %i.aau             ; 2 uses
  %spec.select757.i144 = select i1 %i.aax, ptr %i.aaw, ptr %i.aau
  %i.aay = load ptr, ptr %9, align 8, !tbaa !115, !noalias !2744
  %i.aaz = load i32, ptr %spec.select757.i144, align 4, !tbaa !116, !noalias !2744
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 %i.aba ; 2 uses
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !117, !noalias !2744
  %.not.i67.i145 = icmp eq i8 %i.abc, 34
  br i1 %.not.i67.i145, label %bb.dv, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.dv:                                            ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i143
  %i.abd = load ptr, ptr %i.k, align 8, !tbaa !122, !noalias !2744
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !124, !noalias !2744 ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !133, !noalias !2744
  %i.abi = icmp eq i32 %i.abh, 1
  br i1 %i.abi, label %bb.dw, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.aax, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaw, i64 4
  store ptr %i.abj, ptr %i.aav, align 8, !tbaa !118, !noalias !2744
  store i32 0, ptr %i.r, align 4, !tbaa !135, !noalias !2744
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  %i.abl = load ptr, ptr %i.m, align 8, !tbaa !145, !noalias !2745
  %i.abm = load ptr, ptr %i.abf, align 8, !tbaa !147, !noalias !2745
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 32
  %i.abo = load ptr, ptr %i.abn, align 8, !noalias !2745
  %i.abp = call noundef ptr %i.abo(ptr noundef nonnull align 8 dereferenceable(48) %i.abf, ptr noundef nonnull %i.abk, ptr noundef %i.abl, i1 noundef zeroext true) #26, !noalias !2745, !inline_history !2720 ; 2 uses
  %.not.i2.i.i146 = icmp eq ptr %i.abp, null
  br i1 %.not.i2.i.i146, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store ptr %i.abp, ptr %i.m, align 8, !tbaa !145, !noalias !2745
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread188

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit93.i95: ; preds = %bb.bx, %bb.bx
  %i.abq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !116, !noalias !2746
  %i.abs = sub i32 %i.abr, %i.pv
  %i.abt = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !116, !noalias !2746
  %i.abv = sub i32 %i.abu, %i.pv
  %..i.i86.i96 = call i32 @llvm.umin.i32(i32 %i.abs, i32 %i.abv)
  %i.abw = zext i32 %..i.i86.i96 to i64
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117.i113, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit93.i95
  %.0.i114.i97 = phi i64 [ %i.abw, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit93.i95 ], [ %i.abx, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117.i113 ] ; 2 uses
  %i.abx = add i64 %.0.i114.i97, -1               ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.abx
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !117 ; 2 uses
  %i.aca = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.acb = icmp eq i8 %i.aca, 0
  br i1 %i.acb, label %bb.eb, label %bb.ec, !prof !831

bb.eb:                                            ; preds = %bb.ea
  %i.acc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i119.i115 = icmp eq i32 %i.acc, 0
  br i1 %.not.i.i119.i115, label %bb.ec, label %.noexc.i120.i116

.noexc.i120.i116:                                 ; preds = %bb.eb
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.acd = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.ec

bb.ec:                                            ; preds = %.noexc.i120.i116, %bb.eb, %bb.ea
  %i.ace = icmp ult i8 %i.abz, 33
  br i1 %i.ace, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117.i113, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121.i98

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117.i113: ; preds = %bb.ec
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !118 ; 5 uses
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !224 ; 3 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  %spec.select549 = select i1 %i.ci, ptr %i.cg, ptr %i.ch
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !115
  %i.ck = load i32, ptr %spec.select549, align 4, !tbaa !116
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !117
  %i.co = icmp eq i8 %i.cn, 45                    ; 2 uses
  %.neg79.i = sext i1 %i.co to i64
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp ; 7 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !117
  %i.cs = add i8 %i.cr, -48                       ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 10                   ; 3 uses
  %narrow = select i1 %i.ct, i8 %i.cs, i8 0       ; 2 uses
  %spec.select = zext i8 %narrow to i64           ; 2 uses
  %i.cu = zext i1 %i.ct to i64                    ; 3 uses
  %i.cv = icmp eq i8 %narrow, 0                   ; 2 uses
  %.067.ptr.i439 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cu
  %i.cw = load i8, ptr %.067.ptr.i439, align 1, !tbaa !117 ; 2 uses
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
  %i.dd = load i8, ptr %.067.ptr.i, align 1, !tbaa !117 ; 2 uses
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
  %.067.idx.i.lcssa438502515 = phi i64 [ %.067.add.i, %bb.o ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ]
  %.0324.lcssa503514 = phi i64 [ %i.dc, %bb.o ], [ %spec.select, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ] ; 2 uses
  %.lcssa504513 = phi i8 [ %i.dd, %bb.o ], [ %i.cw, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ] ; 2 uses
  %.067.add.i.pn = phi i64 [ %.067.add.i, %bb.o ], [ %i.cu, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ]
  %.067.ptr.i.le505512 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.067.add.i.pn ; 3 uses
  %i.dg = icmp eq i8 %.lcssa504513, 46
  br i1 %i.dg, label %bb.p, label %bb.u, !prof !141

bb.p:                                             ; preds = %.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le505512, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !117
  %i.dj = add i8 %i.di, -48                       ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.q, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.q:                                             ; preds = %bb.p
  %i.dl = mul i64 %.0324.lcssa503514, 10
  %i.dm = zext nneg i8 %i.dj to i64
  %i.dn = add i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le505512, i64 2 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !117 ; 2 uses
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
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !117 ; 2 uses
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
  br i1 %i.eg, label %bb.r, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53, !prof !142

bb.r:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.i = phi ptr [ %i.eh, %bb.r ], [ %i.ek, %bb.s ] ; 3 uses
  %i.ei = load i8, ptr %.0.i, align 1, !tbaa !117
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
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !117 ; 2 uses
  %i.es = icmp eq i8 %i.er, 45                    ; 2 uses
  %i.et = icmp eq i8 %i.er, 43
  %narrow433 = or i1 %i.es, %i.et
  %i.eu = zext i1 %narrow433 to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eu ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !117
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
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !117 ; 2 uses
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
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !143, !range !120, !noundef !121
  %.not76.i = icmp eq i8 %i.fr, 0
  br i1 %.not76.i, label %bb.y, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.y:                                             ; preds = %bb.x
  %i.fs = add i64 %.3.i, -309
  %i.ft = icmp ult i64 %i.fs, -651
  %.not78.i = select i1 %.2.i, i1 true, i1 %i.ft
  br i1 %.not78.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.z, !prof !142

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
  %i.ga = shl i64 %.1325, %i.fz
  %i.gb = trunc nsw i64 %.3.i to i32
  %i.gc = shl nsw i32 %i.gb, 1
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.gd ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 5472
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !144
  %i.gh = zext i64 %i.ga to i128                  ; 2 uses
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
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !144
  %4 = zext i64 %i.gq to i128
  %5 = mul nuw i128 %4, %i.gh
  %6 = lshr i128 %5, 64
  %7 = trunc nuw i128 %6 to i64                   ; 2 uses
  %i.gr = add i64 %7, %i.gk                       ; 2 uses
  %8 = icmp ult i64 %i.gr, %7
  %i.gs = zext i1 %8 to i64
  %spec.select.i = add nuw i64 %i.gs, %i.gm
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %bb.ab ], [ %i.gm, %bb.aa ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.gr, %bb.ab ], [ %i.gk, %bb.aa ]
  %i.gt = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.gu = add nuw nsw i64 %i.gt, 9                ; 2 uses
  %i.gv = lshr i64 %.sroa.7.1.i, %i.gu            ; 5 uses
  %reass.sub = sub nsw i64 %i.fy, %i.fz
  %.neg455 = add nsw i64 %reass.sub, %i.gt        ; 2 uses
  %i.gw = add nsw i64 %.neg455, 1086
  %i.gx = icmp slt i64 %.neg455, -1085
  br i1 %i.gx, label %bb.ag, label %bb.ad, !prof !142

bb.ad:                                            ; preds = %bb.ac
  %i.gy = icmp ult i64 %.sroa.037.0.i, 2
  %i.gz = add nsw i64 %.3.i, 4
  %i.ha = icmp ult i64 %i.gz, 28
  %or.cond7.i = and i1 %i.ha, %i.gy
  %i.hb = and i64 %i.gv, 3
  %i.hc = icmp eq i64 %i.hb, 1
  %i.hd = select i1 %or.cond7.i, i1 %i.hc, i1 false
  br i1 %i.hd, label %bb.ae, label %bb.af, !prof !142

bb.ae:                                            ; preds = %bb.ad
  %i.he = shl i64 %i.gv, %i.gu
  %i.hf = icmp eq i64 %i.he, %.sroa.7.1.i
  %i.hg = and i64 %i.gv, 72057594037927932
  %spec.select90.i = select i1 %i.hf, i64 %i.hg, i64 %i.gv
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.080.i = phi i64 [ %i.gv, %bb.ad ], [ %spec.select90.i, %bb.ae ] ; 2 uses
  %i.hh = and i64 %.080.i, 1
  %i.hi = add nuw nsw i64 %i.hh, %.080.i
  %i.hj = icmp samesign ugt i64 %i.hi, 18014398509481983
  %i.hk = zext i1 %i.hj to i64
  %spec.select92.i = add nuw nsw i64 %i.gw, %i.hk
  %i.hl = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.hl, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.ag, !prof !142

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit: ; preds = %bb.af, %bb.y
  %i.hm = getelementptr inbounds i8, ptr %i.cq, i64 %.neg79.i
  %i.hn = tail call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.hm) #26
  %i.ho = tail call double @llvm.fabs.f64(double %i.hn)
  %spec.select.i115 = fcmp ule double %i.ho, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i115, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !118
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, %bb.ac, %bb.z, %bb.af
  %i.hp = phi ptr [ %.pre, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge ], [ %i.cg, %bb.ac ], [ %i.cg, %bb.z ], [ %i.cg, %bb.af ] ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ch
  br i1 %i.hq, label %bb.ah, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ce, i64 36 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !135 ; 4 uses
  %i.ht = load i32, ptr %i.cd, align 8, !tbaa !225
  %i.hu = icmp eq i32 %i.hs, %i.ht
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = icmp sgt i32 %i.hs, 1
  tail call void @llvm.assume(i1 %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  store ptr %i.hw, ptr %i.cf, align 8, !tbaa !118
  %i.hx = add nsw i32 %i.hs, -1
  %or.cond.i.i52 = icmp ne i32 %i.hs, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i52)
  store i32 %i.hx, ptr %i.hr, align 4, !tbaa !135
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ai:                                            ; preds = %bb.a
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !116
  %i.ib = sub i32 %i.ia, %i.e
  %i.ic = zext i32 %i.ib to i64
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119, %bb.ai
  %.0.i116 = phi i64 [ %i.ic, %bb.ai ], [ %i.id, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119 ] ; 2 uses
  %i.id = add i64 %.0.i116, -1                    ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !117 ; 2 uses
  %i.ig = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %bb.ak, label %bb.al, !prof !831

bb.ak:                                            ; preds = %bb.aj
  %i.ii = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i121 = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i121, label %bb.al, label %.noexc.i122

.noexc.i122:                                      ; preds = %bb.ak
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.ij = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.al

bb.al:                                            ; preds = %.noexc.i122, %bb.ak, %bb.aj
  %i.ik = icmp ult i8 %i.if, 33
  br i1 %i.ik, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119: ; preds = %bb.al
  %i.il = zext nneg i8 %i.if to i64
  %i.im = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.in = shl nuw nsw i64 1, %i.il
  %i.io = and i64 %i.im, %i.in
  %.not.i120 = icmp eq i64 %i.io, 0
  br i1 %.not.i120, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123, label %bb.aj, !llvm.loop !94

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123: ; preds = %bb.al, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i64 %.0.i116, ptr nonnull %i.g)
  %i.ip = load ptr, ptr %1, align 8, !tbaa !223, !noalias !2813 ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !118, !noalias !2813 ; 3 uses
  %i.is = load ptr, ptr %i.b, align 8, !tbaa !224, !noalias !2813 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 36 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !135, !noalias !2813 ; 4 uses
  %i.ix = load i32, ptr %i.iu, align 8, !tbaa !225, !noalias !2813
  %i.iy = icmp eq i32 %i.iw, %i.ix
  tail call void @llvm.assume(i1 %i.iy), !noalias !2813
  %i.iz = icmp sgt i32 %i.iw, 0
  tail call void @llvm.assume(i1 %i.iz), !noalias !2813
  %i.ja = load ptr, ptr %i.ip, align 8, !tbaa !115, !noalias !2813
  %i.jb = load i32, ptr %i.ir, align 4, !tbaa !116, !noalias !2813
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jc ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !117, !noalias !2813
  %.not.i65 = icmp eq i8 %i.je, 34
  br i1 %.not.i65, label %bb.am, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123
  %i.jf = load ptr, ptr %i.ip, align 8, !tbaa !115, !noalias !2813
  %i.jg = load i32, ptr %i.is, align 4, !tbaa !116, !noalias !2813
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jh ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !117, !noalias !2813
  %.not.i65417 = icmp eq i8 %i.jj, 34
  br i1 %.not.i65417, label %.thread419, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.am:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store ptr %i.jk, ptr %i.iq, align 8, !tbaa !118, !noalias !2813
  %i.jl = add nsw i32 %i.iw, -1
  %or.cond.i.i73 = icmp ne i32 %i.iw, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i73), !noalias !2813
  store i32 %i.jl, ptr %i.iv, align 4, !tbaa !135, !noalias !2813
  br label %.thread419

.thread419:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread, %bb.am
  %.0.i72418421 = phi ptr [ %i.jd, %bb.am ], [ %i.ji, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i72418421, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !122, !noalias !2814
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !124, !noalias !2815 ; 2 uses
  %i.js = load ptr, ptr %i.jp, align 8, !tbaa !145, !noalias !2815
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !147, !noalias !2815
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !2815
  %i.jw = tail call noundef ptr %i.jv(ptr noundef nonnull align 8 dereferenceable(48) %i.jr, ptr noundef nonnull %i.jm, ptr noundef %i.js, i1 noundef zeroext true) #26, !noalias !2815, !inline_history !12 ; 2 uses
  %.not.i74 = icmp eq ptr %i.jw, null
  br i1 %.not.i74, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.an

bb.an:                                            ; preds = %.thread419
  store ptr %i.jw, ptr %i.jp, align 8, !tbaa !145, !noalias !2815
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ao:                                            ; preds = %bb.a, %bb.a
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !116
  %i.ka = sub i32 %i.jz, %i.e
  %i.kb = zext i32 %i.ka to i64
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i127, %bb.ao
  %.0.i124 = phi i64 [ %i.kb, %bb.ao ], [ %i.kc, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i127 ] ; 2 uses
  %i.kc = add i64 %.0.i124, -1                    ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !117 ; 2 uses
  %i.kf = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.kg = icmp eq i8 %i.kf, 0
  br i1 %i.kg, label %bb.aq, label %bb.ar, !prof !831

bb.aq:                                            ; preds = %bb.ap
  %i.kh = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i129 = icmp eq i32 %i.kh, 0
  br i1 %.not.i.i129, label %bb.ar, label %.noexc.i130

end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !118 ; 5 uses
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !224 ; 3 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  %spec.select549 = select i1 %i.ci, ptr %i.cg, ptr %i.ch
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !115
  %i.ck = load i32, ptr %spec.select549, align 4, !tbaa !116
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !117
  %i.co = icmp eq i8 %i.cn, 45                    ; 2 uses
  %.neg79.i = sext i1 %i.co to i64
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp ; 7 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !117
  %i.cs = add i8 %i.cr, -48                       ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 10                   ; 3 uses
  %narrow = select i1 %i.ct, i8 %i.cs, i8 0       ; 2 uses
  %spec.select = zext i8 %narrow to i64           ; 2 uses
  %i.cu = zext i1 %i.ct to i64                    ; 3 uses
  %i.cv = icmp eq i8 %narrow, 0                   ; 2 uses
  %.067.ptr.i439 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cu
  %i.cw = load i8, ptr %.067.ptr.i439, align 1, !tbaa !117 ; 2 uses
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
  %i.dd = load i8, ptr %.067.ptr.i, align 1, !tbaa !117 ; 2 uses
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
  %.067.idx.i.lcssa438502515 = phi i64 [ %.067.add.i, %bb.o ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ]
  %.0324.lcssa503514 = phi i64 [ %i.dc, %bb.o ], [ %spec.select, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ] ; 2 uses
  %.lcssa504513 = phi i8 [ %i.dd, %bb.o ], [ %i.cw, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ] ; 2 uses
  %.067.add.i.pn = phi i64 [ %.067.add.i, %bb.o ], [ %i.cu, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit55 ]
  %.067.ptr.i.le505512 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.067.add.i.pn ; 3 uses
  %i.dg = icmp eq i8 %.lcssa504513, 46
  br i1 %i.dg, label %bb.p, label %bb.u, !prof !141

bb.p:                                             ; preds = %.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le505512, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !117
  %i.dj = add i8 %i.di, -48                       ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.q, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.q:                                             ; preds = %bb.p
  %i.dl = mul i64 %.0324.lcssa503514, 10
  %i.dm = zext nneg i8 %i.dj to i64
  %i.dn = add i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le505512, i64 2 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !117 ; 2 uses
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
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !117 ; 2 uses
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
  br i1 %i.eg, label %bb.r, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53, !prof !142

bb.r:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.i = phi ptr [ %i.eh, %bb.r ], [ %i.ek, %bb.s ] ; 3 uses
  %i.ei = load i8, ptr %.0.i, align 1, !tbaa !117
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
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !117 ; 2 uses
  %i.es = icmp eq i8 %i.er, 45                    ; 2 uses
  %i.et = icmp eq i8 %i.er, 43
  %narrow433 = or i1 %i.es, %i.et
  %i.eu = zext i1 %narrow433 to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eu ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !117
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
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !117 ; 2 uses
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
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !143, !range !120, !noundef !121
  %.not76.i = icmp eq i8 %i.fr, 0
  br i1 %.not76.i, label %bb.y, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.y:                                             ; preds = %bb.x
  %i.fs = add i64 %.3.i, -309
  %i.ft = icmp ult i64 %i.fs, -651
  %.not78.i = select i1 %.2.i, i1 true, i1 %i.ft
  br i1 %.not78.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.z, !prof !142

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
  %i.ga = shl i64 %.1325, %i.fz
  %i.gb = trunc nsw i64 %.3.i to i32
  %i.gc = shl nsw i32 %i.gb, 1
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.gd ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 5472
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !144
  %i.gh = zext i64 %i.ga to i128                  ; 2 uses
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
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !144
  %4 = zext i64 %i.gq to i128
  %5 = mul nuw i128 %4, %i.gh
  %6 = lshr i128 %5, 64
  %7 = trunc nuw i128 %6 to i64                   ; 2 uses
  %i.gr = add i64 %7, %i.gk                       ; 2 uses
  %8 = icmp ult i64 %i.gr, %7
  %i.gs = zext i1 %8 to i64
  %spec.select.i = add nuw i64 %i.gs, %i.gm
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %bb.ab ], [ %i.gm, %bb.aa ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.gr, %bb.ab ], [ %i.gk, %bb.aa ]
  %i.gt = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.gu = add nuw nsw i64 %i.gt, 9                ; 2 uses
  %i.gv = lshr i64 %.sroa.7.1.i, %i.gu            ; 5 uses
  %reass.sub = sub nsw i64 %i.fy, %i.fz
  %.neg455 = add nsw i64 %reass.sub, %i.gt        ; 2 uses
  %i.gw = add nsw i64 %.neg455, 1086
  %i.gx = icmp slt i64 %.neg455, -1085
  br i1 %i.gx, label %bb.ag, label %bb.ad, !prof !142

bb.ad:                                            ; preds = %bb.ac
  %i.gy = icmp ult i64 %.sroa.037.0.i, 2
  %i.gz = add nsw i64 %.3.i, 4
  %i.ha = icmp ult i64 %i.gz, 28
  %or.cond7.i = and i1 %i.ha, %i.gy
  %i.hb = and i64 %i.gv, 3
  %i.hc = icmp eq i64 %i.hb, 1
  %i.hd = select i1 %or.cond7.i, i1 %i.hc, i1 false
  br i1 %i.hd, label %bb.ae, label %bb.af, !prof !142

bb.ae:                                            ; preds = %bb.ad
  %i.he = shl i64 %i.gv, %i.gu
  %i.hf = icmp eq i64 %i.he, %.sroa.7.1.i
  %i.hg = and i64 %i.gv, 72057594037927932
  %spec.select90.i = select i1 %i.hf, i64 %i.hg, i64 %i.gv
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.080.i = phi i64 [ %i.gv, %bb.ad ], [ %spec.select90.i, %bb.ae ] ; 2 uses
  %i.hh = and i64 %.080.i, 1
  %i.hi = add nuw nsw i64 %i.hh, %.080.i
  %i.hj = icmp samesign ugt i64 %i.hi, 18014398509481983
  %i.hk = zext i1 %i.hj to i64
  %spec.select92.i = add nuw nsw i64 %i.gw, %i.hk
  %i.hl = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.hl, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.ag, !prof !142

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit: ; preds = %bb.af, %bb.y
  %i.hm = getelementptr inbounds i8, ptr %i.cq, i64 %.neg79.i
  %i.hn = tail call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.hm) #26
  %i.ho = tail call double @llvm.fabs.f64(double %i.hn)
  %spec.select.i115 = fcmp ule double %i.ho, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i115, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !118
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, %bb.ac, %bb.z, %bb.af
  %i.hp = phi ptr [ %.pre, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge ], [ %i.cg, %bb.ac ], [ %i.cg, %bb.z ], [ %i.cg, %bb.af ] ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ch
  br i1 %i.hq, label %bb.ah, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ce, i64 36 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !135 ; 4 uses
  %i.ht = load i32, ptr %i.cd, align 8, !tbaa !225
  %i.hu = icmp eq i32 %i.hs, %i.ht
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = icmp sgt i32 %i.hs, 1
  tail call void @llvm.assume(i1 %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  store ptr %i.hw, ptr %i.cf, align 8, !tbaa !118
  %i.hx = add nsw i32 %i.hs, -1
  %or.cond.i.i52 = icmp ne i32 %i.hs, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i52)
  store i32 %i.hx, ptr %i.hr, align 4, !tbaa !135
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ai:                                            ; preds = %bb.a
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !116
  %i.ib = sub i32 %i.ia, %i.e
  %i.ic = zext i32 %i.ib to i64
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119, %bb.ai
  %.0.i116 = phi i64 [ %i.ic, %bb.ai ], [ %i.id, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119 ] ; 2 uses
  %i.id = add i64 %.0.i116, -1                    ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !117 ; 2 uses
  %i.ig = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %bb.ak, label %bb.al, !prof !831

bb.ak:                                            ; preds = %bb.aj
  %i.ii = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i121 = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i121, label %bb.al, label %.noexc.i122

.noexc.i122:                                      ; preds = %bb.ak
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.ij = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.al

bb.al:                                            ; preds = %.noexc.i122, %bb.ak, %bb.aj
  %i.ik = icmp ult i8 %i.if, 33
  br i1 %i.ik, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119: ; preds = %bb.al
  %i.il = zext nneg i8 %i.if to i64
  %i.im = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !144
  %i.in = shl nuw nsw i64 1, %i.il
  %i.io = and i64 %i.im, %i.in
  %.not.i120 = icmp eq i64 %i.io, 0
  br i1 %.not.i120, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123, label %bb.aj, !llvm.loop !94

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123: ; preds = %bb.al, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i119
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i64 %.0.i116, ptr nonnull %i.g)
  %i.ip = load ptr, ptr %1, align 8, !tbaa !223, !noalias !2894 ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !118, !noalias !2894 ; 3 uses
  %i.is = load ptr, ptr %i.b, align 8, !tbaa !224, !noalias !2894 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 36 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !135, !noalias !2894 ; 4 uses
  %i.ix = load i32, ptr %i.iu, align 8, !tbaa !225, !noalias !2894
  %i.iy = icmp eq i32 %i.iw, %i.ix
  tail call void @llvm.assume(i1 %i.iy), !noalias !2894
  %i.iz = icmp sgt i32 %i.iw, 0
  tail call void @llvm.assume(i1 %i.iz), !noalias !2894
  %i.ja = load ptr, ptr %i.ip, align 8, !tbaa !115, !noalias !2894
  %i.jb = load i32, ptr %i.ir, align 4, !tbaa !116, !noalias !2894
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jc ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !117, !noalias !2894
  %.not.i65 = icmp eq i8 %i.je, 34
  br i1 %.not.i65, label %bb.am, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit123
  %i.jf = load ptr, ptr %i.ip, align 8, !tbaa !115, !noalias !2894
  %i.jg = load i32, ptr %i.is, align 4, !tbaa !116, !noalias !2894
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jh ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !117, !noalias !2894
  %.not.i65417 = icmp eq i8 %i.jj, 34
  br i1 %.not.i65417, label %.thread419, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.am:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store ptr %i.jk, ptr %i.iq, align 8, !tbaa !118, !noalias !2894
  %i.jl = add nsw i32 %i.iw, -1
  %or.cond.i.i73 = icmp ne i32 %i.iw, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i73), !noalias !2894
  store i32 %i.jl, ptr %i.iv, align 4, !tbaa !135, !noalias !2894
  br label %.thread419

.thread419:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread, %bb.am
  %.0.i72418421 = phi ptr [ %i.jd, %bb.am ], [ %i.ji, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i72418421, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !122, !noalias !2895
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !124, !noalias !2896 ; 2 uses
  %i.js = load ptr, ptr %i.jp, align 8, !tbaa !145, !noalias !2896
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !147, !noalias !2896
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !2896
  %i.jw = tail call noundef ptr %i.jv(ptr noundef nonnull align 8 dereferenceable(48) %i.jr, ptr noundef nonnull %i.jm, ptr noundef %i.js, i1 noundef zeroext true) #26, !noalias !2896, !inline_history !12 ; 2 uses
  %.not.i74 = icmp eq ptr %i.jw, null
  br i1 %.not.i74, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.an

bb.an:                                            ; preds = %.thread419
  store ptr %i.jw, ptr %i.jp, align 8, !tbaa !145, !noalias !2896
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ao:                                            ; preds = %bb.a, %bb.a
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !116
  %i.ka = sub i32 %i.jz, %i.e
  %i.kb = zext i32 %i.ka to i64
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i127, %bb.ao
  %.0.i124 = phi i64 [ %i.kb, %bb.ao ], [ %i.kc, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i127 ] ; 2 uses
  %i.kc = add i64 %.0.i124, -1                    ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !117 ; 2 uses
  %i.kf = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.kg = icmp eq i8 %i.kf, 0
  br i1 %i.kg, label %bb.aq, label %bb.ar, !prof !831

bb.aq:                                            ; preds = %bb.ap
  %i.kh = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i129 = icmp eq i32 %i.kh, 0
  br i1 %.not.i.i129, label %bb.ar, label %.noexc.i130

end_hunk_5
begin_hunk_6_@_ZN8facebook5velox16JsonCastOperatorD2Ev:bb.a

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.16
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.17) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.17: ; preds = %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.16
  %.ptr1.18 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.z = load ptr, ptr %.ptr1.18, align 8, !tbaa !714
  %.not.i.18 = icmp eq ptr %i.z, null
  br i1 %.not.i.18, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.18, label %bb.t

bb.t:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.17
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.18) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.18

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.18: ; preds = %bb.t, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.17
  %.ptr1.19 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load ptr, ptr %.ptr1.19, align 8, !tbaa !714
  %.not.i.19 = icmp eq ptr %i.aa, null
  br i1 %.not.i.19, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.19, label %bb.u

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.18
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.19) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.19

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.19: ; preds = %bb.u, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.18
  %.ptr1.20 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = load ptr, ptr %.ptr1.20, align 8, !tbaa !714
  %.not.i.20 = icmp eq ptr %i.ab, null
  br i1 %.not.i.20, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.20, label %bb.v

bb.v:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.19
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.20) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.20

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.20: ; preds = %bb.v, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.19
  %.ptr1.21 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = load ptr, ptr %.ptr1.21, align 8, !tbaa !714
  %.not.i.21 = icmp eq ptr %i.ac, null
  br i1 %.not.i.21, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.21, label %bb.w

bb.w:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.20
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.21) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.21

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.21: ; preds = %bb.w, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.20
  %.ptr1.22 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ad = load ptr, ptr %.ptr1.22, align 8, !tbaa !714
  %.not.i.22 = icmp eq ptr %i.ad, null
  br i1 %.not.i.22, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.22, label %bb.x

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.21
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.22) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.22

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.22: ; preds = %bb.x, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.21
  %.ptr1.23 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load ptr, ptr %.ptr1.23, align 8, !tbaa !714
  %.not.i.23 = icmp eq ptr %i.ae, null
  br i1 %.not.i.23, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.23, label %bb.y

bb.y:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.22
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.23) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.23

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.23: ; preds = %bb.y, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.22
  %.ptr1.24 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.af = load ptr, ptr %.ptr1.24, align 8, !tbaa !714
  %.not.i.24 = icmp eq ptr %i.af, null
  br i1 %.not.i.24, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.24, label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.23
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.24) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.24

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.24: ; preds = %bb.z, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.23
  %.ptr1.25 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = load ptr, ptr %.ptr1.25, align 8, !tbaa !714
  %.not.i.25 = icmp eq ptr %i.ag, null
  br i1 %.not.i.25, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.25, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.24
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.25) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.25

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.25: ; preds = %bb.aa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.24
  %.ptr1.26 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %.ptr1.26, align 8, !tbaa !714
  %.not.i.26 = icmp eq ptr %i.ah, null
  br i1 %.not.i.26, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.26, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.25
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.26) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.26

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.26: ; preds = %bb.ab, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.25
  %.ptr1.27 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load ptr, ptr %.ptr1.27, align 8, !tbaa !714
  %.not.i.27 = icmp eq ptr %i.ai, null
  br i1 %.not.i.27, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.27, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.26
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.27) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.27

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.27: ; preds = %bb.ac, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.26
  %.ptr1.28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %.ptr1.28, align 8, !tbaa !714
  %.not.i.28 = icmp eq ptr %i.aj, null
  br i1 %.not.i.28, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.28, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.27
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.28) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.28

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.28: ; preds = %bb.ad, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.27
  %.ptr1.29 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %.ptr1.29, align 8, !tbaa !714
  %.not.i.29 = icmp eq ptr %i.ak, null
  br i1 %.not.i.29, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.29, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.28
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.29) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.29

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.29: ; preds = %bb.ae, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.28
  %.ptr1.30 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = load ptr, ptr %.ptr1.30, align 8, !tbaa !714
  %.not.i.30 = icmp eq ptr %i.al, null
  br i1 %.not.i.30, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.30, label %bb.af

bb.af:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.29
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.30) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.30

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.30: ; preds = %bb.af, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.29
  %.ptr1.31 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %.ptr1.31, align 8, !tbaa !714
  %.not.i.31 = icmp eq ptr %i.am, null
  br i1 %.not.i.31, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.31, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.30
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.31) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.31

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.31: ; preds = %bb.ag, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.30
  %.ptr1.32 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %.ptr1.32, align 8, !tbaa !714
  %.not.i.32 = icmp eq ptr %i.an, null
  br i1 %.not.i.32, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.32, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.31
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.ptr1.32) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.32

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.32: ; preds = %bb.ah, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 4 ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !116
  %.not.i.i = icmp ult i32 %i.ap, 2048
  br i1 %.not.i.i, label %_ZN5folly15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES2_ED2Ev.exit, label %bb.ai, !prof !141

bb.ai:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.32
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE30cleanupTokenlessSharedDeferredERj(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5folly15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES2_ED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #49
  unreachable

_ZN5folly15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES2_ED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.32, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare void @_ZNK8facebook5velox16JsonCastOperator8castFromERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSB_IS2_E(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #31 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #33 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #36 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #37 = { nounwind memory(none) }
attributes #38 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #39 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #40 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #41 = { nofree nounwind }
attributes #42 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #44 = { inlinehint mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { builtin allocsize(0) }
attributes #48 = { builtin nounwind }
attributes #49 = { noreturn nounwind }
attributes #50 = { noreturn }
attributes #51 = { nounwind willreturn memory(read) }
attributes #52 = { cold }
attributes #53 = { allocsize(0) }
attributes #54 = { cold noreturn nounwind }
attributes #55 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!98, !99}
!llvm.ident = !{!100}
!llvm.errno.tbaa = !{!105}

!0 = distinct !{!0, !140}
!1 = distinct !{!1, !140}
!2 = distinct !{!2, !140}
!3 = distinct !{!3, !140}
!4 = distinct !{!4, !140}
!5 = distinct !{null, null}
!6 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{!7, !140}
!8 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!9 = distinct !{!9, !140}
!10 = distinct !{null, null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = distinct !{!14, !140}
!15 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!16 = distinct !{null}
!17 = distinct !{!17, !140}
!18 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!19 = distinct !{null, null, null, null}
!20 = distinct !{null}
!21 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!22 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!23 = distinct !{ptr @_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{!27, !140}
!28 = distinct !{null, null, null}
!29 = distinct !{null, null, null}
!30 = distinct !{!30, !140}
!31 = distinct !{!31, !140}
!32 = distinct !{null, null, null}
!33 = distinct !{!33, !140}
!34 = distinct !{!34, !140}
!35 = distinct !{!35, !140}
!36 = distinct !{!36, !140}
!37 = distinct !{null, null}
!38 = distinct !{!38, !140}
!39 = distinct !{!39, !140}
!40 = distinct !{!40, !140}
!41 = distinct !{null, null}
!42 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!43 = distinct !{null}
!44 = distinct !{!44, !140}
!45 = distinct !{!45, !140}
!46 = distinct !{!46, !140}
!47 = distinct !{!47, !140}
!48 = distinct !{!48, !140}
!49 = distinct !{!49, !140}
!50 = distinct !{!50, !140}
!51 = distinct !{!51, !140}
!52 = distinct !{!52, !140}
!53 = distinct !{!53, !140}
!54 = distinct !{!54, !140}
!55 = distinct !{!55, !140}
!56 = distinct !{!56, !140}
!57 = distinct !{!57, !140}
!58 = distinct !{!58, !140}
!59 = distinct !{!59, !140}
!60 = distinct !{!60, !140}
!61 = distinct !{!61, !140}
!62 = distinct !{!62, !140}
!63 = distinct !{!63, !140}
!64 = distinct !{!64, !140}
!65 = distinct !{!65, !140}
!66 = distinct !{!66, !140}
!67 = distinct !{!67, !140}
!68 = distinct !{!68, !140}
!69 = distinct !{!69, !140}
!70 = distinct !{!70, !140}
!71 = distinct !{!71, !140}
!72 = distinct !{!72, !140}
!73 = distinct !{!73, !140}
!74 = distinct !{!74, !140}
!75 = distinct !{!75, !140}
!76 = distinct !{!76, !140}
!77 = distinct !{!77, !140}
!78 = distinct !{!78, !140}
!79 = distinct !{!79, !140}
!80 = distinct !{!80, !140}
!81 = distinct !{!81, !140}
!82 = distinct !{!82, !140}
!83 = distinct !{!83, !140}
!84 = distinct !{!84, !140}
!85 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null}
!86 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null}
!87 = distinct !{null}
!88 = distinct !{!88, !140}
!89 = distinct !{!89, !140}
!90 = distinct !{!90, !140}
!91 = distinct !{!91, !140}
!92 = distinct !{!92, !140}
!93 = distinct !{!93, !140}
!94 = distinct !{!94, !140}
!95 = distinct !{!95, !140}
!96 = distinct !{!96, !140}
!97 = distinct !{!97, !140}
!98 = !{i32 8, !"PIC Level", i32 2}
!99 = !{i32 7, !"uwtable", i32 2}
!100 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!101 = !{!"Simple C++ TBAA"}
!102 = !{!"omnipotent char", !101, i64 0}
!103 = !{!"int", !102, i64 0}
!104 = !{!"__libc_errno", !103, i64 0}
!105 = !{!104, !103, i64 0}
!106 = !{!"any pointer", !102, i64 0}
end_hunk_6
