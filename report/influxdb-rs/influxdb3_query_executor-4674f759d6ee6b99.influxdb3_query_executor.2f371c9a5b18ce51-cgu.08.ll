Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.08?download=true
inline.NumInlined: 4085
inline.NumDeleted: 1767
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs43kcu4yvms7_24influxdb3_query_executor:bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !20, !align !31, !noundef !20
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.iu = load ptr, ptr %i.it, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.iq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.is, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.iu)
          to label %bb.br unwind label %bb.bq

bb.h:                                             ; preds = %bb.a
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.iy = load ptr, ptr %i.ix, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ek, ptr noundef nonnull align 8 dereferenceable(328) %i.iw, i64 328, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ja = load ptr, ptr %i.iz, align 8, !nonnull !20, !align !31, !noundef !20
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.jc = load ptr, ptr %i.jb, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.iy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ja, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.jc)
          to label %bb.by unwind label %bb.bx

bb.i:                                             ; preds = %bb.a
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.jg = load ptr, ptr %i.jf, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ee, ptr noundef nonnull align 8 dereferenceable(328) %i.je, i64 328, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ji = load ptr, ptr %i.jh, align 8, !nonnull !20, !align !31, !noundef !20
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.jk = load ptr, ptr %i.jj, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ji, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.jk)
          to label %bb.cf unwind label %bb.ce

bb.j:                                             ; preds = %bb.a
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.jo = load ptr, ptr %i.jn, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.fe, ptr noundef nonnull align 8 dereferenceable(328) %i.jm, i64 328, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.jq = load ptr, ptr %i.jp, align 8, !nonnull !20, !align !31, !noundef !20
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.js = load ptr, ptr %i.jr, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ff, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jq, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.js)
          to label %bb.cm unwind label %bb.cl

bb.k:                                             ; preds = %bb.a
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.jw = load ptr, ptr %i.jv, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.fb, ptr noundef nonnull align 8 dereferenceable(328) %i.ju, i64 328, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.jy = load ptr, ptr %i.jx, align 8, !nonnull !20, !align !31, !noundef !20
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ka = load ptr, ptr %i.jz, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.fc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jy, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ka)
          to label %bb.ct unwind label %bb.cs

bb.l:                                             ; preds = %bb.a
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ke = load ptr, ptr %i.kd, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dy, ptr noundef nonnull align 8 dereferenceable(328) %i.kc, i64 328, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.kg = load ptr, ptr %i.kf, align 8, !nonnull !20, !align !31, !noundef !20
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ki = load ptr, ptr %i.kh, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ke, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.kg, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ki)
          to label %bb.da unwind label %bb.cz

bb.m:                                             ; preds = %bb.a
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.km = load ptr, ptr %i.kl, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dv, ptr noundef nonnull align 8 dereferenceable(328) %i.kk, i64 328, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !20, !align !31, !noundef !20
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.kq = load ptr, ptr %i.kp, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.km, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ko, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.kq)
          to label %bb.dh unwind label %bb.dg

bb.n:                                             ; preds = %bb.a
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !nonnull !20, !align !31, !noundef !20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ex, ptr noundef nonnull align 8 dereferenceable(328) %i.ks, i64 328, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !nonnull !20, !align !31, !noundef !20
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ky, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.la)
          to label %bb.dn unwind label %.thread1041

.thread1041:                                      ; preds = %bb.n
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %.thread1037

bb.o:                                             ; preds = %bb.a
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !nonnull !20, !align !31, !noundef !20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.eq, ptr noundef nonnull align 8 dereferenceable(328) %i.ld, i64 328, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !nonnull !20, !align !31, !noundef !20
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.er, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.lj, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ll)
          to label %bb.ed unwind label %.thread1052

.thread1052:                                      ; preds = %bb.o
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.thread1048

bb.p:                                             ; preds = %bb.a
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lo = load ptr, ptr %i.ln, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.lp, i64 24, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.lr = load i8, ptr %i.lq, align 8, !range !28, !noundef !20
  %i.ls = trunc nuw i8 %i.lr to i1
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.lu = load ptr, ptr %i.lt, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dg, ptr noundef nonnull align 8 dereferenceable(328) %i.lo, i64 328, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.lw = load ptr, ptr %i.lv, align 8, !nonnull !20, !align !31, !noundef !20
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ly = load ptr, ptr %i.lx, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE19sql_in_list_to_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dh, i1 noundef zeroext %i.ls, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.lw, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ly)
          to label %bb.eu unwind label %bb.et

bb.q:                                             ; preds = %bb.a
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.me = load i8, ptr %i.md, align 8, !range !28, !noundef !20
  %i.mf = trunc nuw i8 %i.me to i1
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.mh = load ptr, ptr %i.mg, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.bi, ptr noundef nonnull align 8 dereferenceable(328) %i.ma, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bh, ptr noundef nonnull align 8 dereferenceable(1400) %i.mc, i64 1400, i1 false)
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.mj = load ptr, ptr %i.mi, align 8, !nonnull !20, !align !31, !noundef !20
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ml = load ptr, ptr %i.mk, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr8subqueryINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17parse_in_subqueryCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.bi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1400) %i.bh, i1 noundef zeroext %i.mf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.mj, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ml)
          to label %bb.ev unwind label %bb.ew

bb.r:                                             ; preds = %bb.a
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mp = load i8, ptr %i.mo, align 8, !range !28, !noundef !20
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !nonnull !20, !align !31, !noundef !20 ; 6 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8, !nonnull !20, !align !31, !noundef !20 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dq, ptr noundef nonnull align 8 dereferenceable(328) %i.mn, i64 328, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !nonnull !20, !align !31, !noundef !20
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.mz = load ptr, ptr %i.my, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.mx, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.mz)
          to label %bb.ey unwind label %.body691.thread1069

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  invoke fastcc void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cu, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 56, ptr nonnull @37, ptr nonnull inttoptr (i64 113 to ptr))
          to label %bb.ge unwind label %bb.pe

bb.t:                                             ; preds = %bb.a
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.nb = load i8, ptr %i.na, align 8, !range !28, !noundef !20
  %i.nc = trunc nuw i8 %i.nb to i1
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ne = load ptr, ptr %i.nd, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ng = load ptr, ptr %i.nf, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull align 8 dereferenceable(48) %i.nh, i64 48, i1 false)
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.nj = load i8, ptr %i.ni, align 1, !range !28, !noundef !20
  %i.nk = trunc nuw i8 %i.nj to i1
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.nm = load ptr, ptr %i.nl, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.de, ptr noundef nonnull align 8 dereferenceable(328) %i.ne, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dd, ptr noundef nonnull align 8 dereferenceable(328) %i.ng, i64 328, i1 false)
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.no = load ptr, ptr %i.nn, align 8, !nonnull !20, !align !31, !noundef !20
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.nq = load ptr, ptr %i.np, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE16sql_like_to_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.nm, i1 noundef zeroext %i.nc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.de, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.no, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.nq, i1 noundef zeroext false, i1 noundef zeroext %i.nk)
          to label %bb.go unwind label %bb.gp

bb.u:                                             ; preds = %bb.a
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ns = load i8, ptr %i.nr, align 8, !range !28, !noundef !20
  %i.nt = trunc nuw i8 %i.ns to i1
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nv = load ptr, ptr %i.nu, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nx = load ptr, ptr %i.nw, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr noundef nonnull align 8 dereferenceable(48) %i.ny, i64 48, i1 false)
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.oa = load i8, ptr %i.nz, align 1, !range !28, !noundef !20
  %i.ob = trunc nuw i8 %i.oa to i1
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.od = load ptr, ptr %i.oc, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.db, ptr noundef nonnull align 8 dereferenceable(328) %i.nv, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.da, ptr noundef nonnull align 8 dereferenceable(328) %i.nx, i64 328, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.of = load ptr, ptr %i.oe, align 8, !nonnull !20, !align !31, !noundef !20
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.oh = load ptr, ptr %i.og, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE16sql_like_to_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.od, i1 noundef zeroext %i.nt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.db, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.da, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.of, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.oh, i1 noundef zeroext true, i1 noundef zeroext %i.ob)
          to label %bb.gq unwind label %bb.gr

bb.v:                                             ; preds = %bb.a
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.oj = load i8, ptr %i.oi, align 8, !range !28, !noundef !20
  %i.ok = trunc nuw i8 %i.oj to i1
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.om = load ptr, ptr %i.ol, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.oo = load ptr, ptr %i.on, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.op, i64 48, i1 false)
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.or = load ptr, ptr %i.oq, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cy, ptr noundef nonnull align 8 dereferenceable(328) %i.om, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cx, ptr noundef nonnull align 8 dereferenceable(328) %i.oo, i64 328, i1 false)
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ot = load ptr, ptr %i.os, align 8, !nonnull !20, !align !31, !noundef !20
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ov = load ptr, ptr %i.ou, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE21sql_similarto_to_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.or, i1 noundef zeroext %i.ok, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.cy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.cx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ot, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ov)
          to label %bb.gs unwind label %bb.gt

bb.w:                                             ; preds = %bb.a
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ox = load ptr, ptr %i.ow, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.oy, i64 32, i1 false)
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pa = load ptr, ptr %i.oz, align 8, !nonnull !20, !align !31, !noundef !20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ak, ptr noundef nonnull align 8 dereferenceable(328) %i.ox, i64 328, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !nonnull !20, !align !31, !noundef !20
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.pc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.pe, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.pg)
          to label %bb.gv unwind label %bb.gu

bb.x:                                             ; preds = %bb.a
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pi = load i8, ptr %i.ph, align 8, !range !113, !noundef !20
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.pm = load ptr, ptr %i.pl, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dt, ptr noundef nonnull align 8 dereferenceable(328) %i.pk, i64 328, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.po = load ptr, ptr %i.pn, align 8, !nonnull !20, !align !31, !noundef !20
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.pq = load ptr, ptr %i.pp, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr8unary_opINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18parse_sql_unary_opCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.pm, i8 noundef %i.pi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.po, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.pq)
          to label %bb.ia unwind label %bb.hz

bb.y:                                             ; preds = %bb.a
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ps = load i8, ptr %i.pr, align 8, !range !35, !noundef !20
  %.off = add nsw i8 %i.ps, -1
  %switch = icmp ult i8 %.off, 2
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.pu = load ptr, ptr %i.pt, align 8, !nonnull !20, !align !31, !noundef !20 ; 9 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %switch, label %bb.ic, label %bb.ib

bb.z:                                             ; preds = %bb.a
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8, !nonnull !20, !align !31, !noundef !20
  store ptr %i.qa, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.qc = load ptr, ptr %i.qb, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ay, ptr noundef nonnull align 8 dereferenceable(328) %i.py, i64 328, i1 false)
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.qe = load ptr, ptr %i.qd, align 8, !nonnull !20, !align !31, !noundef !20
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.qg = load ptr, ptr %i.qf, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internalCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.qe, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.qg)
          to label %bb.jw unwind label %bb.jv

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hb, ptr noundef nonnull align 8 dereferenceable(72) %i.qh, i64 72, i1 false)
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qj = load ptr, ptr %i.qi, align 8, !nonnull !20, !align !31, !noundef !20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  %i.qk = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 224)
          to label %bb.li unwind label %.split1106.thread ; 9 uses

.split1106.thread:                                ; preds = %bb.aa
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.mj

bb.ab:                                            ; preds = %bb.a
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qn = load ptr, ptr %i.qm, align 8, !nonnull !20, !align !31, !noundef !20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bz, ptr noundef nonnull align 8 dereferenceable(72) %i.qo, i64 72, i1 false)
  %i.qp = load i64, ptr %i.bz, align 8, !range !67, !noundef !20
  switch i64 %i.qp, label %bb.mm [
    i64 -1, label %bb.mk
    i64 42, label %bb.ml
  ]

bb.ac:                                            ; preds = %bb.a
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qr = load ptr, ptr %i.qq, align 8, !nonnull !20, !align !31, !noundef !20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
end_hunk_0
begin_hunk_1_@_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs43kcu4yvms7_24influxdb3_query_executor:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.793)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.do
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ku, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ks, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bp

bb.ec:                                            ; preds = %bb.dv, %bb.do
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %.thread1037, %.body700, %bb.dt, %bb.ec
  %.pn663 = phi { ptr, i32 } [ %i.aaz, %bb.ec ], [ %i.aax, %.body700 ], [ %eh.lpad-body7041040, %.thread1037 ], [ %i.aar, %bb.dt ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ku, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ks, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bb

.thread1037:                                      ; preds = %bb.dq, %.thread1041
  %eh.lpad-body7041040 = phi { ptr, i32 } [ %i.lb, %.thread1041 ], [ %i.aam, %bb.dq ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(328) %i.ku) #36
          to label %.thread unwind label %bb.bh

bb.ed:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  %i.aba = load i64, ptr %i.er, align 16, !range !27, !noundef !20 ; 2 uses
  %i.abb = icmp eq i64 %i.aba, -2
  %i.abc = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7111, ptr noundef nonnull align 8 dereferenceable(40) %i.abc, i64 40, i1 false)
  br i1 %i.abb, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.abd, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7111, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7111)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(328) %i.lf)
          to label %bb.er unwind label %bb.es

bb.ef:                                            ; preds = %bb.ed
  %.sroa.5415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %.sroa.9113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9113.0..sroa_idx114, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5415.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  store i64 %i.aba, ptr %i.ep, align 16
  %.sroa.7111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7111.0..sroa_idx112, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7111, i64 40, i1 false)
  %i.abe = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.ei unwind label %bb.eg, !noalias !5934 ; 3 uses

bb.eg:                                            ; preds = %bb.ef
  %i.abf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ep) #36
          to label %.thread1048 unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.abg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.ei:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.abe, ptr noundef nonnull align 16 dereferenceable(112) %i.ep, i64 112, i1 false)
  store ptr %i.abe, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.abh = load ptr, ptr %i.lg, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.en, ptr noundef nonnull align 8 dereferenceable(328) %i.lf, i64 328, i1 false)
  %i.abi = load ptr, ptr %i.li, align 8, !nonnull !20, !align !31, !noundef !20
  %i.abj = load ptr, ptr %i.lk, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.abh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.abi, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.abj)
          to label %bb.ek unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.abk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.es) #36
          to label %.thread1044 unwind label %bb.bh

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  %i.abl = load i64, ptr %i.eo, align 16, !range !27, !noundef !20 ; 2 uses
  %i.abm = icmp eq i64 %i.abl, -2
  %i.abn = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117, ptr noundef nonnull align 8 dereferenceable(40) %i.abn, i64 40, i1 false)
  br i1 %i.abm, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.abo, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.es)
          to label %bb.eq unwind label %bb.es

bb.em:                                            ; preds = %bb.ek
  %.sroa.5418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %.sroa.8119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8119.0..sroa_idx120, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5418.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  store i64 %i.abl, ptr %i.em, align 16
  %.sroa.6117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117.0..sroa_idx118, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117, i64 40, i1 false)
  %i.abp = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.ep unwind label %bb.en, !noalias !5935 ; 2 uses

bb.en:                                            ; preds = %bb.em
  %i.abq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.em) #36
          to label %.body694 unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.abr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

.body694:                                         ; preds = %bb.en
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.es) #36
          to label %.thread1044 unwind label %bb.bh

bb.ep:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.abp, ptr noundef nonnull align 16 dereferenceable(112) %i.em, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  store i64 7, ptr %0, align 16
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.abe, ptr %.sroa.6103.0..sroa_idx, align 8
  %.sroa.6103.sroa.6.0..sroa.6103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.abp, ptr %.sroa.6103.sroa.6.0..sroa.6103.0..sroa_idx.sroa_idx, align 16
  %.sroa.6103.sroa.7.0..sroa.6103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 14, ptr %.sroa.6103.sroa.7.0..sroa.6103.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7111)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lf, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ld, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bd

bb.eq:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7111)
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ee
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lf, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ld, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bp

bb.es:                                            ; preds = %bb.el, %bb.ee
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %.thread1044

.thread1044:                                      ; preds = %.thread1048, %.body694, %bb.ej, %bb.es
  %.pn659 = phi { ptr, i32 } [ %i.abs, %bb.es ], [ %i.abq, %.body694 ], [ %eh.lpad-body6981051, %.thread1048 ], [ %i.abk, %bb.ej ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lf, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ld, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bb

.thread1048:                                      ; preds = %bb.eg, %.thread1052
  %eh.lpad-body6981051 = phi { ptr, i32 } [ %i.lm, %.thread1052 ], [ %i.abf, %bb.eg ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(328) %i.lf) #36
          to label %.thread1044 unwind label %bb.bh

bb.et:                                            ; preds = %bb.p
  %i.abt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lo, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bb

bb.eu:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lo, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bd

bb.ev:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mc, i64 noundef 1400, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ma, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bd

bb.ew:                                            ; preds = %bb.q
  %i.abu = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mc, i64 noundef 1400, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ma, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bb

bb.ex:                                            ; preds = %.body688
  br i1 %.sroa.0302.2, label %.body691.thread, label %.thread1062

.body691.thread1069:                              ; preds = %bb.fg, %bb.r
  %.sroa.0303.1.ph = phi i1 [ true, %bb.r ], [ false, %bb.fg ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body691.thread

.body691:                                         ; preds = %bb.fu
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1062

bb.ey:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  %i.abv = load i64, ptr %i.dr, align 16, !range !27, !noundef !20 ; 2 uses
  %i.abw = icmp eq i64 %i.abv, -2                 ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7184, ptr noundef nonnull align 8 dereferenceable(40) %i.abx, i64 40, i1 false)
  br i1 %i.abw, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aby, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7184, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br label %bb.fx

bb.fa:                                            ; preds = %bb.ey
  %.sroa.5439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %.sroa.9186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9186.0..sroa_idx187, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5439.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  store i64 %i.abv, ptr %i.dp, align 16
  %.sroa.7184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7184.0..sroa_idx185, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7184, i64 40, i1 false)
  %i.abz = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.fd unwind label %bb.fb, !noalias !5936 ; 3 uses

bb.fb:                                            ; preds = %bb.fa
  %i.aca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.dp) #36
          to label %.body691.thread unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.acb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.fd:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.abz, ptr noundef nonnull align 16 dereferenceable(112) %i.dp, i64 112, i1 false)
  store ptr %i.abz, ptr %i.ds, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7190)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  %i.acc = load ptr, ptr %i.mu, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dm, ptr noundef nonnull align 8 dereferenceable(328) %i.mr, i64 328, i1 false)
  %i.acd = load ptr, ptr %i.mw, align 8, !nonnull !20, !align !31, !noundef !20
  %i.ace = load ptr, ptr %i.my, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.acc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.acd, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ace)
          to label %bb.ff unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.acf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.ds) #36
          to label %.body691.thread unwind label %bb.bh

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %i.acg = load i64, ptr %i.dn, align 16, !range !27, !noundef !20 ; 2 uses
  %i.ach = icmp eq i64 %i.acg, -2
  %i.aci = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190, ptr noundef nonnull align 8 dereferenceable(40) %i.aci, i64 40, i1 false)
  br i1 %i.ach, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.acj, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.ds)
          to label %bb.fw unwind label %.body691.thread1069

bb.fh:                                            ; preds = %bb.ff
  %.sroa.5442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %.sroa.9192.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9192.0..sroa_idx193, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5442.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  store i64 %i.acg, ptr %i.dl, align 16
  %.sroa.7190.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190.0..sroa_idx191, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190, i64 40, i1 false)
  %i.ack = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.fk unwind label %bb.fi, !noalias !5937 ; 3 uses

bb.fi:                                            ; preds = %bb.fh
  %i.acl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.dl) #36
          to label %.body688 unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.acm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

.body688:                                         ; preds = %bb.fi, %bb.fl
  %.sroa.0302.2 = phi i1 [ false, %bb.fl ], [ true, %bb.fi ]
  %.pn647 = phi { ptr, i32 } [ %i.acq, %bb.fl ], [ %i.acl, %bb.fi ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.ds) #36
          to label %bb.ex unwind label %bb.bh

bb.fk:                                            ; preds = %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ack, ptr noundef nonnull align 16 dereferenceable(112) %i.dl, i64 112, i1 false)
  store ptr %i.ack, ptr %i.do, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  %i.acn = load ptr, ptr %i.mu, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dj, ptr noundef nonnull align 8 dereferenceable(328) %i.mt, i64 328, i1 false)
  %i.aco = load ptr, ptr %i.mw, align 8, !nonnull !20, !align !31, !noundef !20
  %i.acp = load ptr, ptr %i.my, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.acn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aco, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.acp)
          to label %bb.fm unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.acq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.do) #36
          to label %.body688 unwind label %bb.bh

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %i.acr = load i64, ptr %i.dk, align 16, !range !27, !noundef !20 ; 2 uses
  %i.acs = icmp eq i64 %i.acr, -2
  %i.act = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6196, ptr noundef nonnull align 8 dereferenceable(40) %i.act, i64 40, i1 false)
  br i1 %i.acs, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.acu, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6196, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.do)
          to label %bb.fu unwind label %bb.ft

bb.fo:                                            ; preds = %bb.fm
  %.sroa.5445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %.sroa.8198.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8198.0..sroa_idx199, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5445.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  store i64 %i.acr, ptr %i.di, align 16
  %.sroa.6196.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6196.0..sroa_idx197, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6196, i64 40, i1 false)
  %i.acv = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.fr unwind label %bb.fp, !noalias !5938 ; 2 uses

bb.fp:                                            ; preds = %bb.fo
  %i.acw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.di) #36
          to label %.body685 unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.acx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

.body685:                                         ; preds = %bb.fp
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.do) #36
          to label %bb.fs unwind label %bb.bh

bb.fr:                                            ; preds = %bb.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.acv, ptr noundef nonnull align 16 dereferenceable(112) %i.di, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  store i64 20, ptr %0, align 16
  %.sroa.7176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.abz, ptr %.sroa.7176.0..sroa_idx, align 8
  %.sroa.7176.sroa.7.0..sroa.7176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ack, ptr %.sroa.7176.sroa.7.0..sroa.7176.0..sroa_idx.sroa_idx, align 16
  %.sroa.7176.sroa.8.0..sroa.7176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.acv, ptr %.sroa.7176.sroa.8.0..sroa.7176.0..sroa_idx.sroa_idx, align 8
  %.sroa.7176.sroa.9.0..sroa.7176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.mp, ptr %.sroa.7176.sroa.9.0..sroa.7176.0..sroa_idx.sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6196)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7190)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7184)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mt, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mr, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mn, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bd

bb.fs:                                            ; preds = %bb.ft, %.body685
  %.pn649 = phi { ptr, i32 } [ %i.acy, %bb.ft ], [ %i.acw, %.body685 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.ds) #36
          to label %.thread1062 unwind label %bb.bh

bb.ft:                                            ; preds = %bb.fn
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fu:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.ds)
          to label %.thread1073 unwind label %.body691

.thread1073:                                      ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6196)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7190)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7184)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mt, i64 noundef 328, i64 noundef 8) #31
  br label %bb.fz

bb.fv:                                            ; preds = %bb.fx
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mt, i64 noundef 328, i64 noundef 8) #31
  br i1 %i.abw, label %bb.ga, label %bb.fz

bb.fw:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7190)
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7184)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(328) %i.mt)
          to label %bb.fv unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.acz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mt, i64 noundef 328, i64 noundef 8) #31
  br i1 %i.abw, label %bb.gd, label %bb.gc

bb.fz:                                            ; preds = %.thread1073, %bb.ga, %bb.fv
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mr, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mn, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bp

bb.ga:                                            ; preds = %bb.fv
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(328) %i.mr)
          to label %bb.fz unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ada = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.gc:                                            ; preds = %2, %bb.gd, %bb.fy, %.thread1062, %bb.gb
  %.pn655 = phi { ptr, i32 } [ %i.ada, %bb.gb ], [ %i.acz, %bb.fy ], [ %.pn6531176, %bb.gd ], [ %.pn6511061, %2 ], [ %.pn6511060.ph, %.thread1062 ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mr, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mn, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bb

.thread1062:                                      ; preds = %bb.ex, %.body691, %bb.fs
  %.pn6511060.ph = phi { ptr, i32 } [ %.pn649, %bb.fs ], [ %lpad.thr_comm.split-lp, %.body691 ], [ %.pn647, %bb.ex ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mt, i64 noundef 328, i64 noundef 8) #31
  br label %bb.gc

2:                                                ; preds = %.body691.thread
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mt, i64 noundef 328, i64 noundef 8) #31
  br i1 %.sroa.0303.01059, label %bb.gd, label %bb.gc

.body691.thread:                                  ; preds = %bb.fe, %bb.fb, %.body691.thread1069, %bb.ex
  %.pn6511061 = phi { ptr, i32 } [ %i.aca, %bb.fb ], [ %.pn647, %bb.ex ], [ %lpad.thr_comm, %.body691.thread1069 ], [ %i.acf, %bb.fe ] ; 2 uses
  %.sroa.0303.01059 = phi i1 [ true, %bb.fb ], [ false, %bb.ex ], [ %.sroa.0303.1.ph, %.body691.thread1069 ], [ false, %bb.fe ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(328) %i.mt) #36
          to label %2 unwind label %bb.bh

bb.gd:                                            ; preds = %bb.fy, %2
  %.pn6531176 = phi { ptr, i32 } [ %i.acz, %bb.fy ], [ %.pn6511061, %2 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(328) %i.mr) #36
          to label %bb.gc unwind label %bb.bh

bb.ge:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.gh unwind label %bb.gg

bb.gf:                                            ; preds = %bb.gk, %bb.gg
  %.pn645 = phi { ptr, i32 } [ %i.adb, %bb.gg ], [ %i.adk, %bb.gk ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv) #36
          to label %bb.bb unwind label %bb.bh

bb.gg:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit832, %bb.gi, %bb.ge
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.gh:                                            ; preds = %bb.ge
  %i.adc = load i64, ptr %i.j, align 8, !range !21, !noundef !20
  %i.add = trunc nuw i64 %i.adc to i1
  %i.ade = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.adf = load i64, ptr %i.ade, align 8, !range !22, !noundef !20 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.add, label %bb.gi, label %bb.gj, !prof !18

bb.gi:                                            ; preds = %bb.gh
  %i.adh = load i64, ptr %i.adg, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.adf, i64 %i.adh) #35
          to label %bb.gn unwind label %bb.gg

bb.gj:                                            ; preds = %bb.gh
  %i.adi = load ptr, ptr %i.adg, align 8, !nonnull !20, !noundef !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.adf, ptr %i.ct, align 8
  %.sroa.4449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.adi, ptr %.sroa.4449.0..sroa_idx, align 8
  %.sroa.5450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 0, ptr %.sroa.5450.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  store ptr %i.cv, ptr %i.cs, align 8
  %.sroa.4454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4454.0..sroa_idx, align 8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.ct, ptr %i.adj, align 8
  %.sroa.4458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4458.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cw, ptr noundef nonnull @10, ptr noundef nonnull %i.cs)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit832 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.adk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct) #36
          to label %bb.gf unwind label %bb.bh

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit832: ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %bb.gl unwind label %bb.gg

bb.gl:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %bb.gm unwind label %bb.pe

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2201.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.adl, align 8
  store i64 -2, ptr %0, align 16
  br label %bb.bd

bb.gn:                                            ; preds = %bb.ri, %bb.pk, %bb.on, %bb.od, %bb.nh, %bb.mx, %bb.ly, %bb.kr, %bb.ik, %bb.hn, %bb.gi
  unreachable

bb.go:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ng, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ne, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bd

bb.gp:                                            ; preds = %bb.t
  %i.adm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ng, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ne, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bb

bb.gq:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nx, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nv, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bd

bb.gr:                                            ; preds = %bb.u
  %i.adn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nx, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nv, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bb

bb.gs:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oo, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.om, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bd

bb.gt:                                            ; preds = %bb.v
  %i.ado = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oo, i64 noundef 328, i64 noundef 8) #31
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.om, i64 noundef 328, i64 noundef 8) #31
  br label %bb.bb

bb.gu:                                            ; preds = %bb.w
  %i.adp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast8operator14BinaryOperatorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an) #36
          to label %.thread1090 unwind label %bb.bh

bb.gv:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.adq = load i64, ptr %i.al, align 16, !range !27, !noundef !20 ; 2 uses
  %i.adr = icmp eq i64 %i.adq, -2
  %i.ads = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7236, ptr noundef nonnull align 8 dereferenceable(40) %i.ads, i64 40, i1 false)
  br i1 %i.adr, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.adt, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7236, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast8operator14BinaryOperatorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %bb.hy unwind label %.thread1094

.thread1094:                                      ; preds = %bb.gw
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %.thread1090

bb.gx:                                            ; preds = %bb.gv
  %.sroa.5545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5242.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5545.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4241.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7236, i64 40, i1 false)
  store i64 %i.adq, ptr %i.am, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.adv = load ptr, ptr %i.pb, align 8, !nonnull !20, !align !31, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ai, ptr noundef nonnull align 8 dereferenceable(328) %i.pa, i64 328, i1 false)
  %i.adw = load ptr, ptr %i.pd, align 8, !nonnull !20, !align !31, !noundef !20
  %i.adx = load ptr, ptr %i.pf, align 8, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.adv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.adw, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.adx)
          to label %bb.gz unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ady = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.am) #36
          to label %bb.hx unwind label %bb.bh

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.adz = load i64, ptr %i.aj, align 16, !range !27, !noundef !20 ; 2 uses
  %i.aea = icmp eq i64 %i.adz, -2
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6245, ptr noundef nonnull align 8 dereferenceable(40) %i.aeb, i64 40, i1 false)
  br i1 %i.aea, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aec, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6245, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.am)
          to label %bb.hv unwind label %bb.hu

.thread1082:                                      ; preds = %bb.hq, %._crit_edge1140
  %lpad.thr_comm1080 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1075

bb.hb:                                            ; preds = %bb.gz
end_hunk_1
begin_hunk_2_@_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs43kcu4yvms7_24influxdb3_query_executor:bb.a
bb.qa:                                            ; preds = %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  br label %bb.bp

bb.qb:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.bd

bb.qc:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh)
  br label %bb.bd

bb.qd:                                            ; preds = %bb.al
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tt, i64 noundef 1400, i64 noundef 8) #31
  br label %bb.bb

bb.qe:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tt, i64 noundef 1400, i64 noundef 8) #31
  br label %bb.bd

bb.qf:                                            ; preds = %bb.am
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ue, i64 noundef 1400, i64 noundef 8) #31
  br label %bb.bb

bb.qg:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ue, i64 noundef 1400, i64 noundef 8) #31
  br label %bb.bd

bb.qh:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.bd

bb.qi:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.bd

bb.qj:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.bd

bb.qk:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bd

bb.ql:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.bd

bb.qm:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.bd

bb.qn:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bd

bb.qo:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bd

bb.qp:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  br label %bb.bd

bb.qq:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ww, ptr noundef nonnull align 8 dereferenceable(352) %i.y, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.4269.0..sroa_idx, align 8
  store i64 31, ptr %0, align 16
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ww, ptr %.sroa.5270.0..sroa_idx, align 16
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.z)
          to label %bb.qr unwind label %bb.pe

bb.qr:                                            ; preds = %bb.qq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.ay
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.z) #36
          to label %bb.bb unwind label %bb.bh

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEECs43kcu4yvms7_24influxdb3_query_executor.exit868: ; preds = %.body, %bb.qs
  %.pn = phi { ptr, i32 } [ %i.aqc, %bb.qs ], [ %i.aqm, %.body ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.w) #36
          to label %bb.bb unwind label %bb.bh

bb.qs:                                            ; preds = %bb.ba
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEECs43kcu4yvms7_24influxdb3_query_executor.exit868

bb.qt:                                            ; preds = %bb.ba
  %i.aqd = load i64, ptr %i.u, align 8, !range !48, !noundef !20 ; 2 uses
  %i.aqe = icmp eq i64 %i.aqd, -1
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6278, ptr noundef nonnull align 8 dereferenceable(40) %i.aqf, i64 40, i1 false)
  br i1 %i.aqe, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.aqg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aqg, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6278, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6278)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.w)
          to label %bb.ra unwind label %bb.pe

bb.qv:                                            ; preds = %bb.qt
  %.sroa.5573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.5573.0.copyload = load i64, ptr %.sroa.5573.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.2284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6278, i64 40, i1 false)
  store i64 %i.aqd, ptr %i.v, align 8
  %.sroa.3285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 %.sroa.5573.0.copyload, ptr %.sroa.3285.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 -1, ptr %i.t, align 8
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store i64 -2, ptr %i.aqh, align 8
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 -1, ptr %i.aqi, align 8
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  store i64 -1, ptr %i.aqj, align 8
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store i64 -2, ptr %i.aqk, align 8
  %i.aql = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 352)
          to label %bb.qy unwind label %bb.qw, !noalias !5952 ; 2 uses

bb.qw:                                            ; preds = %bb.qv
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr15WildcardOptionsECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.t) #36
          to label %.body unwind label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.aqn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

.body:                                            ; preds = %bb.qw
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(56) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEECs43kcu4yvms7_24influxdb3_query_executor.exit868 unwind label %bb.bh

bb.qy:                                            ; preds = %bb.qv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.aql, ptr noundef nonnull align 8 dereferenceable(352) %i.t, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5273.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 31, ptr %0, align 16
  %.sroa.6274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aql, ptr %.sroa.6274.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6278)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.w)
          to label %bb.qz unwind label %bb.pe

bb.qz:                                            ; preds = %bb.qy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bd

bb.ra:                                            ; preds = %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bp

bb.rb:                                            ; preds = %bb.bp
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(328) %1)
  br label %.critedge

bb.rc:                                            ; preds = %bb.bp
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aqo)
          to label %bb.re unwind label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.aqp = landingpad { ptr, i32 }
          cleanup
  %i.aqq = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aqq) #36
          to label %.critedge672.a unwind label %bb.bh

bb.re:                                            ; preds = %bb.rc
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aqr)
  br label %.critedge

.critedge672.a:                                   ; preds = %bb.rv, %bb.rz, %.critedge671, %bb.ru, %bb.rs, %bb.rr, %bb.rd, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %.pn667.pn.pn = phi { ptr, i32 } [ %.pn667.pn, %bb.ru ], [ %.pn667.pn, %.critedge671 ], [ %i.aqp, %bb.rd ], [ %.pn667.pn, %bb.rz ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn667.pn, %bb.bb ], [ %.pn665, %bb.rr ], [ %.pn667.pn, %bb.rv ], [ %i.arj, %bb.rs ]
  resume { ptr, i32 } %.pn667.pn.pn

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.rh unwind label %bb.rg

bb.rf:                                            ; preds = %bb.rk, %bb.rg
  %.pn667 = phi { ptr, i32 } [ %i.aqs, %bb.rg ], [ %i.arb, %bb.rk ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #36
          to label %bb.bb unwind label %bb.bh

bb.rg:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit870, %bb.ri, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.aqs = landingpad { ptr, i32 }
          cleanup
  br label %bb.rf

bb.rh:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.aqt = load i64, ptr %i.c, align 8, !range !21, !noundef !20
  %i.aqu = trunc nuw i64 %i.aqt to i1
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aqw = load i64, ptr %i.aqv, align 8, !range !22, !noundef !20 ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aqu, label %bb.ri, label %bb.rj, !prof !18

bb.ri:                                            ; preds = %bb.rh
  %i.aqy = load i64, ptr %i.aqx, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aqw, i64 %i.aqy) #35
          to label %bb.gn unwind label %bb.rg

bb.rj:                                            ; preds = %bb.rh
  %i.aqz = load ptr, ptr %i.aqx, align 8, !nonnull !20, !noundef !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.aqw, ptr %i.n, align 8
  %.sroa.4587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.aqz, ptr %.sroa.4587.0..sroa_idx, align 8
  %.sroa.5588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.5588.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  %.sroa.4592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4592.0..sroa_idx, align 8
  %i.ara = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.ara, align 8
  %.sroa.4596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4596.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @10, ptr noundef nonnull %i.m)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit870 unwind label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.arb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #36
          to label %bb.rf unwind label %bb.bh

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit870: ; preds = %bb.rj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.rl unwind label %bb.rg

bb.rl:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.rm unwind label %bb.pe

bb.rm:                                            ; preds = %bb.rl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.2287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2287.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.arc, align 8
  store i64 -2, ptr %0, align 16
  br label %bb.bd

bb.rn:                                            ; preds = %bb.mf
  %i.ard = landingpad { ptr, i32 }
          cleanup
  %i.are = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.are) #36
          to label %bb.rr unwind label %bb.bh

bb.ro:                                            ; preds = %bb.mf
  %i.arf = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.arf)
          to label %bb.rq unwind label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.arg = landingpad { ptr, i32 }
          cleanup
  br label %bb.rr

bb.rq:                                            ; preds = %bb.ro
  %i.arh = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast10CastFormatEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(96) %i.arh)
  br label %.critedge

bb.rr:                                            ; preds = %bb.rp, %bb.rn
  %.pn665 = phi { ptr, i32 } [ %i.arg, %bb.rp ], [ %i.ard, %bb.rn ]
  %i.ari = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast10CastFormatEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(96) %i.ari) #36
          to label %.critedge672.a unwind label %bb.bh

bb.rs:                                            ; preds = %bb.ju
  %i.arj = landingpad { ptr, i32 }
          cleanup
  %i.ark = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ark) #36
          to label %.critedge672.a unwind label %bb.bh

bb.rt:                                            ; preds = %bb.ju
  %i.arl = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.arl)
  br label %.critedge

bb.ru:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(328) %1) #36
          to label %.critedge672.a unwind label %bb.bh

bb.rv:                                            ; preds = %bb.bb
  br i1 %.sroa.0291.0, label %bb.rx, label %.critedge672.a

bb.rw:                                            ; preds = %bb.bb
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.arm) #36
          to label %bb.rz unwind label %bb.bh

bb.rx:                                            ; preds = %bb.rv
  %i.arn = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.arn) #36
          to label %bb.ry unwind label %bb.bh

bb.ry:                                            ; preds = %bb.rx
  %i.aro = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aro) #36
          to label %.critedge671 unwind label %bb.bh

.critedge671:                                     ; preds = %bb.ry
  %i.arp = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast10CastFormatEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(96) %i.arp) #36
          to label %.critedge672.a unwind label %bb.bh

bb.rz:                                            ; preds = %bb.rw
  %i.arq = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers14attached_token13AttachedTokenECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.arq) #36
          to label %.critedge672.a unwind label %bb.bh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvCscqZbLFbuEKt_7stacker4growINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB31_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0E0INtNtNtBF_3ops8function6FnOnceuE9call_once6vtableCs43kcu4yvms7_24influxdb3_query_executor(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = alloca [352 x i8], align 8               ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !20, !align !23, !noundef !20 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5961)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5962
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !alias.scope !5960, !noalias !5963 ; 2 uses
  store i64 -4, ptr %i.c, align 8, !alias.scope !5960, !noalias !5963
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -4
  br i1 %.not.i.i, label %bb.e, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !noalias !5962
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.5.0..sroa_idx.i.i, i64 344, i1 false), !noalias !5964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5962
  call fastcc void @_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(352) %i.b), !noalias !5962
  %i.f = load i64, ptr %i.e, align 16, !range !41, !alias.scope !5965, !noalias !5963, !noundef !20
  switch i64 %i.f, label %bb.c [
    i64 -3, label %_RNvYNCINvCscqZbLFbuEKt_7stacker4growINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB2Z_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit
    i64 -2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.e)
          to label %_RNvYNCINvCscqZbLFbuEKt_7stacker4growINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB2Z_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.f, !noalias !5966

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(40) %i.g)
          to label %_RNvYNCINvCscqZbLFbuEKt_7stacker4growINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB2Z_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.f, !noalias !5966

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #35, !noalias !5962
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !5966
  resume { ptr, i32 } %i.h

_RNvYNCINvCscqZbLFbuEKt_7stacker4growINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB2Z_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b, %bb.c, %bb.d
end_hunk_2
