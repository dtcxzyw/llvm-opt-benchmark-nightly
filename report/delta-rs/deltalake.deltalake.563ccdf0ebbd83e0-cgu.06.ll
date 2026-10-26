Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.06?download=true
inline.NumInlined: 6907
inline.NumDeleted: 2175
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dr, ptr noundef nonnull align 8 dereferenceable(328) %i.ie, i64 328, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ii = load ptr, ptr %i.ih, align 8, !nonnull !12, !align !16, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ik = load ptr, ptr %i.ij, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ig, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ii, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ik)
          to label %bb.bp unwind label %bb.bo

bb.h:                                             ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.io = load ptr, ptr %i.in, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ea, ptr noundef nonnull align 8 dereferenceable(328) %i.im, i64 328, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.iq = load ptr, ptr %i.ip, align 8, !nonnull !12, !align !16, !noundef !12
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.io, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.iq, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.is)
          to label %bb.bw unwind label %bb.bv

bb.i:                                             ; preds = %bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.iw = load ptr, ptr %i.iv, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.du, ptr noundef nonnull align 8 dereferenceable(328) %i.iu, i64 328, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.iy = load ptr, ptr %i.ix, align 8, !nonnull !12, !align !16, !noundef !12
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ja = load ptr, ptr %i.iz, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.iw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.iy, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ja)
          to label %bb.cd unwind label %bb.cc

bb.j:                                             ; preds = %bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.eu, ptr noundef nonnull align 8 dereferenceable(328) %i.jc, i64 328, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.jg = load ptr, ptr %i.jf, align 8, !nonnull !12, !align !16, !noundef !12
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ji = load ptr, ptr %i.jh, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.je, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jg, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ji)
          to label %bb.ck unwind label %bb.cj

bb.k:                                             ; preds = %bb.a
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.jm = load ptr, ptr %i.jl, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.er, ptr noundef nonnull align 8 dereferenceable(328) %i.jk, i64 328, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.jo = load ptr, ptr %i.jn, align 8, !nonnull !12, !align !16, !noundef !12
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.jq = load ptr, ptr %i.jp, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.er, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jo, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.jq)
          to label %bb.cr unwind label %bb.cq

bb.l:                                             ; preds = %bb.a
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ju = load ptr, ptr %i.jt, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.do, ptr noundef nonnull align 8 dereferenceable(328) %i.js, i64 328, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.jw = load ptr, ptr %i.jv, align 8, !nonnull !12, !align !16, !noundef !12
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.jy = load ptr, ptr %i.jx, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ju, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jw, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.jy)
          to label %bb.cy unwind label %bb.cx

bb.m:                                             ; preds = %bb.a
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.kc = load ptr, ptr %i.kb, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dl, ptr noundef nonnull align 8 dereferenceable(328) %i.ka, i64 328, i1 false)
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ke = load ptr, ptr %i.kd, align 8, !nonnull !12, !align !16, !noundef !12
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.kg = load ptr, ptr %i.kf, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ke, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.kg)
          to label %bb.df unwind label %bb.de

bb.n:                                             ; preds = %bb.a
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !nonnull !12, !align !16, !noundef !12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.en, ptr noundef nonnull align 8 dereferenceable(328) %i.ki, i64 328, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !12, !align !16, !noundef !12
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.km, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ko, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.kq)
          to label %bb.dl unwind label %.thread1082

.thread1082:                                      ; preds = %bb.n
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %.thread1078

bb.o:                                             ; preds = %bb.a
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !nonnull !12, !align !16, !noundef !12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.eg, ptr noundef nonnull align 8 dereferenceable(328) %i.kt, i64 328, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !nonnull !12, !align !16, !noundef !12
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.kz, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.lb)
          to label %bb.eb unwind label %.thread1093

.thread1093:                                      ; preds = %bb.o
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %.thread1089

bb.p:                                             ; preds = %bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.le = load ptr, ptr %i.ld, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.lf, i64 24, i1 false)
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.lh = load i8, ptr %i.lg, align 8, !range !20, !noundef !12
  %i.li = trunc nuw i8 %i.lh to i1
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.lk = load ptr, ptr %i.lj, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cw, ptr noundef nonnull align 8 dereferenceable(328) %i.le, i64 328, i1 false)
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.lm = load ptr, ptr %i.ll, align 8, !nonnull !12, !align !16, !noundef !12
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.lo = load ptr, ptr %i.ln, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE19sql_in_list_to_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cx, i1 noundef zeroext %i.li, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.lm, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.lo)
          to label %bb.es unwind label %bb.er

bb.q:                                             ; preds = %bb.a
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lu = load i8, ptr %i.lt, align 8, !range !20, !noundef !12
  %i.lv = trunc nuw i8 %i.lu to i1
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.lx = load ptr, ptr %i.lw, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ay, ptr noundef nonnull align 8 dereferenceable(328) %i.lq, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.ax, ptr noundef nonnull align 8 dereferenceable(1400) %i.ls, i64 1400, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.lz = load ptr, ptr %i.ly, align 8, !nonnull !12, !align !16, !noundef !12
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.mb = load ptr, ptr %i.ma, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8subqueryINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17parse_in_subqueryCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1400) %i.ax, i1 noundef zeroext %i.lv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.lz, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.mb)
          to label %bb.et unwind label %bb.eu

bb.r:                                             ; preds = %bb.a
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mf = load i8, ptr %i.me, align 8, !range !20, !noundef !12
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !nonnull !12, !align !16, !noundef !12 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !nonnull !12, !align !16, !noundef !12 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dg, ptr noundef nonnull align 8 dereferenceable(328) %i.md, i64 328, i1 false)
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !nonnull !12, !align !16, !noundef !12
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ml, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.mn, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.mp)
          to label %bb.ew unwind label %.body693.thread1110

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  invoke fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 56, ptr nonnull @81, ptr nonnull inttoptr (i64 113 to ptr))
          to label %bb.ge unwind label %bb.oi

bb.t:                                             ; preds = %bb.a
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.mr = load i8, ptr %i.mq, align 8, !range !20, !noundef !12
  %i.ms = trunc nuw i8 %i.mr to i1
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.mu = load ptr, ptr %i.mt, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mw = load ptr, ptr %i.mv, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %i.mx, i64 48, i1 false)
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.mz = load i8, ptr %i.my, align 1, !range !20, !noundef !12
  %i.na = trunc nuw i8 %i.mz to i1
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.nc = load ptr, ptr %i.nb, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cu, ptr noundef nonnull align 8 dereferenceable(328) %i.mu, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ct, ptr noundef nonnull align 8 dereferenceable(328) %i.mw, i64 328, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ne = load ptr, ptr %i.nd, align 8, !nonnull !12, !align !16, !noundef !12
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ng = load ptr, ptr %i.nf, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_like_to_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.nc, i1 noundef zeroext %i.ms, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ct, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ne, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ng, i1 noundef zeroext false, i1 noundef zeroext %i.na)
          to label %bb.gj unwind label %bb.gk

bb.u:                                             ; preds = %bb.a
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ni = load i8, ptr %i.nh, align 8, !range !20, !noundef !12
  %i.nj = trunc nuw i8 %i.ni to i1
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nl = load ptr, ptr %i.nk, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nn = load ptr, ptr %i.nm, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef nonnull align 8 dereferenceable(48) %i.no, i64 48, i1 false)
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.nq = load i8, ptr %i.np, align 1, !range !20, !noundef !12
  %i.nr = trunc nuw i8 %i.nq to i1
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.nt = load ptr, ptr %i.ns, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cr, ptr noundef nonnull align 8 dereferenceable(328) %i.nl, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cq, ptr noundef nonnull align 8 dereferenceable(328) %i.nn, i64 328, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.nv = load ptr, ptr %i.nu, align 8, !nonnull !12, !align !16, !noundef !12
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.nx = load ptr, ptr %i.nw, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_like_to_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.nt, i1 noundef zeroext %i.nj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.cr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.cq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.nv, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.nx, i1 noundef zeroext true, i1 noundef zeroext %i.nr)
          to label %bb.gl unwind label %bb.gm

bb.v:                                             ; preds = %bb.a
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.nz = load i8, ptr %i.ny, align 8, !range !20, !noundef !12
  %i.oa = trunc nuw i8 %i.nz to i1
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.oc = load ptr, ptr %i.ob, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.oe = load ptr, ptr %i.od, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, ptr noundef nonnull align 8 dereferenceable(48) %i.of, i64 48, i1 false)
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.oh = load ptr, ptr %i.og, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.co, ptr noundef nonnull align 8 dereferenceable(328) %i.oc, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cn, ptr noundef nonnull align 8 dereferenceable(328) %i.oe, i64 328, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.oj = load ptr, ptr %i.oi, align 8, !nonnull !12, !align !16, !noundef !12
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ol = load ptr, ptr %i.ok, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21sql_similarto_to_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.oh, i1 noundef zeroext %i.oa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.co, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.cn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.oj, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ol)
          to label %bb.gn unwind label %bb.go

bb.w:                                             ; preds = %bb.a
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.on = load ptr, ptr %i.om, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.oq = load ptr, ptr %i.op, align 8, !nonnull !12, !align !16, !noundef !12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.os = load ptr, ptr %i.or, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.aa, ptr noundef nonnull align 8 dereferenceable(328) %i.on, i64 328, i1 false)
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !nonnull !12, !align !16, !noundef !12
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.os, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ou, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ow)
          to label %bb.gq unwind label %bb.gp

bb.x:                                             ; preds = %bb.a
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oy = load i8, ptr %i.ox, align 8, !range !90, !noundef !12
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.pc = load ptr, ptr %i.pb, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dj, ptr noundef nonnull align 8 dereferenceable(328) %i.pa, i64 328, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.pe = load ptr, ptr %i.pd, align 8, !nonnull !12, !align !16, !noundef !12
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.pg = load ptr, ptr %i.pf, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8unary_opINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18parse_sql_unary_opCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.pc, i8 noundef %i.oy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.pe, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.pg)
          to label %bb.ht unwind label %bb.hs

bb.y:                                             ; preds = %bb.a
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.pi = load i8, ptr %i.ph, align 8, !range !43, !noundef !12
  %.off = add nsw i8 %i.pi, -1
  %switch = icmp ult i8 %.off, 2
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.pk = load ptr, ptr %i.pj, align 8, !nonnull !12, !align !16, !noundef !12 ; 9 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %switch, label %bb.hv, label %bb.hu

bb.z:                                             ; preds = %bb.a
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !nonnull !12, !align !16, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8, !nonnull !12, !align !16, !noundef !12
  store ptr %i.pq, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ps = load ptr, ptr %i.pr, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ao, ptr noundef nonnull align 8 dereferenceable(328) %i.po, i64 328, i1 false)
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.pu = load ptr, ptr %i.pt, align 8, !nonnull !12, !align !16, !noundef !12
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.pw = load ptr, ptr %i.pv, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internalCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ps, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.pu, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.pw)
          to label %bb.jq unwind label %bb.jp

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr)
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gr, ptr noundef nonnull align 8 dereferenceable(72) %i.px, i64 72, i1 false)
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.pz = load ptr, ptr %i.py, align 8, !nonnull !12, !align !16, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq)
  %i.qa = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 224)
          to label %bb.la unwind label %.split1147.thread ; 9 uses

.split1147.thread:                                ; preds = %bb.aa
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.ab:                                            ; preds = %bb.a
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qd = load ptr, ptr %i.qc, align 8, !nonnull !12, !align !16, !noundef !12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bp, ptr noundef nonnull align 8 dereferenceable(72) %i.qe, i64 72, i1 false)
  %i.qf = load i64, ptr %i.bp, align 8, !range !39, !noundef !12
  switch i64 %i.qf, label %bb.mc [
    i64 44, label %bb.ma
    i64 42, label %bb.mb
  ]

bb.ac:                                            ; preds = %bb.a
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qh = load ptr, ptr %i.qg, align 8, !nonnull !12, !align !16, !noundef !12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cb, ptr noundef nonnull align 8 dereferenceable(72) %i.qi, i64 72, i1 false)
  %i.qj = load i64, ptr %i.cb, align 8, !range !39, !noundef !12
end_hunk_0
begin_hunk_1_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.698)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.793)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dm
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kk, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ki, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bn

bb.ea:                                            ; preds = %bb.dt, %bb.dm
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %.thread1078, %.body702, %bb.dr, %bb.ea
  %.pn665 = phi { ptr, i32 } [ %i.aat, %bb.ea ], [ %i.aar, %.body702 ], [ %eh.lpad-body7061081, %.thread1078 ], [ %i.aal, %bb.dr ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kk, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ki, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bb

.thread1078:                                      ; preds = %bb.do, %.thread1082
  %eh.lpad-body7061081 = phi { ptr, i32 } [ %i.kr, %.thread1082 ], [ %i.aag, %bb.do ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.kk) #48
          to label %.thread unwind label %bb.bf

bb.eb:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  %i.aau = load i64, ptr %i.eh, align 16, !range !26, !noundef !12 ; 2 uses
  %i.aav = icmp eq i64 %i.aau, 37
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7111, ptr noundef nonnull align 8 dereferenceable(40) %i.aaw, i64 40, i1 false)
  br i1 %i.aav, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aax, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7111, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7111)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.kv)
          to label %bb.ep unwind label %bb.eq

bb.ed:                                            ; preds = %bb.eb
  %.sroa.6415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %.sroa.9113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9113.0..sroa_idx114, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6415.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  store i64 %i.aau, ptr %i.ef, align 16
  %.sroa.7111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7111.0..sroa_idx112, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7111, i64 40, i1 false)
  %i.aay = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.eg unwind label %bb.ee, !noalias !23794 ; 3 uses

bb.ee:                                            ; preds = %bb.ed
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ef) #48
          to label %.thread1089 unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.eg:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.aay, ptr noundef nonnull align 16 dereferenceable(112) %i.ef, i64 112, i1 false)
  store ptr %i.aay, ptr %i.ei, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  %i.abb = load ptr, ptr %i.kw, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ed, ptr noundef nonnull align 8 dereferenceable(328) %i.kv, i64 328, i1 false)
  %i.abc = load ptr, ptr %i.ky, align 8, !nonnull !12, !align !16, !noundef !12
  %i.abd = load ptr, ptr %i.la, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.abb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.abc, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.abd)
          to label %bb.ei unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.abe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.ei) #48
          to label %.thread1085 unwind label %bb.bf

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  %i.abf = load i64, ptr %i.ee, align 16, !range !26, !noundef !12 ; 2 uses
  %i.abg = icmp eq i64 %i.abf, 37
  %i.abh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117, ptr noundef nonnull align 8 dereferenceable(40) %i.abh, i64 40, i1 false)
  br i1 %i.abg, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.abi, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.ei)
          to label %bb.eo unwind label %bb.eq

bb.ek:                                            ; preds = %bb.ei
  %.sroa.6418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %.sroa.8119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8119.0..sroa_idx120, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6418.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  store i64 %i.abf, ptr %i.ec, align 16
  %.sroa.6117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117.0..sroa_idx118, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117, i64 40, i1 false)
  %i.abj = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.en unwind label %bb.el, !noalias !23795 ; 2 uses

bb.el:                                            ; preds = %bb.ek
  %i.abk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ec) #48
          to label %.body696 unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.abl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body696:                                         ; preds = %bb.el
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.ei) #48
          to label %.thread1085 unwind label %bb.bf

bb.en:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.abj, ptr noundef nonnull align 16 dereferenceable(112) %i.ec, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  store i64 8, ptr %0, align 16
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aay, ptr %.sroa.6103.0..sroa_idx, align 8
  %.sroa.6103.sroa.6.0..sroa.6103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.abj, ptr %.sroa.6103.sroa.6.0..sroa.6103.0..sroa_idx.sroa_idx, align 16
  %.sroa.6103.sroa.7.0..sroa.6103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 14, ptr %.sroa.6103.sroa.7.0..sroa.6103.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7111)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bc

bb.eo:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7111)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.ec
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bn

bb.eq:                                            ; preds = %bb.ej, %bb.ec
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %.thread1085

.thread1085:                                      ; preds = %.thread1089, %.body696, %bb.eh, %bb.eq
  %.pn661 = phi { ptr, i32 } [ %i.abm, %bb.eq ], [ %i.abk, %.body696 ], [ %eh.lpad-body7001092, %.thread1089 ], [ %i.abe, %bb.eh ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bb

.thread1089:                                      ; preds = %bb.ee, %.thread1093
  %eh.lpad-body7001092 = phi { ptr, i32 } [ %i.lc, %.thread1093 ], [ %i.aaz, %bb.ee ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.kv) #48
          to label %.thread1085 unwind label %bb.bf

bb.er:                                            ; preds = %bb.p
  %i.abn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.le, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bb

bb.es:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.le, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bc

bb.et:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ls, i64 noundef 1400, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lq, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bc

bb.eu:                                            ; preds = %bb.q
  %i.abo = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ls, i64 noundef 1400, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lq, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bb

bb.ev:                                            ; preds = %.body690
  br i1 %.sroa.0302.2, label %.body693.thread, label %.thread1103

.body693.thread1110:                              ; preds = %bb.fe, %bb.r
  %.sroa.0303.1.ph = phi i1 [ true, %bb.r ], [ false, %bb.fe ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body693.thread

.body693:                                         ; preds = %bb.fs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1103

bb.ew:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  %i.abp = load i64, ptr %i.dh, align 16, !range !26, !noundef !12 ; 2 uses
  %i.abq = icmp eq i64 %i.abp, 37                 ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7184, ptr noundef nonnull align 8 dereferenceable(40) %i.abr, i64 40, i1 false)
  br i1 %i.abq, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.abs, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7184, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %bb.fv

bb.ey:                                            ; preds = %bb.ew
  %.sroa.6439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %.sroa.9186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9186.0..sroa_idx187, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6439.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  store i64 %i.abp, ptr %i.df, align 16
  %.sroa.7184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7184.0..sroa_idx185, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7184, i64 40, i1 false)
  %i.abt = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.fb unwind label %bb.ez, !noalias !23796 ; 3 uses

bb.ez:                                            ; preds = %bb.ey
  %i.abu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.df) #48
          to label %.body693.thread unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.abv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.fb:                                            ; preds = %bb.ey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.abt, ptr noundef nonnull align 16 dereferenceable(112) %i.df, i64 112, i1 false)
  store ptr %i.abt, ptr %i.di, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7190)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.abw = load ptr, ptr %i.mk, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dc, ptr noundef nonnull align 8 dereferenceable(328) %i.mh, i64 328, i1 false)
  %i.abx = load ptr, ptr %i.mm, align 8, !nonnull !12, !align !16, !noundef !12
  %i.aby = load ptr, ptr %i.mo, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.abw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.abx, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aby)
          to label %bb.fd unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.abz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.di) #48
          to label %.body693.thread unwind label %bb.bf

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  %i.aca = load i64, ptr %i.dd, align 16, !range !26, !noundef !12 ; 2 uses
  %i.acb = icmp eq i64 %i.aca, 37
  %i.acc = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190, ptr noundef nonnull align 8 dereferenceable(40) %i.acc, i64 40, i1 false)
  br i1 %i.acb, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.acd, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.di)
          to label %bb.fu unwind label %.body693.thread1110

bb.ff:                                            ; preds = %bb.fd
  %.sroa.6442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %.sroa.9192.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9192.0..sroa_idx193, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6442.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  store i64 %i.aca, ptr %i.db, align 16
  %.sroa.7190.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190.0..sroa_idx191, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190, i64 40, i1 false)
  %i.ace = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.fi unwind label %bb.fg, !noalias !23797 ; 3 uses

bb.fg:                                            ; preds = %bb.ff
  %i.acf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.db) #48
          to label %.body690 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.acg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body690:                                         ; preds = %bb.fg, %bb.fj
  %.sroa.0302.2 = phi i1 [ false, %bb.fj ], [ true, %bb.fg ]
  %.pn649 = phi { ptr, i32 } [ %i.ack, %bb.fj ], [ %i.acf, %bb.fg ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.di) #48
          to label %bb.ev unwind label %bb.bf

bb.fi:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ace, ptr noundef nonnull align 16 dereferenceable(112) %i.db, i64 112, i1 false)
  store ptr %i.ace, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %i.ach = load ptr, ptr %i.mk, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cz, ptr noundef nonnull align 8 dereferenceable(328) %i.mj, i64 328, i1 false)
  %i.aci = load ptr, ptr %i.mm, align 8, !nonnull !12, !align !16, !noundef !12
  %i.acj = load ptr, ptr %i.mo, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.da, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ach, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aci, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.acj)
          to label %bb.fk unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ack = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.de) #48
          to label %.body690 unwind label %bb.bf

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %i.acl = load i64, ptr %i.da, align 16, !range !26, !noundef !12 ; 2 uses
  %i.acm = icmp eq i64 %i.acl, 37
  %i.acn = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6196, ptr noundef nonnull align 8 dereferenceable(40) %i.acn, i64 40, i1 false)
  br i1 %i.acm, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aco, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6196, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.de)
          to label %bb.fs unwind label %bb.fr

bb.fm:                                            ; preds = %bb.fk
  %.sroa.6445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %.sroa.8198.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8198.0..sroa_idx199, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6445.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  store i64 %i.acl, ptr %i.cy, align 16
  %.sroa.6196.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6196.0..sroa_idx197, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6196, i64 40, i1 false)
  %i.acp = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.fp unwind label %bb.fn, !noalias !23798 ; 2 uses

bb.fn:                                            ; preds = %bb.fm
  %i.acq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.cy) #48
          to label %.body687 unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.acr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body687:                                         ; preds = %bb.fn
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.de) #48
          to label %bb.fq unwind label %bb.bf

bb.fp:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.acp, ptr noundef nonnull align 16 dereferenceable(112) %i.cy, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  store i64 21, ptr %0, align 16
  %.sroa.7176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.abt, ptr %.sroa.7176.0..sroa_idx, align 8
  %.sroa.7176.sroa.7.0..sroa.7176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ace, ptr %.sroa.7176.sroa.7.0..sroa.7176.0..sroa_idx.sroa_idx, align 16
  %.sroa.7176.sroa.8.0..sroa.7176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.acp, ptr %.sroa.7176.sroa.8.0..sroa.7176.0..sroa_idx.sroa_idx, align 8
  %.sroa.7176.sroa.9.0..sroa.7176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.mf, ptr %.sroa.7176.sroa.9.0..sroa.7176.0..sroa_idx.sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6196)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7190)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7184)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mh, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.md, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bc

bb.fq:                                            ; preds = %bb.fr, %.body687
  %.pn651 = phi { ptr, i32 } [ %i.acs, %bb.fr ], [ %i.acq, %.body687 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.di) #48
          to label %.thread1103 unwind label %bb.bf

bb.fr:                                            ; preds = %bb.fl
  %i.acs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fs:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.di)
          to label %.thread1114 unwind label %.body693

.thread1114:                                      ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6196)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7190)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7184)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #50
  br label %bb.fx

bb.ft:                                            ; preds = %bb.fv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #50
  br i1 %i.abq, label %bb.fy, label %bb.fx

bb.fu:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7190)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7184)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.mj)
          to label %bb.ft unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.act = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #50
  br i1 %i.abq, label %bb.gb, label %bb.ga

bb.fx:                                            ; preds = %.thread1114, %bb.fy, %bb.ft
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mh, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.md, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bn

bb.fy:                                            ; preds = %bb.ft
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.mh)
          to label %bb.fx unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.ga:                                            ; preds = %2, %bb.gb, %bb.fw, %.thread1103, %bb.fz
  %.pn657 = phi { ptr, i32 } [ %i.acu, %bb.fz ], [ %i.act, %bb.fw ], [ %.pn6551217, %bb.gb ], [ %.pn6531102, %2 ], [ %.pn6531101.ph, %.thread1103 ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mh, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.md, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bb

.thread1103:                                      ; preds = %bb.ev, %.body693, %bb.fq
  %.pn6531101.ph = phi { ptr, i32 } [ %.pn651, %bb.fq ], [ %lpad.thr_comm.split-lp, %.body693 ], [ %.pn649, %bb.ev ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #50
  br label %bb.ga

2:                                                ; preds = %.body693.thread
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #50
  br i1 %.sroa.0303.01100, label %bb.gb, label %bb.ga

.body693.thread:                                  ; preds = %bb.fc, %bb.ez, %.body693.thread1110, %bb.ev
  %.pn6531102 = phi { ptr, i32 } [ %i.abu, %bb.ez ], [ %.pn649, %bb.ev ], [ %lpad.thr_comm, %.body693.thread1110 ], [ %i.abz, %bb.fc ] ; 2 uses
  %.sroa.0303.01100 = phi i1 [ true, %bb.ez ], [ false, %bb.ev ], [ %.sroa.0303.1.ph, %.body693.thread1110 ], [ false, %bb.fc ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.mj) #48
          to label %2 unwind label %bb.bf

bb.gb:                                            ; preds = %bb.fw, %2
  %.pn6551217 = phi { ptr, i32 } [ %i.act, %bb.fw ], [ %.pn6531102, %2 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.mh) #48
          to label %bb.ga unwind label %bb.bf

bb.gc:                                            ; preds = %bb.gf, %bb.gd
  %.pn647 = phi { ptr, i32 } [ %i.acv, %bb.gd ], [ %i.acx, %bb.gf ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl) #48
          to label %bb.bb unwind label %bb.bf

bb.gd:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit834
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ge:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store i64 0, ptr %i.cj, align 8
  %.sroa.4449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4449.0..sroa_idx, align 8
  %.sroa.5450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 0, ptr %.sroa.5450.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store ptr %i.cl, ptr %i.ci, align 8
  %.sroa.4454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4454.0..sroa_idx, align 8
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.cj, ptr %i.acw, align 8
  %.sroa.4458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4458.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cm, ptr noundef nonnull @22, ptr noundef nonnull %i.ci)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit834 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.acx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj) #48
          to label %bb.gc unwind label %bb.bf

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit834: ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %bb.gg unwind label %bb.gd

bb.gg:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %bb.gh unwind label %bb.oi

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2201.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.acy, align 8
  store i64 37, ptr %0, align 16
  br label %bb.bc

bb.gi:                                            ; preds = %bb.oo
  unreachable

bb.gj:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mw, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mu, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bc

bb.gk:                                            ; preds = %bb.t
  %i.acz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mw, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mu, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bb

bb.gl:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nn, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bc

bb.gm:                                            ; preds = %bb.u
  %i.ada = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nn, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bb

bb.gn:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oe, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oc, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bc

bb.go:                                            ; preds = %bb.v
  %i.adb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oe, i64 noundef 328, i64 noundef 8) #50
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oc, i64 noundef 328, i64 noundef 8) #50
  br label %bb.bb

bb.gp:                                            ; preds = %bb.w
  %i.adc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast8operator14BinaryOperatorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad) #48
          to label %.thread1131 unwind label %bb.bf

bb.gq:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.add = load i64, ptr %i.ab, align 16, !range !26, !noundef !12 ; 2 uses
  %i.ade = icmp eq i64 %i.add, 37
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7236, ptr noundef nonnull align 8 dereferenceable(40) %i.adf, i64 40, i1 false)
  br i1 %i.ade, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.adg, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7236, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast8operator14BinaryOperatorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.hr unwind label %.thread1135

.thread1135:                                      ; preds = %bb.gr
  %i.adh = landingpad { ptr, i32 }
          cleanup
  br label %.thread1131

bb.gs:                                            ; preds = %bb.gq
  %.sroa.6545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5242.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6545.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4241.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7236, i64 40, i1 false)
  store i64 %i.add, ptr %i.ac, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.adi = load ptr, ptr %i.or, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.y, ptr noundef nonnull align 8 dereferenceable(328) %i.oq, i64 328, i1 false)
  %i.adj = load ptr, ptr %i.ot, align 8, !nonnull !12, !align !16, !noundef !12
  %i.adk = load ptr, ptr %i.ov, align 8, !nonnull !12, !align !16, !noundef !12
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.adi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.adj, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.adk)
          to label %bb.gu unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.adl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ac) #48
          to label %bb.hq unwind label %bb.bf

bb.gu:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.adm = load i64, ptr %i.z, align 16, !range !26, !noundef !12 ; 2 uses
  %i.adn = icmp eq i64 %i.adm, 37
  %i.ado = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6245, ptr noundef nonnull align 8 dereferenceable(40) %i.ado, i64 40, i1 false)
  br i1 %i.adn, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.adp, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6245, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ac)
          to label %bb.ho unwind label %bb.hn

.thread1123:                                      ; preds = %bb.hj, %._crit_edge1181
  %lpad.thr_comm1121 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1116

bb.gw:                                            ; preds = %bb.gu
  %.sroa.6548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.3251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3251.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6548.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.2250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2250.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6245, i64 40, i1 false)
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.adq, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ae, ptr noundef nonnull align 16 dereferenceable(112) %i.ac, i64 112, i1 false)
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i64 %i.adm, ptr %i.adr, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6245)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7236)
  %i.ads = load ptr, ptr %i.or, align 8, !nonnull !12, !align !16, !noundef !12
  %i.adt = load ptr, ptr %i.ads, align 8, !nonnull !12, !align !16, !noundef !12
  %.val829 = load ptr, ptr %i.adt, align 8, !nonnull !12, !align !16, !noundef !12 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.val829, i64 1040
  %i.adv = load ptr, ptr %i.adu, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.val829, i64 1048
  %i.adx = load i64, ptr %i.adw, align 8, !noundef !12 ; 2 uses
  %.idx1182 = shl nuw nsw i64 %i.adx, 4
end_hunk_1
begin_hunk_2_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a
bb.oz:                                            ; preds = %bb.oy
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ex) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit865 unwind label %bb.ol

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit865: ; preds = %bb.oy, %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.fe)
          to label %bb.pa unwind label %bb.oi

bb.pa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  br label %bb.bc

bb.pb:                                            ; preds = %bb.ox
  call void @llvm.experimental.noalias.scope.decl(metadata !23809)
  call void @llvm.experimental.noalias.scope.decl(metadata !23810)
  %i.anh = load ptr, ptr %i.ex, align 8, !alias.scope !23811, !nonnull !12, !noundef !12
  %i.ani = atomicrmw add ptr %i.anh, i64 -1 release, align 8, !noalias !23811
  %i.anj = icmp eq i64 %i.ani, 1
  br i1 %i.anj, label %bb.pc, label %.body679

bb.pc:                                            ; preds = %bb.pb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ex) #52
          to label %.body679 unwind label %bb.bf

bb.pd:                                            ; preds = %bb.ov
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.fe)
          to label %bb.pe unwind label %bb.oi

bb.pe:                                            ; preds = %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  br label %bb.bn

bb.pf:                                            ; preds = %bb.al
  %i.ank = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tj, i64 noundef 1400, i64 noundef 8) #50
  br label %bb.bb

bb.pg:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tj, i64 noundef 1400, i64 noundef 8) #50
  br label %bb.bc

bb.ph:                                            ; preds = %bb.am
  %i.anl = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tu, i64 noundef 1400, i64 noundef 8) #50
  br label %bb.bb

bb.pi:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tu, i64 noundef 1400, i64 noundef 8) #50
  br label %bb.bc

bb.pj:                                            ; preds = %bb.ar
  %i.anm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au) #48
          to label %bb.bb unwind label %bb.bf

bb.pk:                                            ; preds = %bb.ar
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.pl unwind label %bb.oi

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.bc

bb.pm:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.wq, ptr noundef nonnull align 8 dereferenceable(352) %i.o, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %.sroa.4269.0..sroa_idx, align 8
  store i64 32, ptr %0, align 16
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.wq, ptr %.sroa.5270.0..sroa_idx, align 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.p)
          to label %bb.pn unwind label %bb.oi

bb.pn:                                            ; preds = %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ay
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.p) #48
          to label %bb.bb unwind label %bb.bf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit870: ; preds = %.body, %bb.po
  %.pn = phi { ptr, i32 } [ %i.ann, %bb.po ], [ %i.anx, %.body ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.m) #48
          to label %bb.bb unwind label %bb.bf

bb.po:                                            ; preds = %bb.ba
  %i.ann = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit870

bb.pp:                                            ; preds = %bb.ba
  %i.ano = load i64, ptr %i.k, align 8, !range !31, !noundef !12 ; 2 uses
  %i.anp = icmp eq i64 %i.ano, 3
  %i.anq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6278, ptr noundef nonnull align 8 dereferenceable(40) %i.anq, i64 40, i1 false)
  br i1 %i.anp, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.anr, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6278, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6278)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.m)
          to label %bb.pw unwind label %bb.oi

bb.pr:                                            ; preds = %bb.pp
  %.sroa.6573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.6573.0.copyload = load i64, ptr %.sroa.6573.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.2284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6278, i64 40, i1 false)
  store i64 %i.ano, ptr %i.l, align 8
  %.sroa.3285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %.sroa.6573.0.copyload, ptr %.sroa.3285.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 -9223372036854775808, ptr %i.j, align 8
  %i.ans = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store i64 -9223372036854775807, ptr %i.ans, align 8
  %i.ant = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 -9223372036854775808, ptr %i.ant, align 8
  %i.anu = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 -9223372036854775808, ptr %i.anu, align 8
  %i.anv = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  store i64 -9223372036854775807, ptr %i.anv, align 8
  %i.anw = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 352)
          to label %bb.pu unwind label %bb.ps, !noalias !23812 ; 2 uses

bb.ps:                                            ; preds = %bb.pr
  %i.anx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.j) #48
          to label %.body unwind label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.any = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body:                                            ; preds = %bb.ps
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit870 unwind label %bb.bf

bb.pu:                                            ; preds = %bb.pr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.anw, ptr noundef nonnull align 8 dereferenceable(352) %i.j, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5273.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 32, ptr %0, align 16
  %.sroa.6274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.anw, ptr %.sroa.6274.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6278)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.m)
          to label %bb.pv unwind label %bb.oi

bb.pv:                                            ; preds = %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bc

bb.pw:                                            ; preds = %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bn

bb.px:                                            ; preds = %bb.bn
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %1)
  br label %.critedge

bb.py:                                            ; preds = %bb.bn
  %i.anz = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.anz)
          to label %bb.qa unwind label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.aoa = landingpad { ptr, i32 }
          cleanup
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aob) #48
          to label %.critedge674.a unwind label %bb.bf

bb.qa:                                            ; preds = %bb.py
  %i.aoc = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aoc)
  br label %.critedge

.critedge674.a:                                   ; preds = %bb.qp, %bb.qt, %.critedge673, %bb.qo, %bb.qm, %bb.ql, %bb.pz, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %.pn669.pn.pn = phi { ptr, i32 } [ %.pn669.pn, %bb.qo ], [ %.pn669.pn, %.critedge673 ], [ %i.aoa, %bb.pz ], [ %.pn669.pn, %bb.qt ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn667, %bb.ql ], [ %.pn669.pn, %bb.qp ], [ %i.aon, %bb.qm ]
  resume { ptr, i32 } %.pn669.pn.pn

bb.qb:                                            ; preds = %bb.qe, %bb.qc
  %.pn669 = phi { ptr, i32 } [ %i.aod, %bb.qc ], [ %i.aof, %bb.qe ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #48
          to label %bb.bb unwind label %bb.bf

bb.qc:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit872
  %i.aod = landingpad { ptr, i32 }
          cleanup
  br label %bb.qb

bb.qd:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4587.0..sroa_idx, align 8
  %.sroa.5588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5588.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.4592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4592.0..sroa_idx, align 8
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.aoe, align 8
  %.sroa.4596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4596.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @22, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit872 unwind label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.aof = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #48
          to label %bb.qb unwind label %bb.bf

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit872: ; preds = %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.qf unwind label %bb.qc

bb.qf:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.qg unwind label %bb.oi

bb.qg:                                            ; preds = %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.2287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2287.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.aog = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.aog, align 8
  store i64 37, ptr %0, align 16
  br label %bb.bc

bb.qh:                                            ; preds = %bb.lv
  %i.aoh = landingpad { ptr, i32 }
          cleanup
  %i.aoi = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aoi) #48
          to label %bb.ql unwind label %bb.bf

bb.qi:                                            ; preds = %bb.lv
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aoj)
          to label %bb.qk unwind label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.aok = landingpad { ptr, i32 }
          cleanup
  br label %bb.ql

bb.qk:                                            ; preds = %bb.qi
  %i.aol = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10CastFormatEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.aol)
  br label %.critedge

bb.ql:                                            ; preds = %bb.qj, %bb.qh
  %.pn667 = phi { ptr, i32 } [ %i.aok, %bb.qj ], [ %i.aoh, %bb.qh ]
  %i.aom = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10CastFormatEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.aom) #48
          to label %.critedge674.a unwind label %bb.bf

bb.qm:                                            ; preds = %bb.jo
  %i.aon = landingpad { ptr, i32 }
          cleanup
  %i.aoo = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aoo) #48
          to label %.critedge674.a unwind label %bb.bf

bb.qn:                                            ; preds = %bb.jo
  %i.aop = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aop)
  br label %.critedge

bb.qo:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %1) #48
          to label %.critedge674.a unwind label %bb.bf

bb.qp:                                            ; preds = %bb.bb
  br i1 %.sroa.0291.0, label %bb.qr, label %.critedge674.a

bb.qq:                                            ; preds = %bb.bb
  %i.aoq = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aoq) #48
          to label %bb.qt unwind label %bb.bf

bb.qr:                                            ; preds = %bb.qp
  %i.aor = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aor) #48
          to label %bb.qs unwind label %bb.bf

bb.qs:                                            ; preds = %bb.qr
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aos) #48
          to label %.critedge673 unwind label %bb.bf

.critedge673:                                     ; preds = %bb.qs
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10CastFormatEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.aot) #48
          to label %.critedge674.a unwind label %bb.bf

bb.qt:                                            ; preds = %bb.qq
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aou) #48
          to label %.critedge674.a unwind label %bb.bf
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtCs7p2uQeJxui2_9deltalake10datafusionNtB7_17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [416 x i8], align 8               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 7 uses
  %i.f = alloca [352 x i8], align 8               ; 7 uses
  %.sroa.617.i = alloca [40 x i8], align 8        ; 6 uses
  %i.g = alloca [352 x i8], align 8               ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.68.i = alloca [40 x i8], align 8         ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 17 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 12 uses
  %i.p = alloca [16 x i8], align 8                ; 11 uses
  %i.q = alloca [96 x i8], align 16               ; 6 uses
  %i.r = alloca [464 x i8], align 8               ; 8 uses
  %i.s = alloca [112 x i8], align 16              ; 5 uses
  %i.t = alloca [112 x i8], align 16              ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [432 x i8], align 8               ; 8 uses
  %i.w = alloca [400 x i8], align 8               ; 5 uses
  %i.x = alloca [432 x i8], align 8               ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.11141 = alloca [40 x i8], align 8        ; 11 uses
  %.sroa.16.sroa.7 = alloca [352 x i8], align 8   ; 7 uses
  %.sroa.8136 = alloca [40 x i8], align 8         ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [96 x i8], align 16              ; 4 uses
  %i.ab = alloca [72 x i8], align 8               ; 9 uses
  %i.ac = alloca [8 x i8], align 8                ; 9 uses
  %i.ad = alloca [24 x i8], align 8               ; 18 uses
  %i.ae = alloca [448 x i8], align 8              ; 8 uses
  %.sroa.8125 = alloca [40 x i8], align 8         ; 7 uses
  %i.af = alloca [72 x i8], align 8               ; 10 uses
  %i.ag = alloca [40 x i8], align 8               ; 10 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [112 x i8], align 16             ; 9 uses
  %i.aj = alloca [112 x i8], align 16             ; 7 uses
  %i.ak = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.8106 = alloca [40 x i8], align 8         ; 7 uses
  %i.al = alloca [56 x i8], align 8               ; 14 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [416 x i8], align 8              ; 8 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 16 uses
  %i.aq = alloca [40 x i8], align 8               ; 13 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !44, !noundef !12
  switch i8 %i.as, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.es
    i8 2, label %bb.et
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !12, !align !16, !noundef !12 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtCs1N9T06jgEdt_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlNtNtB7_15boolean_builder14BooleanBuilderE6finishCs7p2uQeJxui2_9deltalake:bb.a
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.j, !noalias !24901

bb.j:                                             ; preds = %.invoke.i, %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !24902
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.k, label %bb.ai

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #52
          to label %bb.ai unwind label %bb.l, !noalias !24903

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.i
  %i.an = icmp eq i64 %i.aj, 0
  br i1 %i.an, label %bb.m, label %.invoke.i, !prof !18

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs7p2uQeJxui2_9deltalake.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !24901, !noundef !12
  %.not.i = icmp eq ptr %i.ap, null               ; 3 uses
  %.2.i = select i1 %.not.i, ptr @393, ptr @395
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @392, ptr @394
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #47
          to label %.cont.i unwind label %bb.j, !noalias !24901

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !24903
  unreachable

.body19.thread47:                                 ; preds = %bb.n, %bb.q, %bb.s, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body19.thread

bb.m:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.ar = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24904, !noundef !12 ; 3 uses
  %i.as = load i64, ptr %1, align 8, !range !19, !alias.scope !24904, !noundef !12
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %.body19.thread47

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.au = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24904, !nonnull !12, !noundef !12
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar
  store i32 0, ptr %i.av, align 4
  %i.aw = add i64 %i.ar, 1
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24904
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noundef !12 ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.aa, label %bb.z

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.r unwind label %.body19.thread47

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %bb.s unwind label %.body19.thread47

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5Field14new_list_field(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i1 noundef zeroext true)
          to label %bb.t unwind label %.body19.thread47

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bd, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !24905
  %i.be = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24905 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.u, label %bb.x, !prof !10

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #47
          to label %.noexc27 unwind label %bb.v

.noexc27:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c) #48
          to label %.body19.thread unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.be, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.sroa.0.0 = phi ptr [ %i.bm, %bb.z ], [ %i.be, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.bi = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12
  %i.bj = load ptr, ptr %i.s, align 8, !nonnull !12, !align !16, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylE7try_newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.b, ptr noundef nonnull %.sroa.0.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !24906)
  call void @llvm.experimental.noalias.scope.decl(metadata !24907)
  %i.bk = load i8, ptr %i.b, align 8, !range !83, !alias.scope !24907, !noundef !12
  %i.bl = icmp eq i8 %i.bk, 41
  br i1 %i.bl, label %bb.ab, label %bb.af, !prof !10

bb.z:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr %i.ax, align 8, !nonnull !12, !noundef !12
  br label %bb.y

bb.aa:                                            ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24908
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bn, i64 32, i1 false), !noalias !24906
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #47
          to label %bb.ad unwind label %bb.ac, !noalias !24908

bb.ac:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #48
          to label %.body19.thread44 unwind label %bb.ae, !noalias !24908

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !24908
  unreachable

bb.af:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.b, i64 112, i1 false), !alias.scope !24908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.body19.thread:                                   ; preds = %bb.v, %.body19.thread47
  %eh.lpad-body2043 = phi { ptr, i32 } [ %lpad.thr_comm, %.body19.thread47 ], [ %i.bg, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24909)
  call void @llvm.experimental.noalias.scope.decl(metadata !24910)
  call void @llvm.experimental.noalias.scope.decl(metadata !24911)
  call void @llvm.experimental.noalias.scope.decl(metadata !24912)
  call void @llvm.experimental.noalias.scope.decl(metadata !24913)
  %i.bq = load ptr, ptr %i.j, align 8, !alias.scope !24914, !nonnull !12, !noundef !12
  %i.br = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !24914
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.body19.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #52
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.am, %bb.ak, %bb.ag
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.ai:                                            ; preds = %.body19.thread, %bb.ag, %bb.j, %bb.k, %bb.g, %bb.d
  %.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.af, %bb.g ], [ %i.v, %bb.d ], [ %i.ak, %bb.k ], [ %eh.lpad-body2043, %bb.ag ], [ %eh.lpad-body2043, %.body19.thread ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24915)
  %i.bu = load ptr, ptr %i.m, align 8, !alias.scope !24915, !noundef !12 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !24916
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m) #52
          to label %bb.al unwind label %bb.ah

.body19.thread44:                                 ; preds = %bb.ac, %bb.al, %bb.am
  %.pn.pn34 = phi { ptr, i32 } [ %.pn.pn.ph, %bb.al ], [ %.pn.pn.ph, %bb.am ], [ %i.bo, %bb.ac ]
  resume { ptr, i32 } %.pn.pn34

bb.al:                                            ; preds = %bb.b, %bb.ak, %bb.ai, %bb.aj
  %.pn.pn.ph = phi { ptr, i32 } [ %i.u, %bb.b ], [ %.pn.ph, %bb.ak ], [ %.pn.ph, %bb.ai ], [ %.pn.ph, %bb.aj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24917)
  call void @llvm.experimental.noalias.scope.decl(metadata !24918)
  %i.by = load ptr, ptr %i.n, align 8, !alias.scope !24919, !nonnull !12, !noundef !12
  %i.bz = atomicrmw add ptr %i.by, i64 -1 release, align 8, !noalias !24919
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.am, label %.body19.thread44

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #52
          to label %.body19.thread44 unwind label %bb.ah
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !19    ; 4 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24922)
  br i1 %i.b, label %bb.h, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 range(i64 0, -1) %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24922
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !24922
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !24922
  %i.l = load i64, ptr %i.a, align 8, !range !17, !noalias !24922, !noundef !12
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !14, !noalias !24922, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !24922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24922
  br label %bb.h

.thread:                                          ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !24922, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24922
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !24922
  %i.s = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !24922
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %spec.select = select i1 %i.b, i64 -1, i64 %i.c
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.06.0 = phi i64 [ %spec.select, %bb.f ], [ %.sroa.0.0.i14.i, %.thread ]
  %i.t = sub i64 %.sroa.06.0, %1
  %i.u = icmp ule i64 %2, %i.t
  tail call void @llvm.assume(i1 %i.u)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.b, %bb.g
  %.sroa.3.0 = phi i64 [ undef, %bb.g ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.g ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ 0, %bb.b ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24927)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !24927 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24928)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24929
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !24929
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !24929
  %i.i = load i64, ptr %i.a, align 8, !range !17, !noalias !24929, !noundef !12
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !14, !noalias !24929, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !24929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24929
  br label %bb.f

.thread.i:                                        ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !24929, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24929
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !24929
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !24929
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.b
  %.sroa.3.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.n, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.l, %bb.e ], [ 0, %bb.c ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #47
  unreachable

bb.g:                                             ; preds = %bb.a, %.thread.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #50
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #50 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ %2, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ -9223372036854775807, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 3 uses
end_hunk_3
