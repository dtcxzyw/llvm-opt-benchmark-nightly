Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff-e768ae2d72824186.ruff.64ca6932328cfb18-cgu.13?download=true
inline.NumInlined: 1757
inline.NumDeleted: 806
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtCs8EvorvD8vmS_4ruff8commands6format13format_source:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerEECs8EvorvD8vmS_4ruff.exit.i: ; preds = %bb.dk
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map9SourceMapECs8EvorvD8vmS_4ruff.exit unwind label %.body216

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map9SourceMapECs8EvorvD8vmS_4ruff.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerEECs8EvorvD8vmS_4ruff.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.iy = load i64, ptr %i.ac, align 8, !range !186, !alias.scope !1976, !noundef !3
  %i.iz = icmp eq i64 %i.iy, -1
  br i1 %i.iz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs8EvorvD8vmS_4ruff.exit, label %bb.dn

bb.dn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map9SourceMapECs8EvorvD8vmS_4ruff.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i: ; preds = %bb.dn
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs8EvorvD8vmS_4ruff.exit

.body216.thread:                                  ; preds = %bb.dl, %.body216, %bb.bk
  %.pn158270 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body216 ], [ %.pn156, %bb.bk ], [ %i.iw, %bb.dl ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #40
          to label %common.resume unwind label %bb.ag

bb.dq:                                            ; preds = %bb.h
  %.not145 = icmp eq ptr %2, null
  br i1 %.not145, label %bb.dt, label %bb.ds

bb.dr:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !nonnull !3, !noundef !3
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jf = load i64, ptr %i.je, align 8, !noundef !3
  call void @_RNvCs9cwuQvTGyfs_13ruff_markdown18format_code_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jd, i64 noundef %i.jf, ptr noalias noundef readonly captures(address, read_provenance) %2, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %4)
  %i.jg = load i64, ptr %i.u, align 8, !range !186, !noundef !3
  %i.jh = icmp eq i64 %i.jg, -1
  br i1 %i.jh, label %bb.dv, label %bb.du

bb.ds:                                            ; preds = %bb.dq
  call void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %.sroa.082.0.copyload = load i64, ptr %i.k, align 8
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dq, %bb.ds
  %.sroa.082.0 = phi i64 [ %.sroa.082.0.copyload, %bb.ds ], [ -1, %bb.dq ]
  store i64 -9223372036854775802, ptr %0, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.082.0, ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.480.sroa.4.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.480.sroa.4.0..sroa.480.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  br label %bb.ap

bb.du:                                            ; preds = %bb.dr
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.488.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dr, %bb.du
  %.sink = phi i64 [ -9223372036854775807, %bb.du ], [ -1, %bb.dr ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.ji, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs8EvorvD8vmS_4ruff8commands6format36warn_incompatible_formatter_settings(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [40 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [40 x i8], align 8               ; 8 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [40 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 9 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [40 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 9 uses
  %i.ao = alloca [40 x i8], align 8               ; 8 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [40 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 9 uses
  %i.as = alloca [40 x i8], align 8               ; 8 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [40 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 9 uses
  %i.aw = alloca [40 x i8], align 8               ; 8 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [40 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 9 uses
  %i.ba = alloca [40 x i8], align 8               ; 8 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [40 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 9 uses
  %i.be = alloca [40 x i8], align 8               ; 8 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [40 x i8], align 8               ; 8 uses
  %i.bh = alloca [24 x i8], align 8               ; 9 uses
  %i.bi = alloca [40 x i8], align 8               ; 8 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [40 x i8], align 8               ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 9 uses
  %i.bm = alloca [32 x i8], align 8               ; 5 uses
  %i.bn = alloca [40 x i8], align 8               ; 8 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [40 x i8], align 8               ; 8 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 4 uses
  %i.bt = alloca [24 x i8], align 8               ; 9 uses
  %i.bu = alloca [40 x i8], align 8               ; 8 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [40 x i8], align 8               ; 8 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [24 x i8], align 8               ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 9 uses
  %i.ca = alloca [8 x i8], align 8                ; 4 uses
  %i.cb = alloca [64 x i8], align 8               ; 4 uses
  %i.cc = alloca [24 x i8], align 8               ; 9 uses
  %i.cd = alloca [32 x i8], align 8               ; 5 uses
  %i.ce = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) @124, i64 32, i1 false)
  invoke void @_RNvMs1_NtCs3ZkgueCtkyH_14ruff_workspace8resolverNtB5_8Resolver8settings(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cd, ptr noundef nonnull align 8 %0)
          to label %bb.b unwind label %.loopexit.split-lp

.body221:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ih, %bb.ht, %bb.hc, %bb.gn, %bb.fx, %bb.fg, %bb.ep, %bb.ec, %bb.dj, %bb.ct, %bb.ce, %bb.bo, %.body474, %.body455, %.body436, %.body417, %.body398, %.body379, %.body360, %.body341, %.body322, %.body303, %.body284, %.body265
  %.sroa.08.0 = phi i8 [ %.sroa.08.2, %.body265 ], [ %.sroa.08.2, %.body284 ], [ %.sroa.08.2, %.body474 ], [ %.sroa.08.2, %.body455 ], [ %.sroa.08.2, %.body436 ], [ %.sroa.08.2, %.body417 ], [ %.sroa.08.2, %.body398 ], [ %.sroa.08.2, %.body379 ], [ %.sroa.08.2, %.body360 ], [ %.sroa.08.2, %.body341 ], [ %.sroa.08.2, %.body322 ], [ %.sroa.08.2, %.body303 ], [ %.sroa.08.2, %bb.ht ], [ %.sroa.08.2, %bb.ih ], [ %.sroa.08.2, %bb.bo ], [ %.sroa.08.2, %bb.ce ], [ %.sroa.08.2, %bb.ct ], [ %.sroa.08.2, %bb.dj ], [ %.sroa.08.2, %bb.ec ], [ %.sroa.08.2, %bb.ep ], [ %.sroa.08.2, %bb.fg ], [ %.sroa.08.2, %bb.fx ], [ %.sroa.08.2, %bb.gn ], [ %.sroa.08.2, %bb.hc ], [ %.sroa.08.2, %.loopexit ], [ %.sroa.08.1.ph, %.loopexit.split-lp ]
  %.pn182 = phi { ptr, i32 } [ %.pn156, %.body265 ], [ %.pn158, %.body284 ], [ %.pn179, %.body474 ], [ %.pn177, %.body455 ], [ %.pn175, %.body436 ], [ %.pn173, %.body417 ], [ %.pn171, %.body398 ], [ %.pn169, %.body379 ], [ %.pn167, %.body360 ], [ %.pn165, %.body341 ], [ %.pn162, %.body322 ], [ %.pn160, %.body303 ], [ %i.rq, %bb.ht ], [ %i.sh, %bb.ih ], [ %i.iq, %bb.bo ], [ %i.jo, %bb.ce ], [ %i.ki, %bb.ct ], [ %i.li, %bb.dj ], [ %i.mm, %bb.ec ], [ %i.nb, %bb.ep ], [ %i.oa, %bb.fg ], [ %i.pa, %bb.fx ], [ %i.pw, %bb.gn ], [ %i.qq, %bb.hc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cf = trunc nuw i8 %.sroa.08.0 to i1
  br i1 %i.cf, label %bb.ir, label %.thread551

.loopexit:                                        ; preds = %bb.bi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i257, %bb.by, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i276, %bb.cn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i295, %bb.dd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i314, %bb.dw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i333, %bb.ej, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i352, %bb.fa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i371, %bb.fr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i390, %bb.gh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i409, %bb.gw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i428, %bb.hn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i447, %bb.ib, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i466
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body221

.loopexit.split-lp:                               ; preds = %.invoke, %bb.a, %bb.g, %bb.h, %bb.i, %bb.ag
  %.sroa.08.1.ph = phi i8 [ %.sroa.08.2, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ %.sroa.08.2, %.invoke ], [ 1, %bb.a ], [ 0, %bb.ag ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body221

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.cd, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit597.backedge, %bb.b
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ %.sroa.7.1.ph, %.loopexit597.backedge ] ; 5 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload, %bb.b ], [ %.sroa.5.1558.ph, %.loopexit597.backedge ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.1560.ph, %.loopexit597.backedge ]
  %i.cg = trunc nuw i64 %.sroa.0.0 to i1
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %.sroa.5.0, null
  br i1 %.not.i, label %bb.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8EvorvD8vmS_4ruff.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.1.ph = phi ptr [ %.sroa.5.0, %bb.c ], [ null, %bb.d ]
  %.not.i.i = icmp eq ptr %.sroa.7.0, null
  %i.ch = icmp eq ptr %.sroa.7.0, %.sroa.9.0.copyload
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.ch
  br i1 %or.cond.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainINtNtNtB1T_7sources4once4OnceBI_EINtNtB1R_3map3MapINtNtNtB5_5slice4iter4IterTBJ_NtNtCs2AWtUsOyxgP_3std4path7PathBufEENCNvMs1_NtBN_8resolverNtB4w_8Resolver8settings0EENtNtNtB1T_6traits8iterator8Iterator4next0ECs8EvorvD8vmS_4ruff.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 3056
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8EvorvD8vmS_4ruff.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.d, %bb.f
  %.sroa.0.1560.ph = phi i64 [ 0, %bb.f ], [ 1, %bb.d ]
  %.sroa.5.1558.ph = phi ptr [ %.sroa.5.1.ph, %bb.f ], [ null, %bb.d ]
  %.sroa.7.1.ph = phi ptr [ %i.ci, %bb.f ], [ %.sroa.7.0, %bb.d ]
  %.sroa.0.0.i212.ph = phi ptr [ %.sroa.7.0, %bb.f ], [ %.sroa.5.0, %bb.d ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i212.ph, i64 2192 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !3
  %i.cl = and i64 %i.ck, 4503599627370496
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.loopexit597.backedge, label %bb.iq

.loopexit597.backedge:                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8EvorvD8vmS_4ruff.exit, %bb.ip, %bb.io
  br label %bb.c

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainINtNtNtB1T_7sources4once4OnceBI_EINtNtB1R_3map3MapINtNtNtB5_5slice4iter4IterTBJ_NtNtCs2AWtUsOyxgP_3std4path7PathBufEENCNvMs1_NtBN_8resolverNtB4w_8Resolver8settings0EENtNtNtB1T_6traits8iterator8Iterator4next0ECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !noundef !3
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs8EvorvD8vmS_4ruff.exit, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainINtNtNtB1T_7sources4once4OnceBI_EINtNtB1R_3map3MapINtNtNtB5_5slice4iter4IterTBJ_NtNtCs2AWtUsOyxgP_3std4path7PathBufEENCNvMs1_NtBN_8resolverNtB4w_8Resolver8settings0EENtNtNtB1T_6traits8iterator8Iterator4next0ECs8EvorvD8vmS_4ruff.exit
  %.sroa.08.2 = phi i8 [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainINtNtNtB1T_7sources4once4OnceBI_EINtNtB1R_3map3MapINtNtNtB5_5slice4iter4IterTBJ_NtNtCs2AWtUsOyxgP_3std4path7PathBufEENCNvMs1_NtBN_8resolverNtB4w_8Resolver8settings0EENtNtNtB1T_6traits8iterator8Iterator4next0ECs8EvorvD8vmS_4ruff.exit ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs8EvorvD8vmS_4ruff.exit ] ; 28 uses
  invoke void @_RNvMs1_NtCs3ZkgueCtkyH_14ruff_workspace8resolverNtB5_8Resolver8settings(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bm, ptr noundef nonnull align 8 %0)
          to label %bb.ay unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainINtNtNtB1T_7sources4once4OnceBI_EINtNtB1R_3map3MapINtNtNtB5_5slice4iter4IterTBJ_NtNtCs2AWtUsOyxgP_3std4path7PathBufEENCNvMs1_NtBN_8resolverNtB4w_8Resolver8settings0EENtNtNtB1T_6traits8iterator8Iterator4next0ECs8EvorvD8vmS_4ruff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENCNvNtNtCs8EvorvD8vmS_4ruff8commands6format36warn_incompatible_formatter_settings0EE9from_iterB4o_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.cb)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !3 ; 5 uses
  %i.cu = icmp samesign ult i64 %i.ct, 2
  br i1 %i.cu, label %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exit, label %bb.k, !prof !144

bb.k:                                             ; preds = %bb.j
  %i.cv = icmp samesign ult i64 %i.ct, 21
  br i1 %i.cv, label %bb.m, label %bb.l, !prof !144

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainNtNtCscdodAO9FK5_5alloc6string6StringNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtB13_3vec3VecBZ_EECsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 384307168202282326) %i.ct, ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exitthread-pre-split unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCscdodAO9FK5_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 384307168202282326) %i.ct, i64 noundef 1, ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exitthread-pre-split unwind label %bb.n

.body:                                            ; preds = %bb.ar, %bb.al, %bb.w, %bb.n, %.body240, %bb.ak, %.body217
  %.pn153 = phi { ptr, i32 } [ %i.ea, %bb.ak ], [ %.pn151, %.body217 ], [ %.pn, %.body240 ], [ %i.eb, %bb.al ], [ %i.dm, %bb.w ], [ %i.cw, %bb.n ], [ %i.el, %bb.ar ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc) #40
          to label %.thread551 unwind label %bb.ad

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i233, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i226, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i, %bb.q, %bb.m, %bb.l, %bb.ai
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exitthread-pre-split: ; preds = %bb.m, %bb.l
  %.pr = load i64, ptr %i.cs, align 8
  br label %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exit

_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exit: ; preds = %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exitthread-pre-split, %bb.j
  %i.cx = phi i64 [ %.pr, %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exitthread-pre-split ], [ %i.ct, %bb.j ]
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exit
  %i.cz = load ptr, ptr %i.cq, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store ptr %i.cz, ptr %i.ca, align 8
  %i.da = atomicrmw xchg ptr @_RNvNvNtNtCs8EvorvD8vmS_4ruff8commands6format36warn_incompatible_formatter_settings6WARNED, i8 1 seq_cst, align 1
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECs8EvorvD8vmS_4ruff.exit
  %i.dc = atomicrmw xchg ptr @_RNvNvNtNtCs8EvorvD8vmS_4ruff8commands6format36warn_incompatible_formatter_settingss_6WARNED, i8 1 seq_cst, align 1
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.ai, label %bb.ae

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.ca, ptr %i.bx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs8EvorvD8vmS_4ruff, ptr %.sroa.432.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noundef nonnull @191, ptr noundef nonnull %i.bx)
          to label %bb.t unwind label %bb.n

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.ae

.body217:                                         ; preds = %bb.ab, %bb.s, %bb.z
  %.pn151 = phi { ptr, i32 } [ %i.ds, %bb.z ], [ %i.de, %bb.s ], [ %i.dt, %bb.ab ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz) #40
          to label %.body unwind label %bb.ad

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i, %bb.u
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body217

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.df = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 6
  call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp samesign ugt i64 %i.df, 1
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !3, !noundef !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !3
  invoke void @_RNvXs4_CsgFeZUGsc24U_7coloredReNtB5_8Colorize4bold(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dj, i64 noundef %i.dl)
          to label %bb.y unwind label %bb.s

bb.v:                                             ; preds = %bb.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit unwind label %bb.n

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %i.bw, ptr %i.bv, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_RNvXs5_CsgFeZUGsc24U_7coloredNtB5_13ColoredStringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store ptr @193, ptr %i.bu, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 22, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr @193, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 22, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr @192, ptr %i.dr, align 8
  invoke void @_RINvNtCsdxG2AMukdbL_3log13___private_api3loguNtB2_12GlobalLoggerECs8EvorvD8vmS_4ruff(ptr noundef nonnull @19, ptr noundef nonnull %i.bv, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bu)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(40) %i.bw) #40
          to label %.body217 unwind label %bb.ad

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bw)
          to label %.body217 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff.exit unwind label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.r

bb.ad:                                            ; preds = %bb.ir, %bb.ik, %.body474, %bb.hw, %.body455, %bb.hf, %.body436, %bb.gq, %.body417, %bb.ga, %.body398, %bb.fj, %.body379, %bb.es, %.body360, %bb.ef, %.body341, %bb.dm, %.body322, %bb.cw, %.body303, %bb.ch, %.body284, %bb.br, %.body265, %bb.au, %.body240, %bb.ak, %bb.z, %.body217, %.body
  %i.dv = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8EvorvD8vmS_4ruff8commands6format36warn_incompatible_formatter_settings:bb.a
  invoke void @_RNvXs4_CsgFeZUGsc24U_7coloredReNtB5_8Colorize4bold(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rl, i64 noundef 262)
          to label %bb.hv unwind label %bb.hp

bb.hs:                                            ; preds = %bb.hq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff.exit458
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i447 unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.rq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body221 unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i447: ; preds = %bb.hs
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit452 unwind label %.loopexit

bb.hv:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  store ptr @_RNvXs5_CsgFeZUGsc24U_7coloredNtB5_13ColoredStringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @193, ptr %i.u, align 8
  store i64 22, ptr %i.he, align 8
  store ptr @193, ptr %i.hf, align 8
  store i64 22, ptr %i.hg, align 8
  store ptr @218, ptr %i.hh, align 8
  invoke void @_RINvNtCsdxG2AMukdbL_3log13___private_api3loguNtB2_12GlobalLoggerECs8EvorvD8vmS_4ruff(ptr noundef nonnull @19, ptr noundef nonnull %i.v, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.hx unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.rs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(40) %i.w) #40
          to label %.body455 unwind label %bb.ad

bb.hx:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i454 unwind label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.rt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %.body455 unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ru = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i454: ; preds = %bb.hx
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff.exit458 unwind label %bb.hp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff.exit458: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.hs

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit452: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.hl

bb.ia:                                            ; preds = %bb.hl
  %i.rv = atomicrmw xchg ptr @_RNvNvNtNtCs8EvorvD8vmS_4ruff8commands6format36warn_incompatible_formatter_settingssb_6WARNED, i8 1 seq_cst, align 1
  %i.rw = icmp eq i8 %i.rv, 0
  br i1 %i.rw, label %bb.ib, label %.backedge

.backedge:                                        ; preds = %bb.ia, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit471, %bb.hl, %bb.hj, %bb.gv, %bb.fn
  br label %bb.az

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2144
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 272, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc461 unwind label %.loopexit

.noexc461:                                        ; preds = %bb.ib
  %i.rx = load i64, ptr %i.b, align 8, !range !374, !noalias !2144, !noundef !3
  %i.ry = trunc nuw i64 %i.rx to i1
  %i.rz = load i64, ptr %i.hi, align 8, !range !1036, !noalias !2144, !noundef !3 ; 3 uses
  br i1 %i.ry, label %bb.ic, label %bb.ie, !prof !55

bb.ic:                                            ; preds = %.noexc461
  %i.sa = load i64, ptr %i.hj, align 8, !noalias !2144
  br label %.invoke

.body474:                                         ; preds = %bb.im, %bb.id, %bb.ik
  %.pn179 = phi { ptr, i32 } [ %i.sj, %bb.ik ], [ %i.sb, %bb.id ], [ %i.sk, %bb.im ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #40
          to label %.body221 unwind label %bb.ad

bb.id:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i473, %bb.if
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %.body474

bb.ie:                                            ; preds = %.noexc461
  %i.sc = load ptr, ptr %i.hj, align 8, !noalias !2144, !nonnull !3, !noundef !3 ; 3 uses
  %i.sd = icmp ugt i64 %i.rz, 271
  call void @llvm.assume(i1 %i.sd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.sc, ptr noundef nonnull readonly align 1 dereferenceable(272) @219, i64 range(i64 0, -9223372036854775808) 272, i1 false), !noalias !2157
  store i64 %i.rz, ptr %i.t, align 8
  store ptr %i.sc, ptr %.sroa.4543.0..sroa_idx, align 8
  store i64 272, ptr %.sroa.5544.0..sroa_idx, align 8
  %i.se = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.sf = icmp ult i64 %i.se, 6
  call void @llvm.assume(i1 %i.sf)
  %i.sg = icmp samesign ugt i64 %i.se, 1
  br i1 %i.sg, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvXs4_CsgFeZUGsc24U_7coloredReNtB5_8Colorize4bold(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sc, i64 noundef 272)
          to label %bb.ij unwind label %bb.id

bb.ig:                                            ; preds = %bb.ie, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff.exit477
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i466 unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.sh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body221 unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.si = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i466: ; preds = %bb.ig
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit471 unwind label %.loopexit

bb.ij:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  store ptr @_RNvXs5_CsgFeZUGsc24U_7coloredNtB5_13ColoredStringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4120.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @193, ptr %i.q, align 8
  store i64 22, ptr %i.hk, align 8
  store ptr @193, ptr %i.hl, align 8
  store i64 22, ptr %i.hm, align 8
  store ptr @220, ptr %i.hn, align 8
  invoke void @_RINvNtCsdxG2AMukdbL_3log13___private_api3loguNtB2_12GlobalLoggerECs8EvorvD8vmS_4ruff(ptr noundef nonnull @19, ptr noundef nonnull %i.r, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q)
          to label %bb.il unwind label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.sj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(40) %i.s) #40
          to label %.body474 unwind label %bb.ad

bb.il:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i473 unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.sk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %.body474 unwind label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i473: ; preds = %bb.il
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff.exit477 unwind label %bb.id

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECs8EvorvD8vmS_4ruff.exit477: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ig

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit471: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.backedge

.thread:                                          ; preds = %bb.ip, %bb.iq
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

bb.io:                                            ; preds = %bb.iq
  %i.sn = load i64, ptr %i.cj, align 8
  %i.so = and i64 %i.sn, 4503599627370496
  %i.sp = icmp eq i64 %i.so, 0
  br i1 %i.sp, label %.loopexit597.backedge, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.sq = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ce, i16 noundef 180)
          to label %.loopexit597.backedge unwind label %.thread ; 0 uses

bb.iq:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceRNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8EvorvD8vmS_4ruff.exit
  %i.sr = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ce, i16 noundef 180)
          to label %bb.io unwind label %.thread   ; 0 uses

.thread551:                                       ; preds = %bb.af, %bb.ir, %.body, %.body221
  %.pn182549 = phi { ptr, i32 } [ %.pn153, %.body ], [ %.pn182, %.body221 ], [ %.pn182550, %bb.ir ], [ %i.dw, %bb.af ]
  resume { ptr, i32 } %.pn182549

bb.ir:                                            ; preds = %.thread, %.body221
  %.pn182550 = phi { ptr, i32 } [ %i.sm, %.thread ], [ %.pn182, %.body221 ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %.thread551 unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs8EvorvD8vmS_4ruff8commands6format6format(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3072) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3064) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [56 x i8], align 8               ; 10 uses
  %i.af = alloca [48 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 18 uses
  %i.ah = alloca [24 x i8], align 8               ; 15 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 9 uses
  %i.al = alloca [48 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 9 uses
  %i.an = alloca [32 x i8], align 8               ; 9 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 2 uses
  %i.ar = alloca [40 x i8], align 8               ; 8 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [40 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 9 uses
  %i.av = alloca [200 x i8], align 8              ; 8 uses
  %i.aw = alloca [176 x i8], align 8              ; 16 uses
  %i.ax = alloca [24 x i8], align 8               ; 13 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 13 uses
  %i.ba = alloca [1 x i8], align 1                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val127 = load i8, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 82
  %.val128 = load i8, ptr %i.bc, align 2, !range !163, !noundef !3
  %i.bd = trunc nuw i8 %.val128 to i1
  %.sroa.0.0.i = select i1 %i.bd, i8 2, i8 %.val127
  store i8 %.sroa.0.0.i, ptr %i.ba, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_RNvCs8EvorvD8vmS_4ruff21resolve_default_files(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ay, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.fm, %bb.eq, %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body191

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !3, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !3
  invoke void @_RNvNtCs3ZkgueCtkyH_14ruff_workspace8resolver21project_files_in_path(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bg, i64 noundef %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(3064) %3, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96)
          to label %bb.e unwind label %bb.d

.body188:                                         ; preds = %bb.fh, %bb.em, %bb.d, %.body149
  %.pn120 = phi { ptr, i32 } [ %.pn118, %.body149 ], [ %i.ka, %bb.em ], [ %i.bj, %bb.d ], [ %i.kp, %bb.fh ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(24) %i.az) #40
          to label %.body191 unwind label %bb.y

bb.d:                                             ; preds = %bb.fi, %bb.en, %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body188

bb.e:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !range !192, !noundef !3 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 2
  %i.bn = load ptr, ptr %i.av, align 8            ; 2 uses
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  store i8 1, ptr %0, align 8
  br label %bb.fk

bb.g:                                             ; preds = %bb.e
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.436.0..sroa_idx, i64 16, i1 false)
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.295.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.638.0..sroa_idx, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store ptr %i.bn, ptr %i.ax, align 8
  store i64 %i.bl, ptr %i.aw, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 3029
  %i.bq = load i8, ptr %i.bp, align 1, !range !2158, !noundef !3 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !noundef !3 ; 4 uses
  %i.bt = icmp ult i64 %i.bs, 164703072086692426
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp eq i64 %i.bs, 0
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = atomicrmw xchg ptr @_RNvNvNtNtCs8EvorvD8vmS_4ruff8commands6format6format6WARNED, i8 1 seq_cst, align 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.j, label %bb.x

bb.i:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !noundef !3
  %.not = icmp eq i64 %i.by, 0
  %.not100 = icmp eq i64 %i.bs, 1
  %or.cond = or i1 %.not100, %.not
  br i1 %or.cond, label %bb.ag, label %bb.af

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2159
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  %i.bz = load i64, ptr %i.d, align 8, !range !374, !noalias !2159, !noundef !3
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !1036, !noalias !2159, !noundef !3 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.k, label %bb.n, !prof !55

bb.k:                                             ; preds = %.noexc
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !2159
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cc, i64 %i.ce) #42
          to label %.noexc142 unwind label %bb.l

.noexc142:                                        ; preds = %bb.k
  unreachable

.body:                                            ; preds = %.body154, %bb.q, %bb.l, %bb.ak, %.body145
  %.pn116 = phi { ptr, i32 } [ %i.dl, %bb.ak ], [ %.pn114, %.body145 ], [ %i.cm, %bb.q ], [ %i.cf, %bb.l ], [ %.pn111.pn, %.body154 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver8ResolverECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(176) %i.aw) #40
          to label %.body149 unwind label %bb.y

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format16FormatPathResultEEB1d_.exit203, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format16FormatPathResultEEB1d_.exit, %bb.af, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i, %bb.k, %bb.j, %bb.ai, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8EvorvD8vmS_4ruff.exit152, %bb.ag
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body145:                                         ; preds = %bb.v, %bb.m, %bb.t
  %.pn114 = phi { ptr, i32 } [ %i.cs, %bb.t ], [ %i.cg, %bb.m ], [ %i.ct, %bb.v ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au) #40
          to label %.body unwind label %bb.y

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit.i, %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body145

end_hunk_1
