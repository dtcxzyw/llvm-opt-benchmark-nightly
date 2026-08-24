Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEET_SB_:bb.a
  %i.nm = add i64 %.sroa.speculated.i.i.i.i253, %i.nk ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nk
  %i.no = tail call i64 @llvm.umin.i64(i64 %i.nm, i64 9223372036854775807)
  %i.np = select i1 %i.nn, i64 9223372036854775807, i64 %i.no ; 3 uses
  %.not.i.i.i.i254 = icmp ne i64 %i.np, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i254)
  %i.nq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.np) #48 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nk ; 2 uses
  store i8 %i.nd, ptr %i.nr, align 1, !tbaa !153
  %i.ns = icmp sgt i64 %i.nk, 0
  br i1 %i.ns, label %bb.ct, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i255

bb.ct:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i252
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nq, ptr align 1 %i.nh, i64 %i.nk, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i255

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i255: ; preds = %bb.ct, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i252
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 1 ; 2 uses
  %.not.i17.i.i.i256 = icmp eq ptr %i.nh, null
  br i1 %.not.i17.i.i.i256, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i257, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i255
  tail call void @_ZdlPv(ptr noundef nonnull %i.nh) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i257

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i257: ; preds = %bb.cu, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i255
  store ptr %i.nq, ptr %1, align 8, !tbaa !2782
  store ptr %i.nt, ptr %i.mw, align 8, !tbaa !2784
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.np
  store ptr %i.nu, ptr %i.mx, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit258

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit258: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i257, %bb.cq, %bb.co
  %.pre.i261 = phi ptr [ %i.nt, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i257 ], [ %i.ng, %bb.cq ], [ %.pre.i261.pre, %bb.co ]
  %i.nv = load ptr, ptr %0, align 8, !tbaa !3950
  %i.nw = sext i32 %.0104448 to i64
  %i.nx = getelementptr inbounds i8, ptr %i.nv, i64 %i.nw ; 2 uses
  %i.ny = zext nneg i32 %.0103449 to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ny
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i264, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit258
  %i.oa = phi ptr [ %.pre.i261, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit258 ], [ %i.ot, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i264 ] ; 3 uses
  %.07.i.i262 = phi ptr [ %i.nx, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit258 ], [ %i.ou, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i264 ] ; 2 uses
  %i.ob = load i8, ptr %.07.i.i262, align 1, !tbaa !153 ; 2 uses
  %i.oc = load ptr, ptr %i.mx, align 8, !tbaa !2789
  %.not.i.i.i.i.i263 = icmp eq ptr %i.oa, %i.oc
  br i1 %.not.i.i.i.i.i263, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i8 %i.ob, ptr %i.oa, align 1, !tbaa !153
  %i.od = load ptr, ptr %i.mw, align 8, !tbaa !2784
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 1 ; 2 uses
  store ptr %i.oe, ptr %i.mw, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i264

bb.cx:                                            ; preds = %bb.cv
  %i.of = load ptr, ptr %1, align 8, !tbaa !2782  ; 4 uses
  %i.og = ptrtoint ptr %i.oa to i64
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = sub i64 %i.og, %i.oh                    ; 7 uses
  %i.oj = icmp eq i64 %i.oi, 9223372036854775807
  br i1 %i.oj, label %bb.cy, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i266

bb.cy:                                            ; preds = %bb.cx
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i266: ; preds = %bb.cx
  %.sroa.speculated.i.i.i.i.i.i.i267 = tail call i64 @llvm.umax.i64(i64 %i.oi, i64 1)
  %i.ok = add i64 %.sroa.speculated.i.i.i.i.i.i.i267, %i.oi ; 2 uses
  %i.ol = icmp ult i64 %i.ok, %i.oi
  %i.om = tail call i64 @llvm.umin.i64(i64 %i.ok, i64 9223372036854775807)
  %i.on = select i1 %i.ol, i64 9223372036854775807, i64 %i.om ; 3 uses
  %.not.i.i.i.i.i.i.i268 = icmp ne i64 %i.on, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i268)
  %i.oo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.on) #48 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.oi ; 2 uses
  store i8 %i.ob, ptr %i.op, align 1, !tbaa !153
  %i.oq = icmp sgt i64 %i.oi, 0
  br i1 %i.oq, label %bb.cz, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i269

bb.cz:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i266
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oo, ptr align 1 %i.of, i64 %i.oi, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i269

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i269: ; preds = %bb.cz, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i266
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i270 = icmp eq ptr %i.of, null
  br i1 %.not.i17.i.i.i.i.i.i270, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i271, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i269
  tail call void @_ZdlPv(ptr noundef nonnull %i.of) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i271

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i271: ; preds = %bb.da, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i269
  store ptr %i.oo, ptr %1, align 8, !tbaa !2782
  store ptr %i.or, ptr %i.mw, align 8, !tbaa !2784
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.on
  store ptr %i.os, ptr %i.mx, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i264

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i264: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i271, %bb.cw
  %i.ot = phi ptr [ %i.or, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i271 ], [ %i.oe, %bb.cw ] ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.07.i.i262, i64 1 ; 2 uses
  %.not.i.i265 = icmp eq ptr %i.ou, %i.nz
  br i1 %.not.i.i265, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit272, label %bb.cv, !llvm.loop !3586

_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit272: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i264
  %i.ov = add nsw i32 %.0103449, %.0104448        ; 2 uses
  %i.ow = icmp slt i32 %i.ov, %i.e
  br i1 %i.ow, label %bb.co, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit286, !llvm.loop !3962

.lr.ph.i.i274:                                    ; preds = %bb.cm
  %i.ox = load ptr, ptr %0, align 8, !tbaa !3950  ; 2 uses
  %i.oy = zext nneg i32 %i.e to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oy
  br label %bb.db

bb.db:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i278, %.lr.ph.i.i274
  %i.pa = phi ptr [ %.pre.i261.pre.pre, %.lr.ph.i.i274 ], [ %i.pt, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i278 ] ; 3 uses
  %.07.i.i276 = phi ptr [ %i.ox, %.lr.ph.i.i274 ], [ %i.pu, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i278 ] ; 2 uses
  %i.pb = load i8, ptr %.07.i.i276, align 1, !tbaa !153 ; 2 uses
  %i.pc = load ptr, ptr %i.mx, align 8, !tbaa !2789
  %.not.i.i.i.i.i277 = icmp eq ptr %i.pa, %i.pc
  br i1 %.not.i.i.i.i.i277, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i8 %i.pb, ptr %i.pa, align 1, !tbaa !153
  %i.pd = load ptr, ptr %i.mw, align 8, !tbaa !2784
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 1 ; 2 uses
  store ptr %i.pe, ptr %i.mw, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i278

bb.dd:                                            ; preds = %bb.db
  %i.pf = load ptr, ptr %1, align 8, !tbaa !2782  ; 4 uses
  %i.pg = ptrtoint ptr %i.pa to i64
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 7 uses
  %i.pj = icmp eq i64 %i.pi, 9223372036854775807
  br i1 %i.pj, label %bb.de, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i280

bb.de:                                            ; preds = %bb.dd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i280: ; preds = %bb.dd
  %.sroa.speculated.i.i.i.i.i.i.i281 = tail call i64 @llvm.umax.i64(i64 %i.pi, i64 1)
  %i.pk = add i64 %.sroa.speculated.i.i.i.i.i.i.i281, %i.pi ; 2 uses
  %i.pl = icmp ult i64 %i.pk, %i.pi
  %i.pm = tail call i64 @llvm.umin.i64(i64 %i.pk, i64 9223372036854775807)
  %i.pn = select i1 %i.pl, i64 9223372036854775807, i64 %i.pm ; 3 uses
  %.not.i.i.i.i.i.i.i282 = icmp ne i64 %i.pn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i282)
  %i.po = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pn) #48 ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pi ; 2 uses
  store i8 %i.pb, ptr %i.pp, align 1, !tbaa !153
  %i.pq = icmp sgt i64 %i.pi, 0
  br i1 %i.pq, label %bb.df, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i283

bb.df:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i280
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.po, ptr align 1 %i.pf, i64 %i.pi, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i283

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i283: ; preds = %bb.df, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i280
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i284 = icmp eq ptr %i.pf, null
  br i1 %.not.i17.i.i.i.i.i.i284, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i285, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i283
  tail call void @_ZdlPv(ptr noundef nonnull %i.pf) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i285

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i285: ; preds = %bb.dg, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i283
  store ptr %i.po, ptr %1, align 8, !tbaa !2782
  store ptr %i.pr, ptr %i.mw, align 8, !tbaa !2784
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pn
  store ptr %i.ps, ptr %i.mx, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i278

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i278: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i285, %bb.dc
  %i.pt = phi ptr [ %i.pr, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i285 ], [ %i.pe, %bb.dc ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.07.i.i276, i64 1 ; 2 uses
  %.not.i.i279 = icmp eq ptr %i.pu, %i.oz
  br i1 %.not.i.i279, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit286, label %bb.db, !llvm.loop !3586

_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit286: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i278, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit272
  %i.pv = phi ptr [ %i.ot, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit272 ], [ %i.pt, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i278 ] ; 6 uses
  %i.pw = load i32, ptr %i.g, align 4
  %i.px = and i32 %i.pw, 536870912
  %.not = icmp eq i32 %i.px, 0
  br i1 %.not, label %bb.dh, label %bb.dw

bb.dh:                                            ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit286
  %i.py = load i32, ptr %i.a, align 8, !tbaa !3954 ; 3 uses
  %i.pz = icmp sgt i32 %i.py, %i.e
  br i1 %i.pz, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.dh
  %i.qa = load ptr, ptr %0, align 8, !tbaa !3950
  %2 = zext nneg i32 %i.py to i64
  %3 = zext nneg i32 %i.e to i64
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph, %bb.dj
  %indvars.iv461 = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next462, %bb.dj ] ; 3 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 %indvars.iv461
  %i.qc = getelementptr i8, ptr %i.qb, i64 -1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !153
  %i.qe = icmp eq i8 %i.qd, 48
  br i1 %i.qe, label %bb.dj, label %.critedge.loopexit

bb.dj:                                            ; preds = %bb.di
  %indvars.iv.next462 = add nsw i64 %indvars.iv461, -1 ; 2 uses
  %i.qf = icmp sgt i64 %indvars.iv.next462, %3
  br i1 %i.qf, label %bb.di, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit309, !llvm.loop !3963

.critedge.loopexit:                               ; preds = %bb.di
  %4 = trunc nuw nsw i64 %indvars.iv461 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.dh
  %.0105.lcssa = phi i32 [ %i.py, %bb.dh ], [ %4, %.critedge.loopexit ] ; 2 uses
  %.not122 = icmp eq i32 %.0105.lcssa, %i.e
  br i1 %.not122, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit309, label %bb.dk

bb.dk:                                            ; preds = %.critedge
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !2789
  %.not.i.i288 = icmp eq ptr %i.pv, %i.qj
  br i1 %.not.i.i288, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.qk = load i8, ptr %i.qg, align 8, !tbaa !153
  store i8 %i.qk, ptr %i.pv, align 1, !tbaa !153
  %i.ql = load ptr, ptr %i.qh, align 8, !tbaa !2784
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 1 ; 2 uses
  store ptr %i.qm, ptr %i.qh, align 8, !tbaa !2784
  br label %.lr.ph.i.i297

bb.dm:                                            ; preds = %bb.dk
  %i.qn = load ptr, ptr %1, align 8, !tbaa !2782  ; 4 uses
  %i.qo = ptrtoint ptr %i.pv to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp                    ; 7 uses
  %i.qr = icmp eq i64 %i.qq, 9223372036854775807
  br i1 %i.qr, label %bb.dn, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i289

bb.dn:                                            ; preds = %bb.dm
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i289: ; preds = %bb.dm
  %.sroa.speculated.i.i.i.i290 = tail call i64 @llvm.umax.i64(i64 %i.qq, i64 1)
  %i.qs = add i64 %.sroa.speculated.i.i.i.i290, %i.qq ; 2 uses
  %i.qt = icmp ult i64 %i.qs, %i.qq
  %i.qu = tail call i64 @llvm.umin.i64(i64 %i.qs, i64 9223372036854775807)
  %i.qv = select i1 %i.qt, i64 9223372036854775807, i64 %i.qu ; 3 uses
  %.not.i.i.i.i291 = icmp ne i64 %i.qv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i291)
  %i.qw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qv) #48 ; 4 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qq ; 2 uses
  %i.qy = load i8, ptr %i.qg, align 8, !tbaa !153
  store i8 %i.qy, ptr %i.qx, align 1, !tbaa !153
  %i.qz = icmp sgt i64 %i.qq, 0
  br i1 %i.qz, label %bb.do, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i292

bb.do:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i289
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qw, ptr align 1 %i.qn, i64 %i.qq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i292

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i292: ; preds = %bb.do, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i289
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 1 ; 2 uses
  %.not.i17.i.i.i293 = icmp eq ptr %i.qn, null
  br i1 %.not.i17.i.i.i293, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i294, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i292
  tail call void @_ZdlPv(ptr noundef nonnull %i.qn) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i294

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i294: ; preds = %bb.dp, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i292
  store ptr %i.qw, ptr %1, align 8, !tbaa !2782
  store ptr %i.ra, ptr %i.qh, align 8, !tbaa !2784
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qv
  store ptr %i.rb, ptr %i.qi, align 8, !tbaa !2789
  br label %.lr.ph.i.i297

.lr.ph.i.i297:                                    ; preds = %bb.dl, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i294
  %.pre.i298 = phi ptr [ %i.ra, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i294 ], [ %i.qm, %bb.dl ]
  %i.rc = load ptr, ptr %0, align 8, !tbaa !3950  ; 2 uses
  %i.rd = sext i32 %.0105.lcssa to i64
  %i.re = getelementptr inbounds i8, ptr %i.rc, i64 %i.rd
  %i.rf = zext nneg i32 %i.e to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.dq

bb.dq:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i301, %.lr.ph.i.i297
  %i.rj = phi ptr [ %.pre.i298, %.lr.ph.i.i297 ], [ %i.sc, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i301 ] ; 3 uses
  %.07.i.i299 = phi ptr [ %i.rg, %.lr.ph.i.i297 ], [ %i.sd, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i301 ] ; 2 uses
  %i.rk = load i8, ptr %.07.i.i299, align 1, !tbaa !153 ; 2 uses
  %i.rl = load ptr, ptr %i.ri, align 8, !tbaa !2789
  %.not.i.i.i.i.i300 = icmp eq ptr %i.rj, %i.rl
  br i1 %.not.i.i.i.i.i300, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  store i8 %i.rk, ptr %i.rj, align 1, !tbaa !153
  %i.rm = load ptr, ptr %i.rh, align 8, !tbaa !2784
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 1 ; 2 uses
  store ptr %i.rn, ptr %i.rh, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i301

bb.ds:                                            ; preds = %bb.dq
  %i.ro = load ptr, ptr %1, align 8, !tbaa !2782  ; 4 uses
  %i.rp = ptrtoint ptr %i.rj to i64
  %i.rq = ptrtoint ptr %i.ro to i64
  %i.rr = sub i64 %i.rp, %i.rq                    ; 7 uses
  %i.rs = icmp eq i64 %i.rr, 9223372036854775807
  br i1 %i.rs, label %bb.dt, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i303

bb.dt:                                            ; preds = %bb.ds
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i303: ; preds = %bb.ds
  %.sroa.speculated.i.i.i.i.i.i.i304 = tail call i64 @llvm.umax.i64(i64 %i.rr, i64 1)
  %i.rt = add i64 %.sroa.speculated.i.i.i.i.i.i.i304, %i.rr ; 2 uses
  %i.ru = icmp ult i64 %i.rt, %i.rr
  %i.rv = tail call i64 @llvm.umin.i64(i64 %i.rt, i64 9223372036854775807)
  %i.rw = select i1 %i.ru, i64 9223372036854775807, i64 %i.rv ; 3 uses
  %.not.i.i.i.i.i.i.i305 = icmp ne i64 %i.rw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i305)
  %i.rx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rw) #48 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rr ; 2 uses
  store i8 %i.rk, ptr %i.ry, align 1, !tbaa !153
  %i.rz = icmp sgt i64 %i.rr, 0
  br i1 %i.rz, label %bb.du, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i306

bb.du:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i303
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rx, ptr align 1 %i.ro, i64 %i.rr, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i306

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i306: ; preds = %bb.du, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i303
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i307 = icmp eq ptr %i.ro, null
  br i1 %.not.i17.i.i.i.i.i.i307, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i308, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i306
  tail call void @_ZdlPv(ptr noundef nonnull %i.ro) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i308

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i308: ; preds = %bb.dv, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i306
  store ptr %i.rx, ptr %1, align 8, !tbaa !2782
  store ptr %i.sa, ptr %i.rh, align 8, !tbaa !2784
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rw
  store ptr %i.sb, ptr %i.ri, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i301

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i301: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i308, %bb.dr
  %i.sc = phi ptr [ %i.sa, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i308 ], [ %i.rn, %bb.dr ]
  %i.sd = getelementptr inbounds nuw i8, ptr %.07.i.i299, i64 1 ; 2 uses
  %.not.i.i302 = icmp eq ptr %i.sd, %i.re
  br i1 %.not.i.i302, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit309, label %bb.dq, !llvm.loop !3586

bb.dw:                                            ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit286
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !2789
  %.not.i.i311 = icmp eq ptr %i.pv, %i.sh
  br i1 %.not.i.i311, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.si = load i8, ptr %i.se, align 8, !tbaa !153
  store i8 %i.si, ptr %i.pv, align 1, !tbaa !153
  %i.sj = load ptr, ptr %i.sf, align 8, !tbaa !2784
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 1 ; 2 uses
  store ptr %i.sk, ptr %i.sf, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit318

bb.dy:                                            ; preds = %bb.dw
  %i.sl = load ptr, ptr %1, align 8, !tbaa !2782  ; 4 uses
  %i.sm = ptrtoint ptr %i.pv to i64
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = sub i64 %i.sm, %i.sn                    ; 7 uses
  %i.sp = icmp eq i64 %i.so, 9223372036854775807
  br i1 %i.sp, label %bb.dz, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i312

bb.dz:                                            ; preds = %bb.dy
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i312: ; preds = %bb.dy
  %.sroa.speculated.i.i.i.i313 = tail call i64 @llvm.umax.i64(i64 %i.so, i64 1)
  %i.sq = add i64 %.sroa.speculated.i.i.i.i313, %i.so ; 2 uses
  %i.sr = icmp ult i64 %i.sq, %i.so
  %i.ss = tail call i64 @llvm.umin.i64(i64 %i.sq, i64 9223372036854775807)
  %i.st = select i1 %i.sr, i64 9223372036854775807, i64 %i.ss ; 3 uses
  %.not.i.i.i.i314 = icmp ne i64 %i.st, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i314)
  %i.su = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.st) #48 ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.so ; 2 uses
  %i.sw = load i8, ptr %i.se, align 8, !tbaa !153
  store i8 %i.sw, ptr %i.sv, align 1, !tbaa !153
  %i.sx = icmp sgt i64 %i.so, 0
  br i1 %i.sx, label %bb.ea, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i315

bb.ea:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i312
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.su, ptr align 1 %i.sl, i64 %i.so, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i315

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i315: ; preds = %bb.ea, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i312
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 1 ; 2 uses
  %.not.i17.i.i.i316 = icmp eq ptr %i.sl, null
  br i1 %.not.i17.i.i.i316, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i317, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i315
  tail call void @_ZdlPv(ptr noundef nonnull %i.sl) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i317

end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal14write_exponentIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEET0_iS9_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit29: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i28, %bb.p, %bb.n
  %i.bp = phi ptr [ %i.bn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i28 ], [ %i.ba, %bb.p ], [ %i.an, %bb.n ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !153 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2789
  %.not.i.i.i31 = icmp eq ptr %i.bp, %i.bu
  br i1 %.not.i.i.i31, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit29
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !153
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !2784
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit38

bb.v:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit29
  %i.bx = load ptr, ptr %1, align 8, !tbaa !2782  ; 4 uses
  %i.by = ptrtoint ptr %i.bp to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 7 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775807
  br i1 %i.cb, label %bb.w, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i32

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i32: ; preds = %bb.v
  %.sroa.speculated.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cc = add i64 %.sroa.speculated.i.i.i.i.i33, %i.ca ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.ca
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 9223372036854775807)
  %i.cf = select i1 %i.cd, i64 9223372036854775807, i64 %i.ce ; 3 uses
  %.not.i.i.i.i.i34 = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i34)
  %i.cg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #48 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ca ; 2 uses
  store i8 %i.br, ptr %i.ch, align 1, !tbaa !153
  %i.ci = icmp sgt i64 %i.ca, 0
  br i1 %i.ci, label %bb.x, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i35

bb.x:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr align 1 %i.bx, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i35

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i35: ; preds = %bb.x, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %.not.i17.i.i.i.i36 = icmp eq ptr %i.bx, null
  br i1 %.not.i17.i.i.i.i36, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i37, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i35
  tail call void @_ZdlPv(ptr noundef nonnull %i.bx) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i37

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i37: ; preds = %bb.y, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i35
  store ptr %i.cg, ptr %1, align 8, !tbaa !2782
  store ptr %i.cj, ptr %i.bs, align 8, !tbaa !2784
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ck, ptr %i.bt, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit38

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit38: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i37, %bb.u, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit20
  %i.cl = phi ptr [ %i.an, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit20 ], [ %i.bw, %bb.u ], [ %i.cj, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i37 ] ; 3 uses
  %.1 = phi i32 [ %.0, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit20 ], [ %i.aq, %bb.u ], [ %i.aq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i37 ]
  %i.cm = shl nuw nsw i32 %.1, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !153 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2789
  %.not.i.i.i40 = icmp eq ptr %i.cl, %i.cs
  br i1 %.not.i.i.i40, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit38
  store i8 %i.cp, ptr %i.cl, align 1, !tbaa !153
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !2784
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !2784
  %.pre = load ptr, ptr %i.cr, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47

bb.aa:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit38
  %i.cv = load ptr, ptr %1, align 8, !tbaa !2782  ; 4 uses
  %i.cw = ptrtoint ptr %i.cl to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 7 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775807
  br i1 %i.cz, label %bb.ab, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i41

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i41: ; preds = %bb.aa
  %.sroa.speculated.i.i.i.i.i42 = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.da = add i64 %.sroa.speculated.i.i.i.i.i42, %i.cy ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cy
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 9223372036854775807)
  %i.dd = select i1 %i.db, i64 9223372036854775807, i64 %i.dc ; 3 uses
  %.not.i.i.i.i.i43 = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i43)
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #48 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cy ; 2 uses
  store i8 %i.cp, ptr %i.df, align 1, !tbaa !153
  %i.dg = icmp sgt i64 %i.cy, 0
  br i1 %i.dg, label %bb.ac, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44

bb.ac:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i41
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.de, ptr align 1 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44: ; preds = %bb.ac, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i41
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %.not.i17.i.i.i.i45 = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.i.i45, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44
  tail call void @_ZdlPv(ptr noundef nonnull %i.cv) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46: ; preds = %bb.ad, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44
  store ptr %i.de, ptr %1, align 8, !tbaa !2782
  store ptr %i.dh, ptr %i.cq, align 8, !tbaa !2784
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd ; 2 uses
  store ptr %i.di, ptr %i.cr, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47: ; preds = %bb.z, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46
  %i.dj = phi ptr [ %.pre, %bb.z ], [ %i.di, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46 ] ; 2 uses
  %i.dk = phi ptr [ %i.cu, %bb.z ], [ %i.dh, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !153 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.dk, %i.dj
  br i1 %.not.i.i.i49, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !153
  %i.dn = load ptr, ptr %i.cq, align 8, !tbaa !2784
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store ptr %i.do, ptr %i.cq, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit56

bb.af:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47
  %i.dp = load ptr, ptr %1, align 8, !tbaa !2782  ; 4 uses
  %i.dq = ptrtoint ptr %i.dj to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 7 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775807
  br i1 %i.dt, label %bb.ag, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i50

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i50: ; preds = %bb.af
  %.sroa.speculated.i.i.i.i.i51 = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.du = add i64 %.sroa.speculated.i.i.i.i.i51, %i.ds ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.ds
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 9223372036854775807)
  %i.dx = select i1 %i.dv, i64 9223372036854775807, i64 %i.dw ; 3 uses
  %.not.i.i.i.i.i52 = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i52)
  %i.dy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #48 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ds ; 2 uses
  store i8 %i.dm, ptr %i.dz, align 1, !tbaa !153
  %i.ea = icmp sgt i64 %i.ds, 0
  br i1 %i.ea, label %bb.ah, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53

bb.ah:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr align 1 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53: ; preds = %bb.ah, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i50
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %.not.i17.i.i.i.i54 = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i.i.i54, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i55, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53
  tail call void @_ZdlPv(ptr noundef nonnull %i.dp) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i55

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i55: ; preds = %bb.ai, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53
  store ptr %i.dy, ptr %1, align 8, !tbaa !2782
  store ptr %i.eb, ptr %i.cq, align 8, !tbaa !2784
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx
  store ptr %i.ec, ptr %i.cr, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit56

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit56: ; preds = %bb.ae, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i55
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3954 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3955 ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !3959
  %i.l = sub nsw i32 %i.k, %i.b                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = and i32 %i.h, 536870912
  %i.o = icmp ne i32 %i.n, 0
  %i.p = and i1 %i.o, %i.m                        ; 2 uses
  %i.q = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %i.q, i1 true, i1 %i.p
  %.sroa.0186.0.v = select i1 %or.cond, i64 2, i64 1
  %.sroa.0186.0 = add i64 %.sroa.0186.0.v, %1
  %i.r = sext i32 %i.b to i64
  %gepdiff227 = add i64 %.sroa.0186.0, %i.r
  %i.s = add nsw i32 %i.l, -1
  %i.t = zext nneg i32 %i.s to i64
  %.sroa.0186.1.v = select i1 %i.p, i64 %i.t, i64 -1
  %.sroa.0186.1 = add i64 %gepdiff227, %.sroa.0186.1.v ; 2 uses
  %i.u = add nsw i32 %i.e, -1
  %.sroa.028.0.i = add i64 %.sroa.0186.1, 2       ; 2 uses
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.v = icmp samesign ugt i32 %.0.i, 99
  %i.w = icmp samesign ugt i32 %.0.i, 999
  %i.x = add i64 %.sroa.0186.1, 3
  %spec.select.i = select i1 %i.w, i64 %i.x, i64 %.sroa.028.0.i
  %i.y = add i64 %spec.select.i, 1
  %.sroa.028.2.i = select i1 %i.v, i64 %i.y, i64 %.sroa.028.0.i
  %i.z = add i64 %.sroa.028.2.i, 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = and i32 %i.h, 16711680
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond3, label %.peel.begin, label %bb.l

.peel.begin:                                      ; preds = %bb.d
  %i.ad = urem i32 %i.e, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.select = select i1 %i.ae, i32 3, i32 %i.ad ; 5 uses
  %i.af = icmp sgt i32 %i.b, 0
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.ag = zext nneg i32 %spec.select to i64
  %i.ah = add i64 %1, %i.ag
  br label %.peel.next.preheader

bb.f:                                             ; preds = %.peel.begin
  %i.ai = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %.sroa.05.0.lcssa.i.i133.peel = add i64 %1, %i.aj ; 3 uses
  %i.ak = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.ak, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %spec.select, %i.ai         ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = add nsw i32 %i.al, -1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add i64 %.sroa.05.0.lcssa.i.i133.peel, 1
  %i.aq = add i64 %i.ap, %i.ao
  %.sroa.02.0.lcssa.i.i.i134.peel = select i1 %i.am, i64 %i.aq, i64 %.sroa.05.0.lcssa.i.i133.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0186.2231.ph = phi i64 [ %.sroa.02.0.lcssa.i.i.i134.peel, %bb.g ], [ %.sroa.05.0.lcssa.i.i133.peel, %bb.f ], [ %i.ah, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
  %.0102233 = phi i32 [ %i.ba, %bb.k ], [ %spec.select, %.peel.next.preheader ] ; 3 uses
  %.sroa.0186.2231 = phi i64 [ %.sroa.0186.4, %bb.k ], [ %.sroa.0186.2231.ph, %.peel.next.preheader ] ; 2 uses
  %i.ar = icmp slt i32 %.0102233, %i.b
  br i1 %i.ar, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.peel.next
  %spec.select220 = add i64 %.sroa.0186.2231, 1
  %i.as = sub nsw i32 %i.b, %.0102233             ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.as, i32 3) ; 2 uses
  %i.at = zext nneg i32 %.sroa.speculated to i64
  %.sroa.05.0.lcssa.i.i133 = add i64 %spec.select220, %i.at ; 2 uses
  %i.au = icmp slt i32 %i.as, 3
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = sub i32 2, %.sroa.speculated
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %.sroa.05.0.lcssa.i.i133, 1
  %i.ay = add i64 %i.ax, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.az = add i64 %.sroa.0186.2231, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0186.4 = phi i64 [ %i.ay, %bb.i ], [ %.sroa.05.0.lcssa.i.i133, %bb.h ], [ %i.az, %bb.j ] ; 2 uses
  %i.ba = add nuw nsw i32 %.0102233, 3            ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.e
  br i1 %i.bb, label %.peel.next, label %.loopexit229, !llvm.loop !3964

bb.l:                                             ; preds = %bb.d
  %i.bc = sext i32 %i.b to i64
  %.sroa.05.0.lcssa.i.i137 = add i64 %1, %i.bc    ; 2 uses
  %.not224 = icmp eq i32 %i.d, 0
  %i.bd = add nsw i32 %i.d, -1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add i64 %.sroa.05.0.lcssa.i.i137, 1
  %i.bg = add i64 %i.bf, %i.be
  %.sroa.02.0.lcssa.i.i.i138 = select i1 %.not224, i64 %.sroa.05.0.lcssa.i.i137, i64 %i.bg
  br label %.loopexit229

.loopexit229:                                     ; preds = %bb.k, %bb.l
  %.sroa.0186.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i138, %bb.l ], [ %.sroa.0186.4, %bb.k ] ; 3 uses
  %i.bh = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bh, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit229
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !3959
  %i.bj = sub nsw i32 %i.bi, %i.e                 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select221.v = select i1 %.not124, i64 1, i64 2
  %spec.select221 = add i64 %.sroa.0186.5, %spec.select221.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %i.bj, -1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add i64 %.sroa.0186.5, 2
  %i.bo = add i64 %i.bn, %i.bm
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bp = icmp sgt i32 %i.e, 0
  br i1 %i.bp, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bq = and i32 %i.h, 16711680
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond5, label %.peel.next243, label %bb.r

.peel.next243:                                    ; preds = %bb.q
  %i.bt = urem i32 %i.e, 3                        ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %spec.select126 = select i1 %i.bu, i32 3, i32 %i.bt ; 4 uses
  %i.bv = zext nneg i32 %spec.select126 to i64
  %.sroa.05.0.lcssa.i.i144.peel = add i64 %1, %i.bv ; 2 uses
  %i.bw = add i32 %i.d, %i.b
  %i.bx = xor i32 %spec.select126, -1
  %i.by = add i32 %i.bw, %i.bx                    ; 2 uses
  %i.bz = udiv i32 %i.by, 3
  %i.ca = add nuw nsw i32 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.by, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next243
  %n.vec = and i32 %i.ca, 2147483644              ; 3 uses
  %i.cb = mul i32 %n.vec, 3
  %i.cc = or disjoint i32 %spec.select126, %i.cb
  %i.cd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.05.0.lcssa.i.i144.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.cd, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %i.ce = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cf = add <2 x i64> %vec.phi260, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.cg = icmp eq i32 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !3965

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next243, %middle.block
  %.0104235.ph = phi i32 [ %spec.select126, %.peel.next243 ], [ %i.cc, %middle.block ]
  %.sroa.0186.8234.ph = phi i64 [ %.sroa.05.0.lcssa.i.i144.peel, %.peel.next243 ], [ %i.ch, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104235 = phi i32 [ %i.ci, %scalar.ph ], [ %.0104235.ph, %scalar.ph.preheader ]
  %.sroa.0186.8234 = phi i64 [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ], [ %.sroa.0186.8234.ph, %scalar.ph.preheader ]
  %.sroa.05.0.lcssa.i.i144 = add i64 %.sroa.0186.8234, 4 ; 2 uses
  %i.ci = add nuw nsw i32 %.0104235, 3            ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.e
  br i1 %i.cj, label %scalar.ph, label %.loopexit, !llvm.loop !3966

bb.r:                                             ; preds = %bb.q
  %i.ck = zext nneg i32 %i.e to i64
  %.sroa.05.0.lcssa.i.i146 = add i64 %1, %i.ck
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0186.10 = phi i64 [ %.sroa.05.0.lcssa.i.i146, %bb.r ], [ %i.ch, %middle.block ], [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ] ; 2 uses
  %i.cl = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cl, 0
  %2 = sext i32 %i.b to i64                       ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.cm = load ptr, ptr %0, align 8, !tbaa !3950
  %3 = zext nneg i32 %i.e to i64
  %i.cn = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cn)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.cm, i64 %indvars.iv
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !153
  %i.cr = icmp eq i8 %i.cq, 48
  br i1 %i.cr, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cs = icmp sgt i64 %indvars.iv.next, %3
  br i1 %i.cs, label %bb.s, label %.critedge, !llvm.loop !3967

.critedge.split.loop.exit:                        ; preds = %bb.s
  %4 = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.split.loop.exit
  %.0105.lcssa.ph = phi i32 [ %4, %.critedge.split.loop.exit ], [ %smin, %bb.t ] ; 3 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e
  %i.ct = zext i1 %.not122 to i64
  %spec.select223 = add i64 %.sroa.0186.10, %i.ct
  %i.cu = zext nneg i32 %i.e to i64
  %i.cv = sext i32 %.0105.lcssa.ph to i64
  %.not7.i.i148 = icmp eq i32 %i.e, %.0105.lcssa.ph
  %gepdiff226 = sub nsw i64 %i.cv, %i.cu
  %i.cw = select i1 %.not7.i.i148, i64 0, i64 %gepdiff226
  %.sroa.05.0.lcssa.i.i149 = add i64 %spec.select223, %i.cw
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.cx = zext nneg i32 %i.e to i64
  %gepdiff = sub nsw i64 %2, %i.cx
  %i.cy = add nsw i64 %gepdiff, 1
  %.sroa.05.0.lcssa.i.i152 = add i64 %i.cy, %.sroa.0186.10 ; 2 uses
  %i.cz = load i32, ptr %i.f, align 8, !tbaa !3959 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, %i.b
  br i1 %i.da, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.db = xor i32 %i.b, -1
  %i.dc = add i32 %i.cz, %i.db
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = add i64 %.sroa.05.0.lcssa.i.i152, 1
  %i.df = add i64 %i.de, %i.dd
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dg = add i64 %1, 1
  %i.dh = sub nsw i32 0, %i.e                     ; 5 uses
  %i.di = icmp eq i32 %i.b, 0
  br i1 %i.di, label %.thread210, label %bb.x

.thread210:                                       ; preds = %bb.w
  %i.dj = load i32, ptr %i.f, align 8, !tbaa !3959 ; 2 uses
  %i.dk = tail call i32 @llvm.smin.i32(i32 %i.dj, i32 %i.dh)
  %i.dl = icmp slt i32 %i.dj, 0
  %spec.select128 = select i1 %i.dl, i32 %i.dh, i32 %i.dk
  br label %.critedge7

bb.x:                                             ; preds = %bb.w
  %i.dm = and i32 %i.h, 536870912
  %.not121 = icmp eq i32 %i.dm, 0
  %i.dn = icmp sgt i32 %i.b, 0
  %or.cond11 = select i1 %.not121, i1 %i.dn, i1 false
  br i1 %or.cond11, label %.preheader228, label %.critedge7.thread

.preheader228:                                    ; preds = %bb.x
  %i.do = load ptr, ptr %0, align 8, !tbaa !3950
  br label %bb.y

bb.y:                                             ; preds = %.preheader228, %bb.z
  %.0 = phi i32 [ %i.du, %bb.z ], [ %i.b, %.preheader228 ] ; 4 uses
  %i.dp = zext nneg i32 %.0 to i64
  %i.dq = getelementptr i8, ptr %i.do, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 -1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !153
  %i.dt = icmp eq i8 %i.ds, 48
  br i1 %i.dt, label %bb.z, label %.critedge7.thread

bb.z:                                             ; preds = %bb.y
  %i.du = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.y, label %.critedge7

.critedge7:                                       ; preds = %bb.z, %.thread210
  %.0100214 = phi i32 [ %spec.select128, %.thread210 ], [ %i.dh, %bb.z ] ; 2 uses
  %.not225 = icmp eq i32 %.0100214, 0
  br i1 %.not225, label %.thread, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.y, %bb.x, %.critedge7
  %.1219 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.x ], [ %.0, %bb.y ]
  %.0100214218 = phi i32 [ %.0100214, %.critedge7 ], [ %i.dh, %bb.x ], [ %i.dh, %bb.y ] ; 2 uses
  %i.dv = add i64 %1, 2
  %i.dw = icmp sgt i32 %.0100214218, 0
  %i.dx = add nsw i32 %.0100214218, -1
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = add i64 %1, 3
  %i.ea = add i64 %i.dz, %i.dy
  %.sroa.02.0.lcssa.i.i.i156 = select i1 %i.dw, i64 %i.ea, i64 %i.dv
  %i.eb = sext i32 %.1219 to i64
  %.sroa.05.0.lcssa.i.i158 = add i64 %.sroa.02.0.lcssa.i.i.i156, %i.eb
  br label %.thread

.thread:                                          ; preds = %bb.n, %.loopexit229, %bb.u, %bb.v, %.critedge7, %.critedge7.thread, %bb.o, %.critedge, %bb.b
  %.sroa.098.1 = phi i64 [ %i.z, %bb.b ], [ %.sroa.05.0.lcssa.i.i149, %.critedge ], [ %i.bo, %bb.o ], [ %i.df, %bb.v ], [ %.sroa.05.0.lcssa.i.i152, %bb.u ], [ %.sroa.05.0.lcssa.i.i158, %.critedge7.thread ], [ %i.dg, %.critedge7 ], [ %.sroa.0186.5, %.loopexit229 ], [ %spec.select221, %bb.n ]
  ret i64 %.sroa.098.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSE_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1, ptr noundef byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::nonfinite_writer", align 8 ; 5 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::str_writer", align 8 ; 6 uses
  %7 = alloca %"class.duckdb_fmt::v6::internal::float_writer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.a = call i64 @_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = and i32 %.sroa.8.0.extract.trunc, -65281 ; 2 uses
  %i.e = bitcast double %1 to i64
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 256
  %i.h = fneg double %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i8 %i.c, 4
  %i.j = and i8 %i.i, 7                           ; 2 uses
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = icmp eq i8 %i.j, 1
  %i.n = select i1 %i.m, i32 0, i32 %i.l
  %spec.select = or disjoint i32 %i.n, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.0 = phi i32 [ %i.g, %bb.b ], [ %spec.select, %bb.c ] ; 7 uses
  %.0 = phi double [ %i.h, %bb.b ], [ %1, %bb.c ] ; 4 uses
  %i.o = fcmp ueq double %.0, +inf
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp oeq double %.0, +inf
  %i.q = and i32 %.sroa.8.0, 16777216
  %.not69 = icmp eq i32 %i.q, 0                   ; 2 uses
  %.str.401..str.368 = select i1 %.not69, ptr @.str.368, ptr @.str.401
  %.str.402..str.367 = select i1 %.not69, ptr @.str.367, ptr @.str.402
  %i.r = select i1 %i.p, ptr %.str.401..str.368, ptr %.str.402..str.367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.s = lshr i32 %.sroa.8.0, 8
  %i.t = and i32 %i.s, 255
  store i32 %i.t, ptr %4, align 8, !tbaa !3943
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !3945
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.aj

bb.f:                                             ; preds = %bb.d
  %i.v = and i8 %i.c, 15
  switch i8 %i.v, label %bb.p [
    i8 0, label %.sink.split
    i8 4, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = lshr i32 %.sroa.8.0, 8
  %i.x = and i32 %i.w, 255                        ; 2 uses
  %.not70 = icmp eq i32 %i.x, 0
  br i1 %.not70, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !153  ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2784 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2789
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !153
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !2784
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2782 ; 4 uses
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 7 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.k, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.am = add i64 %.sroa.speculated.i.i.i.i.i, %i.ak ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ak
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 9223372036854775807)
  %i.ap = select i1 %i.an, i64 9223372036854775807, i64 %i.ao ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #48 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak ; 2 uses
  store i8 %i.aa, ptr %i.ar, align 1, !tbaa !153
  %i.as = icmp sgt i64 %i.ak, 0
  br i1 %i.as, label %bb.l, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.m
end_hunk_1
