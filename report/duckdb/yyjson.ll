Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/yyjson?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a

bb.hy:                                            ; preds = %bb.hx
  %i.awj = load ptr, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %.not681.i = icmp eq ptr %i.awj, null
  br i1 %.not681.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  store i8 0, ptr %i.awj, align 1, !tbaa !99
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.awk = ptrtoint ptr %.7 to i64
  %i.awl = sub i64 %i.awk, %i.e
  %i.awm = shl i64 %i.awl, 8
  %i.awn = or disjoint i64 %i.awm, 1
  store i64 %i.awn, ptr %1, align 8, !tbaa !98
  %i.awo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.awo, align 8, !tbaa !99
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294

bb.ib:                                            ; preds = %bb.hx
  %i.awp = and i32 %2, 16
  %.not348 = icmp eq i32 %i.awp, 0
  br i1 %.not348, label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit, label %bb.ic, !prof !61

bb.ic:                                            ; preds = %bb.ib
  store i64 20, ptr %1, align 8, !tbaa !98
  %i.awq = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.awr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.awq, ptr %i.awr, align 8, !tbaa !99
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294

bb.id:                                            ; preds = %bb.hw
  store i64 20, ptr %1, align 8, !tbaa !98
  %i.aws = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.awt = or disjoint i64 %.0601.i, %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.awt, ptr %i.awu, align 8, !tbaa !99
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread: ; preds = %bb.y, %bb.x, %bb.r, %bb.s, %bb.aa, %bb.fr, %bb.ft, %bb.fv, %bb.fy, %bb.gb, %bb.gd, %bb.gn, %bb.gi, %bb.fh, %bb.fo, %.loopexit, %bb.ex, %bb.ey, %bb.ez, %bb.bc, %bb.bd, %bb.be, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg
  %i.awv = phi ptr [ %i.cg, %bb.bg ], [ %i.aw, %bb.aa ], [ %.10.lcssa, %bb.fr ], [ %.10.lcssa, %bb.ft ], [ %.10.lcssa, %bb.fv ], [ %.11, %bb.fy ], [ %.11, %bb.gb ], [ %.11, %bb.gd ], [ %.7, %bb.gn ], [ %.7, %bb.gi ], [ %i.tc, %bb.fh ], [ %.6, %bb.fo ], [ %.2, %.loopexit ], [ %i.sf, %bb.ex ], [ %i.sf, %bb.ey ], [ %i.sf, %bb.ez ], [ %i.hc, %bb.bc ], [ %i.hc, %bb.bd ], [ %i.hc, %bb.be ], [ %i.gv, %bb.df ], [ %i.go, %bb.dc ], [ %i.gh, %bb.cz ], [ %i.ga, %bb.cw ], [ %i.ft, %bb.ct ], [ %i.fm, %bb.cq ], [ %i.ff, %bb.cn ], [ %i.ey, %bb.ck ], [ %i.er, %bb.ch ], [ %i.ek, %bb.ce ], [ %i.ed, %bb.cb ], [ %i.dw, %bb.by ], [ %i.dp, %bb.bv ], [ %i.di, %bb.bs ], [ %i.db, %bb.bp ], [ %i.cu, %bb.bm ], [ %i.cn, %bb.bj ], [ %i.as, %bb.x ], [ %i.as, %bb.y ], [ %.0.i29, %bb.r ], [ %.0.i29, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.cont.cont.cont

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread291: ; preds = %bb.gc, %bb.fu, %bb.fp, %bb.fl, %bb.fj, %bb.fc, %bb.ag, %bb.af, %bb.ac, %bb.g, %bb.t, %bb.u, %bb.v, %bb.h
  %.str.79.sink = phi ptr [ @.str.79, %bb.fj ], [ @.str.80, %bb.af ], [ @.str.82, %bb.fu ], [ @.str.78, %bb.g ], [ @.str.79, %bb.fl ], [ @.str.81, %bb.ag ], [ @.str.79, %bb.ac ], [ @.str.81, %bb.fp ], [ @.str.79, %bb.fc ], [ @.str.78, %bb.h ], [ @.str.78, %bb.v ], [ @.str.78, %bb.u ], [ @.str.78, %bb.t ], [ @.str.82, %bb.gc ]
  %.6.sink = phi ptr [ %i.tu, %bb.fj ], [ %i.l, %bb.af ], [ %0, %bb.fu ], [ %i.l, %bb.g ], [ %.6, %bb.fl ], [ %i.bx, %bb.ag ], [ %i.bf, %bb.ac ], [ %i.uz, %bb.fp ], [ %i.sy, %bb.fc ], [ %i.l, %bb.h ], [ %i.l, %bb.v ], [ %i.l, %bb.u ], [ %i.l, %bb.t ], [ %0, %bb.gc ]
  store ptr %.str.79.sink, ptr %i.d, align 8, !tbaa !106
  store ptr %.6.sink, ptr %i.b, align 8, !tbaa !106
  br label %.sink.split

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294: ; preds = %bb.gv, %bb.gx, %bb.gz, %bb.ia, %bb.ic, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.cont.cont.cont

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit: ; preds = %bb.ib, %bb.gw
  store ptr @.str.82, ptr %i.d, align 8, !tbaa !106
  store ptr %0, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread291, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.ie

bb.ie:                                            ; preds = %.sink.split, %.split
  br i1 %.not, label %.cont.cont.cont, label %.cont92.cont.else

.cont92.cont.else:                                ; preds = %bb.ie
  %.sroa.gep72 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aww = load ptr, ptr %i.b, align 8, !tbaa !106 ; 2 uses
  %i.awx = icmp ugt ptr %i.aww, %0
  %i.awy = ptrtoint ptr %i.aww to i64
  %i.awz = sub i64 %i.awy, %i.e
  %i.axa = select i1 %i.awx, i64 %i.awz, i64 0
  store i64 %i.axa, ptr %.sroa.gep72, align 8, !tbaa !132
  %i.axb = load ptr, ptr %i.d, align 8, !tbaa !106
  %.sroa.gep74 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.axb, ptr %.sroa.gep74, align 8, !tbaa !133
  store i32 9, ptr %4, align 8, !tbaa !134
  br label %.cont.cont.cont

.cont.cont.cont:                                  ; preds = %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294, %.split._crit_edge, %.cont92.cont.else, %bb.ie, %.cont89.cont.else, %bb.d, %.cont.cont.else, %bb.b
  %.0 = phi ptr [ null, %.cont89.cont.else ], [ null, %.cont.cont.else ], [ null, %.cont92.cont.else ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.ie ], [ %.pre, %.split._crit_edge ], [ %.7, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294 ], [ %i.awv, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %"struct.duckdb_yyjson::yyjson_write_err", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %.not = icmp eq ptr %2, null
  %i.a = select i1 %.not, ptr @_ZN13duckdb_yyjsonL18YYJSON_DEFAULT_ALCE, ptr %2 ; 4 uses
  %.sroa.01324.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !46 ; 9 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !46 ; 16 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !46 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !46 ; 35 uses
  %.not26 = icmp eq ptr %4, null                  ; 14 uses
  %i.b = select i1 %.not26, ptr %5, ptr %4        ; 16 uses
  %.not27 = icmp eq ptr %3, null                  ; 16 uses
  %.not28 = icmp eq ptr %0, null
  br i1 %.not28, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  br i1 %.not27, label %.cont1267, label %.else1269

.else1269:                                        ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !105
  br label %.cont1267

.cont1267:                                        ; preds = %bb.b, %.else1269
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.40, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  store i32 1, ptr %i.b, align 8, !tbaa !149
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !98     ; 5 uses
  %i.d = trunc i64 %i.c to i8                     ; 2 uses
  %i.e = and i8 %i.d, 6
  %i.f = icmp ne i8 %i.e, 6
  %i.g = icmp ult i64 %i.c, 256
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %bb.ii

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %1, 2
  %.not1811 = icmp eq i32 %i.h, 0                 ; 3 uses
  %i.i = and i32 %1, 4
  %.not1812 = icmp eq i32 %i.i, 0                 ; 2 uses
  br i1 %.not1811, label %bb.f, label %bb.e, !prof !61

bb.e:                                             ; preds = %bb.d
  %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i58 = select i1 %.not1812, ptr @_ZN13duckdb_yyjsonL13enc_table_escE, ptr @_ZN13duckdb_yyjsonL19enc_table_esc_slashE, !prof !61
  br label %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit59

bb.f:                                             ; preds = %bb.d
  %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i56 = select i1 %.not1812, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, ptr @_ZN13duckdb_yyjsonL19enc_table_cpy_slashE, !prof !61
  br label %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit59

_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit59: ; preds = %bb.e, %bb.f
  %.0.i57 = phi ptr [ %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i58, %bb.e ], [ %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i56, %bb.f ] ; 28 uses
  %i.j = icmp eq ptr %.0.i57, @_ZN13duckdb_yyjsonL13enc_table_cpyE
  %i.k = and i32 %1, 32
  %.not1814 = icmp eq i32 %i.k, 0                 ; 4 uses
  %i.l = and i32 %1, 128
  %.not1815 = icmp eq i32 %i.l, 0
  %i.m = and i8 %i.d, 7
  switch i8 %i.m, label %default.unreachable [
    i8 1, label %bb.g
    i8 5, label %bb.i
    i8 4, label %bb.ea
    i8 3, label %bb.hx
    i8 2, label %bb.hy
    i8 6, label %bb.ia
    i8 7, label %bb.ic
    i8 0, label %bb.ih
  ]

bb.g:                                             ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit59
  %i.n = lshr i64 %i.c, 8                         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.q = add nuw nsw i64 %i.n, 2
  %i.r = tail call noundef ptr %.sroa.01324.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.q), !inline_history !292 ; 4 uses
  %.not107.i = icmp eq ptr %i.r, null
  br i1 %.not107.i, label %bb.ig, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.p, i64 range(i64 0, 72057594037927936) %i.n, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.i:                                             ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit59
  %i.t = lshr i64 %i.c, 8                         ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 7 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 4 uses
  %i.x = mul nuw nsw i64 %i.t, 6
  %i.y = add nuw nsw i64 %i.x, 4
  %i.z = tail call noundef ptr %.sroa.01324.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.y), !inline_history !292 ; 12 uses
  %.not104.i = icmp eq ptr %i.z, null
  br i1 %.not104.i, label %bb.ig, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.j, label %bb.br, label %.split.i, !prof !61

.split.i:                                         ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t ; 3 uses
  store i8 34, ptr %i.z, align 1, !tbaa !99
  %i.ab = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ac = add i64 %i.t, %i.w
  br label %bb.k

bb.k:                                             ; preds = %bb.av, %.split.i
  %.pn.i453 = phi ptr [ %i.z, %.split.i ], [ %.8258.i466, %bb.av ]
  %.0243.i454 = phi ptr [ %i.v, %.split.i ], [ %i.hw, %bb.av ] ; 3 uses
  %.0250.i455 = getelementptr inbounds nuw i8, ptr %.pn.i453, i64 1 ; 2 uses
  %i.ad = ptrtoint ptr %.0243.i454 to i64
  %i.ae = sub i64 %i.ab, %i.ad                    ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 15
  br i1 %i.af, label %.lr.ph3145, label %.preheader1880

.preheader1880:                                   ; preds = %bb.aa, %bb.k
  %.pre-phi3788 = phi i64 [ %i.ae, %bb.k ], [ %i.dl, %bb.aa ]
  %.1251.i456.lcssa = phi ptr [ %.0250.i455, %bb.k ], [ %i.di, %bb.aa ] ; 2 uses
  %.1244.i457.lcssa = phi ptr [ %.0243.i454, %bb.k ], [ %i.dj, %bb.aa ] ; 2 uses
  %i.ag = icmp sgt i64 %.pre-phi3788, 3
  br i1 %i.ag, label %.lr.ph3151, label %.preheader1878

.lr.ph3145:                                       ; preds = %bb.k, %bb.aa
  %.1244.i4573143 = phi ptr [ %i.dj, %bb.aa ], [ %.0243.i454, %bb.k ] ; 46 uses
  %.1251.i4563142 = phi ptr [ %i.di, %bb.aa ], [ %.0250.i455, %bb.k ] ; 30 uses
  %i.ah = load i8, ptr %.1244.i4573143, align 1, !tbaa !99 ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !99
  %.not277.i524 = icmp eq i8 %i.ak, 0
  br i1 %.not277.i524, label %bb.l, label %.preheader1875.preheader, !prof !61

bb.l:                                             ; preds = %.lr.ph3145
  %i.al = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !99
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !99
  %.not278.i525 = icmp eq i8 %i.ap, 0
  br i1 %.not278.i525, label %bb.m, label %.loopexit1882, !prof !61

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !99
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !99
  %.not279.i526 = icmp eq i8 %i.au, 0
  br i1 %.not279.i526, label %bb.n, label %.loopexit1883, !prof !61

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !99
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !99
  %.not280.i527 = icmp eq i8 %i.az, 0
  br i1 %.not280.i527, label %bb.o, label %.loopexit1884, !prof !61

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !99
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !99
  %.not281.i528 = icmp eq i8 %i.be, 0
  br i1 %.not281.i528, label %bb.p, label %bb.ah, !prof !61

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !99
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !99
  %.not282.i529 = icmp eq i8 %i.bj, 0
  br i1 %.not282.i529, label %bb.q, label %bb.ai, !prof !61

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 6
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !99
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !99
  %.not283.i530 = icmp eq i8 %i.bo, 0
  br i1 %.not283.i530, label %bb.r, label %bb.aj, !prof !61

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 7
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !99
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !99
  %.not284.i531 = icmp eq i8 %i.bt, 0
  br i1 %.not284.i531, label %bb.s, label %bb.ak, !prof !61

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 8
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !99
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !99
  %.not285.i532 = icmp eq i8 %i.by, 0
  br i1 %.not285.i532, label %bb.t, label %bb.al, !prof !61

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !99
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !99
  %.not286.i533 = icmp eq i8 %i.cd, 0
  br i1 %.not286.i533, label %bb.u, label %bb.am, !prof !61

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 10
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !99
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !99
  %.not287.i534 = icmp eq i8 %i.ci, 0
  br i1 %.not287.i534, label %bb.v, label %bb.an, !prof !61

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !99
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !99
  %.not288.i535 = icmp eq i8 %i.cn, 0
  br i1 %.not288.i535, label %bb.w, label %bb.ao, !prof !61

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 12
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !99
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !99
  %.not289.i536 = icmp eq i8 %i.cs, 0
  br i1 %.not289.i536, label %bb.x, label %bb.ap, !prof !61

bb.x:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 13
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !99
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !99
  %.not290.i537 = icmp eq i8 %i.cx, 0
  br i1 %.not290.i537, label %bb.y, label %bb.aq, !prof !61

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 14
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !99
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !99
  %.not291.i538 = icmp eq i8 %i.dc, 0
  br i1 %.not291.i538, label %bb.z, label %bb.ar, !prof !61

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 15
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !99
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !99
  %.not292.i539 = icmp eq i8 %i.dh, 0
  br i1 %.not292.i539, label %bb.aa, label %bb.as, !prof !61

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i4573143, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 16 ; 3 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.ab, %i.dk                    ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 15
  br i1 %i.dm, label %.lr.ph3145, label %.preheader1880, !llvm.loop !31

.preheader1878:                                   ; preds = %bb.af, %.preheader1880
  %.2252.i458.lcssa = phi ptr [ %.1251.i456.lcssa, %.preheader1880 ], [ %i.eu, %bb.af ] ; 3 uses
  %.2245.i459.lcssa = phi ptr [ %.1244.i457.lcssa, %.preheader1880 ], [ %i.ev, %bb.af ] ; 5 uses
  %i.dn = icmp ugt ptr %i.aa, %.2245.i459.lcssa
  br i1 %i.dn, label %.lr.ph3156.preheader, label %.preheader1878._crit_edge

.lr.ph3156.preheader:                             ; preds = %.preheader1878
  %.2245.i459.lcssa3723 = ptrtoaddr ptr %.2245.i459.lcssa to i64 ; 2 uses
  %i.do = getelementptr i8, ptr %.2245.i459.lcssa, i64 %i.t
  %scevgep3722 = getelementptr i8, ptr %i.do, i64 %i.w
  %i.dp = sub i64 0, %.2245.i459.lcssa3723
  %scevgep3724 = getelementptr i8, ptr %scevgep3722, i64 %i.dp
  %i.dq = sub i64 %i.ac, %.2245.i459.lcssa3723
  %i.dr = freeze i64 %i.dq                        ; 2 uses
  %i.ds = add i64 %i.dr, -1
  %xtraiter6768.a = and i64 %i.dr, 3              ; 2 uses
  %lcmp.mod6769.not.a = icmp eq i64 %xtraiter6768.a, 0
  br i1 %lcmp.mod6769.not.a, label %.lr.ph3156.prol.loopexit, label %.lr.ph3156.prol

.lr.ph3156.prol:                                  ; preds = %.lr.ph3156.preheader, %bb.ab
  %.3246.i4613155.prol = phi ptr [ %i.dx, %bb.ab ], [ %.2245.i459.lcssa, %.lr.ph3156.preheader ] ; 3 uses
  %.3253.i4603154.prol = phi ptr [ %i.dy, %bb.ab ], [ %.2252.i458.lcssa, %.lr.ph3156.preheader ] ; 3 uses
  %prol.iter6770.a = phi i64 [ %prol.iter6770.next.a, %bb.ab ], [ 0, %.lr.ph3156.preheader ]
  %i.dt = load i8, ptr %.3246.i4613155.prol, align 1, !tbaa !99 ; 2 uses
  %i.du = zext i8 %i.dt to i64
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !99
  %.not275.i518 = icmp eq i8 %i.en, 0
  br i1 %.not275.i518, label %bb.ae, label %.loopexit1883, !prof !61

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %.2245.i4593150, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !99
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !99
  %.not276.i521 = icmp eq i8 %i.es, 0
  br i1 %.not276.i521, label %bb.af, label %.loopexit1884, !prof !61

bb.af:                                            ; preds = %bb.ae
  %i.et = load i32, ptr %.2245.i4593150, align 1
  store i32 %i.et, ptr %.2252.i4583149, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.2252.i4583149, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.2245.i4593150, i64 4 ; 3 uses
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %i.ab, %i.ew
  %i.ey = icmp sgt i64 %i.ex, 3
  br i1 %i.ey, label %.lr.ph3151, label %.preheader1878, !llvm.loop !32

.lr.ph3156:                                       ; preds = %.lr.ph3156.prol.loopexit, %bb.ag
  %.3246.i4613155 = phi ptr [ %i.fv, %bb.ag ], [ %.3246.i4613155.unr, %.lr.ph3156.prol.loopexit ] ; 9 uses
  %.3253.i4603154 = phi ptr [ %i.fw, %bb.ag ], [ %.3253.i4603154.unr, %.lr.ph3156.prol.loopexit ] ; 6 uses
  %i.ez = load i8, ptr %.3246.i4613155, align 1, !tbaa !99 ; 2 uses
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !99
  %.not.i463 = icmp eq i8 %i.fc, 0
  br i1 %.not.i463, label %.lr.ph3156.1, label %.preheader1875.preheader, !prof !61

.lr.ph3156.1:                                     ; preds = %.lr.ph3156
  %i.fd = getelementptr inbounds nuw i8, ptr %.3246.i4613155, i64 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.3253.i4603154, i64 1 ; 2 uses
  store i8 %i.ez, ptr %.3253.i4603154, align 1, !tbaa !99
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !99  ; 2 uses
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !99
  %.not.i463.1 = icmp eq i8 %i.fi, 0
  br i1 %.not.i463.1, label %.lr.ph3156.2, label %.preheader1875.preheader.loopexit.loopexit.split.loop.exit7490, !prof !61

.lr.ph3156.2:                                     ; preds = %.lr.ph3156.1
  %i.fj = getelementptr inbounds nuw i8, ptr %.3246.i4613155, i64 2
  %i.fk = getelementptr inbounds nuw i8, ptr %.3253.i4603154, i64 2 ; 2 uses
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !99
  %i.fl = load i8, ptr %i.fj, align 1, !tbaa !99  ; 2 uses
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !99
  %.not.i463.2 = icmp eq i8 %i.fo, 0
  br i1 %.not.i463.2, label %.lr.ph3156.3, label %.preheader1875.preheader.loopexit.loopexit.split.loop.exit7487, !prof !61

.lr.ph3156.3:                                     ; preds = %.lr.ph3156.2
  %i.fp = getelementptr inbounds nuw i8, ptr %.3246.i4613155, i64 3
  %i.fq = getelementptr inbounds nuw i8, ptr %.3253.i4603154, i64 3 ; 2 uses
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !99
  %i.fr = load i8, ptr %i.fp, align 1, !tbaa !99  ; 2 uses
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !99
  %.not.i463.3 = icmp eq i8 %i.fu, 0
  br i1 %.not.i463.3, label %bb.ag, label %.preheader1875.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.ag:                                            ; preds = %.lr.ph3156.3
  %i.fv = getelementptr inbounds nuw i8, ptr %.3246.i4613155, i64 4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.3253.i4603154, i64 4 ; 2 uses
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !99
  %exitcond3725.not.3 = icmp eq ptr %i.fv, %scevgep3724
  br i1 %exitcond3725.not.3, label %.preheader1878._crit_edge, label %.lr.ph3156, !llvm.loop !33

.preheader1878._crit_edge:                        ; preds = %.preheader1878, %bb.ag, %.lr.ph3156.prol.loopexit
  %.3253.i460.lcssa = phi ptr [ %.lcssa6248.unr, %.lr.ph3156.prol.loopexit ], [ %i.fw, %bb.ag ], [ %.2252.i458.lcssa, %.preheader1878 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.3253.i460.lcssa, i64 1
  store i8 34, ptr %.3253.i460.lcssa, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

.loopexit1882:                                    ; preds = %bb.l, %bb.ac
  %i.fy = phi i8 [ %i.ea, %bb.ac ], [ %i.ah, %bb.l ]
  %.5255.i516 = phi ptr [ %.2252.i4583149, %bb.ac ], [ %.1251.i4563142, %bb.l ] ; 2 uses
  %.5248.i517 = phi ptr [ %.2245.i4593150, %bb.ac ], [ %.1244.i4573143, %bb.l ]
  store i8 %i.fy, ptr %.5255.i516, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.5255.i516, i64 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.5248.i517, i64 1
  br label %.preheader1875.preheader

.loopexit1883:                                    ; preds = %bb.m, %bb.ad
  %.6256.i519 = phi ptr [ %.2252.i4583149, %bb.ad ], [ %.1251.i4563142, %bb.m ] ; 2 uses
  %.6.i520 = phi ptr [ %.2245.i4593150, %bb.ad ], [ %.1244.i4573143, %bb.m ] ; 2 uses
  %i.gb = load i16, ptr %.6.i520, align 1
  store i16 %i.gb, ptr %.6256.i519, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.6256.i519, i64 2
  %i.gd = getelementptr inbounds nuw i8, ptr %.6.i520, i64 2
  br label %.preheader1875.preheader

.loopexit1884:                                    ; preds = %bb.n, %bb.ae
  %.7257.i522 = phi ptr [ %.2252.i4583149, %bb.ae ], [ %.1251.i4563142, %bb.n ] ; 2 uses
  %.7.i523 = phi ptr [ %.2245.i4593150, %bb.ae ], [ %.1244.i4573143, %bb.n ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i522, ptr noundef nonnull align 1 dereferenceable(3) %.7.i523, i64 3, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.7257.i522, i64 3
  %i.gf = getelementptr inbounds nuw i8, ptr %.7.i523, i64 3
  br label %.preheader1875.preheader

bb.ah:                                            ; preds = %bb.o
  %i.gg = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 4
  %i.gh = load i32, ptr %.1244.i4573143, align 1
  store i32 %i.gh, ptr %.1251.i4563142, align 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 4
  br label %.preheader1875.preheader

bb.ai:                                            ; preds = %bb.p
  %i.gj = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i4573143, i64 5, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 5
  br label %.preheader1875.preheader

bb.aj:                                            ; preds = %bb.q
  %i.gl = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i4573143, i64 6, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 6
  br label %.preheader1875.preheader

bb.ak:                                            ; preds = %bb.r
  %i.gn = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i4573143, i64 7, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 7
  br label %.preheader1875.preheader

bb.al:                                            ; preds = %bb.s
  %i.gp = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 8
  %i.gq = load i64, ptr %.1244.i4573143, align 1
  store i64 %i.gq, ptr %.1251.i4563142, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 8
  br label %.preheader1875.preheader

bb.am:                                            ; preds = %bb.t
  %i.gs = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i4573143, i64 9, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 9
  br label %.preheader1875.preheader

bb.an:                                            ; preds = %bb.u
  %i.gu = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i4573143, i64 10, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 10
  br label %.preheader1875.preheader

bb.ao:                                            ; preds = %bb.v
  %i.gw = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i4573143, i64 11, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 11
  br label %.preheader1875.preheader

bb.ap:                                            ; preds = %bb.w
  %i.gy = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i4573143, i64 12, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 12
  br label %.preheader1875.preheader

bb.aq:                                            ; preds = %bb.x
  %i.ha = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i4573143, i64 13, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 13
  br label %.preheader1875.preheader

bb.ar:                                            ; preds = %bb.y
  %i.hc = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i4573143, i64 14, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 14
  br label %.preheader1875.preheader

bb.as:                                            ; preds = %bb.z
  %i.he = getelementptr inbounds nuw i8, ptr %.1244.i4573143, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i4563142, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i4573143, i64 15, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %.1251.i4563142, i64 15
  br label %.preheader1875.preheader

.preheader1875.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph3156.3
  %i.hg = getelementptr inbounds nuw i8, ptr %.3246.i4613155, i64 3
  br label %.preheader1875.preheader

.preheader1875.preheader.loopexit.loopexit.split.loop.exit7487: ; preds = %.lr.ph3156.2
  %i.hh = getelementptr inbounds nuw i8, ptr %.3246.i4613155, i64 2
  br label %.preheader1875.preheader

.preheader1875.preheader.loopexit.loopexit.split.loop.exit7490: ; preds = %.lr.ph3156.1
  %i.hi = getelementptr inbounds nuw i8, ptr %.3246.i4613155, i64 1
  br label %.preheader1875.preheader

.preheader1875.preheader:                         ; preds = %.lr.ph3145, %.lr.ph3151, %.lr.ph3156, %.preheader1875.preheader.loopexit.loopexit.split.loop.exit7490, %.preheader1875.preheader.loopexit.loopexit.split.loop.exit7487, %.preheader1875.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph3156.prol, %.loopexit1882, %.loopexit1883, %.loopexit1884, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.8258.i466.ph = phi ptr [ %.2252.i4583149, %.lr.ph3151 ], [ %.3253.i4603154.prol, %.lr.ph3156.prol ], [ %i.fz, %.loopexit1882 ], [ %i.gc, %.loopexit1883 ], [ %i.ge, %.loopexit1884 ], [ %i.gi, %bb.ah ], [ %i.gk, %bb.ai ], [ %i.gm, %bb.aj ], [ %i.go, %bb.ak ], [ %i.gr, %bb.al ], [ %i.gt, %bb.am ], [ %i.gv, %bb.an ], [ %i.gx, %bb.ao ], [ %i.gz, %bb.ap ], [ %i.hb, %bb.aq ], [ %i.hd, %bb.ar ], [ %i.hf, %bb.as ], [ %.3253.i4603154, %.lr.ph3156 ], [ %i.fe, %.preheader1875.preheader.loopexit.loopexit.split.loop.exit7490 ], [ %i.fk, %.preheader1875.preheader.loopexit.loopexit.split.loop.exit7487 ], [ %i.fq, %.preheader1875.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i4563142, %.lr.ph3145 ]
  %.8.i467.ph = phi ptr [ %.2245.i4593150, %.lr.ph3151 ], [ %.3246.i4613155.prol, %.lr.ph3156.prol ], [ %i.ga, %.loopexit1882 ], [ %i.gd, %.loopexit1883 ], [ %i.gf, %.loopexit1884 ], [ %i.gg, %bb.ah ], [ %i.gj, %bb.ai ], [ %i.gl, %bb.aj ], [ %i.gn, %bb.ak ], [ %i.gp, %bb.al ], [ %i.gs, %bb.am ], [ %i.gu, %bb.an ], [ %i.gw, %bb.ao ], [ %i.gy, %bb.ap ], [ %i.ha, %bb.aq ], [ %i.hc, %bb.ar ], [ %i.he, %bb.as ], [ %.3246.i4613155, %.lr.ph3156 ], [ %i.hi, %.preheader1875.preheader.loopexit.loopexit.split.loop.exit7490 ], [ %i.hh, %.preheader1875.preheader.loopexit.loopexit.split.loop.exit7487 ], [ %i.hg, %.preheader1875.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i4573143, %.lr.ph3145 ]
  br label %.preheader1875

.preheader1875:                                   ; preds = %.preheader1875.backedge, %.preheader1875.preheader
  %.8258.i466 = phi ptr [ %.8258.i466.ph, %.preheader1875.preheader ], [ %.8258.i466.be, %.preheader1875.backedge ] ; 35 uses
  %.8.i467 = phi ptr [ %.8.i467.ph, %.preheader1875.preheader ], [ %.8.i467.be, %.preheader1875.backedge ] ; 23 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.8.i467, i64 4 ; 3 uses
  %i.hk = icmp ugt ptr %i.hj, %i.aa               ; 2 uses
  br i1 %i.hk, label %bb.at, label %._crit_edge3775, !prof !44

._crit_edge3775:                                  ; preds = %.preheader1875
  %.pre3776 = load i8, ptr %.8.i467, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert3777 = zext i8 %.pre3776 to i64 ; 2 uses
  %.phi.trans.insert3778.a = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %.phi.trans.insert3777
  %.pre3779 = load i8, ptr %.phi.trans.insert3778.a, align 1, !tbaa !99
  br label %bb.au

bb.at:                                            ; preds = %.preheader1875
  %i.hl = ptrtoint ptr %.8.i467 to i64
  %i.hm = sub i64 %i.ab, %i.hl
  %i.hn = load i8, ptr %.8.i467, align 1, !tbaa !99 ; 3 uses
  %i.ho = zext i8 %i.hn to i64                    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i57, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !99  ; 2 uses
  %i.hr = lshr i8 %i.hq, 1
  %i.hs = zext nneg i8 %i.hr to i64
  %i.ht = icmp slt i64 %i.hm, %i.hs
  br i1 %i.ht, label %bb.bo, label %bb.au

bb.au:                                            ; preds = %._crit_edge3775, %bb.at
  %.pre-phi3789 = phi i64 [ %.phi.trans.insert3777, %._crit_edge3775 ], [ %i.ho, %bb.at ]
  %i.hu = phi i8 [ %.pre3779, %._crit_edge3775 ], [ %i.hq, %bb.at ]
  %i.hv = phi i8 [ %.pre3776, %._crit_edge3775 ], [ %i.hn, %bb.at ] ; 2 uses
  switch i8 %i.hu, label %bb.bn [
    i8 0, label %bb.av
    i8 4, label %bb.aw
    i8 6, label %bb.ay
    i8 8, label %bb.bd
    i8 2, label %bb.bf
    i8 3, label %bb.bg
    i8 5, label %bb.bh
    i8 7, label %bb.bj
    i8 9, label %bb.bl
    i8 1, label %bb.bo
  ]

bb.av:                                            ; preds = %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %.8.i467, i64 1
  store i8 %i.hv, ptr %.8258.i466, align 1, !tbaa !99
  br label %bb.k

bb.aw:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i = load i16, ptr %.8.i467, align 1 ; 3 uses
  %i.hx = zext i16 %.sroa.0.0.copyload.i to i32   ; 2 uses
  %i.hy = and i32 %i.hx, 49376
  %i.hz = icmp ne i32 %i.hy, 32960
  %i.ia = and i32 %i.hx, 30
  %i.ib = icmp eq i32 %i.ia, 0
  %.not315.i510 = or i1 %i.hz, %i.ib
  %i.ic = trunc i16 %.sroa.0.0.copyload.i to i8
  br i1 %.not315.i510, label %.thread, label %bb.ax, !prof !44

bb.ax:                                            ; preds = %bb.aw
  store i16 %.sroa.0.0.copyload.i, ptr %.8258.i466, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 2
  %i.ie = getelementptr inbounds nuw i8, ptr %.8.i467, i64 2
  br label %.preheader1875.backedge

bb.ay:                                            ; preds = %bb.au
  br i1 %i.hk, label %bb.bb, label %bb.az, !prof !44

bb.az:                                            ; preds = %bb.ay
  %.sroa.0.0.copyload.i333.i505 = load i32, ptr %.8.i467, align 1 ; 4 uses
  %i.if = and i32 %.sroa.0.0.copyload.i333.i505, 12632304
  %i.ig = icmp eq i32 %i.if, 8421600
  %i.ih = trunc i32 %.sroa.0.0.copyload.i333.i505 to i8 ; 3 uses
  br i1 %i.ig, label %bb.ba, label %.thread, !prof !61

bb.ba:                                            ; preds = %bb.az
  %i.ii = and i32 %.sroa.0.0.copyload.i333.i505, 8207
  switch i32 %i.ii, label %.critedge.i506 [
    i32 8205, label %.thread
    i32 0, label %.thread
  ], !prof !150

bb.bb:                                            ; preds = %bb.ay
  %.sroa.0.0.copyload.i568 = load i16, ptr %.8.i467, align 1 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.8.i467, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i = zext i8 %i.ik to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload.i568 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.il = and i32 %.sroa.0.0.insert.insert.i, 12632304
  %i.im = icmp eq i32 %i.il, 8421600
  %i.in = trunc i16 %.sroa.0.0.copyload.i568 to i8 ; 3 uses
  br i1 %i.im, label %bb.bc, label %.thread, !prof !61

bb.bc:                                            ; preds = %bb.bb
  %i.io = and i32 %.sroa.0.0.insert.ext.i, 8207
  switch i32 %i.io, label %.critedge.i506 [
    i32 8205, label %.thread
    i32 0, label %.thread
  ], !prof !150

.critedge.i506:                                   ; preds = %bb.bc, %bb.ba
  %storemerge1831 = phi i32 [ %.sroa.0.0.copyload.i333.i505, %bb.ba ], [ %.sroa.0.0.insert.insert.i, %bb.bc ]
  store i32 %storemerge1831, ptr %.8258.i466, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 3
  %i.iq = getelementptr inbounds nuw i8, ptr %.8.i467, i64 3
  br label %.preheader1875.backedge

bb.bd:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i332.i496 = load i32, ptr %.8.i467, align 1 ; 6 uses
  %i.ir = and i32 %.sroa.0.0.copyload.i332.i496, -1061109512
  %i.is = icmp ne i32 %i.ir, -2139062032
  %i.it = and i32 %.sroa.0.0.copyload.i332.i496, 12295
  %.not306.i497 = icmp eq i32 %i.it, 0
  %or.cond.i498 = or i1 %i.is, %.not306.i497
  %i.iu = trunc i32 %.sroa.0.0.copyload.i332.i496 to i8 ; 2 uses
  br i1 %or.cond.i498, label %.thread, label %bb.be, !prof !151

bb.be:                                            ; preds = %bb.bd
  %i.iv = and i32 %.sroa.0.0.copyload.i332.i496, 4
  %i.iw = icmp ne i32 %i.iv, 0
  %i.ix = and i32 %.sroa.0.0.copyload.i332.i496, 12291
  %i.iy = icmp ne i32 %i.ix, 0
  %.not309.i499 = and i1 %i.iw, %i.iy
  br i1 %.not309.i499, label %.thread, label %.critedge321.i500, !prof !44

.critedge321.i500:                                ; preds = %bb.be
  store i32 %.sroa.0.0.copyload.i332.i496, ptr %.8258.i466, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 4
  br label %.preheader1875.backedge

bb.bf:                                            ; preds = %bb.au
  %i.ja = shl nuw nsw i64 %.pre-phi3789, 1
  %i.jb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2
  store i16 %i.jc, ptr %.8258.i466, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 2
  %i.je = getelementptr inbounds nuw i8, ptr %.8.i467, i64 1
  br label %.preheader1875.backedge

.preheader1875.backedge:                          ; preds = %bb.bf, %bb.bg, %bb.bp, %bb.bq, %bb.ax, %.critedge.i506, %.critedge321.i500, %bb.bi, %.critedge326.i482, %.critedge330.i478
  %.8258.i466.be = phi ptr [ %i.nf, %bb.bp ], [ %i.id, %bb.ax ], [ %i.ip, %.critedge.i506 ], [ %i.iz, %.critedge321.i500 ], [ %i.jd, %bb.bf ], [ %i.jl, %bb.bg ], [ %i.kh, %bb.bi ], [ %i.le, %.critedge326.i482 ], [ %i.na, %.critedge330.i478 ], [ %i.nh, %bb.bq ]
  %.8.i467.be = phi ptr [ %i.ne, %bb.bp ], [ %i.ie, %bb.ax ], [ %i.iq, %.critedge.i506 ], [ %i.hj, %.critedge321.i500 ], [ %i.je, %bb.bf ], [ %i.jm, %bb.bg ], [ %i.ki, %bb.bi ], [ %i.lf, %.critedge326.i482 ], [ %i.hj, %.critedge330.i478 ], [ %i.ni, %bb.bq ]
  br label %.preheader1875

bb.bg:                                            ; preds = %bb.au
  store i32 808482140, ptr %.8258.i466, align 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 4
  %i.jg = load i8, ptr %.8.i467, align 1, !tbaa !99
  %i.jh = zext i8 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 1
  %i.jj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2
  store i16 %i.jk, ptr %i.jf, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 6
  %i.jm = getelementptr inbounds nuw i8, ptr %.8.i467, i64 1
  br label %.preheader1875.backedge

bb.bh:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i557 = load i16, ptr %.8.i467, align 1 ; 3 uses
  %i.jn = zext i16 %.sroa.0.0.copyload.i557 to i32 ; 2 uses
  %i.jo = and i32 %i.jn, 49376
  %i.jp = icmp ne i32 %i.jo, 32960
  %i.jq = and i32 %i.jn, 30
  %i.jr = icmp eq i32 %i.jq, 0
  %.not303.i490 = or i1 %i.jp, %i.jr
  br i1 %.not303.i490, label %.thread1620, label %bb.bi, !prof !44

bb.bi:                                            ; preds = %bb.bh
  %i.js = lshr i16 %.sroa.0.0.copyload.i557, 8
  %i.jt = trunc nuw i16 %i.js to i8
  %i.ju = trunc i16 %.sroa.0.0.copyload.i557 to i8 ; 2 uses
  %.tr304.i491 = shl i8 %i.ju, 6
  %i.jv = and i8 %i.jt, 63
  store i16 30044, ptr %.8258.i466, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 2
  %i.jx = lshr i8 %i.ju, 1
  %i.jy = and i8 %i.jx, 14
  %i.jz = zext nneg i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2
  store i16 %i.kb, ptr %i.jw, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 4
  %.narrow305.i492 = or disjoint i8 %i.jv, %.tr304.i491
  %i.kd = zext i8 %.narrow305.i492 to i64
  %i.ke = shl nuw nsw i64 %i.kd, 1
  %i.kf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2
  store i16 %i.kg, ptr %i.kc, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 6
  %i.ki = getelementptr inbounds nuw i8, ptr %.8.i467, i64 2
  br label %.preheader1875.backedge

bb.bj:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i569 = load i16, ptr %.8.i467, align 1 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.8.i467, i64 2
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !99  ; 2 uses
  %.sroa.4.0.insert.ext.i570 = zext i8 %i.kk to i32
  %.sroa.4.0.insert.shift.i571 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i570, 16
  %.sroa.0.0.insert.ext.i572 = zext i16 %.sroa.0.0.copyload.i569 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i573 = or disjoint i32 %.sroa.4.0.insert.shift.i571, %.sroa.0.0.insert.ext.i572
  %i.kl = and i32 %.sroa.0.0.insert.insert.i573, 12632304
  %i.km = icmp eq i32 %i.kl, 8421600
  br i1 %i.km, label %bb.bk, label %.thread1620, !prof !61

bb.bk:                                            ; preds = %bb.bj
  %i.kn = and i32 %.sroa.0.0.insert.ext.i572, 8207
  switch i32 %i.kn, label %.critedge326.i482 [
    i32 8205, label %.thread1620
    i32 0, label %.thread1620
  ], !prof !150

.critedge326.i482:                                ; preds = %bb.bk
  %i.ko = zext i16 %.sroa.0.0.copyload.i569 to i64
  %i.kp = shl nuw nsw i64 %i.ko, 12
  %i.kq = lshr i16 %.sroa.0.0.copyload.i569, 2
  %i.kr = and i16 %i.kq, 4032                     ; 2 uses
  %i.ks = zext nneg i16 %i.kr to i64
  %i.kt = and i8 %i.kk, 63
  store i16 30044, ptr %.8258.i466, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 2
  %.masked.i487 = or disjoint i64 %i.kp, %i.ks
  %i.kv = lshr i64 %.masked.i487, 7
  %i.kw = and i64 %i.kv, 510
  %i.kx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2
  store i16 %i.ky, ptr %i.ku, align 1
  %i.kz = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 4
  %.tr299.i488 = trunc i16 %i.kr to i8
  %.narrow300.i489 = or disjoint i8 %i.kt, %.tr299.i488
  %i.la = zext i8 %.narrow300.i489 to i64
  %i.lb = shl nuw nsw i64 %i.la, 1
  %i.lc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.lb
  %i.ld = load i16, ptr %i.lc, align 2
  store i16 %i.ld, ptr %i.kz, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 6
  %i.lf = getelementptr inbounds nuw i8, ptr %.8.i467, i64 3
  br label %.preheader1875.backedge

bb.bl:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i.i472 = load i32, ptr %.8.i467, align 1 ; 9 uses
  %i.lg = and i32 %.sroa.0.0.copyload.i.i472, -1061109512
  %i.lh = icmp ne i32 %i.lg, -2139062032
  %i.li = and i32 %.sroa.0.0.copyload.i.i472, 12295
  %.not293.i473 = icmp eq i32 %i.li, 0
  %or.cond328.i474 = or i1 %i.lh, %.not293.i473
  %i.lj = lshr i32 %.sroa.0.0.copyload.i.i472, 24
  br i1 %or.cond328.i474, label %.thread1620, label %bb.bm, !prof !151

bb.bm:                                            ; preds = %bb.bl
  %i.lk = and i32 %.sroa.0.0.copyload.i.i472, 4
  %i.ll = icmp ne i32 %i.lk, 0
  %i.lm = and i32 %.sroa.0.0.copyload.i.i472, 12291
  %i.ln = icmp ne i32 %i.lm, 0
  %.not296.i475 = and i1 %i.ll, %i.ln
  br i1 %.not296.i475, label %.thread1620, label %.critedge330.i478, !prof !44

.critedge330.i478:                                ; preds = %bb.bm
  %i.lo = shl i32 %.sroa.0.0.copyload.i.i472, 18
  %i.lp = and i32 %i.lo, 1835008
  %i.lq = shl i32 %.sroa.0.0.copyload.i.i472, 4
  %i.lr = and i32 %i.lq, 258048
  %i.ls = lshr i32 %.sroa.0.0.copyload.i.i472, 10 ; 2 uses
  %i.lt = and i32 %i.ls, 3072
  %i.lu = and i32 %i.lj, 63
  %i.lv = add nsw i32 %i.lp, -65536
  %i.lw = add nsw i32 %i.lv, %i.lr                ; 2 uses
  %i.lx = or disjoint i32 %i.lw, %i.lt
  %i.ly = lshr exact i32 %i.lw, 10
  %i.lz = add nuw nsw i32 %i.ly, 55296
  store i16 30044, ptr %.8258.i466, align 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 2
  %i.mb = lshr i32 %i.lz, 7
  %i.mc = and i32 %i.mb, 65534
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2
  store i16 %i.mf, ptr %i.ma, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 4
  %i.mh = lshr exact i32 %i.lx, 9
  %i.mi = and i32 %i.mh, 510
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.mj
  %i.ml = load i16, ptr %i.mk, align 2
  store i16 %i.ml, ptr %i.mg, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 6
  store i16 30044, ptr %i.mm, align 1
  %i.mn = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 8
  %i.mo = lshr i32 %.sroa.0.0.copyload.i.i472, 17
  %i.mp = and i32 %i.mo, 6
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 440
  %i.mt = load i16, ptr %i.ms, align 2
  store i16 %i.mt, ptr %i.mn, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 10
  %.masked3961.a = and i32 %i.ls, 192
  %i.mv = or disjoint i32 %i.lu, %.masked3961.a
  %i.mw = shl nuw nsw i32 %i.mv, 1
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.mx
  %i.mz = load i16, ptr %i.my, align 2
  store i16 %i.mz, ptr %i.mu, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 12
  br label %.preheader1875.backedge

bb.bn:                                            ; preds = %bb.au
  %i.nb = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 1
  store i8 34, ptr %.8258.i466, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.bo:                                            ; preds = %bb.au, %bb.at
  %i.nc = phi i8 [ %i.hv, %bb.au ], [ %i.hn, %bb.at ]
  br i1 %.not1811, label %.thread, label %.thread1620

.thread:                                          ; preds = %bb.bd, %bb.be, %bb.bb, %bb.az, %bb.bc, %bb.bc, %bb.ba, %bb.ba, %bb.aw, %bb.bo
  %i.nd = phi i8 [ %i.iu, %bb.bd ], [ %i.iu, %bb.be ], [ %i.in, %bb.bb ], [ %i.ih, %bb.az ], [ %i.in, %bb.bc ], [ %i.in, %bb.bc ], [ %i.ih, %bb.ba ], [ %i.ih, %bb.ba ], [ %i.ic, %bb.aw ], [ %i.nc, %bb.bo ]
  br i1 %.not1814, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %.thread
  %i.ne = getelementptr inbounds nuw i8, ptr %.8.i467, i64 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 1
  store i8 %i.nd, ptr %.8258.i466, align 1, !tbaa !99
  br label %.preheader1875.backedge

.thread1620:                                      ; preds = %bb.bl, %bb.bm, %bb.bj, %bb.bk, %bb.bk, %bb.bh, %bb.bo
  br i1 %.not1814, label %.loopexit, label %bb.bq

bb.bq:                                            ; preds = %.thread1620
  store i16 30044, ptr %.8258.i466, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 2
  store i32 1145456198, ptr %i.ng, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %.8258.i466, i64 6
  %i.ni = getelementptr inbounds nuw i8, ptr %.8.i467, i64 1
  br label %.preheader1875.backedge

bb.br:                                            ; preds = %bb.j
  %i.nj = load i64, ptr %0, align 8, !tbaa !98
  %i.nk = and i64 %i.nj, 24
  %.not105.i = icmp eq i64 %i.nk, 0
  store i8 34, ptr %i.z, align 1, !tbaa !99
  br i1 %.not105.i, label %.split83.i, label %bb.dz

.split83.i:                                       ; preds = %bb.br
  %i.nl = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t ; 3 uses
  %i.nm = ptrtoint ptr %i.nl to i64               ; 4 uses
  %i.nn = add i64 %i.t, %i.w
  br label %bb.bs

bb.bs:                                            ; preds = %bb.dd, %.split83.i
  %.pn.i365 = phi ptr [ %i.z, %.split83.i ], [ %.8258.i378, %bb.dd ]
  %.0243.i366 = phi ptr [ %i.v, %.split83.i ], [ %i.vh, %bb.dd ] ; 3 uses
  %.0250.i367 = getelementptr inbounds nuw i8, ptr %.pn.i365, i64 1 ; 2 uses
  %i.no = ptrtoint ptr %.0243.i366 to i64
  %i.np = sub i64 %i.nm, %i.no                    ; 2 uses
  %i.nq = icmp sgt i64 %i.np, 15
  br i1 %i.nq, label %.lr.ph3196, label %.preheader1864

.preheader1864:                                   ; preds = %bb.ci, %bb.bs
  %.pre-phi3785 = phi i64 [ %i.np, %bb.bs ], [ %i.qw, %bb.ci ]
  %.1251.i368.lcssa = phi ptr [ %.0250.i367, %bb.bs ], [ %i.qt, %bb.ci ] ; 2 uses
  %.1244.i369.lcssa = phi ptr [ %.0243.i366, %bb.bs ], [ %i.qu, %bb.ci ] ; 2 uses
  %i.nr = icmp sgt i64 %.pre-phi3785, 3
  br i1 %i.nr, label %.lr.ph3202, label %.preheader1862

.lr.ph3196:                                       ; preds = %bb.bs, %bb.ci
  %.1244.i3693194 = phi ptr [ %i.qu, %bb.ci ], [ %.0243.i366, %bb.bs ] ; 46 uses
  %.1251.i3683193 = phi ptr [ %i.qt, %bb.ci ], [ %.0250.i367, %bb.bs ] ; 30 uses
  %i.ns = load i8, ptr %.1244.i3693194, align 1, !tbaa !99 ; 2 uses
  %i.nt = zext i8 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !99
  %.not277.i436 = icmp eq i8 %i.nv, 0
  br i1 %.not277.i436, label %bb.bt, label %.preheader.preheader, !prof !61

bb.bt:                                            ; preds = %.lr.ph3196
  %i.nw = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !99
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !99
  %.not278.i437 = icmp eq i8 %i.oa, 0
  br i1 %.not278.i437, label %bb.bu, label %.loopexit1866, !prof !61

bb.bu:                                            ; preds = %bb.bt
  %i.ob = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !99
  %i.od = zext i8 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !99
  %.not279.i438 = icmp eq i8 %i.of, 0
  br i1 %.not279.i438, label %bb.bv, label %.loopexit1867, !prof !61

bb.bv:                                            ; preds = %bb.bu
  %i.og = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 3
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !99
  %i.oi = zext i8 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !99
  %.not280.i439 = icmp eq i8 %i.ok, 0
  br i1 %.not280.i439, label %bb.bw, label %.loopexit1868, !prof !61

bb.bw:                                            ; preds = %bb.bv
  %i.ol = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 4
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !99
  %i.on = zext i8 %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !99
  %.not281.i440 = icmp eq i8 %i.op, 0
  br i1 %.not281.i440, label %bb.bx, label %bb.cp, !prof !61

bb.bx:                                            ; preds = %bb.bw
  %i.oq = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 5
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !99
  %i.os = zext i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !99
  %.not282.i441 = icmp eq i8 %i.ou, 0
  br i1 %.not282.i441, label %bb.by, label %bb.cq, !prof !61

bb.by:                                            ; preds = %bb.bx
  %i.ov = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 6
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !99
  %i.ox = zext i8 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !99
  %.not283.i442 = icmp eq i8 %i.oz, 0
  br i1 %.not283.i442, label %bb.bz, label %bb.cr, !prof !61

bb.bz:                                            ; preds = %bb.by
  %i.pa = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 7
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !99
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !99
  %.not284.i443 = icmp eq i8 %i.pe, 0
  br i1 %.not284.i443, label %bb.ca, label %bb.cs, !prof !61

bb.ca:                                            ; preds = %bb.bz
  %i.pf = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 8
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !99
  %i.ph = zext i8 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !99
  %.not285.i444 = icmp eq i8 %i.pj, 0
  br i1 %.not285.i444, label %bb.cb, label %bb.ct, !prof !61

bb.cb:                                            ; preds = %bb.ca
  %i.pk = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 9
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !99
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !99
  %.not286.i445 = icmp eq i8 %i.po, 0
  br i1 %.not286.i445, label %bb.cc, label %bb.cu, !prof !61

bb.cc:                                            ; preds = %bb.cb
  %i.pp = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 10
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !99
  %i.pr = zext i8 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !99
  %.not287.i446 = icmp eq i8 %i.pt, 0
  br i1 %.not287.i446, label %bb.cd, label %bb.cv, !prof !61

bb.cd:                                            ; preds = %bb.cc
  %i.pu = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 11
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !99
  %i.pw = zext i8 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !99
  %.not288.i447 = icmp eq i8 %i.py, 0
  br i1 %.not288.i447, label %bb.ce, label %bb.cw, !prof !61

bb.ce:                                            ; preds = %bb.cd
  %i.pz = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 12
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !99
  %i.qb = zext i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !99
  %.not289.i448 = icmp eq i8 %i.qd, 0
  br i1 %.not289.i448, label %bb.cf, label %bb.cx, !prof !61

bb.cf:                                            ; preds = %bb.ce
  %i.qe = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 13
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !99
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !99
  %.not290.i449 = icmp eq i8 %i.qi, 0
  br i1 %.not290.i449, label %bb.cg, label %bb.cy, !prof !61

bb.cg:                                            ; preds = %bb.cf
  %i.qj = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 14
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !99
  %i.ql = zext i8 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !99
  %.not291.i450 = icmp eq i8 %i.qn, 0
  br i1 %.not291.i450, label %bb.ch, label %bb.cz, !prof !61

bb.ch:                                            ; preds = %bb.cg
  %i.qo = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 15
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !99
  %i.qq = zext i8 %i.qp to i64
  %i.qr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !99
  %.not292.i451 = icmp eq i8 %i.qs, 0
  br i1 %.not292.i451, label %bb.ci, label %bb.da, !prof !61

bb.ci:                                            ; preds = %bb.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i3693194, i64 16, i1 false)
  %i.qt = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 16 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 16 ; 3 uses
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = sub i64 %i.nm, %i.qv                    ; 2 uses
  %i.qx = icmp sgt i64 %i.qw, 15
  br i1 %i.qx, label %.lr.ph3196, label %.preheader1864, !llvm.loop !31

.preheader1862:                                   ; preds = %bb.cn, %.preheader1864
  %.2252.i370.lcssa = phi ptr [ %.1251.i368.lcssa, %.preheader1864 ], [ %i.sf, %bb.cn ] ; 3 uses
  %.2245.i371.lcssa = phi ptr [ %.1244.i369.lcssa, %.preheader1864 ], [ %i.sg, %bb.cn ] ; 5 uses
  %i.qy = icmp ugt ptr %i.nl, %.2245.i371.lcssa
  br i1 %i.qy, label %.lr.ph3207.preheader, label %.preheader1862._crit_edge

.lr.ph3207.preheader:                             ; preds = %.preheader1862
  %.2245.i371.lcssa3727 = ptrtoaddr ptr %.2245.i371.lcssa to i64 ; 2 uses
  %i.qz = getelementptr i8, ptr %.2245.i371.lcssa, i64 %i.t
  %scevgep3726 = getelementptr i8, ptr %i.qz, i64 %i.w
  %i.ra = sub i64 0, %.2245.i371.lcssa3727
  %scevgep3728 = getelementptr i8, ptr %scevgep3726, i64 %i.ra
  %i.rb = sub i64 %i.nn, %.2245.i371.lcssa3727
  %i.rc = freeze i64 %i.rb                        ; 2 uses
  %i.rd = add i64 %i.rc, -1
  %xtraiter6778 = and i64 %i.rc, 3                ; 2 uses
  %lcmp.mod6779.not = icmp eq i64 %xtraiter6778, 0
  br i1 %lcmp.mod6779.not, label %.lr.ph3207.prol.loopexit, label %.lr.ph3207.prol

.lr.ph3207.prol:                                  ; preds = %.lr.ph3207.preheader, %bb.cj
  %.3246.i3733206.prol = phi ptr [ %i.ri, %bb.cj ], [ %.2245.i371.lcssa, %.lr.ph3207.preheader ] ; 3 uses
  %.3253.i3723205.prol = phi ptr [ %i.rj, %bb.cj ], [ %.2252.i370.lcssa, %.lr.ph3207.preheader ] ; 3 uses
  %prol.iter6780 = phi i64 [ %prol.iter6780.next, %bb.cj ], [ 0, %.lr.ph3207.preheader ]
  %i.re = load i8, ptr %.3246.i3733206.prol, align 1, !tbaa !99 ; 2 uses
  %i.rf = zext i8 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.rf
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.rw = zext i8 %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !99
  %.not275.i430 = icmp eq i8 %i.ry, 0
  br i1 %.not275.i430, label %bb.cm, label %.loopexit1867, !prof !61

bb.cm:                                            ; preds = %bb.cl
  %i.rz = getelementptr inbounds nuw i8, ptr %.2245.i3713201, i64 3
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !99
  %i.sb = zext i8 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !99
  %.not276.i433 = icmp eq i8 %i.sd, 0
  br i1 %.not276.i433, label %bb.cn, label %.loopexit1868, !prof !61

bb.cn:                                            ; preds = %bb.cm
  %i.se = load i32, ptr %.2245.i3713201, align 1
  store i32 %i.se, ptr %.2252.i3703200, align 1
  %i.sf = getelementptr inbounds nuw i8, ptr %.2252.i3703200, i64 4 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.2245.i3713201, i64 4 ; 3 uses
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = sub i64 %i.nm, %i.sh
  %i.sj = icmp sgt i64 %i.si, 3
  br i1 %i.sj, label %.lr.ph3202, label %.preheader1862, !llvm.loop !32

.lr.ph3207:                                       ; preds = %.lr.ph3207.prol.loopexit, %bb.co
  %.3246.i3733206 = phi ptr [ %i.tg, %bb.co ], [ %.3246.i3733206.unr, %.lr.ph3207.prol.loopexit ] ; 9 uses
  %.3253.i3723205 = phi ptr [ %i.th, %bb.co ], [ %.3253.i3723205.unr, %.lr.ph3207.prol.loopexit ] ; 6 uses
  %i.sk = load i8, ptr %.3246.i3733206, align 1, !tbaa !99 ; 2 uses
  %i.sl = zext i8 %i.sk to i64
  %i.sm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !99
  %.not.i375 = icmp eq i8 %i.sn, 0
  br i1 %.not.i375, label %.lr.ph3207.1, label %.preheader.preheader, !prof !61

.lr.ph3207.1:                                     ; preds = %.lr.ph3207
  %i.so = getelementptr inbounds nuw i8, ptr %.3246.i3733206, i64 1
  %i.sp = getelementptr inbounds nuw i8, ptr %.3253.i3723205, i64 1 ; 2 uses
  store i8 %i.sk, ptr %.3253.i3723205, align 1, !tbaa !99
  %i.sq = load i8, ptr %i.so, align 1, !tbaa !99  ; 2 uses
  %i.sr = zext i8 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !99
  %.not.i375.1 = icmp eq i8 %i.st, 0
  br i1 %.not.i375.1, label %.lr.ph3207.2, label %.preheader.preheader.loopexit.loopexit.split.loop.exit7502, !prof !61

.lr.ph3207.2:                                     ; preds = %.lr.ph3207.1
  %i.su = getelementptr inbounds nuw i8, ptr %.3246.i3733206, i64 2
  %i.sv = getelementptr inbounds nuw i8, ptr %.3253.i3723205, i64 2 ; 2 uses
  store i8 %i.sq, ptr %i.sp, align 1, !tbaa !99
  %i.sw = load i8, ptr %i.su, align 1, !tbaa !99  ; 2 uses
  %i.sx = zext i8 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !99
  %.not.i375.2 = icmp eq i8 %i.sz, 0
  br i1 %.not.i375.2, label %.lr.ph3207.3, label %.preheader.preheader.loopexit.loopexit.split.loop.exit7499, !prof !61

.lr.ph3207.3:                                     ; preds = %.lr.ph3207.2
  %i.ta = getelementptr inbounds nuw i8, ptr %.3246.i3733206, i64 3
  %i.tb = getelementptr inbounds nuw i8, ptr %.3253.i3723205, i64 3 ; 2 uses
  store i8 %i.sw, ptr %i.sv, align 1, !tbaa !99
  %i.tc = load i8, ptr %i.ta, align 1, !tbaa !99  ; 2 uses
  %i.td = zext i8 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !99
  %.not.i375.3 = icmp eq i8 %i.tf, 0
  br i1 %.not.i375.3, label %bb.co, label %.preheader.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.co:                                            ; preds = %.lr.ph3207.3
  %i.tg = getelementptr inbounds nuw i8, ptr %.3246.i3733206, i64 4 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.3253.i3723205, i64 4 ; 2 uses
  store i8 %i.tc, ptr %i.tb, align 1, !tbaa !99
  %exitcond3729.not.3 = icmp eq ptr %i.tg, %scevgep3728
  br i1 %exitcond3729.not.3, label %.preheader1862._crit_edge, label %.lr.ph3207, !llvm.loop !33

.preheader1862._crit_edge:                        ; preds = %.preheader1862, %bb.co, %.lr.ph3207.prol.loopexit
  %.3253.i372.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph3207.prol.loopexit ], [ %i.th, %bb.co ], [ %.2252.i370.lcssa, %.preheader1862 ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.3253.i372.lcssa, i64 1
  store i8 34, ptr %.3253.i372.lcssa, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

.loopexit1866:                                    ; preds = %bb.bt, %bb.ck
  %i.tj = phi i8 [ %i.rl, %bb.ck ], [ %i.ns, %bb.bt ]
  %.5255.i428 = phi ptr [ %.2252.i3703200, %bb.ck ], [ %.1251.i3683193, %bb.bt ] ; 2 uses
  %.5248.i429 = phi ptr [ %.2245.i3713201, %bb.ck ], [ %.1244.i3693194, %bb.bt ]
  store i8 %i.tj, ptr %.5255.i428, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %.5255.i428, i64 1
  %i.tl = getelementptr inbounds nuw i8, ptr %.5248.i429, i64 1
  br label %.preheader.preheader

.loopexit1867:                                    ; preds = %bb.bu, %bb.cl
  %.6256.i431 = phi ptr [ %.2252.i3703200, %bb.cl ], [ %.1251.i3683193, %bb.bu ] ; 2 uses
  %.6.i432 = phi ptr [ %.2245.i3713201, %bb.cl ], [ %.1244.i3693194, %bb.bu ] ; 2 uses
  %i.tm = load i16, ptr %.6.i432, align 1
  store i16 %i.tm, ptr %.6256.i431, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %.6256.i431, i64 2
  %i.to = getelementptr inbounds nuw i8, ptr %.6.i432, i64 2
  br label %.preheader.preheader

.loopexit1868:                                    ; preds = %bb.bv, %bb.cm
  %.7257.i434 = phi ptr [ %.2252.i3703200, %bb.cm ], [ %.1251.i3683193, %bb.bv ] ; 2 uses
  %.7.i435 = phi ptr [ %.2245.i3713201, %bb.cm ], [ %.1244.i3693194, %bb.bv ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i434, ptr noundef nonnull align 1 dereferenceable(3) %.7.i435, i64 3, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %.7257.i434, i64 3
  %i.tq = getelementptr inbounds nuw i8, ptr %.7.i435, i64 3
  br label %.preheader.preheader

bb.cp:                                            ; preds = %bb.bw
  %i.tr = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 4
  %i.ts = load i32, ptr %.1244.i3693194, align 1
  store i32 %i.ts, ptr %.1251.i3683193, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 4
  br label %.preheader.preheader

bb.cq:                                            ; preds = %bb.bx
  %i.tu = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i3693194, i64 5, i1 false)
  %i.tv = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 5
  br label %.preheader.preheader

bb.cr:                                            ; preds = %bb.by
  %i.tw = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i3693194, i64 6, i1 false)
  %i.tx = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 6
  br label %.preheader.preheader

bb.cs:                                            ; preds = %bb.bz
  %i.ty = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i3693194, i64 7, i1 false)
  %i.tz = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 7
  br label %.preheader.preheader

bb.ct:                                            ; preds = %bb.ca
  %i.ua = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 8
  %i.ub = load i64, ptr %.1244.i3693194, align 1
  store i64 %i.ub, ptr %.1251.i3683193, align 1
  %i.uc = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 8
  br label %.preheader.preheader

bb.cu:                                            ; preds = %bb.cb
  %i.ud = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i3693194, i64 9, i1 false)
  %i.ue = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 9
  br label %.preheader.preheader

bb.cv:                                            ; preds = %bb.cc
  %i.uf = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i3693194, i64 10, i1 false)
  %i.ug = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 10
  br label %.preheader.preheader

bb.cw:                                            ; preds = %bb.cd
  %i.uh = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i3693194, i64 11, i1 false)
  %i.ui = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 11
  br label %.preheader.preheader

bb.cx:                                            ; preds = %bb.ce
  %i.uj = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i3693194, i64 12, i1 false)
  %i.uk = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 12
  br label %.preheader.preheader

bb.cy:                                            ; preds = %bb.cf
  %i.ul = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i3693194, i64 13, i1 false)
  %i.um = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 13
  br label %.preheader.preheader

bb.cz:                                            ; preds = %bb.cg
  %i.un = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i3693194, i64 14, i1 false)
  %i.uo = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 14
  br label %.preheader.preheader

bb.da:                                            ; preds = %bb.ch
  %i.up = getelementptr inbounds nuw i8, ptr %.1244.i3693194, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i3683193, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i3693194, i64 15, i1 false)
  %i.uq = getelementptr inbounds nuw i8, ptr %.1251.i3683193, i64 15
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph3207.3
  %i.ur = getelementptr inbounds nuw i8, ptr %.3246.i3733206, i64 3
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit7499: ; preds = %.lr.ph3207.2
  %i.us = getelementptr inbounds nuw i8, ptr %.3246.i3733206, i64 2
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit7502: ; preds = %.lr.ph3207.1
  %i.ut = getelementptr inbounds nuw i8, ptr %.3246.i3733206, i64 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph3196, %.lr.ph3202, %.lr.ph3207, %.preheader.preheader.loopexit.loopexit.split.loop.exit7502, %.preheader.preheader.loopexit.loopexit.split.loop.exit7499, %.preheader.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph3207.prol, %.loopexit1866, %.loopexit1867, %.loopexit1868, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da
  %.8258.i378.ph = phi ptr [ %.2252.i3703200, %.lr.ph3202 ], [ %.3253.i3723205.prol, %.lr.ph3207.prol ], [ %i.tk, %.loopexit1866 ], [ %i.tn, %.loopexit1867 ], [ %i.tp, %.loopexit1868 ], [ %i.tt, %bb.cp ], [ %i.tv, %bb.cq ], [ %i.tx, %bb.cr ], [ %i.tz, %bb.cs ], [ %i.uc, %bb.ct ], [ %i.ue, %bb.cu ], [ %i.ug, %bb.cv ], [ %i.ui, %bb.cw ], [ %i.uk, %bb.cx ], [ %i.um, %bb.cy ], [ %i.uo, %bb.cz ], [ %i.uq, %bb.da ], [ %.3253.i3723205, %.lr.ph3207 ], [ %i.sp, %.preheader.preheader.loopexit.loopexit.split.loop.exit7502 ], [ %i.sv, %.preheader.preheader.loopexit.loopexit.split.loop.exit7499 ], [ %i.tb, %.preheader.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i3683193, %.lr.ph3196 ]
  %.8.i379.ph = phi ptr [ %.2245.i3713201, %.lr.ph3202 ], [ %.3246.i3733206.prol, %.lr.ph3207.prol ], [ %i.tl, %.loopexit1866 ], [ %i.to, %.loopexit1867 ], [ %i.tq, %.loopexit1868 ], [ %i.tr, %bb.cp ], [ %i.tu, %bb.cq ], [ %i.tw, %bb.cr ], [ %i.ty, %bb.cs ], [ %i.ua, %bb.ct ], [ %i.ud, %bb.cu ], [ %i.uf, %bb.cv ], [ %i.uh, %bb.cw ], [ %i.uj, %bb.cx ], [ %i.ul, %bb.cy ], [ %i.un, %bb.cz ], [ %i.up, %bb.da ], [ %.3246.i3733206, %.lr.ph3207 ], [ %i.ut, %.preheader.preheader.loopexit.loopexit.split.loop.exit7502 ], [ %i.us, %.preheader.preheader.loopexit.loopexit.split.loop.exit7499 ], [ %i.ur, %.preheader.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i3693194, %.lr.ph3196 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %.8258.i378 = phi ptr [ %.8258.i378.ph, %.preheader.preheader ], [ %.8258.i378.be, %.preheader.backedge ] ; 35 uses
  %.8.i379 = phi ptr [ %.8.i379.ph, %.preheader.preheader ], [ %.8.i379.be, %.preheader.backedge ] ; 23 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.8.i379, i64 4 ; 3 uses
  %i.uv = icmp ugt ptr %i.uu, %i.nl               ; 2 uses
  br i1 %i.uv, label %bb.db, label %._crit_edge3780, !prof !44

._crit_edge3780:                                  ; preds = %.preheader
  %.pre3781.a = load i8, ptr %.8.i379, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert3782 = zext i8 %.pre3781.a to i64 ; 2 uses
  %.phi.trans.insert3783 = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %.phi.trans.insert3782
  %.pre3784 = load i8, ptr %.phi.trans.insert3783, align 1, !tbaa !99
  br label %bb.dc

bb.db:                                            ; preds = %.preheader
  %i.uw = ptrtoint ptr %.8.i379 to i64
  %i.ux = sub i64 %i.nm, %i.uw
  %i.uy = load i8, ptr %.8.i379, align 1, !tbaa !99 ; 3 uses
  %i.uz = zext i8 %i.uy to i64                    ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !99  ; 2 uses
  %i.vc = lshr i8 %i.vb, 1
  %i.vd = zext nneg i8 %i.vc to i64
  %i.ve = icmp slt i64 %i.ux, %i.vd
  br i1 %i.ve, label %bb.dw, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge3780, %bb.db
  %.pre-phi3786 = phi i64 [ %.phi.trans.insert3782, %._crit_edge3780 ], [ %i.uz, %bb.db ]
  %i.vf = phi i8 [ %.pre3784, %._crit_edge3780 ], [ %i.vb, %bb.db ]
  %i.vg = phi i8 [ %.pre3781.a, %._crit_edge3780 ], [ %i.uy, %bb.db ] ; 2 uses
  switch i8 %i.vf, label %bb.dv [
    i8 0, label %bb.dd
    i8 4, label %bb.de
    i8 6, label %bb.dg
    i8 8, label %bb.dl
    i8 2, label %bb.dn
    i8 3, label %bb.do
    i8 5, label %bb.dp
    i8 7, label %bb.dr
    i8 9, label %bb.dt
    i8 1, label %bb.dw
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.vh = getelementptr inbounds nuw i8, ptr %.8.i379, i64 1
  store i8 %i.vg, ptr %.8258.i378, align 1, !tbaa !99
  br label %bb.bs

bb.de:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i558 = load i16, ptr %.8.i379, align 1 ; 3 uses
  %i.vi = zext i16 %.sroa.0.0.copyload.i558 to i32 ; 2 uses
  %i.vj = and i32 %i.vi, 49376
  %i.vk = icmp ne i32 %i.vj, 32960
  %i.vl = and i32 %i.vi, 30
  %i.vm = icmp eq i32 %i.vl, 0
  %.not315.i422 = or i1 %i.vk, %i.vm
  %i.vn = trunc i16 %.sroa.0.0.copyload.i558 to i8
  br i1 %.not315.i422, label %.thread1630, label %bb.df, !prof !44

bb.df:                                            ; preds = %bb.de
  store i16 %.sroa.0.0.copyload.i558, ptr %.8258.i378, align 1
  %i.vo = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 2
  %i.vp = getelementptr inbounds nuw i8, ptr %.8.i379, i64 2
  br label %.preheader.backedge

bb.dg:                                            ; preds = %bb.dc
  br i1 %i.uv, label %bb.dj, label %bb.dh, !prof !44

bb.dh:                                            ; preds = %bb.dg
  %.sroa.0.0.copyload.i333.i417 = load i32, ptr %.8.i379, align 1 ; 4 uses
  %i.vq = and i32 %.sroa.0.0.copyload.i333.i417, 12632304
  %i.vr = icmp eq i32 %i.vq, 8421600
  %i.vs = trunc i32 %.sroa.0.0.copyload.i333.i417 to i8 ; 3 uses
  br i1 %i.vr, label %bb.di, label %.thread1630, !prof !61

bb.di:                                            ; preds = %bb.dh
  %i.vt = and i32 %.sroa.0.0.copyload.i333.i417, 8207
  switch i32 %i.vt, label %.critedge.i418 [
    i32 8205, label %.thread1630
    i32 0, label %.thread1630
  ], !prof !150

bb.dj:                                            ; preds = %bb.dg
  %.sroa.0.0.copyload.i574 = load i16, ptr %.8.i379, align 1 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.8.i379, i64 2
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i575 = zext i8 %i.vv to i32
  %.sroa.4.0.insert.shift.i576 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i575, 16
  %.sroa.0.0.insert.ext.i577 = zext i16 %.sroa.0.0.copyload.i574 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i578 = or disjoint i32 %.sroa.4.0.insert.shift.i576, %.sroa.0.0.insert.ext.i577 ; 2 uses
  %i.vw = and i32 %.sroa.0.0.insert.insert.i578, 12632304
  %i.vx = icmp eq i32 %i.vw, 8421600
  %i.vy = trunc i16 %.sroa.0.0.copyload.i574 to i8 ; 3 uses
  br i1 %i.vx, label %bb.dk, label %.thread1630, !prof !61

bb.dk:                                            ; preds = %bb.dj
  %i.vz = and i32 %.sroa.0.0.insert.ext.i577, 8207
  switch i32 %i.vz, label %.critedge.i418 [
    i32 8205, label %.thread1630
    i32 0, label %.thread1630
  ], !prof !150

.critedge.i418:                                   ; preds = %bb.dk, %bb.di
  %storemerge1832 = phi i32 [ %.sroa.0.0.copyload.i333.i417, %bb.di ], [ %.sroa.0.0.insert.insert.i578, %bb.dk ]
  store i32 %storemerge1832, ptr %.8258.i378, align 1
  %i.wa = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 3
  %i.wb = getelementptr inbounds nuw i8, ptr %.8.i379, i64 3
  br label %.preheader.backedge

bb.dl:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i332.i408 = load i32, ptr %.8.i379, align 1 ; 6 uses
  %i.wc = and i32 %.sroa.0.0.copyload.i332.i408, -1061109512
  %i.wd = icmp ne i32 %i.wc, -2139062032
  %i.we = and i32 %.sroa.0.0.copyload.i332.i408, 12295
  %.not306.i409 = icmp eq i32 %i.we, 0
  %or.cond.i410 = or i1 %i.wd, %.not306.i409
  %i.wf = trunc i32 %.sroa.0.0.copyload.i332.i408 to i8 ; 2 uses
  br i1 %or.cond.i410, label %.thread1630, label %bb.dm, !prof !151

bb.dm:                                            ; preds = %bb.dl
  %i.wg = and i32 %.sroa.0.0.copyload.i332.i408, 4
  %i.wh = icmp ne i32 %i.wg, 0
  %i.wi = and i32 %.sroa.0.0.copyload.i332.i408, 12291
  %i.wj = icmp ne i32 %i.wi, 0
  %.not309.i411 = and i1 %i.wh, %i.wj
  br i1 %.not309.i411, label %.thread1630, label %.critedge321.i412, !prof !44

.critedge321.i412:                                ; preds = %bb.dm
  store i32 %.sroa.0.0.copyload.i332.i408, ptr %.8258.i378, align 1
  %i.wk = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 4
  br label %.preheader.backedge

bb.dn:                                            ; preds = %bb.dc
  %i.wl = shl nuw nsw i64 %.pre-phi3786, 1
  %i.wm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.wl
  %i.wn = load i16, ptr %i.wm, align 2
  store i16 %i.wn, ptr %.8258.i378, align 1
  %i.wo = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 2
  %i.wp = getelementptr inbounds nuw i8, ptr %.8.i379, i64 1
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.dn, %bb.do, %bb.dx, %bb.dy, %bb.df, %.critedge.i418, %.critedge321.i412, %bb.dq, %.critedge326.i394, %.critedge330.i390
  %.8258.i378.be = phi ptr [ %i.aaq, %bb.dx ], [ %i.vo, %bb.df ], [ %i.wa, %.critedge.i418 ], [ %i.wk, %.critedge321.i412 ], [ %i.wo, %bb.dn ], [ %i.ww, %bb.do ], [ %i.xs, %bb.dq ], [ %i.yp, %.critedge326.i394 ], [ %i.aal, %.critedge330.i390 ], [ %i.aas, %bb.dy ]
  %.8.i379.be = phi ptr [ %i.aap, %bb.dx ], [ %i.vp, %bb.df ], [ %i.wb, %.critedge.i418 ], [ %i.uu, %.critedge321.i412 ], [ %i.wp, %bb.dn ], [ %i.wx, %bb.do ], [ %i.xt, %bb.dq ], [ %i.yq, %.critedge326.i394 ], [ %i.uu, %.critedge330.i390 ], [ %i.aat, %bb.dy ]
  br label %.preheader

bb.do:                                            ; preds = %bb.dc
  store i32 808482140, ptr %.8258.i378, align 1
  %i.wq = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 4
  %i.wr = load i8, ptr %.8.i379, align 1, !tbaa !99
  %i.ws = zext i8 %i.wr to i64
  %i.wt = shl nuw nsw i64 %i.ws, 1
  %i.wu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.wt
  %i.wv = load i16, ptr %i.wu, align 2
  store i16 %i.wv, ptr %i.wq, align 1
  %i.ww = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 6
  %i.wx = getelementptr inbounds nuw i8, ptr %.8.i379, i64 1
  br label %.preheader.backedge

bb.dp:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i559 = load i16, ptr %.8.i379, align 1 ; 3 uses
  %i.wy = zext i16 %.sroa.0.0.copyload.i559 to i32 ; 2 uses
  %i.wz = and i32 %i.wy, 49376
  %i.xa = icmp ne i32 %i.wz, 32960
  %i.xb = and i32 %i.wy, 30
  %i.xc = icmp eq i32 %i.xb, 0
  %.not303.i402 = or i1 %i.xa, %i.xc
  br i1 %.not303.i402, label %.thread1640, label %bb.dq, !prof !44

bb.dq:                                            ; preds = %bb.dp
  %i.xd = lshr i16 %.sroa.0.0.copyload.i559, 8
  %i.xe = trunc nuw i16 %i.xd to i8
  %i.xf = trunc i16 %.sroa.0.0.copyload.i559 to i8 ; 2 uses
  %.tr304.i403 = shl i8 %i.xf, 6
  %i.xg = and i8 %i.xe, 63
  store i16 30044, ptr %.8258.i378, align 1
  %i.xh = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 2
  %i.xi = lshr i8 %i.xf, 1
  %i.xj = and i8 %i.xi, 14
  %i.xk = zext nneg i8 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.xk
  %i.xm = load i16, ptr %i.xl, align 2
  store i16 %i.xm, ptr %i.xh, align 1
  %i.xn = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 4
  %.narrow305.i404 = or disjoint i8 %i.xg, %.tr304.i403
  %i.xo = zext i8 %.narrow305.i404 to i64
  %i.xp = shl nuw nsw i64 %i.xo, 1
  %i.xq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.xp
  %i.xr = load i16, ptr %i.xq, align 2
  store i16 %i.xr, ptr %i.xn, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 6
  %i.xt = getelementptr inbounds nuw i8, ptr %.8.i379, i64 2
  br label %.preheader.backedge

bb.dr:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i579 = load i16, ptr %.8.i379, align 1 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.8.i379, i64 2
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !99  ; 2 uses
  %.sroa.4.0.insert.ext.i580 = zext i8 %i.xv to i32
  %.sroa.4.0.insert.shift.i581 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i580, 16
  %.sroa.0.0.insert.ext.i582 = zext i16 %.sroa.0.0.copyload.i579 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i583 = or disjoint i32 %.sroa.4.0.insert.shift.i581, %.sroa.0.0.insert.ext.i582
  %i.xw = and i32 %.sroa.0.0.insert.insert.i583, 12632304
  %i.xx = icmp eq i32 %i.xw, 8421600
  br i1 %i.xx, label %bb.ds, label %.thread1640, !prof !61

bb.ds:                                            ; preds = %bb.dr
  %i.xy = and i32 %.sroa.0.0.insert.ext.i582, 8207
  switch i32 %i.xy, label %.critedge326.i394 [
    i32 8205, label %.thread1640
    i32 0, label %.thread1640
  ], !prof !150

.critedge326.i394:                                ; preds = %bb.ds
  %i.xz = zext i16 %.sroa.0.0.copyload.i579 to i64
  %i.ya = shl nuw nsw i64 %i.xz, 12
  %i.yb = lshr i16 %.sroa.0.0.copyload.i579, 2
  %i.yc = and i16 %i.yb, 4032                     ; 2 uses
  %i.yd = zext nneg i16 %i.yc to i64
  %i.ye = and i8 %i.xv, 63
  store i16 30044, ptr %.8258.i378, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 2
  %.masked.i399 = or disjoint i64 %i.ya, %i.yd
  %i.yg = lshr i64 %.masked.i399, 7
  %i.yh = and i64 %i.yg, 510
  %i.yi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.yh
  %i.yj = load i16, ptr %i.yi, align 2
  store i16 %i.yj, ptr %i.yf, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 4
  %.tr299.i400 = trunc i16 %i.yc to i8
  %.narrow300.i401 = or disjoint i8 %i.ye, %.tr299.i400
  %i.yl = zext i8 %.narrow300.i401 to i64
  %i.ym = shl nuw nsw i64 %i.yl, 1
  %i.yn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.ym
  %i.yo = load i16, ptr %i.yn, align 2
  store i16 %i.yo, ptr %i.yk, align 1
  %i.yp = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 6
  %i.yq = getelementptr inbounds nuw i8, ptr %.8.i379, i64 3
  br label %.preheader.backedge

bb.dt:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i.i384 = load i32, ptr %.8.i379, align 1 ; 9 uses
  %i.yr = and i32 %.sroa.0.0.copyload.i.i384, -1061109512
  %i.ys = icmp ne i32 %i.yr, -2139062032
  %i.yt = and i32 %.sroa.0.0.copyload.i.i384, 12295
  %.not293.i385 = icmp eq i32 %i.yt, 0
  %or.cond328.i386 = or i1 %i.ys, %.not293.i385
  %i.yu = lshr i32 %.sroa.0.0.copyload.i.i384, 24
  br i1 %or.cond328.i386, label %.thread1640, label %bb.du, !prof !151

bb.du:                                            ; preds = %bb.dt
  %i.yv = and i32 %.sroa.0.0.copyload.i.i384, 4
  %i.yw = icmp ne i32 %i.yv, 0
  %i.yx = and i32 %.sroa.0.0.copyload.i.i384, 12291
  %i.yy = icmp ne i32 %i.yx, 0
  %.not296.i387 = and i1 %i.yw, %i.yy
  br i1 %.not296.i387, label %.thread1640, label %.critedge330.i390, !prof !44

.critedge330.i390:                                ; preds = %bb.du
  %i.yz = shl i32 %.sroa.0.0.copyload.i.i384, 18
  %i.za = and i32 %i.yz, 1835008
  %i.zb = shl i32 %.sroa.0.0.copyload.i.i384, 4
  %i.zc = and i32 %i.zb, 258048
  %i.zd = lshr i32 %.sroa.0.0.copyload.i.i384, 10 ; 2 uses
  %i.ze = and i32 %i.zd, 3072
  %i.zf = and i32 %i.yu, 63
  %i.zg = add nsw i32 %i.za, -65536
  %i.zh = add nsw i32 %i.zg, %i.zc                ; 2 uses
  %i.zi = or disjoint i32 %i.zh, %i.ze
  %i.zj = lshr exact i32 %i.zh, 10
  %i.zk = add nuw nsw i32 %i.zj, 55296
  store i16 30044, ptr %.8258.i378, align 1
  %i.zl = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 2
  %i.zm = lshr i32 %i.zk, 7
  %i.zn = and i32 %i.zm, 65534
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.zo
  %i.zq = load i16, ptr %i.zp, align 2
  store i16 %i.zq, ptr %i.zl, align 1
  %i.zr = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 4
  %i.zs = lshr exact i32 %i.zi, 9
  %i.zt = and i32 %i.zs, 510
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.zu
  %i.zw = load i16, ptr %i.zv, align 2
  store i16 %i.zw, ptr %i.zr, align 1
  %i.zx = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 6
  store i16 30044, ptr %i.zx, align 1
  %i.zy = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 8
  %i.zz = lshr i32 %.sroa.0.0.copyload.i.i384, 17
  %i.aaa = and i32 %i.zz, 6
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 440
  %i.aae = load i16, ptr %i.aad, align 2
  store i16 %i.aae, ptr %i.zy, align 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 10
  %.masked3963.a = and i32 %i.zd, 192
  %i.aag = or disjoint i32 %i.zf, %.masked3963.a
  %i.aah = shl nuw nsw i32 %i.aag, 1
  %i.aai = zext nneg i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.aai
  %i.aak = load i16, ptr %i.aaj, align 2
  store i16 %i.aak, ptr %i.aaf, align 1
  %i.aal = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 12
  br label %.preheader.backedge

bb.dv:                                            ; preds = %bb.dc
  %i.aam = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 1
  store i8 34, ptr %.8258.i378, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.dw:                                            ; preds = %bb.dc, %bb.db
  %i.aan = phi i8 [ %i.vg, %bb.dc ], [ %i.uy, %bb.db ]
  br i1 %.not1811, label %.thread1630, label %.thread1640

.thread1630:                                      ; preds = %bb.dl, %bb.dm, %bb.dj, %bb.dh, %bb.dk, %bb.dk, %bb.di, %bb.di, %bb.de, %bb.dw
  %i.aao = phi i8 [ %i.wf, %bb.dl ], [ %i.wf, %bb.dm ], [ %i.vy, %bb.dj ], [ %i.vs, %bb.dh ], [ %i.vy, %bb.dk ], [ %i.vy, %bb.dk ], [ %i.vs, %bb.di ], [ %i.vs, %bb.di ], [ %i.vn, %bb.de ], [ %i.aan, %bb.dw ]
  br i1 %.not1814, label %.loopexit, label %bb.dx

bb.dx:                                            ; preds = %.thread1630
  %i.aap = getelementptr inbounds nuw i8, ptr %.8.i379, i64 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 1
  store i8 %i.aao, ptr %.8258.i378, align 1, !tbaa !99
  br label %.preheader.backedge

.thread1640:                                      ; preds = %bb.dt, %bb.du, %bb.dr, %bb.ds, %bb.ds, %bb.dp, %bb.dw
  br i1 %.not1814, label %.loopexit, label %bb.dy

bb.dy:                                            ; preds = %.thread1640
  store i16 30044, ptr %.8258.i378, align 1
  %i.aar = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 2
  store i32 1145456198, ptr %i.aar, align 1
  %i.aas = getelementptr inbounds nuw i8, ptr %.8258.i378, i64 6
  %i.aat = getelementptr inbounds nuw i8, ptr %.8.i379, i64 1
  br label %.preheader.backedge

bb.dz:                                            ; preds = %bb.br
  %i.aau = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.aav = icmp ugt i64 %i.c, 4095
  br i1 %i.aav, label %.lr.ph3164, label %.preheader1874

.preheader1874:                                   ; preds = %.lr.ph3164, %bb.dz
  %.021.i75.lcssa = phi ptr [ %i.aau, %bb.dz ], [ %i.abk, %.lr.ph3164 ] ; 5 uses
  %.018.i76.lcssa = phi ptr [ %i.v, %bb.dz ], [ %i.abl, %.lr.ph3164 ] ; 5 uses
  %.0.i77.lcssa = phi i64 [ %i.t, %bb.dz ], [ %i.abm, %.lr.ph3164 ] ; 5 uses
  %i.aaw = icmp samesign ugt i64 %.0.i77.lcssa, 3
  br i1 %i.aaw, label %.lr.ph3171.preheader, label %.preheader1873

.lr.ph3171.preheader:                             ; preds = %.preheader1874
  %.018.i76.lcssa6021 = ptrtoaddr ptr %.018.i76.lcssa to i64
  %.021.i75.lcssa6020 = ptrtoaddr ptr %.021.i75.lcssa to i64
  %i.aax = add nsw i64 %.0.i77.lcssa, -4          ; 2 uses
  %i.aay = lshr i64 %i.aax, 2
  %i.aaz = add nuw nsw i64 %i.aay, 1              ; 2 uses
  %min.iters.check6024 = icmp ult i64 %i.aax, 28
  %i.aba = sub i64 %.018.i76.lcssa6021, %.021.i75.lcssa6020
  %diff.check6022 = icmp ugt i64 %i.aba, -32
  %or.cond6079 = select i1 %min.iters.check6024, i1 true, i1 %diff.check6022
  br i1 %or.cond6079, label %.lr.ph3171.preheader6165, label %vector.ph6025

vector.ph6025:                                    ; preds = %.lr.ph3171.preheader
  %n.vec6026 = and i64 %i.aaz, 9223372036854775800 ; 4 uses
  %i.abb = shl i64 %n.vec6026, 2
  %i.abc = sub i64 %.0.i77.lcssa, %i.abb          ; 2 uses
  %i.abd = shl i64 %n.vec6026, 2                  ; 2 uses
  %i.abe = getelementptr i8, ptr %.018.i76.lcssa, i64 %i.abd ; 2 uses
  %i.abf = getelementptr i8, ptr %.021.i75.lcssa, i64 %i.abd ; 2 uses
  br label %vector.body6027

vector.body6027:                                  ; preds = %vector.body6027, %vector.ph6025
  %index6028 = phi i64 [ 0, %vector.ph6025 ], [ %index.next6033, %vector.body6027 ] ; 2 uses
  %i.abg = shl i64 %index6028, 2                  ; 2 uses
  %next.gep6029 = getelementptr i8, ptr %.018.i76.lcssa, i64 %i.abg ; 2 uses
  %next.gep6030 = getelementptr i8, ptr %.021.i75.lcssa, i64 %i.abg ; 2 uses
  %i.abh = getelementptr i8, ptr %next.gep6029, i64 16
  %wide.load6031 = load <4 x i32>, ptr %next.gep6029, align 1
  %wide.load6032 = load <4 x i32>, ptr %i.abh, align 1
  %i.abi = getelementptr i8, ptr %next.gep6030, i64 16
  store <4 x i32> %wide.load6031, ptr %next.gep6030, align 1
  store <4 x i32> %wide.load6032, ptr %i.abi, align 1
  %index.next6033 = add nuw i64 %index6028, 8     ; 2 uses
  %i.abj = icmp eq i64 %index.next6033, %n.vec6026
  br i1 %i.abj, label %middle.block6034, label %vector.body6027, !llvm.loop !295

middle.block6034:                                 ; preds = %vector.body6027
  %cmp.n6035 = icmp eq i64 %i.aaz, %n.vec6026
  br i1 %cmp.n6035, label %.preheader1873, label %.lr.ph3171.preheader6165

.lr.ph3171.preheader6165:                         ; preds = %.lr.ph3171.preheader, %middle.block6034
  %.1.i803170.ph = phi i64 [ %.0.i77.lcssa, %.lr.ph3171.preheader ], [ %i.abc, %middle.block6034 ]
  %.119.i793169.ph = phi ptr [ %.018.i76.lcssa, %.lr.ph3171.preheader ], [ %i.abe, %middle.block6034 ]
  %.122.i783168.ph = phi ptr [ %.021.i75.lcssa, %.lr.ph3171.preheader ], [ %i.abf, %middle.block6034 ]
  br label %.lr.ph3171

.lr.ph3164:                                       ; preds = %bb.dz, %.lr.ph3164
  %.0.i773162 = phi i64 [ %i.abm, %.lr.ph3164 ], [ %i.t, %bb.dz ]
  %.018.i763161 = phi ptr [ %i.abl, %.lr.ph3164 ], [ %i.v, %bb.dz ] ; 2 uses
  %.021.i753160 = phi ptr [ %i.abk, %.lr.ph3164 ], [ %i.aau, %bb.dz ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i753160, ptr noundef nonnull align 1 dereferenceable(16) %.018.i763161, i64 16, i1 false)
  %i.abk = getelementptr inbounds nuw i8, ptr %.021.i753160, i64 16 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.018.i763161, i64 16 ; 2 uses
  %i.abm = add nsw i64 %.0.i773162, -16           ; 3 uses
  %i.abn = icmp ugt i64 %i.abm, 15
  br i1 %i.abn, label %.lr.ph3164, label %.preheader1874, !llvm.loop !34

.preheader1873:                                   ; preds = %.lr.ph3171, %middle.block6034, %.preheader1874
  %.122.i78.lcssa = phi ptr [ %.021.i75.lcssa, %.preheader1874 ], [ %i.abf, %middle.block6034 ], [ %i.ach, %.lr.ph3171 ] ; 7 uses
  %.119.i79.lcssa = phi ptr [ %.018.i76.lcssa, %.preheader1874 ], [ %i.abe, %middle.block6034 ], [ %i.aci, %.lr.ph3171 ] ; 6 uses
  %.1.i80.lcssa = phi i64 [ %.0.i77.lcssa, %.preheader1874 ], [ %i.abc, %middle.block6034 ], [ %i.acj, %.lr.ph3171 ] ; 11 uses
  %.not.i843175 = icmp eq i64 %.1.i80.lcssa, 0
  br i1 %.not.i843175, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %iter.check6062

iter.check6062:                                   ; preds = %.preheader1873
  %.119.i79.lcssa6041 = ptrtoaddr ptr %.119.i79.lcssa to i64
  %.122.i78.lcssa6040 = ptrtoaddr ptr %.122.i78.lcssa to i64
  %min.iters.check6044 = icmp ult i64 %.1.i80.lcssa, 4
  %i.abo = sub i64 %.119.i79.lcssa6041, %.122.i78.lcssa6040
  %diff.check6042 = icmp ugt i64 %i.abo, -32
  %or.cond6080 = select i1 %min.iters.check6044, i1 true, i1 %diff.check6042
  br i1 %or.cond6080, label %.lr.ph3179.preheader, label %vector.main.loop.iter.check6045

vector.main.loop.iter.check6045:                  ; preds = %iter.check6062
  %min.iters.check6046 = icmp ult i64 %.1.i80.lcssa, 32
  br i1 %min.iters.check6046, label %vec.epilog.ph6066, label %vector.ph6047

vector.ph6047:                                    ; preds = %vector.main.loop.iter.check6045
  %i.abp = and i64 %.1.i80.lcssa, 28
  %n.vec6048 = and i64 %.1.i80.lcssa, -32         ; 5 uses
  %i.abq = and i64 %.1.i80.lcssa, 31
  %i.abr = getelementptr i8, ptr %.119.i79.lcssa, i64 %n.vec6048
  %i.abs = getelementptr i8, ptr %.122.i78.lcssa, i64 %n.vec6048 ; 2 uses
  br label %vector.body6049

vector.body6049:                                  ; preds = %vector.body6049, %vector.ph6047
  %index6050 = phi i64 [ 0, %vector.ph6047 ], [ %index.next6055, %vector.body6049 ] ; 3 uses
  %next.gep6051 = getelementptr i8, ptr %.119.i79.lcssa, i64 %index6050 ; 2 uses
  %next.gep6052 = getelementptr i8, ptr %.122.i78.lcssa, i64 %index6050 ; 2 uses
  %i.abt = getelementptr i8, ptr %next.gep6051, i64 16
  %wide.load6053 = load <16 x i8>, ptr %next.gep6051, align 1, !tbaa !99
  %wide.load6054 = load <16 x i8>, ptr %i.abt, align 1, !tbaa !99
  %i.abu = getelementptr i8, ptr %next.gep6052, i64 16
  store <16 x i8> %wide.load6053, ptr %next.gep6052, align 1, !tbaa !99
  store <16 x i8> %wide.load6054, ptr %i.abu, align 1, !tbaa !99
  %index.next6055 = add nuw i64 %index6050, 32    ; 2 uses
  %i.abv = icmp eq i64 %index.next6055, %n.vec6048
  br i1 %i.abv, label %middle.block6056, label %vector.body6049, !llvm.loop !296

middle.block6056:                                 ; preds = %vector.body6049
  %cmp.n6057 = icmp eq i64 %.1.i80.lcssa, %n.vec6048
  br i1 %cmp.n6057, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %vec.epilog.iter.check6064

vec.epilog.iter.check6064:                        ; preds = %middle.block6056
  %min.epilog.iters.check6065 = icmp eq i64 %i.abp, 0
  br i1 %min.epilog.iters.check6065, label %.lr.ph3179.preheader, label %vec.epilog.ph6066, !prof !152

vec.epilog.ph6066:                                ; preds = %vector.main.loop.iter.check6045, %vec.epilog.iter.check6064
  %vec.epilog.resume.val6058 = phi i64 [ %n.vec6048, %vec.epilog.iter.check6064 ], [ 0, %vector.main.loop.iter.check6045 ]
  %n.vec6067 = and i64 %.1.i80.lcssa, -4          ; 4 uses
  %i.abw = and i64 %.1.i80.lcssa, 3
  %i.abx = getelementptr i8, ptr %.119.i79.lcssa, i64 %n.vec6067
  %i.aby = getelementptr i8, ptr %.122.i78.lcssa, i64 %n.vec6067 ; 2 uses
  br label %vec.epilog.vector.body6068

vec.epilog.vector.body6068:                       ; preds = %vec.epilog.vector.body6068, %vec.epilog.ph6066
  %index6069 = phi i64 [ %vec.epilog.resume.val6058, %vec.epilog.ph6066 ], [ %index.next6073, %vec.epilog.vector.body6068 ] ; 3 uses
  %next.gep6070 = getelementptr i8, ptr %.119.i79.lcssa, i64 %index6069
  %next.gep6071 = getelementptr i8, ptr %.122.i78.lcssa, i64 %index6069
  %wide.load6072 = load <4 x i8>, ptr %next.gep6070, align 1, !tbaa !99
  store <4 x i8> %wide.load6072, ptr %next.gep6071, align 1, !tbaa !99
  %index.next6073 = add nuw i64 %index6069, 4     ; 2 uses
  %i.abz = icmp eq i64 %index.next6073, %n.vec6067
  br i1 %i.abz, label %vec.epilog.middle.block6074, label %vec.epilog.vector.body6068, !llvm.loop !297

vec.epilog.middle.block6074:                      ; preds = %vec.epilog.vector.body6068
  %cmp.n6075 = icmp eq i64 %.1.i80.lcssa, %n.vec6067
  br i1 %cmp.n6075, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179.preheader

.lr.ph3179.preheader:                             ; preds = %iter.check6062, %vec.epilog.iter.check6064, %vec.epilog.middle.block6074
  %.2.i833178.ph = phi i64 [ %.1.i80.lcssa, %iter.check6062 ], [ %i.abq, %vec.epilog.iter.check6064 ], [ %i.abw, %vec.epilog.middle.block6074 ] ; 4 uses
  %.220.i823177.ph = phi ptr [ %.119.i79.lcssa, %iter.check6062 ], [ %i.abr, %vec.epilog.iter.check6064 ], [ %i.abx, %vec.epilog.middle.block6074 ] ; 2 uses
  %.223.i813176.ph = phi ptr [ %.122.i78.lcssa, %iter.check6062 ], [ %i.abs, %vec.epilog.iter.check6064 ], [ %i.aby, %vec.epilog.middle.block6074 ] ; 2 uses
  %i.aca = add nsw i64 %.2.i833178.ph, -1
  %xtraiter6775 = and i64 %.2.i833178.ph, 7       ; 2 uses
  %lcmp.mod6776.not = icmp eq i64 %xtraiter6775, 0
  br i1 %lcmp.mod6776.not, label %.lr.ph3179.prol.loopexit, label %.lr.ph3179.prol

.lr.ph3179.prol:                                  ; preds = %.lr.ph3179.preheader, %.lr.ph3179.prol
  %.2.i833178.prol = phi i64 [ %i.ace, %.lr.ph3179.prol ], [ %.2.i833178.ph, %.lr.ph3179.preheader ]
  %.220.i823177.prol = phi ptr [ %i.acb, %.lr.ph3179.prol ], [ %.220.i823177.ph, %.lr.ph3179.preheader ] ; 2 uses
  %.223.i813176.prol = phi ptr [ %i.acd, %.lr.ph3179.prol ], [ %.223.i813176.ph, %.lr.ph3179.preheader ] ; 2 uses
  %prol.iter6777 = phi i64 [ %prol.iter6777.next, %.lr.ph3179.prol ], [ 0, %.lr.ph3179.preheader ]
  %i.acb = getelementptr inbounds nuw i8, ptr %.220.i823177.prol, i64 1 ; 2 uses
  %i.acc = load i8, ptr %.220.i823177.prol, align 1, !tbaa !99
  %i.acd = getelementptr inbounds nuw i8, ptr %.223.i813176.prol, i64 1 ; 3 uses
  store i8 %i.acc, ptr %.223.i813176.prol, align 1, !tbaa !99
  %i.ace = add nsw i64 %.2.i833178.prol, -1       ; 2 uses
  %prol.iter6777.next = add i64 %prol.iter6777, 1 ; 2 uses
  %prol.iter6777.cmp.not = icmp eq i64 %prol.iter6777.next, %xtraiter6775
  br i1 %prol.iter6777.cmp.not, label %.lr.ph3179.prol.loopexit, label %.lr.ph3179.prol, !llvm.loop !298

.lr.ph3179.prol.loopexit:                         ; preds = %.lr.ph3179.prol, %.lr.ph3179.preheader
  %.lcssa6164.unr = phi ptr [ poison, %.lr.ph3179.preheader ], [ %i.acd, %.lr.ph3179.prol ]
  %.2.i833178.unr = phi i64 [ %.2.i833178.ph, %.lr.ph3179.preheader ], [ %i.ace, %.lr.ph3179.prol ]
  %.220.i823177.unr = phi ptr [ %.220.i823177.ph, %.lr.ph3179.preheader ], [ %i.acb, %.lr.ph3179.prol ]
  %.223.i813176.unr = phi ptr [ %.223.i813176.ph, %.lr.ph3179.preheader ], [ %i.acd, %.lr.ph3179.prol ]
  %i.acf = icmp ult i64 %i.aca, 7
  br i1 %i.acf, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i

bb.il:                                            ; preds = %bb.ij
  %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i52 = select i1 %.not1790, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, ptr @_ZN13duckdb_yyjsonL19enc_table_cpy_slashE, !prof !61
  br label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i

_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i:  ; preds = %bb.ik, %bb.il
  %.0.i53 = phi ptr [ %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i54, %bb.ik ], [ %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i52, %bb.il ] ; 28 uses
  %i.cgu = icmp eq ptr %.0.i53, @_ZN13duckdb_yyjsonL13enc_table_cpyE
  %i.cgv = and i32 %1, 32
  %.not1773 = icmp eq i32 %i.cgv, 0               ; 4 uses
  %i.cgw = and i32 %1, 64
  %.not1774 = icmp eq i32 %i.cgw, 0
  %i.cgx = select i1 %.not1774, i64 4, i64 2, !prof !61 ; 63 uses
  %i.cgy = and i32 %1, 128
  %.not1775 = icmp eq i32 %i.cgy, 0
  %i.cgz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cha = load i64, ptr %i.cgz, align 8, !tbaa !99
  %i.chb = shl i64 %i.cha, 1
  %i.chc = and i64 %i.chb, -32
  %i.chd = add i64 %i.chc, 64                     ; 3 uses
  %i.che = tail call noundef ptr %.sroa.01324.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.chd), !inline_history !301 ; 6 uses
  %.not.i30 = icmp eq ptr %i.che, null
  br i1 %.not.i30, label %.loopexit1951, label %bb.im

bb.im:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i
  %i.chf = getelementptr inbounds nuw i8, ptr %i.che, i64 %i.chd ; 2 uses
  %i.chg = load i64, ptr %0, align 8, !tbaa !98   ; 2 uses
  %i.chh = and i64 %i.chg, 7
  %i.chi = icmp eq i64 %i.chh, 7                  ; 3 uses
  %i.chj = zext i1 %i.chi to i8
  %i.chk = lshr i64 %i.chg, 8
  %i.chl = zext i1 %i.chi to i64
  %i.chm = shl nuw nsw i64 %i.chk, %i.chl
  %i.chn = select i1 %i.chi, i8 123, i8 91
  %i.cho = getelementptr inbounds nuw i8, ptr %i.che, i64 1
  store i8 %i.chn, ptr %i.che, align 1, !tbaa !99
  %i.chp = getelementptr inbounds nuw i8, ptr %i.che, i64 2
  store i8 10, ptr %i.cho, align 1, !tbaa !99
  %i.chq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.chr = and i32 %1, 16
  %.not1785 = icmp eq i32 %i.chr, 0
  %i.chs = and i32 %1, 8
  %.not1786 = icmp eq i32 %i.chs, 0
  br label %.outer1956

.outer1956:                                       ; preds = %.outer1956.backedge, %bb.im
  %.01598.ph = phi i64 [ %i.chm, %bb.im ], [ %.01598.ph.be, %.outer1956.backedge ]
  %.01597.ph = phi i8 [ %i.chj, %bb.im ], [ %.01597.ph.be, %.outer1956.backedge ] ; 3 uses
  %.0498.i.ph = phi ptr [ %i.chq, %bb.im ], [ %.0498.i.ph.be, %.outer1956.backedge ]
  %.0484.i.ph = phi ptr [ %i.che, %bb.im ], [ %.0484.i.ph.be, %.outer1956.backedge ]
  %.0473.i.ph = phi ptr [ %i.chp, %bb.im ], [ %.0473.i.ph.be, %.outer1956.backedge ]
  %.0462.i.ph = phi ptr [ %i.chf, %bb.im ], [ %.0462.i.ph.be, %.outer1956.backedge ]
  %.0451.i.ph = phi ptr [ %i.chf, %bb.im ], [ %.0451.i.ph.be, %.outer1956.backedge ]
  %.0449.i.ph = phi i64 [ %i.chd, %bb.im ], [ %.0449.i.ph.be, %.outer1956.backedge ]
  %.0.i31.ph = phi i64 [ 1, %bb.im ], [ %.0.i31.ph.be, %.outer1956.backedge ] ; 29 uses
  %i.cht = zext nneg i8 %.01597.ph to i32         ; 6 uses
  %i.chu = shl i64 %.0.i31.ph, 2                  ; 2 uses
  %i.chv = add i64 %i.chu, 32                     ; 2 uses
  %i.chw = add i64 %i.chu, 16                     ; 4 uses
  %.not.i122329133945 = icmp eq i64 %.0.i31.ph, 0
  %.not.i121529203946 = icmp eq i64 %.0.i31.ph, 0
  %.not.i121130073950 = icmp eq i64 %.0.i31.ph, 0
  %.not.i120730133951 = icmp eq i64 %.0.i31.ph, 0
  %.not.i120030193953 = icmp eq i64 %.0.i31.ph, 0
  %i.chx = add i64 %.0.i31.ph, -1                 ; 6 uses
  %xtraiter = and i64 %.0.i31.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.chy = icmp ult i64 %i.chx, 7
  %xtraiter6716 = and i64 %.0.i31.ph, 7           ; 2 uses
  %lcmp.mod6717.not = icmp eq i64 %xtraiter6716, 0
  %i.chz = icmp ult i64 %i.chx, 7
  %xtraiter6736 = and i64 %.0.i31.ph, 7           ; 2 uses
  %lcmp.mod6737.not = icmp eq i64 %xtraiter6736, 0
  %i.cia = icmp ult i64 %i.chx, 7
  %xtraiter6739 = and i64 %.0.i31.ph, 7           ; 2 uses
  %lcmp.mod6740.not = icmp eq i64 %xtraiter6739, 0
  %i.cib = icmp ult i64 %i.chx, 7
  %xtraiter6742.a = and i64 %.0.i31.ph, 7         ; 2 uses
  %lcmp.mod6743.not.a = icmp eq i64 %xtraiter6742.a, 0
  %i.cic = icmp ult i64 %i.chx, 7
  br label %bb.in

bb.in:                                            ; preds = %.outer1956, %bb.rv
  %.01598 = phi i64 [ %i.fzn, %bb.rv ], [ %.01598.ph, %.outer1956 ] ; 7 uses
  %.0498.i = phi ptr [ %i.fzm, %bb.rv ], [ %.0498.i.ph, %.outer1956 ] ; 9 uses
  %.0484.i = phi ptr [ %.8492.i, %bb.rv ], [ %.0484.i.ph, %.outer1956 ] ; 29 uses
  %.0473.i = phi ptr [ %.9482.i, %bb.rv ], [ %.0473.i.ph, %.outer1956 ] ; 21 uses
  %.0462.i = phi ptr [ %.8470.i, %bb.rv ], [ %.0462.i.ph, %.outer1956 ] ; 14 uses
  %.0451.i = phi ptr [ %.8459.i, %bb.rv ], [ %.0451.i.ph, %.outer1956 ] ; 21 uses
  %.0449.i = phi i64 [ %.8.i, %bb.rv ], [ %.0449.i.ph, %.outer1956 ] ; 28 uses
  %i.cid = load i64, ptr %.0498.i, align 8, !tbaa !98 ; 5 uses
  %i.cie = trunc i64 %i.cid to i8                 ; 2 uses
  %i.cif = and i8 %i.cie, 7                       ; 3 uses
  switch i8 %i.cif, label %bb.rd [
    i8 5, label %bb.io
    i8 4, label %bb.nf
  ]

bb.io:                                            ; preds = %bb.in
  %i.cig = trunc i64 %.01598 to i32               ; 2 uses
  %i.cih = xor i32 %i.cig, -1
  %i.cii = and i32 %i.cht, %i.cih
  %.not525.i = icmp eq i32 %i.cii, 0              ; 2 uses
  %i.cij = and i32 %i.cht, %i.cig
  %.not526.i = icmp ne i32 %i.cij, 0              ; 2 uses
  %i.cik = lshr i64 %i.cid, 8                     ; 9 uses
  %i.cil = getelementptr inbounds nuw i8, ptr %.0498.i, i64 8
  %i.cim = load ptr, ptr %i.cil, align 8, !tbaa !99 ; 7 uses
  %i.cin = ptrtoaddr ptr %i.cim to i64            ; 4 uses
  %i.cio = mul nuw nsw i64 %i.cik, 6
  %i.cip = select i1 %.not526.i, i64 16, i64 %i.chw
  %i.ciq = add i64 %i.cip, %i.cio                 ; 2 uses
  %i.cir = getelementptr inbounds nuw i8, ptr %.0473.i, i64 %i.ciq
  %.not527.i = icmp ult ptr %i.cir, %.0451.i
  br i1 %.not527.i, label %bb.iq, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit554.i, !prof !61

_ZN13duckdb_yyjsonL13size_align_upEmm.exit554.i:  ; preds = %bb.io
  %i.cis = lshr i64 %.0449.i, 1
  %i.cit = tail call i64 @llvm.umax.i64(i64 %i.cis, i64 %i.ciq)
  %i.ciu = add i64 %i.cit, 7
  %i.civ = and i64 %i.ciu, -8
  %i.ciw = add i64 %i.civ, %.0449.i               ; 4 uses
  %i.cix = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0484.i, i64 noundef %.0449.i, i64 noundef %i.ciw), !inline_history !301 ; 6 uses
  %.not528.i = icmp eq ptr %i.cix, null
  br i1 %.not528.i, label %.loopexit1951, label %bb.ip, !prof !44

bb.ip:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit554.i
  %i.ciy = ptrtoint ptr %.0462.i to i64
  %i.ciz = ptrtoint ptr %.0451.i to i64           ; 2 uses
  %i.cja = sub i64 %i.ciy, %i.ciz                 ; 2 uses
  %i.cjb = sub i64 %i.ciw, %i.cja
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cix, i64 %i.cjb ; 2 uses
  %i.cjd = ptrtoint ptr %.0484.i to i64           ; 2 uses
  %i.cje = sub i64 %i.ciz, %i.cjd
  %i.cjf = getelementptr inbounds i8, ptr %i.cix, i64 %i.cje
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cjc, ptr nonnull align 1 %i.cjf, i64 %i.cja, i1 false)
  %i.cjg = ptrtoint ptr %.0473.i to i64
  %i.cjh = sub i64 %i.cjg, %i.cjd
  %i.cji = getelementptr inbounds i8, ptr %i.cix, i64 %i.cjh
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cix, i64 %i.ciw
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.1485.i = phi ptr [ %i.cix, %bb.ip ], [ %.0484.i, %bb.io ] ; 2 uses
  %.1474.i = phi ptr [ %i.cji, %bb.ip ], [ %.0473.i, %bb.io ] ; 3 uses
  %.1463.i = phi ptr [ %i.cjj, %bb.ip ], [ %.0462.i, %bb.io ]
  %.1452.i = phi ptr [ %i.cjc, %bb.ip ], [ %.0451.i, %bb.io ]
  %.1450.i = phi i64 [ %i.ciw, %bb.ip ], [ %.0449.i, %bb.io ]
  %.not.i12152920 = select i1 %.not526.i, i1 true, i1 %.not.i121529203946
  br i1 %.not.i12152920, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1216, label %select.unfold1657.preheader

select.unfold1657.preheader:                      ; preds = %bb.iq
  br i1 %lcmp.mod6717.not, label %select.unfold1657.prol.loopexit, label %select.unfold1657.prol

select.unfold1657.prol:                           ; preds = %select.unfold1657.preheader, %select.unfold1657.prol
  %.0.i12142922.prol = phi ptr [ %i.cjl, %select.unfold1657.prol ], [ %.1474.i, %select.unfold1657.preheader ] ; 2 uses
  %.04.i12132921.prol = phi i64 [ %i.cjk, %select.unfold1657.prol ], [ %.0.i31.ph, %select.unfold1657.preheader ]
  %prol.iter6718 = phi i64 [ %prol.iter6718.next, %select.unfold1657.prol ], [ 0, %select.unfold1657.preheader ]
  %i.cjk = add i64 %.04.i12132921.prol, -1        ; 2 uses
  store i32 538976288, ptr %.0.i12142922.prol, align 1
  %i.cjl = getelementptr inbounds nuw i8, ptr %.0.i12142922.prol, i64 %i.cgx ; 3 uses
  %prol.iter6718.next = add i64 %prol.iter6718, 1 ; 2 uses
  %prol.iter6718.cmp.not = icmp eq i64 %prol.iter6718.next, %xtraiter6716
  br i1 %prol.iter6718.cmp.not, label %select.unfold1657.prol.loopexit, label %select.unfold1657.prol, !llvm.loop !302

select.unfold1657.prol.loopexit:                  ; preds = %select.unfold1657.prol, %select.unfold1657.preheader
  %.lcssa6489.unr = phi ptr [ poison, %select.unfold1657.preheader ], [ %i.cjl, %select.unfold1657.prol ]
  %.0.i12142922.unr = phi ptr [ %.1474.i, %select.unfold1657.preheader ], [ %i.cjl, %select.unfold1657.prol ]
  %.04.i12132921.unr = phi i64 [ %.0.i31.ph, %select.unfold1657.preheader ], [ %i.cjk, %select.unfold1657.prol ]
  br i1 %i.chz, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1216, label %select.unfold1657

select.unfold1657:                                ; preds = %select.unfold1657.prol.loopexit, %select.unfold1657
  %.0.i12142922 = phi ptr [ %i.cju, %select.unfold1657 ], [ %.0.i12142922.unr, %select.unfold1657.prol.loopexit ] ; 2 uses
  %.04.i12132921 = phi i64 [ %i.cjt, %select.unfold1657 ], [ %.04.i12132921.unr, %select.unfold1657.prol.loopexit ]
  store i32 538976288, ptr %.0.i12142922, align 1
  %i.cjm = getelementptr inbounds nuw i8, ptr %.0.i12142922, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.cjm, align 1
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjm, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.cjn, align 1
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjn, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.cjo, align 1
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.cjp, align 1
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjp, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.cjq, align 1
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjq, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.cjr, align 1
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjr, i64 %i.cgx ; 2 uses
  %i.cjt = add i64 %.04.i12132921, -8             ; 2 uses
  store i32 538976288, ptr %i.cjs, align 1
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjs, i64 %i.cgx ; 2 uses
  %.not.i1215.7 = icmp eq i64 %i.cjt, 0
  br i1 %.not.i1215.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1216, label %select.unfold1657, !llvm.loop !36

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1216:  ; preds = %select.unfold1657.prol.loopexit, %select.unfold1657, %bb.iq
  %.0.i1214.lcssa = phi ptr [ %.1474.i, %bb.iq ], [ %.lcssa6489.unr, %select.unfold1657.prol.loopexit ], [ %i.cju, %select.unfold1657 ] ; 5 uses
  br i1 %i.cgu, label %bb.kx, label %.split.i33, !prof !61

.split.i33:                                       ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1216
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cim, i64 %i.cik ; 3 uses
  store i8 34, ptr %.0.i1214.lcssa, align 1, !tbaa !99
  %i.cjw = ptrtoint ptr %i.cjv to i64             ; 4 uses
  %i.cjx = add i64 %i.cik, %i.cin
  br label %bb.ir

bb.ir:                                            ; preds = %bb.kc, %.split.i33
  %.pn.i277 = phi ptr [ %.0.i1214.lcssa, %.split.i33 ], [ %.8258.i290, %bb.kc ]
  %.0243.i278 = phi ptr [ %i.cim, %.split.i33 ], [ %i.crq, %bb.kc ] ; 3 uses
  %.0250.i279 = getelementptr inbounds nuw i8, ptr %.pn.i277, i64 1 ; 2 uses
  %i.cjy = ptrtoint ptr %.0243.i278 to i64
  %i.cjz = sub i64 %i.cjw, %i.cjy                 ; 2 uses
  %i.cka = icmp sgt i64 %i.cjz, 15
  br i1 %i.cka, label %.lr.ph2941, label %.preheader1941

.preheader1941:                                   ; preds = %bb.jh, %bb.ir
  %.pre-phi3800 = phi i64 [ %i.cjz, %bb.ir ], [ %i.cng, %bb.jh ]
  %.1251.i280.lcssa = phi ptr [ %.0250.i279, %bb.ir ], [ %i.cnd, %bb.jh ] ; 2 uses
  %.1244.i281.lcssa = phi ptr [ %.0243.i278, %bb.ir ], [ %i.cne, %bb.jh ] ; 2 uses
  %i.ckb = icmp sgt i64 %.pre-phi3800, 3
  br i1 %i.ckb, label %.lr.ph2947, label %.preheader1939

.lr.ph2941:                                       ; preds = %bb.ir, %bb.jh
  %.1244.i2812939 = phi ptr [ %i.cne, %bb.jh ], [ %.0243.i278, %bb.ir ] ; 46 uses
  %.1251.i2802938 = phi ptr [ %i.cnd, %bb.jh ], [ %.0250.i279, %bb.ir ] ; 30 uses
  %i.ckc = load i8, ptr %.1244.i2812939, align 1, !tbaa !99 ; 2 uses
  %i.ckd = zext i8 %i.ckc to i64
  %i.cke = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.ckd
  %i.ckf = load i8, ptr %i.cke, align 1, !tbaa !99
  %.not277.i348 = icmp eq i8 %i.ckf, 0
  br i1 %.not277.i348, label %bb.is, label %.preheader1936.preheader, !prof !61

bb.is:                                            ; preds = %.lr.ph2941
  %i.ckg = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 1
  %i.ckh = load i8, ptr %i.ckg, align 1, !tbaa !99
  %i.cki = zext i8 %i.ckh to i64
  %i.ckj = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cki
  %i.ckk = load i8, ptr %i.ckj, align 1, !tbaa !99
  %.not278.i349 = icmp eq i8 %i.ckk, 0
  br i1 %.not278.i349, label %bb.it, label %.loopexit1943, !prof !61

bb.it:                                            ; preds = %bb.is
  %i.ckl = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 2
  %i.ckm = load i8, ptr %i.ckl, align 1, !tbaa !99
  %i.ckn = zext i8 %i.ckm to i64
  %i.cko = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.ckn
  %i.ckp = load i8, ptr %i.cko, align 1, !tbaa !99
  %.not279.i350 = icmp eq i8 %i.ckp, 0
  br i1 %.not279.i350, label %bb.iu, label %.loopexit1944, !prof !61

bb.iu:                                            ; preds = %bb.it
  %i.ckq = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 3
  %i.ckr = load i8, ptr %i.ckq, align 1, !tbaa !99
  %i.cks = zext i8 %i.ckr to i64
  %i.ckt = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cks
  %i.cku = load i8, ptr %i.ckt, align 1, !tbaa !99
  %.not280.i351 = icmp eq i8 %i.cku, 0
  br i1 %.not280.i351, label %bb.iv, label %.loopexit1945, !prof !61

bb.iv:                                            ; preds = %bb.iu
  %i.ckv = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 4
  %i.ckw = load i8, ptr %i.ckv, align 1, !tbaa !99
  %i.ckx = zext i8 %i.ckw to i64
  %i.cky = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.ckx
  %i.ckz = load i8, ptr %i.cky, align 1, !tbaa !99
  %.not281.i352 = icmp eq i8 %i.ckz, 0
  br i1 %.not281.i352, label %bb.iw, label %bb.jo, !prof !61

bb.iw:                                            ; preds = %bb.iv
  %i.cla = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 5
  %i.clb = load i8, ptr %i.cla, align 1, !tbaa !99
  %i.clc = zext i8 %i.clb to i64
  %i.cld = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.clc
  %i.cle = load i8, ptr %i.cld, align 1, !tbaa !99
  %.not282.i353 = icmp eq i8 %i.cle, 0
  br i1 %.not282.i353, label %bb.ix, label %bb.jp, !prof !61

bb.ix:                                            ; preds = %bb.iw
  %i.clf = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 6
  %i.clg = load i8, ptr %i.clf, align 1, !tbaa !99
  %i.clh = zext i8 %i.clg to i64
  %i.cli = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.clh
  %i.clj = load i8, ptr %i.cli, align 1, !tbaa !99
  %.not283.i354 = icmp eq i8 %i.clj, 0
  br i1 %.not283.i354, label %bb.iy, label %bb.jq, !prof !61

bb.iy:                                            ; preds = %bb.ix
  %i.clk = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 7
  %i.cll = load i8, ptr %i.clk, align 1, !tbaa !99
  %i.clm = zext i8 %i.cll to i64
  %i.cln = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.clm
  %i.clo = load i8, ptr %i.cln, align 1, !tbaa !99
  %.not284.i355 = icmp eq i8 %i.clo, 0
  br i1 %.not284.i355, label %bb.iz, label %bb.jr, !prof !61

bb.iz:                                            ; preds = %bb.iy
  %i.clp = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 8
  %i.clq = load i8, ptr %i.clp, align 1, !tbaa !99
  %i.clr = zext i8 %i.clq to i64
  %i.cls = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.clr
  %i.clt = load i8, ptr %i.cls, align 1, !tbaa !99
  %.not285.i356 = icmp eq i8 %i.clt, 0
  br i1 %.not285.i356, label %bb.ja, label %bb.js, !prof !61

bb.ja:                                            ; preds = %bb.iz
  %i.clu = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 9
  %i.clv = load i8, ptr %i.clu, align 1, !tbaa !99
  %i.clw = zext i8 %i.clv to i64
  %i.clx = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.clw
  %i.cly = load i8, ptr %i.clx, align 1, !tbaa !99
  %.not286.i357 = icmp eq i8 %i.cly, 0
  br i1 %.not286.i357, label %bb.jb, label %bb.jt, !prof !61

bb.jb:                                            ; preds = %bb.ja
  %i.clz = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 10
  %i.cma = load i8, ptr %i.clz, align 1, !tbaa !99
  %i.cmb = zext i8 %i.cma to i64
  %i.cmc = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cmb
  %i.cmd = load i8, ptr %i.cmc, align 1, !tbaa !99
  %.not287.i358 = icmp eq i8 %i.cmd, 0
  br i1 %.not287.i358, label %bb.jc, label %bb.ju, !prof !61

bb.jc:                                            ; preds = %bb.jb
  %i.cme = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 11
  %i.cmf = load i8, ptr %i.cme, align 1, !tbaa !99
  %i.cmg = zext i8 %i.cmf to i64
  %i.cmh = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cmg
  %i.cmi = load i8, ptr %i.cmh, align 1, !tbaa !99
  %.not288.i359 = icmp eq i8 %i.cmi, 0
  br i1 %.not288.i359, label %bb.jd, label %bb.jv, !prof !61

bb.jd:                                            ; preds = %bb.jc
  %i.cmj = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 12
  %i.cmk = load i8, ptr %i.cmj, align 1, !tbaa !99
  %i.cml = zext i8 %i.cmk to i64
  %i.cmm = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cml
  %i.cmn = load i8, ptr %i.cmm, align 1, !tbaa !99
  %.not289.i360 = icmp eq i8 %i.cmn, 0
  br i1 %.not289.i360, label %bb.je, label %bb.jw, !prof !61

bb.je:                                            ; preds = %bb.jd
  %i.cmo = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 13
  %i.cmp = load i8, ptr %i.cmo, align 1, !tbaa !99
  %i.cmq = zext i8 %i.cmp to i64
  %i.cmr = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cmq
  %i.cms = load i8, ptr %i.cmr, align 1, !tbaa !99
  %.not290.i361 = icmp eq i8 %i.cms, 0
  br i1 %.not290.i361, label %bb.jf, label %bb.jx, !prof !61

bb.jf:                                            ; preds = %bb.je
  %i.cmt = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 14
  %i.cmu = load i8, ptr %i.cmt, align 1, !tbaa !99
  %i.cmv = zext i8 %i.cmu to i64
  %i.cmw = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cmv
  %i.cmx = load i8, ptr %i.cmw, align 1, !tbaa !99
  %.not291.i362 = icmp eq i8 %i.cmx, 0
  br i1 %.not291.i362, label %bb.jg, label %bb.jy, !prof !61

bb.jg:                                            ; preds = %bb.jf
  %i.cmy = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 15
  %i.cmz = load i8, ptr %i.cmy, align 1, !tbaa !99
  %i.cna = zext i8 %i.cmz to i64
  %i.cnb = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cna
  %i.cnc = load i8, ptr %i.cnb, align 1, !tbaa !99
  %.not292.i363 = icmp eq i8 %i.cnc, 0
  br i1 %.not292.i363, label %bb.jh, label %bb.jz, !prof !61

bb.jh:                                            ; preds = %bb.jg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i2812939, i64 16, i1 false)
  %i.cnd = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 16 ; 2 uses
  %i.cne = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 16 ; 3 uses
  %i.cnf = ptrtoint ptr %i.cne to i64
  %i.cng = sub i64 %i.cjw, %i.cnf                 ; 2 uses
  %i.cnh = icmp sgt i64 %i.cng, 15
  br i1 %i.cnh, label %.lr.ph2941, label %.preheader1941, !llvm.loop !31

.preheader1939:                                   ; preds = %bb.jm, %.preheader1941
  %.2252.i282.lcssa = phi ptr [ %.1251.i280.lcssa, %.preheader1941 ], [ %i.cop, %bb.jm ] ; 3 uses
  %.2245.i283.lcssa = phi ptr [ %.1244.i281.lcssa, %.preheader1941 ], [ %i.coq, %bb.jm ] ; 5 uses
  %i.cni = icmp ugt ptr %i.cjv, %.2245.i283.lcssa
  br i1 %i.cni, label %.lr.ph2952.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364

.lr.ph2952.preheader:                             ; preds = %.preheader1939
  %.2245.i283.lcssa3699 = ptrtoaddr ptr %.2245.i283.lcssa to i64 ; 2 uses
  %i.cnj = getelementptr i8, ptr %.2245.i283.lcssa, i64 %i.cik
  %scevgep3698 = getelementptr i8, ptr %i.cnj, i64 %i.cin
  %i.cnk = sub i64 0, %.2245.i283.lcssa3699
  %scevgep3700 = getelementptr i8, ptr %scevgep3698, i64 %i.cnk
  %i.cnl = sub i64 %i.cjx, %.2245.i283.lcssa3699
  %i.cnm = freeze i64 %i.cnl                      ; 2 uses
  %i.cnn = add i64 %i.cnm, -1
  %xtraiter6719 = and i64 %i.cnm, 3               ; 2 uses
  %lcmp.mod6720.not = icmp eq i64 %xtraiter6719, 0
  br i1 %lcmp.mod6720.not, label %.lr.ph2952.prol.loopexit, label %.lr.ph2952.prol

.lr.ph2952.prol:                                  ; preds = %.lr.ph2952.preheader, %bb.ji
  %.3246.i2852951.prol = phi ptr [ %i.cns, %bb.ji ], [ %.2245.i283.lcssa, %.lr.ph2952.preheader ] ; 3 uses
  %.3253.i2842950.prol = phi ptr [ %i.cnt, %bb.ji ], [ %.2252.i282.lcssa, %.lr.ph2952.preheader ] ; 3 uses
  %prol.iter6721 = phi i64 [ %prol.iter6721.next, %bb.ji ], [ 0, %.lr.ph2952.preheader ]
  %i.cno = load i8, ptr %.3246.i2852951.prol, align 1, !tbaa !99 ; 2 uses
  %i.cnp = zext i8 %i.cno to i64
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.cod = load i8, ptr %i.coc, align 1, !tbaa !99
  %.not274.i339 = icmp eq i8 %i.cod, 0
  br i1 %.not274.i339, label %bb.jk, label %.loopexit1943, !prof !61

bb.jk:                                            ; preds = %bb.jj
  %i.coe = getelementptr inbounds nuw i8, ptr %.2245.i2832946, i64 2
  %i.cof = load i8, ptr %i.coe, align 1, !tbaa !99
  %i.cog = zext i8 %i.cof to i64
  %i.coh = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cog
  %i.coi = load i8, ptr %i.coh, align 1, !tbaa !99
  %.not275.i342 = icmp eq i8 %i.coi, 0
  br i1 %.not275.i342, label %bb.jl, label %.loopexit1944, !prof !61

bb.jl:                                            ; preds = %bb.jk
  %i.coj = getelementptr inbounds nuw i8, ptr %.2245.i2832946, i64 3
  %i.cok = load i8, ptr %i.coj, align 1, !tbaa !99
  %i.col = zext i8 %i.cok to i64
  %i.com = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.col
  %i.con = load i8, ptr %i.com, align 1, !tbaa !99
  %.not276.i345 = icmp eq i8 %i.con, 0
  br i1 %.not276.i345, label %bb.jm, label %.loopexit1945, !prof !61

bb.jm:                                            ; preds = %bb.jl
  %i.coo = load i32, ptr %.2245.i2832946, align 1
  store i32 %i.coo, ptr %.2252.i2822945, align 1
  %i.cop = getelementptr inbounds nuw i8, ptr %.2252.i2822945, i64 4 ; 2 uses
  %i.coq = getelementptr inbounds nuw i8, ptr %.2245.i2832946, i64 4 ; 3 uses
  %i.cor = ptrtoint ptr %i.coq to i64
  %i.cos = sub i64 %i.cjw, %i.cor
  %i.cot = icmp sgt i64 %i.cos, 3
  br i1 %i.cot, label %.lr.ph2947, label %.preheader1939, !llvm.loop !32

.lr.ph2952:                                       ; preds = %.lr.ph2952.prol.loopexit, %bb.jn
  %.3246.i2852951 = phi ptr [ %i.cpq, %bb.jn ], [ %.3246.i2852951.unr, %.lr.ph2952.prol.loopexit ] ; 9 uses
  %.3253.i2842950 = phi ptr [ %i.cpr, %bb.jn ], [ %.3253.i2842950.unr, %.lr.ph2952.prol.loopexit ] ; 6 uses
  %i.cou = load i8, ptr %.3246.i2852951, align 1, !tbaa !99 ; 2 uses
  %i.cov = zext i8 %i.cou to i64
  %i.cow = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cov
  %i.cox = load i8, ptr %i.cow, align 1, !tbaa !99
  %.not.i287 = icmp eq i8 %i.cox, 0
  br i1 %.not.i287, label %.lr.ph2952.1, label %.preheader1936.preheader, !prof !61

.lr.ph2952.1:                                     ; preds = %.lr.ph2952
  %i.coy = getelementptr inbounds nuw i8, ptr %.3246.i2852951, i64 1
  %i.coz = getelementptr inbounds nuw i8, ptr %.3253.i2842950, i64 1 ; 2 uses
  store i8 %i.cou, ptr %.3253.i2842950, align 1, !tbaa !99
  %i.cpa = load i8, ptr %i.coy, align 1, !tbaa !99 ; 2 uses
  %i.cpb = zext i8 %i.cpa to i64
  %i.cpc = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cpb
  %i.cpd = load i8, ptr %i.cpc, align 1, !tbaa !99
  %.not.i287.1 = icmp eq i8 %i.cpd, 0
  br i1 %.not.i287.1, label %.lr.ph2952.2, label %.preheader1936.preheader.loopexit.loopexit.split.loop.exit7442, !prof !61

.lr.ph2952.2:                                     ; preds = %.lr.ph2952.1
  %i.cpe = getelementptr inbounds nuw i8, ptr %.3246.i2852951, i64 2
  %i.cpf = getelementptr inbounds nuw i8, ptr %.3253.i2842950, i64 2 ; 2 uses
  store i8 %i.cpa, ptr %i.coz, align 1, !tbaa !99
  %i.cpg = load i8, ptr %i.cpe, align 1, !tbaa !99 ; 2 uses
  %i.cph = zext i8 %i.cpg to i64
  %i.cpi = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cph
  %i.cpj = load i8, ptr %i.cpi, align 1, !tbaa !99
  %.not.i287.2 = icmp eq i8 %i.cpj, 0
  br i1 %.not.i287.2, label %.lr.ph2952.3, label %.preheader1936.preheader.loopexit.loopexit.split.loop.exit7439, !prof !61

.lr.ph2952.3:                                     ; preds = %.lr.ph2952.2
  %i.cpk = getelementptr inbounds nuw i8, ptr %.3246.i2852951, i64 3
  %i.cpl = getelementptr inbounds nuw i8, ptr %.3253.i2842950, i64 3 ; 2 uses
  store i8 %i.cpg, ptr %i.cpf, align 1, !tbaa !99
  %i.cpm = load i8, ptr %i.cpk, align 1, !tbaa !99 ; 2 uses
  %i.cpn = zext i8 %i.cpm to i64
  %i.cpo = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cpn
  %i.cpp = load i8, ptr %i.cpo, align 1, !tbaa !99
  %.not.i287.3 = icmp eq i8 %i.cpp, 0
  br i1 %.not.i287.3, label %bb.jn, label %.preheader1936.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.jn:                                            ; preds = %.lr.ph2952.3
  %i.cpq = getelementptr inbounds nuw i8, ptr %.3246.i2852951, i64 4 ; 2 uses
  %i.cpr = getelementptr inbounds nuw i8, ptr %.3253.i2842950, i64 4 ; 2 uses
  store i8 %i.cpm, ptr %i.cpl, align 1, !tbaa !99
  %exitcond.not.3 = icmp eq ptr %i.cpq, %scevgep3700
  br i1 %exitcond.not.3, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364, label %.lr.ph2952, !llvm.loop !33

.loopexit1943:                                    ; preds = %bb.is, %bb.jj
  %i.cps = phi i8 [ %i.cnv, %bb.jj ], [ %i.ckc, %bb.is ]
  %.5255.i340 = phi ptr [ %.2252.i2822945, %bb.jj ], [ %.1251.i2802938, %bb.is ] ; 2 uses
  %.5248.i341 = phi ptr [ %.2245.i2832946, %bb.jj ], [ %.1244.i2812939, %bb.is ]
  store i8 %i.cps, ptr %.5255.i340, align 1
  %i.cpt = getelementptr inbounds nuw i8, ptr %.5255.i340, i64 1
  %i.cpu = getelementptr inbounds nuw i8, ptr %.5248.i341, i64 1
  br label %.preheader1936.preheader

.loopexit1944:                                    ; preds = %bb.it, %bb.jk
  %.6256.i343 = phi ptr [ %.2252.i2822945, %bb.jk ], [ %.1251.i2802938, %bb.it ] ; 2 uses
  %.6.i344 = phi ptr [ %.2245.i2832946, %bb.jk ], [ %.1244.i2812939, %bb.it ] ; 2 uses
  %i.cpv = load i16, ptr %.6.i344, align 1
  store i16 %i.cpv, ptr %.6256.i343, align 1
  %i.cpw = getelementptr inbounds nuw i8, ptr %.6256.i343, i64 2
  %i.cpx = getelementptr inbounds nuw i8, ptr %.6.i344, i64 2
  br label %.preheader1936.preheader

.loopexit1945:                                    ; preds = %bb.iu, %bb.jl
  %.7257.i346 = phi ptr [ %.2252.i2822945, %bb.jl ], [ %.1251.i2802938, %bb.iu ] ; 2 uses
  %.7.i347 = phi ptr [ %.2245.i2832946, %bb.jl ], [ %.1244.i2812939, %bb.iu ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i346, ptr noundef nonnull align 1 dereferenceable(3) %.7.i347, i64 3, i1 false)
  %i.cpy = getelementptr inbounds nuw i8, ptr %.7257.i346, i64 3
  %i.cpz = getelementptr inbounds nuw i8, ptr %.7.i347, i64 3
  br label %.preheader1936.preheader

bb.jo:                                            ; preds = %bb.iv
  %i.cqa = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 4
  %i.cqb = load i32, ptr %.1244.i2812939, align 1
  store i32 %i.cqb, ptr %.1251.i2802938, align 1
  %i.cqc = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 4
  br label %.preheader1936.preheader

bb.jp:                                            ; preds = %bb.iw
  %i.cqd = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i2812939, i64 5, i1 false)
  %i.cqe = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 5
  br label %.preheader1936.preheader

bb.jq:                                            ; preds = %bb.ix
  %i.cqf = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i2812939, i64 6, i1 false)
  %i.cqg = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 6
  br label %.preheader1936.preheader

bb.jr:                                            ; preds = %bb.iy
  %i.cqh = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i2812939, i64 7, i1 false)
  %i.cqi = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 7
  br label %.preheader1936.preheader

bb.js:                                            ; preds = %bb.iz
  %i.cqj = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 8
  %i.cqk = load i64, ptr %.1244.i2812939, align 1
  store i64 %i.cqk, ptr %.1251.i2802938, align 1
  %i.cql = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 8
  br label %.preheader1936.preheader

bb.jt:                                            ; preds = %bb.ja
  %i.cqm = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i2812939, i64 9, i1 false)
  %i.cqn = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 9
  br label %.preheader1936.preheader

bb.ju:                                            ; preds = %bb.jb
  %i.cqo = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i2812939, i64 10, i1 false)
  %i.cqp = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 10
  br label %.preheader1936.preheader

bb.jv:                                            ; preds = %bb.jc
  %i.cqq = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i2812939, i64 11, i1 false)
  %i.cqr = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 11
  br label %.preheader1936.preheader

bb.jw:                                            ; preds = %bb.jd
  %i.cqs = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i2812939, i64 12, i1 false)
  %i.cqt = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 12
  br label %.preheader1936.preheader

bb.jx:                                            ; preds = %bb.je
  %i.cqu = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i2812939, i64 13, i1 false)
  %i.cqv = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 13
  br label %.preheader1936.preheader

bb.jy:                                            ; preds = %bb.jf
  %i.cqw = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i2812939, i64 14, i1 false)
  %i.cqx = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 14
  br label %.preheader1936.preheader

bb.jz:                                            ; preds = %bb.jg
  %i.cqy = getelementptr inbounds nuw i8, ptr %.1244.i2812939, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i2802938, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i2812939, i64 15, i1 false)
  %i.cqz = getelementptr inbounds nuw i8, ptr %.1251.i2802938, i64 15
  br label %.preheader1936.preheader

.preheader1936.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2952.3
  %i.cra = getelementptr inbounds nuw i8, ptr %.3246.i2852951, i64 3
  br label %.preheader1936.preheader

.preheader1936.preheader.loopexit.loopexit.split.loop.exit7439: ; preds = %.lr.ph2952.2
  %i.crb = getelementptr inbounds nuw i8, ptr %.3246.i2852951, i64 2
  br label %.preheader1936.preheader

.preheader1936.preheader.loopexit.loopexit.split.loop.exit7442: ; preds = %.lr.ph2952.1
  %i.crc = getelementptr inbounds nuw i8, ptr %.3246.i2852951, i64 1
  br label %.preheader1936.preheader

.preheader1936.preheader:                         ; preds = %.lr.ph2941, %.lr.ph2947, %.lr.ph2952, %.preheader1936.preheader.loopexit.loopexit.split.loop.exit7442, %.preheader1936.preheader.loopexit.loopexit.split.loop.exit7439, %.preheader1936.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2952.prol, %.loopexit1943, %.loopexit1944, %.loopexit1945, %bb.jo, %bb.jp, %bb.jq, %bb.jr, %bb.js, %bb.jt, %bb.ju, %bb.jv, %bb.jw, %bb.jx, %bb.jy, %bb.jz
  %.8258.i290.ph = phi ptr [ %.2252.i2822945, %.lr.ph2947 ], [ %.3253.i2842950.prol, %.lr.ph2952.prol ], [ %i.cpt, %.loopexit1943 ], [ %i.cpw, %.loopexit1944 ], [ %i.cpy, %.loopexit1945 ], [ %i.cqc, %bb.jo ], [ %i.cqe, %bb.jp ], [ %i.cqg, %bb.jq ], [ %i.cqi, %bb.jr ], [ %i.cql, %bb.js ], [ %i.cqn, %bb.jt ], [ %i.cqp, %bb.ju ], [ %i.cqr, %bb.jv ], [ %i.cqt, %bb.jw ], [ %i.cqv, %bb.jx ], [ %i.cqx, %bb.jy ], [ %i.cqz, %bb.jz ], [ %.3253.i2842950, %.lr.ph2952 ], [ %i.coz, %.preheader1936.preheader.loopexit.loopexit.split.loop.exit7442 ], [ %i.cpf, %.preheader1936.preheader.loopexit.loopexit.split.loop.exit7439 ], [ %i.cpl, %.preheader1936.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i2802938, %.lr.ph2941 ]
  %.8.i291.ph = phi ptr [ %.2245.i2832946, %.lr.ph2947 ], [ %.3246.i2852951.prol, %.lr.ph2952.prol ], [ %i.cpu, %.loopexit1943 ], [ %i.cpx, %.loopexit1944 ], [ %i.cpz, %.loopexit1945 ], [ %i.cqa, %bb.jo ], [ %i.cqd, %bb.jp ], [ %i.cqf, %bb.jq ], [ %i.cqh, %bb.jr ], [ %i.cqj, %bb.js ], [ %i.cqm, %bb.jt ], [ %i.cqo, %bb.ju ], [ %i.cqq, %bb.jv ], [ %i.cqs, %bb.jw ], [ %i.cqu, %bb.jx ], [ %i.cqw, %bb.jy ], [ %i.cqy, %bb.jz ], [ %.3246.i2852951, %.lr.ph2952 ], [ %i.crc, %.preheader1936.preheader.loopexit.loopexit.split.loop.exit7442 ], [ %i.crb, %.preheader1936.preheader.loopexit.loopexit.split.loop.exit7439 ], [ %i.cra, %.preheader1936.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i2812939, %.lr.ph2941 ]
  br label %.preheader1936

.preheader1936:                                   ; preds = %.preheader1936.backedge, %.preheader1936.preheader
  %.8258.i290 = phi ptr [ %.8258.i290.ph, %.preheader1936.preheader ], [ %.8258.i290.be, %.preheader1936.backedge ] ; 34 uses
  %.8.i291 = phi ptr [ %.8.i291.ph, %.preheader1936.preheader ], [ %.8.i291.be, %.preheader1936.backedge ] ; 23 uses
  %i.crd = getelementptr inbounds nuw i8, ptr %.8.i291, i64 4 ; 3 uses
  %i.cre = icmp ugt ptr %i.crd, %i.cjv            ; 2 uses
  br i1 %i.cre, label %bb.ka, label %._crit_edge3755, !prof !44

._crit_edge3755:                                  ; preds = %.preheader1936
  %.pre = load i8, ptr %.8.i291, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64       ; 2 uses
  %.phi.trans.insert3756 = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %.phi.trans.insert
  %.pre3757 = load i8, ptr %.phi.trans.insert3756, align 1, !tbaa !99
  br label %bb.kb

bb.ka:                                            ; preds = %.preheader1936
  %i.crf = ptrtoint ptr %.8.i291 to i64
  %i.crg = sub i64 %i.cjw, %i.crf
  %i.crh = load i8, ptr %.8.i291, align 1, !tbaa !99 ; 3 uses
  %i.cri = zext i8 %i.crh to i64                  ; 2 uses
  %i.crj = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.cri
  %i.crk = load i8, ptr %i.crj, align 1, !tbaa !99 ; 2 uses
  %i.crl = lshr i8 %i.crk, 1
  %i.crm = zext nneg i8 %i.crl to i64
  %i.crn = icmp slt i64 %i.crg, %i.crm
  br i1 %i.crn, label %bb.ku, label %bb.kb

bb.kb:                                            ; preds = %._crit_edge3755, %bb.ka
  %.pre-phi3801 = phi i64 [ %.phi.trans.insert, %._crit_edge3755 ], [ %i.cri, %bb.ka ]
  %i.cro = phi i8 [ %.pre3757, %._crit_edge3755 ], [ %i.crk, %bb.ka ]
  %i.crp = phi i8 [ %.pre, %._crit_edge3755 ], [ %i.crh, %bb.ka ] ; 2 uses
  switch i8 %i.cro, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364 [
    i8 0, label %bb.kc
    i8 4, label %bb.kd
    i8 6, label %bb.kf
    i8 8, label %bb.kk
    i8 2, label %bb.km
    i8 3, label %bb.kn
    i8 5, label %bb.ko
    i8 7, label %bb.kq
    i8 9, label %bb.ks
    i8 1, label %bb.ku
  ]

bb.kc:                                            ; preds = %bb.kb
  %i.crq = getelementptr inbounds nuw i8, ptr %.8.i291, i64 1
  store i8 %i.crp, ptr %.8258.i290, align 1, !tbaa !99
  br label %bb.ir

bb.kd:                                            ; preds = %bb.kb
  %.sroa.0.0.copyload.i560 = load i16, ptr %.8.i291, align 1 ; 3 uses
  %i.crr = zext i16 %.sroa.0.0.copyload.i560 to i32 ; 2 uses
  %i.crs = and i32 %i.crr, 49376
  %i.crt = icmp ne i32 %i.crs, 32960
  %i.cru = and i32 %i.crr, 30
  %i.crv = icmp eq i32 %i.cru, 0
  %.not315.i334 = or i1 %i.crt, %i.crv
  %i.crw = trunc i16 %.sroa.0.0.copyload.i560 to i8
  br i1 %.not315.i334, label %.thread1658, label %bb.ke, !prof !44

bb.ke:                                            ; preds = %bb.kd
  store i16 %.sroa.0.0.copyload.i560, ptr %.8258.i290, align 1
  %i.crx = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 2
  %i.cry = getelementptr inbounds nuw i8, ptr %.8.i291, i64 2
  br label %.preheader1936.backedge

bb.kf:                                            ; preds = %bb.kb
  br i1 %i.cre, label %bb.ki, label %bb.kg, !prof !44

bb.kg:                                            ; preds = %bb.kf
  %.sroa.0.0.copyload.i333.i329 = load i32, ptr %.8.i291, align 1 ; 4 uses
  %i.crz = and i32 %.sroa.0.0.copyload.i333.i329, 12632304
  %i.csa = icmp eq i32 %i.crz, 8421600
  %i.csb = trunc i32 %.sroa.0.0.copyload.i333.i329 to i8 ; 3 uses
  br i1 %i.csa, label %bb.kh, label %.thread1658, !prof !61

bb.kh:                                            ; preds = %bb.kg
  %i.csc = and i32 %.sroa.0.0.copyload.i333.i329, 8207
  switch i32 %i.csc, label %.critedge.i330 [
    i32 8205, label %.thread1658
    i32 0, label %.thread1658
  ], !prof !150

bb.ki:                                            ; preds = %bb.kf
  %.sroa.0.0.copyload.i584 = load i16, ptr %.8.i291, align 1 ; 2 uses
  %i.csd = getelementptr inbounds nuw i8, ptr %.8.i291, i64 2
  %i.cse = load i8, ptr %i.csd, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i585 = zext i8 %i.cse to i32
  %.sroa.4.0.insert.shift.i586 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i585, 16
  %.sroa.0.0.insert.ext.i587 = zext i16 %.sroa.0.0.copyload.i584 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i588 = or disjoint i32 %.sroa.4.0.insert.shift.i586, %.sroa.0.0.insert.ext.i587 ; 2 uses
  %i.csf = and i32 %.sroa.0.0.insert.insert.i588, 12632304
  %i.csg = icmp eq i32 %i.csf, 8421600
  %i.csh = trunc i16 %.sroa.0.0.copyload.i584 to i8 ; 3 uses
  br i1 %i.csg, label %bb.kj, label %.thread1658, !prof !61

bb.kj:                                            ; preds = %bb.ki
  %i.csi = and i32 %.sroa.0.0.insert.ext.i587, 8207
  switch i32 %i.csi, label %.critedge.i330 [
    i32 8205, label %.thread1658
    i32 0, label %.thread1658
  ], !prof !150

.critedge.i330:                                   ; preds = %bb.kj, %bb.kh
  %storemerge = phi i32 [ %.sroa.0.0.copyload.i333.i329, %bb.kh ], [ %.sroa.0.0.insert.insert.i588, %bb.kj ]
  store i32 %storemerge, ptr %.8258.i290, align 1
  %i.csj = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 3
  %i.csk = getelementptr inbounds nuw i8, ptr %.8.i291, i64 3
  br label %.preheader1936.backedge

bb.kk:                                            ; preds = %bb.kb
  %.sroa.0.0.copyload.i332.i320 = load i32, ptr %.8.i291, align 1 ; 6 uses
  %i.csl = and i32 %.sroa.0.0.copyload.i332.i320, -1061109512
  %i.csm = icmp ne i32 %i.csl, -2139062032
  %i.csn = and i32 %.sroa.0.0.copyload.i332.i320, 12295
  %.not306.i321 = icmp eq i32 %i.csn, 0
  %or.cond.i322 = or i1 %i.csm, %.not306.i321
  %i.cso = trunc i32 %.sroa.0.0.copyload.i332.i320 to i8 ; 2 uses
  br i1 %or.cond.i322, label %.thread1658, label %bb.kl, !prof !151

bb.kl:                                            ; preds = %bb.kk
  %i.csp = and i32 %.sroa.0.0.copyload.i332.i320, 4
  %i.csq = icmp ne i32 %i.csp, 0
  %i.csr = and i32 %.sroa.0.0.copyload.i332.i320, 12291
  %i.css = icmp ne i32 %i.csr, 0
  %.not309.i323 = and i1 %i.csq, %i.css
  br i1 %.not309.i323, label %.thread1658, label %.critedge321.i324, !prof !44

.critedge321.i324:                                ; preds = %bb.kl
  store i32 %.sroa.0.0.copyload.i332.i320, ptr %.8258.i290, align 1
  %i.cst = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 4
  br label %.preheader1936.backedge

bb.km:                                            ; preds = %bb.kb
  %i.csu = shl nuw nsw i64 %.pre-phi3801, 1
  %i.csv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.csu
  %i.csw = load i16, ptr %i.csv, align 2
  store i16 %i.csw, ptr %.8258.i290, align 1
  %i.csx = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 2
  %i.csy = getelementptr inbounds nuw i8, ptr %.8.i291, i64 1
  br label %.preheader1936.backedge

.preheader1936.backedge:                          ; preds = %bb.km, %bb.kn, %bb.kv, %bb.kw, %bb.ke, %.critedge.i330, %.critedge321.i324, %bb.kp, %.critedge326.i306, %.critedge330.i302
  %.8258.i290.be = phi ptr [ %i.cwy, %bb.kv ], [ %i.crx, %bb.ke ], [ %i.csj, %.critedge.i330 ], [ %i.cst, %.critedge321.i324 ], [ %i.csx, %bb.km ], [ %i.ctf, %bb.kn ], [ %i.cub, %bb.kp ], [ %i.cuy, %.critedge326.i306 ], [ %i.cwu, %.critedge330.i302 ], [ %i.cxa, %bb.kw ]
  %.8.i291.be = phi ptr [ %i.cwx, %bb.kv ], [ %i.cry, %bb.ke ], [ %i.csk, %.critedge.i330 ], [ %i.crd, %.critedge321.i324 ], [ %i.csy, %bb.km ], [ %i.ctg, %bb.kn ], [ %i.cuc, %bb.kp ], [ %i.cuz, %.critedge326.i306 ], [ %i.crd, %.critedge330.i302 ], [ %i.cxb, %bb.kw ]
  br label %.preheader1936

bb.kn:                                            ; preds = %bb.kb
  store i32 808482140, ptr %.8258.i290, align 1
  %i.csz = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 4
  %i.cta = load i8, ptr %.8.i291, align 1, !tbaa !99
  %i.ctb = zext i8 %i.cta to i64
  %i.ctc = shl nuw nsw i64 %i.ctb, 1
  %i.ctd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.ctc
  %i.cte = load i16, ptr %i.ctd, align 2
  store i16 %i.cte, ptr %i.csz, align 1
  %i.ctf = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 6
  %i.ctg = getelementptr inbounds nuw i8, ptr %.8.i291, i64 1
  br label %.preheader1936.backedge

bb.ko:                                            ; preds = %bb.kb
  %.sroa.0.0.copyload.i561 = load i16, ptr %.8.i291, align 1 ; 3 uses
  %i.cth = zext i16 %.sroa.0.0.copyload.i561 to i32 ; 2 uses
  %i.cti = and i32 %i.cth, 49376
  %i.ctj = icmp ne i32 %i.cti, 32960
  %i.ctk = and i32 %i.cth, 30
  %i.ctl = icmp eq i32 %i.ctk, 0
  %.not303.i314 = or i1 %i.ctj, %i.ctl
  br i1 %.not303.i314, label %.thread1668, label %bb.kp, !prof !44

bb.kp:                                            ; preds = %bb.ko
  %i.ctm = lshr i16 %.sroa.0.0.copyload.i561, 8
  %i.ctn = trunc nuw i16 %i.ctm to i8
  %i.cto = trunc i16 %.sroa.0.0.copyload.i561 to i8 ; 2 uses
  %.tr304.i315 = shl i8 %i.cto, 6
  %i.ctp = and i8 %i.ctn, 63
  store i16 30044, ptr %.8258.i290, align 1
  %i.ctq = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 2
  %i.ctr = lshr i8 %i.cto, 1
  %i.cts = and i8 %i.ctr, 14
  %i.ctt = zext nneg i8 %i.cts to i64
  %i.ctu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.ctt
  %i.ctv = load i16, ptr %i.ctu, align 2
  store i16 %i.ctv, ptr %i.ctq, align 1
  %i.ctw = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 4
  %.narrow305.i316 = or disjoint i8 %i.ctp, %.tr304.i315
  %i.ctx = zext i8 %.narrow305.i316 to i64
  %i.cty = shl nuw nsw i64 %i.ctx, 1
  %i.ctz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cty
  %i.cua = load i16, ptr %i.ctz, align 2
  store i16 %i.cua, ptr %i.ctw, align 1
  %i.cub = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 6
  %i.cuc = getelementptr inbounds nuw i8, ptr %.8.i291, i64 2
  br label %.preheader1936.backedge

bb.kq:                                            ; preds = %bb.kb
  %.sroa.0.0.copyload.i589 = load i16, ptr %.8.i291, align 1 ; 3 uses
  %i.cud = getelementptr inbounds nuw i8, ptr %.8.i291, i64 2
  %i.cue = load i8, ptr %i.cud, align 1, !tbaa !99 ; 2 uses
  %.sroa.4.0.insert.ext.i590 = zext i8 %i.cue to i32
  %.sroa.4.0.insert.shift.i591 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i590, 16
  %.sroa.0.0.insert.ext.i592 = zext i16 %.sroa.0.0.copyload.i589 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i593 = or disjoint i32 %.sroa.4.0.insert.shift.i591, %.sroa.0.0.insert.ext.i592
  %i.cuf = and i32 %.sroa.0.0.insert.insert.i593, 12632304
  %i.cug = icmp eq i32 %i.cuf, 8421600
  br i1 %i.cug, label %bb.kr, label %.thread1668, !prof !61

bb.kr:                                            ; preds = %bb.kq
  %i.cuh = and i32 %.sroa.0.0.insert.ext.i592, 8207
  switch i32 %i.cuh, label %.critedge326.i306 [
    i32 8205, label %.thread1668
    i32 0, label %.thread1668
  ], !prof !150

.critedge326.i306:                                ; preds = %bb.kr
  %i.cui = zext i16 %.sroa.0.0.copyload.i589 to i64
  %i.cuj = shl nuw nsw i64 %i.cui, 12
  %i.cuk = lshr i16 %.sroa.0.0.copyload.i589, 2
  %i.cul = and i16 %i.cuk, 4032                   ; 2 uses
  %i.cum = zext nneg i16 %i.cul to i64
  %i.cun = and i8 %i.cue, 63
  store i16 30044, ptr %.8258.i290, align 1
  %i.cuo = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 2
  %.masked.i311 = or disjoint i64 %i.cuj, %i.cum
  %i.cup = lshr i64 %.masked.i311, 7
  %i.cuq = and i64 %i.cup, 510
  %i.cur = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cuq
  %i.cus = load i16, ptr %i.cur, align 2
  store i16 %i.cus, ptr %i.cuo, align 1
  %i.cut = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 4
  %.tr299.i312 = trunc i16 %i.cul to i8
  %.narrow300.i313 = or disjoint i8 %i.cun, %.tr299.i312
  %i.cuu = zext i8 %.narrow300.i313 to i64
  %i.cuv = shl nuw nsw i64 %i.cuu, 1
  %i.cuw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cuv
  %i.cux = load i16, ptr %i.cuw, align 2
  store i16 %i.cux, ptr %i.cut, align 1
  %i.cuy = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 6
  %i.cuz = getelementptr inbounds nuw i8, ptr %.8.i291, i64 3
  br label %.preheader1936.backedge

bb.ks:                                            ; preds = %bb.kb
  %.sroa.0.0.copyload.i.i296 = load i32, ptr %.8.i291, align 1 ; 9 uses
  %i.cva = and i32 %.sroa.0.0.copyload.i.i296, -1061109512
  %i.cvb = icmp ne i32 %i.cva, -2139062032
  %i.cvc = and i32 %.sroa.0.0.copyload.i.i296, 12295
  %.not293.i297 = icmp eq i32 %i.cvc, 0
  %or.cond328.i298 = or i1 %i.cvb, %.not293.i297
  %i.cvd = lshr i32 %.sroa.0.0.copyload.i.i296, 24
  br i1 %or.cond328.i298, label %.thread1668, label %bb.kt, !prof !151

bb.kt:                                            ; preds = %bb.ks
  %i.cve = and i32 %.sroa.0.0.copyload.i.i296, 4
  %i.cvf = icmp ne i32 %i.cve, 0
  %i.cvg = and i32 %.sroa.0.0.copyload.i.i296, 12291
  %i.cvh = icmp ne i32 %i.cvg, 0
  %.not296.i299 = and i1 %i.cvf, %i.cvh
  br i1 %.not296.i299, label %.thread1668, label %.critedge330.i302, !prof !44

.critedge330.i302:                                ; preds = %bb.kt
  %i.cvi = shl i32 %.sroa.0.0.copyload.i.i296, 18
  %i.cvj = and i32 %i.cvi, 1835008
  %i.cvk = shl i32 %.sroa.0.0.copyload.i.i296, 4
  %i.cvl = and i32 %i.cvk, 258048
  %i.cvm = lshr i32 %.sroa.0.0.copyload.i.i296, 10 ; 2 uses
  %i.cvn = and i32 %i.cvm, 3072
  %i.cvo = and i32 %i.cvd, 63
  %i.cvp = add nsw i32 %i.cvj, -65536
  %i.cvq = add nsw i32 %i.cvp, %i.cvl             ; 2 uses
  %i.cvr = or disjoint i32 %i.cvq, %i.cvn
  %i.cvs = lshr exact i32 %i.cvq, 10
  %i.cvt = add nuw nsw i32 %i.cvs, 55296
  store i16 30044, ptr %.8258.i290, align 1
  %i.cvu = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 2
  %i.cvv = lshr i32 %i.cvt, 7
  %i.cvw = and i32 %i.cvv, 65534
  %i.cvx = zext nneg i32 %i.cvw to i64
  %i.cvy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cvx
  %i.cvz = load i16, ptr %i.cvy, align 2
  store i16 %i.cvz, ptr %i.cvu, align 1
  %i.cwa = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 4
  %i.cwb = lshr exact i32 %i.cvr, 9
  %i.cwc = and i32 %i.cwb, 510
  %i.cwd = zext nneg i32 %i.cwc to i64
  %i.cwe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cwd
  %i.cwf = load i16, ptr %i.cwe, align 2
  store i16 %i.cwf, ptr %i.cwa, align 1
  %i.cwg = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 6
  store i16 30044, ptr %i.cwg, align 1
  %i.cwh = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 8
  %i.cwi = lshr i32 %.sroa.0.0.copyload.i.i296, 17
  %i.cwj = and i32 %i.cwi, 6
  %i.cwk = zext nneg i32 %i.cwj to i64
  %i.cwl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cwk
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cwl, i64 440
  %i.cwn = load i16, ptr %i.cwm, align 2
  store i16 %i.cwn, ptr %i.cwh, align 1
  %i.cwo = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 10
  %.masked = and i32 %i.cvm, 192
  %i.cwp = or disjoint i32 %i.cvo, %.masked
  %i.cwq = shl nuw nsw i32 %i.cwp, 1
  %i.cwr = zext nneg i32 %i.cwq to i64
  %i.cws = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cwr
  %i.cwt = load i16, ptr %i.cws, align 2
  store i16 %i.cwt, ptr %i.cwo, align 1
  %i.cwu = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 12
  br label %.preheader1936.backedge

bb.ku:                                            ; preds = %bb.kb, %bb.ka
  %i.cwv = phi i8 [ %i.crp, %bb.kb ], [ %i.crh, %bb.ka ]
  br i1 %.not1789, label %.thread1658, label %.thread1668

.thread1658:                                      ; preds = %bb.kk, %bb.kl, %bb.ki, %bb.kg, %bb.kj, %bb.kj, %bb.kh, %bb.kh, %bb.kd, %bb.ku
  %i.cww = phi i8 [ %i.cso, %bb.kk ], [ %i.cso, %bb.kl ], [ %i.csh, %bb.ki ], [ %i.csb, %bb.kg ], [ %i.csh, %bb.kj ], [ %i.csh, %bb.kj ], [ %i.csb, %bb.kh ], [ %i.csb, %bb.kh ], [ %i.crw, %bb.kd ], [ %i.cwv, %bb.ku ]
  br i1 %.not1773, label %.loopexit1923, label %bb.kv

bb.kv:                                            ; preds = %.thread1658
  %i.cwx = getelementptr inbounds nuw i8, ptr %.8.i291, i64 1
  %i.cwy = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 1
  store i8 %i.cww, ptr %.8258.i290, align 1, !tbaa !99
  br label %.preheader1936.backedge

.thread1668:                                      ; preds = %bb.ks, %bb.kt, %bb.kq, %bb.kr, %bb.kr, %bb.ko, %bb.ku
  br i1 %.not1773, label %.loopexit1923, label %bb.kw

bb.kw:                                            ; preds = %.thread1668
  store i16 30044, ptr %.8258.i290, align 1
  %i.cwz = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 2
  store i32 1145456198, ptr %i.cwz, align 1
  %i.cxa = getelementptr inbounds nuw i8, ptr %.8258.i290, i64 6
  %i.cxb = getelementptr inbounds nuw i8, ptr %.8.i291, i64 1
  br label %.preheader1936.backedge

bb.kx:                                            ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1216
  %i.cxc = load i64, ptr %.0498.i, align 8, !tbaa !98
  %i.cxd = and i64 %i.cxc, 24
  %.not529.i = icmp eq i64 %i.cxd, 0
  store i8 34, ptr %.0.i1214.lcssa, align 1, !tbaa !99
  br i1 %.not529.i, label %.split500.i, label %bb.ne

.split500.i:                                      ; preds = %bb.kx
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cim, i64 %i.cik ; 3 uses
  %i.cxf = ptrtoint ptr %i.cxe to i64             ; 4 uses
  %i.cxg = add i64 %i.cik, %i.cin
  br label %bb.ky

bb.ky:                                            ; preds = %bb.mj, %.split500.i
  %.pn.i189 = phi ptr [ %.0.i1214.lcssa, %.split500.i ], [ %.8258.i202, %bb.mj ]
  %.0243.i190 = phi ptr [ %i.cim, %.split500.i ], [ %i.dez, %bb.mj ] ; 3 uses
  %.0250.i191 = getelementptr inbounds nuw i8, ptr %.pn.i189, i64 1 ; 2 uses
  %i.cxh = ptrtoint ptr %.0243.i190 to i64
  %i.cxi = sub i64 %i.cxf, %i.cxh                 ; 2 uses
  %i.cxj = icmp sgt i64 %i.cxi, 15
  br i1 %i.cxj, label %.lr.ph2992, label %.preheader1927

.preheader1927:                                   ; preds = %bb.lo, %bb.ky
  %.pre-phi3797 = phi i64 [ %i.cxi, %bb.ky ], [ %i.dap, %bb.lo ]
  %.1251.i192.lcssa = phi ptr [ %.0250.i191, %bb.ky ], [ %i.dam, %bb.lo ] ; 2 uses
  %.1244.i193.lcssa = phi ptr [ %.0243.i190, %bb.ky ], [ %i.dan, %bb.lo ] ; 2 uses
  %i.cxk = icmp sgt i64 %.pre-phi3797, 3
  br i1 %i.cxk, label %.lr.ph2998, label %.preheader1925

.lr.ph2992:                                       ; preds = %bb.ky, %bb.lo
  %.1244.i1932990 = phi ptr [ %i.dan, %bb.lo ], [ %.0243.i190, %bb.ky ] ; 46 uses
  %.1251.i1922989 = phi ptr [ %i.dam, %bb.lo ], [ %.0250.i191, %bb.ky ] ; 30 uses
  %i.cxl = load i8, ptr %.1244.i1932990, align 1, !tbaa !99 ; 2 uses
  %i.cxm = zext i8 %i.cxl to i64
  %i.cxn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cxm
  %i.cxo = load i8, ptr %i.cxn, align 1, !tbaa !99
  %.not277.i260 = icmp eq i8 %i.cxo, 0
  br i1 %.not277.i260, label %bb.kz, label %.preheader1922.preheader, !prof !61

bb.kz:                                            ; preds = %.lr.ph2992
  %i.cxp = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 1
  %i.cxq = load i8, ptr %i.cxp, align 1, !tbaa !99
  %i.cxr = zext i8 %i.cxq to i64
  %i.cxs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cxr
  %i.cxt = load i8, ptr %i.cxs, align 1, !tbaa !99
  %.not278.i261 = icmp eq i8 %i.cxt, 0
  br i1 %.not278.i261, label %bb.la, label %.loopexit1929, !prof !61

bb.la:                                            ; preds = %bb.kz
  %i.cxu = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 2
  %i.cxv = load i8, ptr %i.cxu, align 1, !tbaa !99
  %i.cxw = zext i8 %i.cxv to i64
  %i.cxx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cxw
  %i.cxy = load i8, ptr %i.cxx, align 1, !tbaa !99
  %.not279.i262 = icmp eq i8 %i.cxy, 0
  br i1 %.not279.i262, label %bb.lb, label %.loopexit1930, !prof !61

bb.lb:                                            ; preds = %bb.la
  %i.cxz = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 3
  %i.cya = load i8, ptr %i.cxz, align 1, !tbaa !99
  %i.cyb = zext i8 %i.cya to i64
  %i.cyc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyb
  %i.cyd = load i8, ptr %i.cyc, align 1, !tbaa !99
  %.not280.i263 = icmp eq i8 %i.cyd, 0
  br i1 %.not280.i263, label %bb.lc, label %.loopexit1931, !prof !61

bb.lc:                                            ; preds = %bb.lb
  %i.cye = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 4
  %i.cyf = load i8, ptr %i.cye, align 1, !tbaa !99
  %i.cyg = zext i8 %i.cyf to i64
  %i.cyh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyg
  %i.cyi = load i8, ptr %i.cyh, align 1, !tbaa !99
  %.not281.i264 = icmp eq i8 %i.cyi, 0
  br i1 %.not281.i264, label %bb.ld, label %bb.lv, !prof !61

bb.ld:                                            ; preds = %bb.lc
  %i.cyj = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 5
  %i.cyk = load i8, ptr %i.cyj, align 1, !tbaa !99
  %i.cyl = zext i8 %i.cyk to i64
  %i.cym = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyl
  %i.cyn = load i8, ptr %i.cym, align 1, !tbaa !99
  %.not282.i265 = icmp eq i8 %i.cyn, 0
  br i1 %.not282.i265, label %bb.le, label %bb.lw, !prof !61

bb.le:                                            ; preds = %bb.ld
  %i.cyo = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 6
  %i.cyp = load i8, ptr %i.cyo, align 1, !tbaa !99
  %i.cyq = zext i8 %i.cyp to i64
  %i.cyr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyq
  %i.cys = load i8, ptr %i.cyr, align 1, !tbaa !99
  %.not283.i266 = icmp eq i8 %i.cys, 0
  br i1 %.not283.i266, label %bb.lf, label %bb.lx, !prof !61

bb.lf:                                            ; preds = %bb.le
  %i.cyt = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 7
  %i.cyu = load i8, ptr %i.cyt, align 1, !tbaa !99
  %i.cyv = zext i8 %i.cyu to i64
  %i.cyw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyv
  %i.cyx = load i8, ptr %i.cyw, align 1, !tbaa !99
  %.not284.i267 = icmp eq i8 %i.cyx, 0
  br i1 %.not284.i267, label %bb.lg, label %bb.ly, !prof !61

bb.lg:                                            ; preds = %bb.lf
  %i.cyy = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 8
  %i.cyz = load i8, ptr %i.cyy, align 1, !tbaa !99
  %i.cza = zext i8 %i.cyz to i64
  %i.czb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cza
  %i.czc = load i8, ptr %i.czb, align 1, !tbaa !99
  %.not285.i268 = icmp eq i8 %i.czc, 0
  br i1 %.not285.i268, label %bb.lh, label %bb.lz, !prof !61

bb.lh:                                            ; preds = %bb.lg
  %i.czd = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 9
  %i.cze = load i8, ptr %i.czd, align 1, !tbaa !99
  %i.czf = zext i8 %i.cze to i64
  %i.czg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czf
  %i.czh = load i8, ptr %i.czg, align 1, !tbaa !99
  %.not286.i269 = icmp eq i8 %i.czh, 0
  br i1 %.not286.i269, label %bb.li, label %bb.ma, !prof !61

bb.li:                                            ; preds = %bb.lh
  %i.czi = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 10
  %i.czj = load i8, ptr %i.czi, align 1, !tbaa !99
  %i.czk = zext i8 %i.czj to i64
  %i.czl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czk
  %i.czm = load i8, ptr %i.czl, align 1, !tbaa !99
  %.not287.i270 = icmp eq i8 %i.czm, 0
  br i1 %.not287.i270, label %bb.lj, label %bb.mb, !prof !61

bb.lj:                                            ; preds = %bb.li
  %i.czn = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 11
  %i.czo = load i8, ptr %i.czn, align 1, !tbaa !99
  %i.czp = zext i8 %i.czo to i64
  %i.czq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czp
  %i.czr = load i8, ptr %i.czq, align 1, !tbaa !99
  %.not288.i271 = icmp eq i8 %i.czr, 0
  br i1 %.not288.i271, label %bb.lk, label %bb.mc, !prof !61

bb.lk:                                            ; preds = %bb.lj
  %i.czs = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 12
  %i.czt = load i8, ptr %i.czs, align 1, !tbaa !99
  %i.czu = zext i8 %i.czt to i64
  %i.czv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czu
  %i.czw = load i8, ptr %i.czv, align 1, !tbaa !99
  %.not289.i272 = icmp eq i8 %i.czw, 0
  br i1 %.not289.i272, label %bb.ll, label %bb.md, !prof !61

bb.ll:                                            ; preds = %bb.lk
  %i.czx = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 13
  %i.czy = load i8, ptr %i.czx, align 1, !tbaa !99
  %i.czz = zext i8 %i.czy to i64
  %i.daa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czz
  %i.dab = load i8, ptr %i.daa, align 1, !tbaa !99
  %.not290.i273 = icmp eq i8 %i.dab, 0
  br i1 %.not290.i273, label %bb.lm, label %bb.me, !prof !61

bb.lm:                                            ; preds = %bb.ll
  %i.dac = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 14
  %i.dad = load i8, ptr %i.dac, align 1, !tbaa !99
  %i.dae = zext i8 %i.dad to i64
  %i.daf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dae
  %i.dag = load i8, ptr %i.daf, align 1, !tbaa !99
  %.not291.i274 = icmp eq i8 %i.dag, 0
  br i1 %.not291.i274, label %bb.ln, label %bb.mf, !prof !61

bb.ln:                                            ; preds = %bb.lm
  %i.dah = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 15
  %i.dai = load i8, ptr %i.dah, align 1, !tbaa !99
  %i.daj = zext i8 %i.dai to i64
  %i.dak = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.daj
  %i.dal = load i8, ptr %i.dak, align 1, !tbaa !99
  %.not292.i275 = icmp eq i8 %i.dal, 0
  br i1 %.not292.i275, label %bb.lo, label %bb.mg, !prof !61

bb.lo:                                            ; preds = %bb.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i1932990, i64 16, i1 false)
  %i.dam = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 16 ; 2 uses
  %i.dan = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 16 ; 3 uses
  %i.dao = ptrtoint ptr %i.dan to i64
  %i.dap = sub i64 %i.cxf, %i.dao                 ; 2 uses
  %i.daq = icmp sgt i64 %i.dap, 15
  br i1 %i.daq, label %.lr.ph2992, label %.preheader1927, !llvm.loop !31

.preheader1925:                                   ; preds = %bb.lt, %.preheader1927
  %.2252.i194.lcssa = phi ptr [ %.1251.i192.lcssa, %.preheader1927 ], [ %i.dby, %bb.lt ] ; 3 uses
  %.2245.i195.lcssa = phi ptr [ %.1244.i193.lcssa, %.preheader1927 ], [ %i.dbz, %bb.lt ] ; 5 uses
  %i.dar = icmp ugt ptr %i.cxe, %.2245.i195.lcssa
  br i1 %i.dar, label %.lr.ph3003.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364

.lr.ph3003.preheader:                             ; preds = %.preheader1925
  %.2245.i195.lcssa3702 = ptrtoaddr ptr %.2245.i195.lcssa to i64 ; 2 uses
  %i.das = getelementptr i8, ptr %.2245.i195.lcssa, i64 %i.cik
  %scevgep3701 = getelementptr i8, ptr %i.das, i64 %i.cin
  %i.dat = sub i64 0, %.2245.i195.lcssa3702
  %scevgep3703 = getelementptr i8, ptr %scevgep3701, i64 %i.dat
  %i.dau = sub i64 %i.cxg, %.2245.i195.lcssa3702
  %i.dav = freeze i64 %i.dau                      ; 2 uses
  %i.daw = add i64 %i.dav, -1
  %xtraiter6729 = and i64 %i.dav, 3               ; 2 uses
  %lcmp.mod6730.not = icmp eq i64 %xtraiter6729, 0
  br i1 %lcmp.mod6730.not, label %.lr.ph3003.prol.loopexit, label %.lr.ph3003.prol

.lr.ph3003.prol:                                  ; preds = %.lr.ph3003.preheader, %bb.lp
  %.3246.i1973002.prol = phi ptr [ %i.dbb, %bb.lp ], [ %.2245.i195.lcssa, %.lr.ph3003.preheader ] ; 3 uses
  %.3253.i1963001.prol = phi ptr [ %i.dbc, %bb.lp ], [ %.2252.i194.lcssa, %.lr.ph3003.preheader ] ; 3 uses
  %prol.iter6731 = phi i64 [ %prol.iter6731.next, %bb.lp ], [ 0, %.lr.ph3003.preheader ]
  %i.dax = load i8, ptr %.3246.i1973002.prol, align 1, !tbaa !99 ; 2 uses
  %i.day = zext i8 %i.dax to i64
  %i.daz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.day
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.dbm = load i8, ptr %i.dbl, align 1, !tbaa !99
  %.not274.i251 = icmp eq i8 %i.dbm, 0
  br i1 %.not274.i251, label %bb.lr, label %.loopexit1929, !prof !61

bb.lr:                                            ; preds = %bb.lq
  %i.dbn = getelementptr inbounds nuw i8, ptr %.2245.i1952997, i64 2
  %i.dbo = load i8, ptr %i.dbn, align 1, !tbaa !99
  %i.dbp = zext i8 %i.dbo to i64
  %i.dbq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dbp
  %i.dbr = load i8, ptr %i.dbq, align 1, !tbaa !99
  %.not275.i254 = icmp eq i8 %i.dbr, 0
  br i1 %.not275.i254, label %bb.ls, label %.loopexit1930, !prof !61

bb.ls:                                            ; preds = %bb.lr
  %i.dbs = getelementptr inbounds nuw i8, ptr %.2245.i1952997, i64 3
  %i.dbt = load i8, ptr %i.dbs, align 1, !tbaa !99
  %i.dbu = zext i8 %i.dbt to i64
  %i.dbv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dbu
  %i.dbw = load i8, ptr %i.dbv, align 1, !tbaa !99
  %.not276.i257 = icmp eq i8 %i.dbw, 0
  br i1 %.not276.i257, label %bb.lt, label %.loopexit1931, !prof !61

bb.lt:                                            ; preds = %bb.ls
  %i.dbx = load i32, ptr %.2245.i1952997, align 1
  store i32 %i.dbx, ptr %.2252.i1942996, align 1
  %i.dby = getelementptr inbounds nuw i8, ptr %.2252.i1942996, i64 4 ; 2 uses
  %i.dbz = getelementptr inbounds nuw i8, ptr %.2245.i1952997, i64 4 ; 3 uses
  %i.dca = ptrtoint ptr %i.dbz to i64
  %i.dcb = sub i64 %i.cxf, %i.dca
  %i.dcc = icmp sgt i64 %i.dcb, 3
  br i1 %i.dcc, label %.lr.ph2998, label %.preheader1925, !llvm.loop !32

.lr.ph3003:                                       ; preds = %.lr.ph3003.prol.loopexit, %bb.lu
  %.3246.i1973002 = phi ptr [ %i.dcz, %bb.lu ], [ %.3246.i1973002.unr, %.lr.ph3003.prol.loopexit ] ; 9 uses
  %.3253.i1963001 = phi ptr [ %i.dda, %bb.lu ], [ %.3253.i1963001.unr, %.lr.ph3003.prol.loopexit ] ; 6 uses
  %i.dcd = load i8, ptr %.3246.i1973002, align 1, !tbaa !99 ; 2 uses
  %i.dce = zext i8 %i.dcd to i64
  %i.dcf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dce
  %i.dcg = load i8, ptr %i.dcf, align 1, !tbaa !99
  %.not.i199 = icmp eq i8 %i.dcg, 0
  br i1 %.not.i199, label %.lr.ph3003.1, label %.preheader1922.preheader, !prof !61

.lr.ph3003.1:                                     ; preds = %.lr.ph3003
  %i.dch = getelementptr inbounds nuw i8, ptr %.3246.i1973002, i64 1
  %i.dci = getelementptr inbounds nuw i8, ptr %.3253.i1963001, i64 1 ; 2 uses
  store i8 %i.dcd, ptr %.3253.i1963001, align 1, !tbaa !99
  %i.dcj = load i8, ptr %i.dch, align 1, !tbaa !99 ; 2 uses
  %i.dck = zext i8 %i.dcj to i64
  %i.dcl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dck
  %i.dcm = load i8, ptr %i.dcl, align 1, !tbaa !99
  %.not.i199.1 = icmp eq i8 %i.dcm, 0
  br i1 %.not.i199.1, label %.lr.ph3003.2, label %.preheader1922.preheader.loopexit.loopexit.split.loop.exit7454, !prof !61

.lr.ph3003.2:                                     ; preds = %.lr.ph3003.1
  %i.dcn = getelementptr inbounds nuw i8, ptr %.3246.i1973002, i64 2
  %i.dco = getelementptr inbounds nuw i8, ptr %.3253.i1963001, i64 2 ; 2 uses
  store i8 %i.dcj, ptr %i.dci, align 1, !tbaa !99
  %i.dcp = load i8, ptr %i.dcn, align 1, !tbaa !99 ; 2 uses
  %i.dcq = zext i8 %i.dcp to i64
  %i.dcr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dcq
  %i.dcs = load i8, ptr %i.dcr, align 1, !tbaa !99
  %.not.i199.2 = icmp eq i8 %i.dcs, 0
  br i1 %.not.i199.2, label %.lr.ph3003.3, label %.preheader1922.preheader.loopexit.loopexit.split.loop.exit7451, !prof !61

.lr.ph3003.3:                                     ; preds = %.lr.ph3003.2
  %i.dct = getelementptr inbounds nuw i8, ptr %.3246.i1973002, i64 3
  %i.dcu = getelementptr inbounds nuw i8, ptr %.3253.i1963001, i64 3 ; 2 uses
  store i8 %i.dcp, ptr %i.dco, align 1, !tbaa !99
  %i.dcv = load i8, ptr %i.dct, align 1, !tbaa !99 ; 2 uses
  %i.dcw = zext i8 %i.dcv to i64
  %i.dcx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dcw
  %i.dcy = load i8, ptr %i.dcx, align 1, !tbaa !99
  %.not.i199.3 = icmp eq i8 %i.dcy, 0
  br i1 %.not.i199.3, label %bb.lu, label %.preheader1922.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.lu:                                            ; preds = %.lr.ph3003.3
  %i.dcz = getelementptr inbounds nuw i8, ptr %.3246.i1973002, i64 4 ; 2 uses
  %i.dda = getelementptr inbounds nuw i8, ptr %.3253.i1963001, i64 4 ; 2 uses
  store i8 %i.dcv, ptr %i.dcu, align 1, !tbaa !99
  %exitcond3704.not.3 = icmp eq ptr %i.dcz, %scevgep3703
  br i1 %exitcond3704.not.3, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364, label %.lr.ph3003, !llvm.loop !33

.loopexit1929:                                    ; preds = %bb.kz, %bb.lq
  %i.ddb = phi i8 [ %i.dbe, %bb.lq ], [ %i.cxl, %bb.kz ]
  %.5255.i252 = phi ptr [ %.2252.i1942996, %bb.lq ], [ %.1251.i1922989, %bb.kz ] ; 2 uses
  %.5248.i253 = phi ptr [ %.2245.i1952997, %bb.lq ], [ %.1244.i1932990, %bb.kz ]
  store i8 %i.ddb, ptr %.5255.i252, align 1
  %i.ddc = getelementptr inbounds nuw i8, ptr %.5255.i252, i64 1
  %i.ddd = getelementptr inbounds nuw i8, ptr %.5248.i253, i64 1
  br label %.preheader1922.preheader

.loopexit1930:                                    ; preds = %bb.la, %bb.lr
  %.6256.i255 = phi ptr [ %.2252.i1942996, %bb.lr ], [ %.1251.i1922989, %bb.la ] ; 2 uses
  %.6.i256 = phi ptr [ %.2245.i1952997, %bb.lr ], [ %.1244.i1932990, %bb.la ] ; 2 uses
  %i.dde = load i16, ptr %.6.i256, align 1
  store i16 %i.dde, ptr %.6256.i255, align 1
  %i.ddf = getelementptr inbounds nuw i8, ptr %.6256.i255, i64 2
  %i.ddg = getelementptr inbounds nuw i8, ptr %.6.i256, i64 2
  br label %.preheader1922.preheader

.loopexit1931:                                    ; preds = %bb.lb, %bb.ls
  %.7257.i258 = phi ptr [ %.2252.i1942996, %bb.ls ], [ %.1251.i1922989, %bb.lb ] ; 2 uses
  %.7.i259 = phi ptr [ %.2245.i1952997, %bb.ls ], [ %.1244.i1932990, %bb.lb ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i258, ptr noundef nonnull align 1 dereferenceable(3) %.7.i259, i64 3, i1 false)
  %i.ddh = getelementptr inbounds nuw i8, ptr %.7257.i258, i64 3
  %i.ddi = getelementptr inbounds nuw i8, ptr %.7.i259, i64 3
  br label %.preheader1922.preheader

bb.lv:                                            ; preds = %bb.lc
  %i.ddj = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 4
  %i.ddk = load i32, ptr %.1244.i1932990, align 1
  store i32 %i.ddk, ptr %.1251.i1922989, align 1
  %i.ddl = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 4
  br label %.preheader1922.preheader

bb.lw:                                            ; preds = %bb.ld
  %i.ddm = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i1932990, i64 5, i1 false)
  %i.ddn = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 5
  br label %.preheader1922.preheader

bb.lx:                                            ; preds = %bb.le
  %i.ddo = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i1932990, i64 6, i1 false)
  %i.ddp = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 6
  br label %.preheader1922.preheader

bb.ly:                                            ; preds = %bb.lf
  %i.ddq = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i1932990, i64 7, i1 false)
  %i.ddr = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 7
  br label %.preheader1922.preheader

bb.lz:                                            ; preds = %bb.lg
  %i.dds = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 8
  %i.ddt = load i64, ptr %.1244.i1932990, align 1
  store i64 %i.ddt, ptr %.1251.i1922989, align 1
  %i.ddu = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 8
  br label %.preheader1922.preheader

bb.ma:                                            ; preds = %bb.lh
  %i.ddv = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i1932990, i64 9, i1 false)
  %i.ddw = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 9
  br label %.preheader1922.preheader

bb.mb:                                            ; preds = %bb.li
  %i.ddx = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i1932990, i64 10, i1 false)
  %i.ddy = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 10
  br label %.preheader1922.preheader

bb.mc:                                            ; preds = %bb.lj
  %i.ddz = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i1932990, i64 11, i1 false)
  %i.dea = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 11
  br label %.preheader1922.preheader

bb.md:                                            ; preds = %bb.lk
  %i.deb = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i1932990, i64 12, i1 false)
  %i.dec = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 12
  br label %.preheader1922.preheader

bb.me:                                            ; preds = %bb.ll
  %i.ded = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i1932990, i64 13, i1 false)
  %i.dee = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 13
  br label %.preheader1922.preheader

bb.mf:                                            ; preds = %bb.lm
  %i.def = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i1932990, i64 14, i1 false)
  %i.deg = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 14
  br label %.preheader1922.preheader

bb.mg:                                            ; preds = %bb.ln
  %i.deh = getelementptr inbounds nuw i8, ptr %.1244.i1932990, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i1922989, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i1932990, i64 15, i1 false)
  %i.dei = getelementptr inbounds nuw i8, ptr %.1251.i1922989, i64 15
  br label %.preheader1922.preheader

.preheader1922.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph3003.3
  %i.dej = getelementptr inbounds nuw i8, ptr %.3246.i1973002, i64 3
  br label %.preheader1922.preheader

.preheader1922.preheader.loopexit.loopexit.split.loop.exit7451: ; preds = %.lr.ph3003.2
  %i.dek = getelementptr inbounds nuw i8, ptr %.3246.i1973002, i64 2
  br label %.preheader1922.preheader

.preheader1922.preheader.loopexit.loopexit.split.loop.exit7454: ; preds = %.lr.ph3003.1
  %i.del = getelementptr inbounds nuw i8, ptr %.3246.i1973002, i64 1
  br label %.preheader1922.preheader

.preheader1922.preheader:                         ; preds = %.lr.ph2992, %.lr.ph2998, %.lr.ph3003, %.preheader1922.preheader.loopexit.loopexit.split.loop.exit7454, %.preheader1922.preheader.loopexit.loopexit.split.loop.exit7451, %.preheader1922.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph3003.prol, %.loopexit1929, %.loopexit1930, %.loopexit1931, %bb.lv, %bb.lw, %bb.lx, %bb.ly, %bb.lz, %bb.ma, %bb.mb, %bb.mc, %bb.md, %bb.me, %bb.mf, %bb.mg
  %.8258.i202.ph = phi ptr [ %.2252.i1942996, %.lr.ph2998 ], [ %.3253.i1963001.prol, %.lr.ph3003.prol ], [ %i.ddc, %.loopexit1929 ], [ %i.ddf, %.loopexit1930 ], [ %i.ddh, %.loopexit1931 ], [ %i.ddl, %bb.lv ], [ %i.ddn, %bb.lw ], [ %i.ddp, %bb.lx ], [ %i.ddr, %bb.ly ], [ %i.ddu, %bb.lz ], [ %i.ddw, %bb.ma ], [ %i.ddy, %bb.mb ], [ %i.dea, %bb.mc ], [ %i.dec, %bb.md ], [ %i.dee, %bb.me ], [ %i.deg, %bb.mf ], [ %i.dei, %bb.mg ], [ %.3253.i1963001, %.lr.ph3003 ], [ %i.dci, %.preheader1922.preheader.loopexit.loopexit.split.loop.exit7454 ], [ %i.dco, %.preheader1922.preheader.loopexit.loopexit.split.loop.exit7451 ], [ %i.dcu, %.preheader1922.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i1922989, %.lr.ph2992 ]
  %.8.i203.ph = phi ptr [ %.2245.i1952997, %.lr.ph2998 ], [ %.3246.i1973002.prol, %.lr.ph3003.prol ], [ %i.ddd, %.loopexit1929 ], [ %i.ddg, %.loopexit1930 ], [ %i.ddi, %.loopexit1931 ], [ %i.ddj, %bb.lv ], [ %i.ddm, %bb.lw ], [ %i.ddo, %bb.lx ], [ %i.ddq, %bb.ly ], [ %i.dds, %bb.lz ], [ %i.ddv, %bb.ma ], [ %i.ddx, %bb.mb ], [ %i.ddz, %bb.mc ], [ %i.deb, %bb.md ], [ %i.ded, %bb.me ], [ %i.def, %bb.mf ], [ %i.deh, %bb.mg ], [ %.3246.i1973002, %.lr.ph3003 ], [ %i.del, %.preheader1922.preheader.loopexit.loopexit.split.loop.exit7454 ], [ %i.dek, %.preheader1922.preheader.loopexit.loopexit.split.loop.exit7451 ], [ %i.dej, %.preheader1922.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i1932990, %.lr.ph2992 ]
  br label %.preheader1922

.preheader1922:                                   ; preds = %.preheader1922.backedge, %.preheader1922.preheader
  %.8258.i202 = phi ptr [ %.8258.i202.ph, %.preheader1922.preheader ], [ %.8258.i202.be, %.preheader1922.backedge ] ; 34 uses
  %.8.i203 = phi ptr [ %.8.i203.ph, %.preheader1922.preheader ], [ %.8.i203.be, %.preheader1922.backedge ] ; 23 uses
  %i.dem = getelementptr inbounds nuw i8, ptr %.8.i203, i64 4 ; 3 uses
  %i.den = icmp ugt ptr %i.dem, %i.cxe            ; 2 uses
  br i1 %i.den, label %bb.mh, label %._crit_edge3758, !prof !44

._crit_edge3758:                                  ; preds = %.preheader1922
  %.pre3759 = load i8, ptr %.8.i203, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert3760 = zext i8 %.pre3759 to i64 ; 2 uses
  %.phi.trans.insert3761 = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %.phi.trans.insert3760
  %.pre3762 = load i8, ptr %.phi.trans.insert3761, align 1, !tbaa !99
  br label %bb.mi

bb.mh:                                            ; preds = %.preheader1922
  %i.deo = ptrtoint ptr %.8.i203 to i64
  %i.dep = sub i64 %i.cxf, %i.deo
  %i.deq = load i8, ptr %.8.i203, align 1, !tbaa !99 ; 3 uses
  %i.der = zext i8 %i.deq to i64                  ; 2 uses
  %i.des = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.der
  %i.det = load i8, ptr %i.des, align 1, !tbaa !99 ; 2 uses
  %i.deu = lshr i8 %i.det, 1
  %i.dev = zext nneg i8 %i.deu to i64
  %i.dew = icmp slt i64 %i.dep, %i.dev
  br i1 %i.dew, label %bb.nb, label %bb.mi

bb.mi:                                            ; preds = %._crit_edge3758, %bb.mh
  %.pre-phi3798 = phi i64 [ %.phi.trans.insert3760, %._crit_edge3758 ], [ %i.der, %bb.mh ]
  %i.dex = phi i8 [ %.pre3762, %._crit_edge3758 ], [ %i.det, %bb.mh ]
  %i.dey = phi i8 [ %.pre3759, %._crit_edge3758 ], [ %i.deq, %bb.mh ] ; 2 uses
  switch i8 %i.dex, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364 [
    i8 0, label %bb.mj
    i8 4, label %bb.mk
    i8 6, label %bb.mm
    i8 8, label %bb.mr
    i8 2, label %bb.mt
    i8 3, label %bb.mu
    i8 5, label %bb.mv
    i8 7, label %bb.mx
    i8 9, label %bb.mz
    i8 1, label %bb.nb
  ]

bb.mj:                                            ; preds = %bb.mi
  %i.dez = getelementptr inbounds nuw i8, ptr %.8.i203, i64 1
  store i8 %i.dey, ptr %.8258.i202, align 1, !tbaa !99
  br label %bb.ky

bb.mk:                                            ; preds = %bb.mi
  %.sroa.0.0.copyload.i562 = load i16, ptr %.8.i203, align 1 ; 3 uses
  %i.dfa = zext i16 %.sroa.0.0.copyload.i562 to i32 ; 2 uses
  %i.dfb = and i32 %i.dfa, 49376
  %i.dfc = icmp ne i32 %i.dfb, 32960
  %i.dfd = and i32 %i.dfa, 30
  %i.dfe = icmp eq i32 %i.dfd, 0
  %.not315.i246 = or i1 %i.dfc, %i.dfe
  %i.dff = trunc i16 %.sroa.0.0.copyload.i562 to i8
  br i1 %.not315.i246, label %.thread1678, label %bb.ml, !prof !44

bb.ml:                                            ; preds = %bb.mk
  store i16 %.sroa.0.0.copyload.i562, ptr %.8258.i202, align 1
  %i.dfg = getelementptr inbounds nuw i8, ptr %.8258.i202, i64 2
  %i.dfh = getelementptr inbounds nuw i8, ptr %.8.i203, i64 2
  br label %.preheader1922.backedge

bb.mm:                                            ; preds = %bb.mi
  br i1 %i.den, label %bb.mp, label %bb.mn, !prof !44

bb.mn:                                            ; preds = %bb.mm
  %.sroa.0.0.copyload.i333.i241 = load i32, ptr %.8.i203, align 1 ; 4 uses
  %i.dfi = and i32 %.sroa.0.0.copyload.i333.i241, 12632304
  %i.dfj = icmp eq i32 %i.dfi, 8421600
  %i.dfk = trunc i32 %.sroa.0.0.copyload.i333.i241 to i8 ; 3 uses
  br i1 %i.dfj, label %bb.mo, label %.thread1678, !prof !61

bb.mo:                                            ; preds = %bb.mn
  %i.dfl = and i32 %.sroa.0.0.copyload.i333.i241, 8207
  switch i32 %i.dfl, label %.critedge.i242 [
    i32 8205, label %.thread1678
    i32 0, label %.thread1678
  ], !prof !150

bb.mp:                                            ; preds = %bb.mm
  %.sroa.0.0.copyload.i594 = load i16, ptr %.8.i203, align 1 ; 2 uses
  %i.dfm = getelementptr inbounds nuw i8, ptr %.8.i203, i64 2
  %i.dfn = load i8, ptr %i.dfm, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i595 = zext i8 %i.dfn to i32
  %.sroa.4.0.insert.shift.i596 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i595, 16
  %.sroa.0.0.insert.ext.i597 = zext i16 %.sroa.0.0.copyload.i594 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i598 = or disjoint i32 %.sroa.4.0.insert.shift.i596, %.sroa.0.0.insert.ext.i597 ; 2 uses
  %i.dfo = and i32 %.sroa.0.0.insert.insert.i598, 12632304
  %i.dfp = icmp eq i32 %i.dfo, 8421600
  %i.dfq = trunc i16 %.sroa.0.0.copyload.i594 to i8 ; 3 uses
  br i1 %i.dfp, label %bb.mq, label %.thread1678, !prof !61

bb.mq:                                            ; preds = %bb.mp
  %i.dfr = and i32 %.sroa.0.0.insert.ext.i597, 8207
  switch i32 %i.dfr, label %.critedge.i242 [
    i32 8205, label %.thread1678
    i32 0, label %.thread1678
  ], !prof !150

.critedge.i242:                                   ; preds = %bb.mq, %bb.mo
  %storemerge1787 = phi i32 [ %.sroa.0.0.copyload.i333.i241, %bb.mo ], [ %.sroa.0.0.insert.insert.i598, %bb.mq ]
  store i32 %storemerge1787, ptr %.8258.i202, align 1
  %i.dfs = getelementptr inbounds nuw i8, ptr %.8258.i202, i64 3
  %i.dft = getelementptr inbounds nuw i8, ptr %.8.i203, i64 3
  br label %.preheader1922.backedge

bb.mr:                                            ; preds = %bb.mi
  %.sroa.0.0.copyload.i332.i232 = load i32, ptr %.8.i203, align 1 ; 6 uses
  %i.dfu = and i32 %.sroa.0.0.copyload.i332.i232, -1061109512
  %i.dfv = icmp ne i32 %i.dfu, -2139062032
  %i.dfw = and i32 %.sroa.0.0.copyload.i332.i232, 12295
  %.not306.i233 = icmp eq i32 %i.dfw, 0
  %or.cond.i234 = or i1 %i.dfv, %.not306.i233
  %i.dfx = trunc i32 %.sroa.0.0.copyload.i332.i232 to i8 ; 2 uses
  br i1 %or.cond.i234, label %.thread1678, label %bb.ms, !prof !151

bb.ms:                                            ; preds = %bb.mr
  %i.dfy = and i32 %.sroa.0.0.copyload.i332.i232, 4
  %i.dfz = icmp ne i32 %i.dfy, 0
  %i.dga = and i32 %.sroa.0.0.copyload.i332.i232, 12291
  %i.dgb = icmp ne i32 %i.dga, 0
  %.not309.i235 = and i1 %i.dfz, %i.dgb
  br i1 %.not309.i235, label %.thread1678, label %.critedge321.i236, !prof !44

.critedge321.i236:                                ; preds = %bb.ms
  store i32 %.sroa.0.0.copyload.i332.i232, ptr %.8258.i202, align 1
  %i.dgc = getelementptr inbounds nuw i8, ptr %.8258.i202, i64 4
  br label %.preheader1922.backedge

bb.mt:                                            ; preds = %bb.mi
  %i.dgd = shl nuw nsw i64 %.pre-phi3798, 1
  %i.dge = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.dgd
  %i.dgf = load i16, ptr %i.dge, align 2
  store i16 %i.dgf, ptr %.8258.i202, align 1
  %i.dgg = getelementptr inbounds nuw i8, ptr %.8258.i202, i64 2
  %i.dgh = getelementptr inbounds nuw i8, ptr %.8.i203, i64 1
  br label %.preheader1922.backedge

.preheader1922.backedge:                          ; preds = %bb.mt, %bb.mu, %bb.nc, %bb.nd, %bb.ml, %.critedge.i242, %.critedge321.i236, %bb.mw, %.critedge326.i218, %.critedge330.i214
  %.8258.i202.be = phi ptr [ %i.dkh, %bb.nc ], [ %i.dfg, %bb.ml ], [ %i.dfs, %.critedge.i242 ], [ %i.dgc, %.critedge321.i236 ], [ %i.dgg, %bb.mt ], [ %i.dgo, %bb.mu ], [ %i.dhk, %bb.mw ], [ %i.dih, %.critedge326.i218 ], [ %i.dkd, %.critedge330.i214 ], [ %i.dkj, %bb.nd ]
  %.8.i203.be = phi ptr [ %i.dkg, %bb.nc ], [ %i.dfh, %bb.ml ], [ %i.dft, %.critedge.i242 ], [ %i.dem, %.critedge321.i236 ], [ %i.dgh, %bb.mt ], [ %i.dgp, %bb.mu ], [ %i.dhl, %bb.mw ], [ %i.dii, %.critedge326.i218 ], [ %i.dem, %.critedge330.i214 ], [ %i.dkk, %bb.nd ]
  br label %.preheader1922

bb.mu:                                            ; preds = %bb.mi
  store i32 808482140, ptr %.8258.i202, align 1
  %i.dgi = getelementptr inbounds nuw i8, ptr %.8258.i202, i64 4
  %i.dgj = load i8, ptr %.8.i203, align 1, !tbaa !99
  %i.dgk = zext i8 %i.dgj to i64
  %i.dgl = shl nuw nsw i64 %i.dgk, 1
  %i.dgm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.dgl
  %i.dgn = load i16, ptr %i.dgm, align 2
  store i16 %i.dgn, ptr %i.dgi, align 1
  %i.dgo = getelementptr inbounds nuw i8, ptr %.8258.i202, i64 6
  %i.dgp = getelementptr inbounds nuw i8, ptr %.8.i203, i64 1
  br label %.preheader1922.backedge

bb.mv:                                            ; preds = %bb.mi
  %.sroa.0.0.copyload.i563 = load i16, ptr %.8.i203, align 1 ; 3 uses
  %i.dgq = zext i16 %.sroa.0.0.copyload.i563 to i32 ; 2 uses
  %i.dgr = and i32 %i.dgq, 49376
  %i.dgs = icmp ne i32 %i.dgr, 32960
  %i.dgt = and i32 %i.dgq, 30
  %i.dgu = icmp eq i32 %i.dgt, 0
  %.not303.i226 = or i1 %i.dgs, %i.dgu
  br i1 %.not303.i226, label %.thread1688, label %bb.mw, !prof !44

bb.mw:                                            ; preds = %bb.mv
  %i.dgv = lshr i16 %.sroa.0.0.copyload.i563, 8
  %i.dgw = trunc nuw i16 %i.dgv to i8
  %i.dgx = trunc i16 %.sroa.0.0.copyload.i563 to i8 ; 2 uses
  %.tr304.i227 = shl i8 %i.dgx, 6
  %i.dgy = and i8 %i.dgw, 63
  store i16 30044, ptr %.8258.i202, align 1
  %i.dgz = getelementptr inbounds nuw i8, ptr %.8258.i202, i64 2
  %i.dha = lshr i8 %i.dgx, 1
  %i.dhb = and i8 %i.dha, 14
  %i.dhc = zext nneg i8 %i.dhb to i64
  %i.dhd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.dhc
  %i.dhe = load i16, ptr %i.dhd, align 2
  store i16 %i.dhe, ptr %i.dgz, align 1
  %i.dhf = getelementptr inbounds nuw i8, ptr %.8258.i202, i64 4
  %.narrow305.i228 = or disjoint i8 %i.dgy, %.tr304.i227
  %i.dhg = zext i8 %.narrow305.i228 to i64
  %i.dhh = shl nuw nsw i64 %i.dhg, 1
  %i.dhi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.dhh
  %i.dhj = load i16, ptr %i.dhi, align 2
  store i16 %i.dhj, ptr %i.dhf, align 1
  %i.dhk = getelementptr inbounds nuw i8, ptr %.8258.i202, i64 6
  %i.dhl = getelementptr inbounds nuw i8, ptr %.8.i203, i64 2
  br label %.preheader1922.backedge

bb.mx:                                            ; preds = %bb.mi
  %.sroa.0.0.copyload.i599 = load i16, ptr %.8.i203, align 1 ; 3 uses
  %i.dhm = getelementptr inbounds nuw i8, ptr %.8.i203, i64 2
  %i.dhn = load i8, ptr %i.dhm, align 1, !tbaa !99 ; 2 uses
  %.sroa.4.0.insert.ext.i600 = zext i8 %i.dhn to i32
  %.sroa.4.0.insert.shift.i601 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i600, 16
  %.sroa.0.0.insert.ext.i602 = zext i16 %.sroa.0.0.copyload.i599 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i603 = or disjoint i32 %.sroa.4.0.insert.shift.i601, %.sroa.0.0.insert.ext.i602
  %i.dho = and i32 %.sroa.0.0.insert.insert.i603, 12632304
  %i.dhp = icmp eq i32 %i.dho, 8421600
  br i1 %i.dhp, label %bb.my, label %.thread1688, !prof !61

bb.my:                                            ; preds = %bb.mx
  %i.dhq = and i32 %.sroa.0.0.insert.ext.i602, 8207
  switch i32 %i.dhq, label %.critedge326.i218 [
    i32 8205, label %.thread1688
    i32 0, label %.thread1688
  ], !prof !150

.critedge326.i218:                                ; preds = %bb.my
  %i.dhr = zext i16 %.sroa.0.0.copyload.i599 to i64
end_hunk_5
begin_hunk_6_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
vector.ph5946:                                    ; preds = %.lr.ph2967.preheader
  %n.vec5947 = and i64 %i.dkq, 9223372036854775800 ; 4 uses
  %i.dks = shl i64 %n.vec5947, 2
  %i.dkt = sub i64 %.0.i66.lcssa, %i.dks          ; 2 uses
  %i.dku = shl i64 %n.vec5947, 2                  ; 2 uses
  %i.dkv = getelementptr i8, ptr %.018.i65.lcssa, i64 %i.dku ; 2 uses
  %i.dkw = getelementptr i8, ptr %.021.i64.lcssa, i64 %i.dku ; 2 uses
  br label %vector.body5948

vector.body5948:                                  ; preds = %vector.body5948, %vector.ph5946
  %index5949.a = phi i64 [ 0, %vector.ph5946 ], [ %index.next5954, %vector.body5948 ] ; 2 uses
  %i.dkx = shl i64 %index5949.a, 2                ; 2 uses
  %next.gep5950.a = getelementptr i8, ptr %.018.i65.lcssa, i64 %i.dkx ; 2 uses
  %next.gep5951.a = getelementptr i8, ptr %.021.i64.lcssa, i64 %i.dkx ; 2 uses
  %i.dky = getelementptr i8, ptr %next.gep5950.a, i64 16
  %wide.load5952.a = load <4 x i32>, ptr %next.gep5950.a, align 1
  %wide.load5953 = load <4 x i32>, ptr %i.dky, align 1
  %i.dkz = getelementptr i8, ptr %next.gep5951.a, i64 16
  store <4 x i32> %wide.load5952.a, ptr %next.gep5951.a, align 1
  store <4 x i32> %wide.load5953, ptr %i.dkz, align 1
  %index.next5954 = add nuw i64 %index5949.a, 8   ; 2 uses
  %i.dla = icmp eq i64 %index.next5954, %n.vec5947
  br i1 %i.dla, label %middle.block5955, label %vector.body5948, !llvm.loop !305

middle.block5955:                                 ; preds = %vector.body5948
  %cmp.n5956 = icmp eq i64 %i.dkq, %n.vec5947
  br i1 %cmp.n5956, label %.preheader1953, label %.lr.ph2967.preheader6482

.lr.ph2967.preheader6482:                         ; preds = %.lr.ph2967.preheader, %middle.block5955
  %.1.i692966.ph = phi i64 [ %.0.i66.lcssa, %.lr.ph2967.preheader ], [ %i.dkt, %middle.block5955 ]
  %.119.i682965.ph = phi ptr [ %.018.i65.lcssa, %.lr.ph2967.preheader ], [ %i.dkv, %middle.block5955 ]
  %.122.i672964.ph = phi ptr [ %.021.i64.lcssa, %.lr.ph2967.preheader ], [ %i.dkw, %middle.block5955 ]
  br label %.lr.ph2967

.lr.ph2960:                                       ; preds = %bb.ne, %.lr.ph2960
  %.0.i662958 = phi i64 [ %i.dld, %.lr.ph2960 ], [ %i.cik, %bb.ne ]
  %.018.i652957 = phi ptr [ %i.dlc, %.lr.ph2960 ], [ %i.cim, %bb.ne ] ; 2 uses
  %.021.i642956 = phi ptr [ %i.dlb, %.lr.ph2960 ], [ %i.dkl, %bb.ne ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i642956, ptr noundef nonnull align 1 dereferenceable(16) %.018.i652957, i64 16, i1 false)
  %i.dlb = getelementptr inbounds nuw i8, ptr %.021.i642956, i64 16 ; 2 uses
  %i.dlc = getelementptr inbounds nuw i8, ptr %.018.i652957, i64 16 ; 2 uses
  %i.dld = add nsw i64 %.0.i662958, -16           ; 3 uses
  %i.dle = icmp ugt i64 %i.dld, 15
  br i1 %i.dle, label %.lr.ph2960, label %.preheader1954, !llvm.loop !34

.preheader1953:                                   ; preds = %.lr.ph2967, %middle.block5955, %.preheader1954
  %.122.i67.lcssa = phi ptr [ %.021.i64.lcssa, %.preheader1954 ], [ %i.dkw, %middle.block5955 ], [ %i.dly, %.lr.ph2967 ] ; 7 uses
  %.119.i68.lcssa = phi ptr [ %.018.i65.lcssa, %.preheader1954 ], [ %i.dkv, %middle.block5955 ], [ %i.dlz, %.lr.ph2967 ] ; 6 uses
  %.1.i69.lcssa = phi i64 [ %.0.i66.lcssa, %.preheader1954 ], [ %i.dkt, %middle.block5955 ], [ %i.dma, %.lr.ph2967 ] ; 11 uses
  %.not.i732971 = icmp eq i64 %.1.i69.lcssa, 0
  br i1 %.not.i732971, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364, label %iter.check

iter.check:                                       ; preds = %.preheader1953
  %.119.i68.lcssa5925 = ptrtoaddr ptr %.119.i68.lcssa to i64
  %.122.i67.lcssa5924 = ptrtoaddr ptr %.122.i67.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i69.lcssa, 4
  %i.dlf = sub i64 %.119.i68.lcssa5925, %.122.i67.lcssa5924
  %diff.check = icmp ugt i64 %i.dlf, -32
  %or.cond6082 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond6082, label %.lr.ph2975.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5926 = icmp ult i64 %.1.i69.lcssa, 32
  br i1 %min.iters.check5926, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dlg = and i64 %.1.i69.lcssa, 28
  %n.vec = and i64 %.1.i69.lcssa, -32             ; 5 uses
  %i.dlh = and i64 %.1.i69.lcssa, 31
  %i.dli = getelementptr i8, ptr %.119.i68.lcssa, i64 %n.vec
  %i.dlj = getelementptr i8, ptr %.122.i67.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i68.lcssa, i64 %index ; 2 uses
  %next.gep5927 = getelementptr i8, ptr %.122.i67.lcssa, i64 %index ; 2 uses
  %i.dlk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !99
  %wide.load5928 = load <16 x i8>, ptr %i.dlk, align 1, !tbaa !99
  %i.dll = getelementptr i8, ptr %next.gep5927, i64 16
  store <16 x i8> %wide.load, ptr %next.gep5927, align 1, !tbaa !99
  store <16 x i8> %wide.load5928, ptr %i.dll, align 1, !tbaa !99
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dlm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dlm, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i69.lcssa, %n.vec
  br i1 %cmp.n, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dlg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2975.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5931 = and i64 %.1.i69.lcssa, -4          ; 4 uses
  %i.dln = and i64 %.1.i69.lcssa, 3
  %i.dlo = getelementptr i8, ptr %.119.i68.lcssa, i64 %n.vec5931
  %i.dlp = getelementptr i8, ptr %.122.i67.lcssa, i64 %n.vec5931 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5932 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5936, %vec.epilog.vector.body ] ; 3 uses
  %next.gep5933 = getelementptr i8, ptr %.119.i68.lcssa, i64 %index5932
  %next.gep5934 = getelementptr i8, ptr %.122.i67.lcssa, i64 %index5932
  %wide.load5935 = load <4 x i8>, ptr %next.gep5933, align 1, !tbaa !99
  store <4 x i8> %wide.load5935, ptr %next.gep5934, align 1, !tbaa !99
  %index.next5936 = add nuw i64 %index5932, 4     ; 2 uses
  %i.dlq = icmp eq i64 %index.next5936, %n.vec5931
  br i1 %i.dlq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !307

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5937 = icmp eq i64 %.1.i69.lcssa, %n.vec5931
  br i1 %cmp.n5937, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364, label %.lr.ph2975.preheader

.lr.ph2975.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i722974.ph = phi i64 [ %.1.i69.lcssa, %iter.check ], [ %i.dlh, %vec.epilog.iter.check ], [ %i.dln, %vec.epilog.middle.block ] ; 4 uses
  %.220.i712973.ph = phi ptr [ %.119.i68.lcssa, %iter.check ], [ %i.dli, %vec.epilog.iter.check ], [ %i.dlo, %vec.epilog.middle.block ] ; 2 uses
  %.223.i702972.ph = phi ptr [ %.122.i67.lcssa, %iter.check ], [ %i.dlj, %vec.epilog.iter.check ], [ %i.dlp, %vec.epilog.middle.block ] ; 2 uses
  %i.dlr = add nsw i64 %.2.i722974.ph, -1
  %xtraiter6726 = and i64 %.2.i722974.ph, 7       ; 2 uses
  %lcmp.mod6727.not = icmp eq i64 %xtraiter6726, 0
  br i1 %lcmp.mod6727.not, label %.lr.ph2975.prol.loopexit, label %.lr.ph2975.prol

.lr.ph2975.prol:                                  ; preds = %.lr.ph2975.preheader, %.lr.ph2975.prol
  %.2.i722974.prol = phi i64 [ %i.dlv, %.lr.ph2975.prol ], [ %.2.i722974.ph, %.lr.ph2975.preheader ]
  %.220.i712973.prol = phi ptr [ %i.dls, %.lr.ph2975.prol ], [ %.220.i712973.ph, %.lr.ph2975.preheader ] ; 2 uses
  %.223.i702972.prol = phi ptr [ %i.dlu, %.lr.ph2975.prol ], [ %.223.i702972.ph, %.lr.ph2975.preheader ] ; 2 uses
  %prol.iter6728 = phi i64 [ %prol.iter6728.next, %.lr.ph2975.prol ], [ 0, %.lr.ph2975.preheader ]
  %i.dls = getelementptr inbounds nuw i8, ptr %.220.i712973.prol, i64 1 ; 2 uses
  %i.dlt = load i8, ptr %.220.i712973.prol, align 1, !tbaa !99
  %i.dlu = getelementptr inbounds nuw i8, ptr %.223.i702972.prol, i64 1 ; 3 uses
  store i8 %i.dlt, ptr %.223.i702972.prol, align 1, !tbaa !99
  %i.dlv = add nsw i64 %.2.i722974.prol, -1       ; 2 uses
  %prol.iter6728.next = add i64 %prol.iter6728, 1 ; 2 uses
  %prol.iter6728.cmp.not = icmp eq i64 %prol.iter6728.next, %xtraiter6726
  br i1 %prol.iter6728.cmp.not, label %.lr.ph2975.prol.loopexit, label %.lr.ph2975.prol, !llvm.loop !308

.lr.ph2975.prol.loopexit:                         ; preds = %.lr.ph2975.prol, %.lr.ph2975.preheader
  %.lcssa6572.unr = phi ptr [ poison, %.lr.ph2975.preheader ], [ %i.dlu, %.lr.ph2975.prol ]
  %.2.i722974.unr = phi i64 [ %.2.i722974.ph, %.lr.ph2975.preheader ], [ %i.dlv, %.lr.ph2975.prol ]
  %.220.i712973.unr = phi ptr [ %.220.i712973.ph, %.lr.ph2975.preheader ], [ %i.dls, %.lr.ph2975.prol ]
  %.223.i702972.unr = phi ptr [ %.223.i702972.ph, %.lr.ph2975.preheader ], [ %i.dlu, %.lr.ph2975.prol ]
  %i.dlw = icmp ult i64 %i.dlr, 7
  br i1 %i.dlw, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364, label %.lr.ph2975

.lr.ph2967:                                       ; preds = %.lr.ph2967.preheader6482, %.lr.ph2967
  %.1.i692966 = phi i64 [ %i.dma, %.lr.ph2967 ], [ %.1.i692966.ph, %.lr.ph2967.preheader6482 ]
  %.119.i682965 = phi ptr [ %i.dlz, %.lr.ph2967 ], [ %.119.i682965.ph, %.lr.ph2967.preheader6482 ] ; 2 uses
  %.122.i672964 = phi ptr [ %i.dly, %.lr.ph2967 ], [ %.122.i672964.ph, %.lr.ph2967.preheader6482 ] ; 2 uses
  %i.dlx = load i32, ptr %.119.i682965, align 1
  store i32 %i.dlx, ptr %.122.i672964, align 1
  %i.dly = getelementptr inbounds nuw i8, ptr %.122.i672964, i64 4 ; 2 uses
  %i.dlz = getelementptr inbounds nuw i8, ptr %.119.i682965, i64 4 ; 2 uses
  %i.dma = add nsw i64 %.1.i692966, -4            ; 3 uses
  %i.dmb = icmp ugt i64 %i.dma, 3
  br i1 %i.dmb, label %.lr.ph2967, label %.preheader1953, !llvm.loop !309

.lr.ph2975:                                       ; preds = %.lr.ph2975.prol.loopexit, %.lr.ph2975
  %.2.i722974 = phi i64 [ %i.dna, %.lr.ph2975 ], [ %.2.i722974.unr, %.lr.ph2975.prol.loopexit ]
  %.220.i712973 = phi ptr [ %i.dmx, %.lr.ph2975 ], [ %.220.i712973.unr, %.lr.ph2975.prol.loopexit ] ; 9 uses
  %.223.i702972 = phi ptr [ %i.dmz, %.lr.ph2975 ], [ %.223.i702972.unr, %.lr.ph2975.prol.loopexit ] ; 9 uses
  %i.dmc = getelementptr inbounds nuw i8, ptr %.220.i712973, i64 1
  %i.dmd = load i8, ptr %.220.i712973, align 1, !tbaa !99
  %i.dme = getelementptr inbounds nuw i8, ptr %.223.i702972, i64 1
  store i8 %i.dmd, ptr %.223.i702972, align 1, !tbaa !99
  %i.dmf = getelementptr inbounds nuw i8, ptr %.220.i712973, i64 2
  %i.dmg = load i8, ptr %i.dmc, align 1, !tbaa !99
  %i.dmh = getelementptr inbounds nuw i8, ptr %.223.i702972, i64 2
  store i8 %i.dmg, ptr %i.dme, align 1, !tbaa !99
  %i.dmi = getelementptr inbounds nuw i8, ptr %.220.i712973, i64 3
  %i.dmj = load i8, ptr %i.dmf, align 1, !tbaa !99
  %i.dmk = getelementptr inbounds nuw i8, ptr %.223.i702972, i64 3
  store i8 %i.dmj, ptr %i.dmh, align 1, !tbaa !99
  %i.dml = getelementptr inbounds nuw i8, ptr %.220.i712973, i64 4
  %i.dmm = load i8, ptr %i.dmi, align 1, !tbaa !99
  %i.dmn = getelementptr inbounds nuw i8, ptr %.223.i702972, i64 4
  store i8 %i.dmm, ptr %i.dmk, align 1, !tbaa !99
  %i.dmo = getelementptr inbounds nuw i8, ptr %.220.i712973, i64 5
  %i.dmp = load i8, ptr %i.dml, align 1, !tbaa !99
  %i.dmq = getelementptr inbounds nuw i8, ptr %.223.i702972, i64 5
  store i8 %i.dmp, ptr %i.dmn, align 1, !tbaa !99
  %i.dmr = getelementptr inbounds nuw i8, ptr %.220.i712973, i64 6
  %i.dms = load i8, ptr %i.dmo, align 1, !tbaa !99
  %i.dmt = getelementptr inbounds nuw i8, ptr %.223.i702972, i64 6
  store i8 %i.dms, ptr %i.dmq, align 1, !tbaa !99
  %i.dmu = getelementptr inbounds nuw i8, ptr %.220.i712973, i64 7
  %i.dmv = load i8, ptr %i.dmr, align 1, !tbaa !99
  %i.dmw = getelementptr inbounds nuw i8, ptr %.223.i702972, i64 7
  store i8 %i.dmv, ptr %i.dmt, align 1, !tbaa !99
  %i.dmx = getelementptr inbounds nuw i8, ptr %.220.i712973, i64 8
  %i.dmy = load i8, ptr %i.dmu, align 1, !tbaa !99
  %i.dmz = getelementptr inbounds nuw i8, ptr %.223.i702972, i64 8 ; 2 uses
  store i8 %i.dmy, ptr %i.dmw, align 1, !tbaa !99
  %i.dna = add nsw i64 %.2.i722974, -8            ; 2 uses
  %.not.i73.7 = icmp eq i64 %i.dna, 0
  br i1 %.not.i73.7, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364, label %.lr.ph2975, !llvm.loop !310

_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit364: ; preds = %.preheader1939, %.lr.ph2975.prol.loopexit, %.lr.ph2975, %.preheader1925, %bb.jn, %.lr.ph2952.prol.loopexit, %bb.kb, %bb.lu, %.lr.ph3003.prol.loopexit, %bb.mi, %middle.block, %vec.epilog.middle.block, %.preheader1953
  %.3253.i284.lcssa.sink5239 = phi ptr [ %.lcssa6642.unr, %.lr.ph3003.prol.loopexit ], [ %.8258.i290, %bb.kb ], [ %.2252.i194.lcssa, %.preheader1925 ], [ %.8258.i202, %bb.mi ], [ %i.dmz, %.lr.ph2975 ], [ %.lcssa6559.unr, %.lr.ph2952.prol.loopexit ], [ %.122.i67.lcssa, %.preheader1953 ], [ %i.dlp, %vec.epilog.middle.block ], [ %i.dlj, %middle.block ], [ %i.dda, %bb.lu ], [ %i.cpr, %bb.jn ], [ %.lcssa6572.unr, %.lr.ph2975.prol.loopexit ], [ %.2252.i282.lcssa, %.preheader1939 ] ; 4 uses
  %i.dnb = getelementptr inbounds nuw i8, ptr %.3253.i284.lcssa.sink5239, i64 1
  store i8 34, ptr %.3253.i284.lcssa.sink5239, align 1, !tbaa !99
  %i.dnc = select i1 %.not525.i, i8 44, i8 58
  %i.dnd = getelementptr inbounds nuw i8, ptr %.3253.i284.lcssa.sink5239, i64 2
  store i8 %i.dnc, ptr %i.dnb, align 1, !tbaa !99
  %i.dne = select i1 %.not525.i, i8 10, i8 32
  %i.dnf = getelementptr inbounds nuw i8, ptr %.3253.i284.lcssa.sink5239, i64 3
  store i8 %i.dne, ptr %i.dnd, align 1, !tbaa !99
  br label %bb.rv

bb.nf:                                            ; preds = %bb.in
  %i.dng = trunc i64 %.01598 to i32
  %i.dnh = and i32 %i.cht, %i.dng
  %.not520.i = icmp ne i32 %i.dnh, 0              ; 2 uses
  %i.dni = select i1 %.not520.i, i64 32, i64 %i.chv ; 2 uses
  %i.dnj = getelementptr inbounds nuw i8, ptr %.0473.i, i64 %i.dni
  %.not521.i = icmp ult ptr %i.dnj, %.0451.i
  br i1 %.not521.i, label %bb.nh, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit552.i, !prof !61

_ZN13duckdb_yyjsonL13size_align_upEmm.exit552.i:  ; preds = %bb.nf
  %i.dnk = lshr i64 %.0449.i, 1
  %i.dnl = tail call i64 @llvm.umax.i64(i64 %i.dnk, i64 %i.dni)
  %i.dnm = add i64 %i.dnl, 7
  %i.dnn = and i64 %i.dnm, -8
  %i.dno = add i64 %i.dnn, %.0449.i               ; 4 uses
  %i.dnp = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0484.i, i64 noundef %.0449.i, i64 noundef %i.dno), !inline_history !301 ; 6 uses
  %.not522.i = icmp eq ptr %i.dnp, null
  br i1 %.not522.i, label %.loopexit1951, label %bb.ng, !prof !44

bb.ng:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit552.i
  %i.dnq = ptrtoint ptr %.0462.i to i64
  %i.dnr = ptrtoint ptr %.0451.i to i64           ; 2 uses
  %i.dns = sub i64 %i.dnq, %i.dnr                 ; 2 uses
  %i.dnt = sub i64 %i.dno, %i.dns
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.dnp, i64 %i.dnt ; 2 uses
  %i.dnv = ptrtoint ptr %.0484.i to i64           ; 2 uses
  %i.dnw = sub i64 %i.dnr, %i.dnv
  %i.dnx = getelementptr inbounds i8, ptr %i.dnp, i64 %i.dnw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dnu, ptr nonnull align 1 %i.dnx, i64 %i.dns, i1 false)
  %i.dny = ptrtoint ptr %.0473.i to i64
  %i.dnz = sub i64 %i.dny, %i.dnv
  %i.doa = getelementptr inbounds i8, ptr %i.dnp, i64 %i.dnz
  %i.dob = getelementptr inbounds nuw i8, ptr %i.dnp, i64 %i.dno
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.2486.i = phi ptr [ %i.dnp, %bb.ng ], [ %.0484.i, %bb.nf ] ; 2 uses
  %.3476.i = phi ptr [ %i.doa, %bb.ng ], [ %.0473.i, %bb.nf ] ; 3 uses
  %.2464.i = phi ptr [ %i.dob, %bb.ng ], [ %.0462.i, %bb.nf ]
  %.2453.i = phi ptr [ %i.dnu, %bb.ng ], [ %.0451.i, %bb.nf ]
  %.2.i = phi i64 [ %i.dno, %bb.ng ], [ %.0449.i, %bb.nf ]
  %.not.i12232913 = select i1 %.not520.i, i1 true, i1 %.not.i122329133945
  br i1 %.not.i12232913, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1224, label %select.unfold1700.preheader

select.unfold1700.preheader:                      ; preds = %bb.nh
  br i1 %lcmp.mod.not, label %select.unfold1700.prol.loopexit, label %select.unfold1700.prol

select.unfold1700.prol:                           ; preds = %select.unfold1700.preheader, %select.unfold1700.prol
  %.0.i12222915.prol = phi ptr [ %i.dod, %select.unfold1700.prol ], [ %.3476.i, %select.unfold1700.preheader ] ; 2 uses
  %.04.i12212914.prol = phi i64 [ %i.doc, %select.unfold1700.prol ], [ %.0.i31.ph, %select.unfold1700.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold1700.prol ], [ 0, %select.unfold1700.preheader ]
  %i.doc = add i64 %.04.i12212914.prol, -1        ; 2 uses
  store i32 538976288, ptr %.0.i12222915.prol, align 1
  %i.dod = getelementptr inbounds nuw i8, ptr %.0.i12222915.prol, i64 %i.cgx ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold1700.prol.loopexit, label %select.unfold1700.prol, !llvm.loop !311

select.unfold1700.prol.loopexit:                  ; preds = %select.unfold1700.prol, %select.unfold1700.preheader
  %.lcssa6486.unr = phi ptr [ poison, %select.unfold1700.preheader ], [ %i.dod, %select.unfold1700.prol ]
  %.0.i12222915.unr = phi ptr [ %.3476.i, %select.unfold1700.preheader ], [ %i.dod, %select.unfold1700.prol ]
  %.04.i12212914.unr = phi i64 [ %.0.i31.ph, %select.unfold1700.preheader ], [ %i.doc, %select.unfold1700.prol ]
  br i1 %i.chy, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1224, label %select.unfold1700

select.unfold1700:                                ; preds = %select.unfold1700.prol.loopexit, %select.unfold1700
  %.0.i12222915 = phi ptr [ %i.dom, %select.unfold1700 ], [ %.0.i12222915.unr, %select.unfold1700.prol.loopexit ] ; 2 uses
  %.04.i12212914 = phi i64 [ %i.dol, %select.unfold1700 ], [ %.04.i12212914.unr, %select.unfold1700.prol.loopexit ]
  store i32 538976288, ptr %.0.i12222915, align 1
  %i.doe = getelementptr inbounds nuw i8, ptr %.0.i12222915, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.doe, align 1
  %i.dof = getelementptr inbounds nuw i8, ptr %i.doe, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.dof, align 1
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dof, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.dog, align 1
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dog, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.doh, align 1
  %i.doi = getelementptr inbounds nuw i8, ptr %i.doh, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.doi, align 1
  %i.doj = getelementptr inbounds nuw i8, ptr %i.doi, i64 %i.cgx ; 2 uses
  store i32 538976288, ptr %i.doj, align 1
  %i.dok = getelementptr inbounds nuw i8, ptr %i.doj, i64 %i.cgx ; 2 uses
  %i.dol = add i64 %.04.i12212914, -8             ; 2 uses
  store i32 538976288, ptr %i.dok, align 1
  %i.dom = getelementptr inbounds nuw i8, ptr %i.dok, i64 %i.cgx ; 2 uses
  %.not.i1223.7 = icmp eq i64 %i.dol, 0
  br i1 %.not.i1223.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1224, label %select.unfold1700, !llvm.loop !36

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1224:  ; preds = %select.unfold1700.prol.loopexit, %select.unfold1700, %bb.nh
  %.0.i1222.lcssa = phi ptr [ %.3476.i, %bb.nh ], [ %.lcssa6486.unr, %select.unfold1700.prol.loopexit ], [ %i.dom, %select.unfold1700 ] ; 11 uses
  %i.don = load i64, ptr %.0498.i, align 8, !tbaa !98 ; 2 uses
  %i.doo = and i64 %i.don, 16
  %.not.i543 = icmp eq i64 %i.doo, 0
  %i.dop = getelementptr inbounds nuw i8, ptr %.0498.i, i64 8
  %i.doq = load i64, ptr %i.dop, align 8, !tbaa !99 ; 10 uses
  br i1 %.not.i543, label %bb.qk, label %bb.ni

bb.ni:                                            ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1224
  %i.dor = and i64 %i.doq, 4503599627370495       ; 4 uses
  %i.dos = lshr i64 %i.doq, 52
  %i.dot = trunc nuw nsw i64 %i.dos to i32
  %i.dou = and i32 %i.dot, 2047                   ; 7 uses
  %i.dov = icmp eq i32 %i.dou, 2047
  br i1 %i.dov, label %bb.nj, label %bb.np, !prof !44

bb.nj:                                            ; preds = %bb.ni
  br i1 %.not1785, label %bb.nl, label %bb.nk, !prof !61

bb.nk:                                            ; preds = %bb.nj
  store i32 1819047278, ptr %.0.i1222.lcssa, align 1
  %i.dow = getelementptr inbounds nuw i8, ptr %.0.i1222.lcssa, i64 4
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.nl:                                            ; preds = %bb.nj
  br i1 %.not1786, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread1705, label %bb.nm, !prof !61

bb.nm:                                            ; preds = %bb.nl
  %i.dox = icmp eq i64 %i.dor, 0
  br i1 %i.dox, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %bb.nm
  store i8 45, ptr %.0.i1222.lcssa, align 1, !tbaa !99
  %.lobit131.i643 = lshr i64 %i.doq, 63
  %i.doy = getelementptr inbounds nuw i8, ptr %.0.i1222.lcssa, i64 %.lobit131.i643 ; 2 uses
  store i64 8751735898823355977, ptr %i.doy, align 1
  %i.doz = getelementptr inbounds nuw i8, ptr %i.doy, i64 8
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.no:                                            ; preds = %bb.nm
  store i32 5136718, ptr %.0.i1222.lcssa, align 1
  %i.dpa = getelementptr inbounds nuw i8, ptr %.0.i1222.lcssa, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.np:                                            ; preds = %bb.ni
  store i8 45, ptr %.0.i1222.lcssa, align 1, !tbaa !99
  %.lobit.i630 = lshr i64 %i.doq, 63              ; 2 uses
  %i.dpb = getelementptr i8, ptr %.0.i1222.lcssa, i64 %.lobit.i630 ; 38 uses
  %.mask.i631 = and i64 %i.doq, 9223372036854775807
  %i.dpc = icmp eq i64 %.mask.i631, 0
  br i1 %i.dpc, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %bb.np
  store i32 3157552, ptr %i.dpb, align 1
  %i.dpd = getelementptr inbounds nuw i8, ptr %i.dpb, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.nr:                                            ; preds = %bb.np
  %.not.i632 = icmp eq i32 %i.dou, 0
  br i1 %.not.i632, label %bb.pn, label %bb.ns, !prof !44

bb.ns:                                            ; preds = %bb.nr
  %i.dpe = or disjoint i64 %i.dor, 4503599627370496 ; 3 uses
  %i.dpf = add nsw i32 %i.dou, -1023
  %or.cond.i633 = icmp ult i32 %i.dpf, 53
  br i1 %or.cond.i633, label %bb.nt, label %bb.oj

bb.nt:                                            ; preds = %bb.ns
  %i.dpg = tail call range(i64 0, 53) i64 @llvm.cttz.i64(i64 range(i64 4503599627370496, 9007199254740992) %i.dpe, i1 true)
  %i.dph = trunc nuw nsw i64 %i.dpg to i32
  %i.dpi = sub nuw nsw i32 1075, %i.dou           ; 2 uses
  %.not127.i640 = icmp samesign ugt i32 %i.dpi, %i.dph
  br i1 %.not127.i640, label %bb.oj, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.dpj = zext nneg i32 %i.dpi to i64
  %i.dpk = lshr i64 %i.dpe, %i.dpj                ; 21 uses
  %i.dpl = icmp samesign ult i64 %i.dpk, 100000000
  br i1 %i.dpl, label %bb.nv, label %bb.oc

bb.nv:                                            ; preds = %bb.nu
  %i.dpm = trunc nuw nsw i64 %i.dpk to i32        ; 4 uses
  %i.dpn = icmp samesign ult i64 %i.dpk, 100
  br i1 %i.dpn, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.dpo = icmp samesign ult i64 %i.dpk, 10       ; 2 uses
  %i.dpp = shl nuw nsw i64 %i.dpk, 1
  %i.dpq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dpp
  %.neg70.i1014 = sext i1 %i.dpo to i64
  %i.dpr = zext i1 %i.dpo to i64
  %i.dps = getelementptr inbounds nuw i8, ptr %i.dpq, i64 %i.dpr
  %i.dpt = load i16, ptr %i.dps, align 1
  store i16 %i.dpt, ptr %i.dpb, align 1
  %i.dpu = getelementptr inbounds i8, ptr %i.dpb, i64 %.neg70.i1014
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dpu, i64 2
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit676

bb.nx:                                            ; preds = %bb.nv
  %i.dpw = icmp samesign ult i64 %i.dpk, 10000
  br i1 %i.dpw, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.dpx = mul nuw nsw i32 %i.dpm, 5243
  %i.dpy = lshr i32 %i.dpx, 19                    ; 2 uses
  %.neg68.i1012 = mul nsw i32 %i.dpy, -100
  %i.dpz = add nsw i32 %.neg68.i1012, %i.dpm
  %i.dqa = icmp samesign ult i64 %i.dpk, 1000     ; 2 uses
  %i.dqb = shl nuw nsw i32 %i.dpy, 1
end_hunk_6
begin_hunk_7_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.gce = ptrtoint ptr %.13.i to i64
  %i.gcf = ptrtoint ptr %.12496.i to i64
  %i.gcg = sub i64 %i.gce, %i.gcf
  store i64 %i.gcg, ptr %3, align 8, !tbaa !105
  br label %.cont1249

.cont1249:                                        ; preds = %bb.sd, %.else1251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

.loopexit1951:                                    ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit548.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit542.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit544.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit546.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit550.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit552.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit554.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit540.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i
  %.13497.i = phi ptr [ %.9493.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit540.i ], [ null, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i ], [ %.10494.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit.i ], [ %.0484.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit542.i ], [ %.0484.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit554.i ], [ %.0484.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit552.i ], [ %.0484.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit550.i ], [ %.0484.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit546.i ], [ %.0484.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit544.i ], [ %.0484.i, %_ZN13duckdb_yyjsonL13size_align_upEmm.exit548.i ] ; 2 uses
  br i1 %.not27, label %.cont1246, label %.else1248

.else1248:                                        ; preds = %.loopexit1951
  store i64 0, ptr %3, align 8, !tbaa !105
  br label %.cont1246

.cont1246:                                        ; preds = %.loopexit1951, %.else1248
  store i32 2, ptr %i.b, align 8, !tbaa !149
  %.sroa.sel1285.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel1285.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel1285.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.28, ptr %.sroa.sel1285.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  %.not538.i = icmp eq ptr %.13497.i, null
  br i1 %.not538.i, label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit, label %bb.se

bb.se:                                            ; preds = %.cont1246
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %.13497.i), !inline_history !301
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.sf:                                            ; preds = %bb.rl
  br i1 %.not27, label %bb.sg, label %.else1239

.else1239:                                        ; preds = %bb.sf
  store i64 0, ptr %3, align 8, !tbaa !105
  br label %bb.sg

bb.sg:                                            ; preds = %.else1239, %bb.sf
  store i32 3, ptr %i.b, align 8, !tbaa !149
  %.sroa.sel1294.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel1294.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel1294.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.86, ptr %.sroa.sel1294.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %.0484.i), !inline_history !301
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread1705: ; preds = %bb.nl
  br i1 %.not27, label %bb.sh, label %.else1245

.else1245:                                        ; preds = %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread1705
  store i64 0, ptr %3, align 8, !tbaa !105
  br label %bb.sh

bb.sh:                                            ; preds = %.else1245, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread1705
  store i32 4, ptr %i.b, align 8, !tbaa !149
  %.sroa.sel1288.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel1288.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel1288.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.87, ptr %.sroa.sel1288.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %.2486.i), !inline_history !301
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

.loopexit1923:                                    ; preds = %.thread1668, %.thread1658, %.thread1678, %.thread1688
  br i1 %.not27, label %bb.si, label %.else1242

.else1242:                                        ; preds = %.loopexit1923
  store i64 0, ptr %3, align 8, !tbaa !105
  br label %bb.si

bb.si:                                            ; preds = %.else1242, %.loopexit1923
  store i32 7, ptr %i.b, align 8, !tbaa !149
  %.sroa.sel1291.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel1291.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel1291.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.88, ptr %.sroa.sel1291.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %.1485.i), !inline_history !301
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.sj:                                            ; preds = %bb.ii
  br i1 %.not1789, label %bb.sl, label %bb.sk, !prof !61

bb.sk:                                            ; preds = %bb.sj
  %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i = select i1 %.not1790, ptr @_ZN13duckdb_yyjsonL13enc_table_escE, ptr @_ZN13duckdb_yyjsonL19enc_table_esc_slashE, !prof !61
  br label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit416.i

bb.sl:                                            ; preds = %bb.sj
  %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i = select i1 %.not1790, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, ptr @_ZN13duckdb_yyjsonL19enc_table_cpy_slashE, !prof !61
  br label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit416.i

_ZN13duckdb_yyjsonL13size_align_upEmm.exit416.i:  ; preds = %bb.sk, %bb.sl
  %.0.i51 = phi ptr [ %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i, %bb.sk ], [ %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i, %bb.sl ] ; 28 uses
  %i.gch = icmp eq ptr %.0.i51, @_ZN13duckdb_yyjsonL13enc_table_cpyE
  %i.gci = and i32 %1, 32
  %.not1792 = icmp eq i32 %i.gci, 0               ; 4 uses
  %i.gcj = and i32 %1, 128
  %.not1793 = icmp eq i32 %i.gcj, 0
  %i.gck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gcl = load i64, ptr %i.gck, align 8, !tbaa !99
  %i.gcm = lshr i64 %i.gcl, 4
  %i.gcn = mul i64 %i.gcm, 18
  %i.gco = add i64 %i.gcn, 70
  %i.gcp = and i64 %i.gco, -8                     ; 3 uses
  %i.gcq = tail call noundef ptr %.sroa.01324.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.gcp), !inline_history !317 ; 5 uses
  %.not.i35 = icmp eq ptr %i.gcq, null
  br i1 %.not.i35, label %.loopexit1921, label %bb.sm

bb.sm:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit416.i
  %i.gcr = getelementptr inbounds nuw i8, ptr %i.gcq, i64 %i.gcp ; 2 uses
  %i.gcs = load i64, ptr %0, align 8, !tbaa !98   ; 2 uses
  %i.gct = and i64 %i.gcs, 7
  %i.gcu = icmp eq i64 %i.gct, 7                  ; 3 uses
  %i.gcv = zext i1 %i.gcu to i8
  %i.gcw = lshr i64 %i.gcs, 8
  %i.gcx = zext i1 %i.gcu to i64
  %i.gcy = shl nuw nsw i64 %i.gcw, %i.gcx
  %i.gcz = select i1 %i.gcu, i8 123, i8 91
  %i.gda = getelementptr inbounds nuw i8, ptr %i.gcq, i64 1
  store i8 %i.gcz, ptr %i.gcq, align 1, !tbaa !99
  %i.gdb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gdc = and i32 %1, 16
  %.not1806 = icmp eq i32 %i.gdc, 0
  %i.gdd = and i32 %1, 8
  %.not1807 = icmp eq i32 %i.gdd, 0
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.sm
  %.01601.ph = phi i64 [ %i.gcy, %bb.sm ], [ %.01601.ph.be, %.outer.backedge ]
  %.01599.ph = phi i8 [ %i.gcv, %bb.sm ], [ %.01599.ph.be, %.outer.backedge ] ; 3 uses
  %.0371.i.ph = phi ptr [ %i.gdb, %bb.sm ], [ %.0371.i.ph.be, %.outer.backedge ]
  %.0360.i.ph = phi ptr [ %i.gcq, %bb.sm ], [ %.0360.i.ph.be, %.outer.backedge ]
  %.0351.i.ph = phi ptr [ %i.gda, %bb.sm ], [ %.0351.i.ph.be, %.outer.backedge ]
  %.0343.i.ph = phi ptr [ %i.gcr, %bb.sm ], [ %.0343.i.ph.be, %.outer.backedge ]
  %.0335.i.ph = phi ptr [ %i.gcr, %bb.sm ], [ %.0335.i.ph.be, %.outer.backedge ]
  %.0.i36.ph = phi i64 [ %i.gcp, %bb.sm ], [ %.0.i36.ph.be, %.outer.backedge ]
  %i.gde = zext nneg i8 %.01599.ph to i32
  br label %bb.sn

bb.sn:                                            ; preds = %.outer, %bb.abs
  %.01601 = phi i64 [ %i.jql, %bb.abs ], [ %.01601.ph, %.outer ] ; 3 uses
  %.0371.i = phi ptr [ %i.jqk, %bb.abs ], [ %.0371.i.ph, %.outer ] ; 9 uses
  %.0360.i = phi ptr [ %.7367.i, %bb.abs ], [ %.0360.i.ph, %.outer ] ; 25 uses
  %.0351.i = phi ptr [ %.8359.i, %bb.abs ], [ %.0351.i.ph, %.outer ] ; 18 uses
  %.0343.i = phi ptr [ %.7350.i, %bb.abs ], [ %.0343.i.ph, %.outer ] ; 12 uses
  %.0335.i = phi ptr [ %.7342.i, %bb.abs ], [ %.0335.i.ph, %.outer ] ; 18 uses
  %.0.i36 = phi i64 [ %.7.i38, %bb.abs ], [ %.0.i36.ph, %.outer ] ; 24 uses
  %i.gdf = load i64, ptr %.0371.i, align 8, !tbaa !98 ; 7 uses
  %i.gdg = trunc i64 %i.gdf to i8                 ; 2 uses
  %i.gdh = and i8 %i.gdg, 7                       ; 3 uses
  switch i8 %i.gdh, label %bb.abd [
    i8 5, label %bb.so
    i8 4, label %bb.xf
  ]

bb.so:                                            ; preds = %bb.sn
  %i.gdi = trunc i64 %.01601 to i32
  %i.gdj = xor i32 %i.gdi, -1
  %i.gdk = and i32 %i.gde, %i.gdj
  %.not392.i = icmp eq i32 %i.gdk, 0
  %i.gdl = lshr i64 %i.gdf, 8                     ; 9 uses
  %i.gdm = getelementptr inbounds nuw i8, ptr %.0371.i, i64 8
  %i.gdn = load ptr, ptr %i.gdm, align 8, !tbaa !99 ; 7 uses
  %i.gdo = ptrtoaddr ptr %i.gdn to i64            ; 4 uses
  %i.gdp = mul nuw nsw i64 %i.gdl, 6
  %i.gdq = add nuw nsw i64 %i.gdp, 16             ; 2 uses
  %i.gdr = getelementptr inbounds nuw i8, ptr %.0351.i, i64 %i.gdq
  %.not393.i = icmp ult ptr %i.gdr, %.0335.i
  br i1 %.not393.i, label %bb.sq, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit414.i, !prof !61

_ZN13duckdb_yyjsonL13size_align_upEmm.exit414.i:  ; preds = %bb.so
  %i.gds = lshr i64 %.0.i36, 1
  %i.gdt = tail call i64 @llvm.umax.i64(i64 %i.gds, i64 %i.gdq)
  %i.gdu = add nuw i64 %i.gdt, 7
  %i.gdv = and i64 %i.gdu, -8
  %i.gdw = add i64 %i.gdv, %.0.i36                ; 4 uses
  %i.gdx = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0360.i, i64 noundef %.0.i36, i64 noundef %i.gdw), !inline_history !317 ; 6 uses
  %.not394.i = icmp eq ptr %i.gdx, null
  br i1 %.not394.i, label %.loopexit1921, label %bb.sp, !prof !44

bb.sp:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit414.i
  %i.gdy = ptrtoint ptr %.0343.i to i64
  %i.gdz = ptrtoint ptr %.0335.i to i64           ; 2 uses
  %i.gea = sub i64 %i.gdy, %i.gdz                 ; 2 uses
  %i.geb = sub i64 %i.gdw, %i.gea
  %i.gec = getelementptr inbounds nuw i8, ptr %i.gdx, i64 %i.geb ; 2 uses
  %i.ged = ptrtoint ptr %.0360.i to i64           ; 2 uses
  %i.gee = sub i64 %i.gdz, %i.ged
  %i.gef = getelementptr inbounds i8, ptr %i.gdx, i64 %i.gee
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gec, ptr nonnull align 1 %i.gef, i64 %i.gea, i1 false)
  %i.geg = ptrtoint ptr %.0351.i to i64
  %i.geh = sub i64 %i.geg, %i.ged
  %i.gei = getelementptr inbounds i8, ptr %i.gdx, i64 %i.geh
  %i.gej = getelementptr inbounds nuw i8, ptr %i.gdx, i64 %i.gdw
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %.1361.i = phi ptr [ %i.gdx, %bb.sp ], [ %.0360.i, %bb.so ] ; 2 uses
  %.1352.i = phi ptr [ %i.gei, %bb.sp ], [ %.0351.i, %bb.so ] ; 5 uses
  %.1344.i = phi ptr [ %i.gej, %bb.sp ], [ %.0343.i, %bb.so ]
  %.1336.i = phi ptr [ %i.gec, %bb.sp ], [ %.0335.i, %bb.so ]
  %.1.i44 = phi i64 [ %i.gdw, %bb.sp ], [ %.0.i36, %bb.so ]
  br i1 %i.gch, label %bb.ux, label %.split.i45, !prof !61

.split.i45:                                       ; preds = %bb.sq
  %i.gek = getelementptr inbounds nuw i8, ptr %i.gdn, i64 %i.gdl ; 3 uses
  store i8 34, ptr %.1352.i, align 1, !tbaa !99
  %i.gel = ptrtoint ptr %i.gek to i64             ; 4 uses
  %i.gem = add i64 %i.gdl, %i.gdo
  br label %bb.sr

bb.sr:                                            ; preds = %bb.uc, %.split.i45
  %.pn.i101 = phi ptr [ %.1352.i, %.split.i45 ], [ %.8258.i114, %bb.uc ]
  %.0243.i102 = phi ptr [ %i.gdn, %.split.i45 ], [ %i.gmf, %bb.uc ] ; 3 uses
  %.0250.i103 = getelementptr inbounds nuw i8, ptr %.pn.i101, i64 1 ; 2 uses
  %i.gen = ptrtoint ptr %.0243.i102 to i64
  %i.geo = sub i64 %i.gel, %i.gen                 ; 2 uses
  %i.gep = icmp sgt i64 %i.geo, 15
  br i1 %i.gep, label %.lr.ph3058, label %.preheader1908

.preheader1908:                                   ; preds = %bb.th, %bb.sr
  %.pre-phi3794 = phi i64 [ %i.geo, %bb.sr ], [ %i.ghv, %bb.th ]
  %.1251.i104.lcssa = phi ptr [ %.0250.i103, %bb.sr ], [ %i.ghs, %bb.th ] ; 2 uses
  %.1244.i105.lcssa = phi ptr [ %.0243.i102, %bb.sr ], [ %i.ght, %bb.th ] ; 2 uses
  %i.geq = icmp sgt i64 %.pre-phi3794, 3
  br i1 %i.geq, label %.lr.ph3064, label %.preheader1906

.lr.ph3058:                                       ; preds = %bb.sr, %bb.th
  %.1244.i1053056 = phi ptr [ %i.ght, %bb.th ], [ %.0243.i102, %bb.sr ] ; 46 uses
  %.1251.i1043055 = phi ptr [ %i.ghs, %bb.th ], [ %.0250.i103, %bb.sr ] ; 30 uses
  %i.ger = load i8, ptr %.1244.i1053056, align 1, !tbaa !99 ; 2 uses
  %i.ges = zext i8 %i.ger to i64
  %i.get = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.ges
  %i.geu = load i8, ptr %i.get, align 1, !tbaa !99
  %.not277.i172 = icmp eq i8 %i.geu, 0
  br i1 %.not277.i172, label %bb.ss, label %.preheader1903.preheader, !prof !61

bb.ss:                                            ; preds = %.lr.ph3058
  %i.gev = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 1
  %i.gew = load i8, ptr %i.gev, align 1, !tbaa !99
  %i.gex = zext i8 %i.gew to i64
  %i.gey = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gex
  %i.gez = load i8, ptr %i.gey, align 1, !tbaa !99
  %.not278.i173 = icmp eq i8 %i.gez, 0
  br i1 %.not278.i173, label %bb.st, label %.loopexit1910, !prof !61

bb.st:                                            ; preds = %bb.ss
  %i.gfa = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 2
  %i.gfb = load i8, ptr %i.gfa, align 1, !tbaa !99
  %i.gfc = zext i8 %i.gfb to i64
  %i.gfd = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gfc
  %i.gfe = load i8, ptr %i.gfd, align 1, !tbaa !99
  %.not279.i174 = icmp eq i8 %i.gfe, 0
  br i1 %.not279.i174, label %bb.su, label %.loopexit1911, !prof !61

bb.su:                                            ; preds = %bb.st
  %i.gff = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 3
  %i.gfg = load i8, ptr %i.gff, align 1, !tbaa !99
  %i.gfh = zext i8 %i.gfg to i64
  %i.gfi = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gfh
  %i.gfj = load i8, ptr %i.gfi, align 1, !tbaa !99
  %.not280.i175 = icmp eq i8 %i.gfj, 0
  br i1 %.not280.i175, label %bb.sv, label %.loopexit1912, !prof !61

bb.sv:                                            ; preds = %bb.su
  %i.gfk = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 4
  %i.gfl = load i8, ptr %i.gfk, align 1, !tbaa !99
  %i.gfm = zext i8 %i.gfl to i64
  %i.gfn = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gfm
  %i.gfo = load i8, ptr %i.gfn, align 1, !tbaa !99
  %.not281.i176 = icmp eq i8 %i.gfo, 0
  br i1 %.not281.i176, label %bb.sw, label %bb.to, !prof !61

bb.sw:                                            ; preds = %bb.sv
  %i.gfp = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 5
  %i.gfq = load i8, ptr %i.gfp, align 1, !tbaa !99
  %i.gfr = zext i8 %i.gfq to i64
  %i.gfs = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gfr
  %i.gft = load i8, ptr %i.gfs, align 1, !tbaa !99
  %.not282.i177 = icmp eq i8 %i.gft, 0
  br i1 %.not282.i177, label %bb.sx, label %bb.tp, !prof !61

bb.sx:                                            ; preds = %bb.sw
  %i.gfu = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 6
  %i.gfv = load i8, ptr %i.gfu, align 1, !tbaa !99
  %i.gfw = zext i8 %i.gfv to i64
  %i.gfx = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gfw
  %i.gfy = load i8, ptr %i.gfx, align 1, !tbaa !99
  %.not283.i178 = icmp eq i8 %i.gfy, 0
  br i1 %.not283.i178, label %bb.sy, label %bb.tq, !prof !61

bb.sy:                                            ; preds = %bb.sx
  %i.gfz = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 7
  %i.gga = load i8, ptr %i.gfz, align 1, !tbaa !99
  %i.ggb = zext i8 %i.gga to i64
  %i.ggc = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.ggb
  %i.ggd = load i8, ptr %i.ggc, align 1, !tbaa !99
  %.not284.i179 = icmp eq i8 %i.ggd, 0
  br i1 %.not284.i179, label %bb.sz, label %bb.tr, !prof !61

bb.sz:                                            ; preds = %bb.sy
  %i.gge = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 8
  %i.ggf = load i8, ptr %i.gge, align 1, !tbaa !99
  %i.ggg = zext i8 %i.ggf to i64
  %i.ggh = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.ggg
  %i.ggi = load i8, ptr %i.ggh, align 1, !tbaa !99
  %.not285.i180 = icmp eq i8 %i.ggi, 0
  br i1 %.not285.i180, label %bb.ta, label %bb.ts, !prof !61

bb.ta:                                            ; preds = %bb.sz
  %i.ggj = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 9
  %i.ggk = load i8, ptr %i.ggj, align 1, !tbaa !99
  %i.ggl = zext i8 %i.ggk to i64
  %i.ggm = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.ggl
  %i.ggn = load i8, ptr %i.ggm, align 1, !tbaa !99
  %.not286.i181 = icmp eq i8 %i.ggn, 0
  br i1 %.not286.i181, label %bb.tb, label %bb.tt, !prof !61

bb.tb:                                            ; preds = %bb.ta
  %i.ggo = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 10
  %i.ggp = load i8, ptr %i.ggo, align 1, !tbaa !99
  %i.ggq = zext i8 %i.ggp to i64
  %i.ggr = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.ggq
  %i.ggs = load i8, ptr %i.ggr, align 1, !tbaa !99
  %.not287.i182 = icmp eq i8 %i.ggs, 0
  br i1 %.not287.i182, label %bb.tc, label %bb.tu, !prof !61

bb.tc:                                            ; preds = %bb.tb
  %i.ggt = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 11
  %i.ggu = load i8, ptr %i.ggt, align 1, !tbaa !99
  %i.ggv = zext i8 %i.ggu to i64
  %i.ggw = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.ggv
  %i.ggx = load i8, ptr %i.ggw, align 1, !tbaa !99
  %.not288.i183 = icmp eq i8 %i.ggx, 0
  br i1 %.not288.i183, label %bb.td, label %bb.tv, !prof !61

bb.td:                                            ; preds = %bb.tc
  %i.ggy = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 12
  %i.ggz = load i8, ptr %i.ggy, align 1, !tbaa !99
  %i.gha = zext i8 %i.ggz to i64
  %i.ghb = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gha
  %i.ghc = load i8, ptr %i.ghb, align 1, !tbaa !99
  %.not289.i184 = icmp eq i8 %i.ghc, 0
  br i1 %.not289.i184, label %bb.te, label %bb.tw, !prof !61

bb.te:                                            ; preds = %bb.td
  %i.ghd = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 13
  %i.ghe = load i8, ptr %i.ghd, align 1, !tbaa !99
  %i.ghf = zext i8 %i.ghe to i64
  %i.ghg = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.ghf
  %i.ghh = load i8, ptr %i.ghg, align 1, !tbaa !99
  %.not290.i185 = icmp eq i8 %i.ghh, 0
  br i1 %.not290.i185, label %bb.tf, label %bb.tx, !prof !61

bb.tf:                                            ; preds = %bb.te
  %i.ghi = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 14
  %i.ghj = load i8, ptr %i.ghi, align 1, !tbaa !99
  %i.ghk = zext i8 %i.ghj to i64
  %i.ghl = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.ghk
  %i.ghm = load i8, ptr %i.ghl, align 1, !tbaa !99
  %.not291.i186 = icmp eq i8 %i.ghm, 0
  br i1 %.not291.i186, label %bb.tg, label %bb.ty, !prof !61

bb.tg:                                            ; preds = %bb.tf
  %i.ghn = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 15
  %i.gho = load i8, ptr %i.ghn, align 1, !tbaa !99
  %i.ghp = zext i8 %i.gho to i64
  %i.ghq = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.ghp
  %i.ghr = load i8, ptr %i.ghq, align 1, !tbaa !99
  %.not292.i187 = icmp eq i8 %i.ghr, 0
  br i1 %.not292.i187, label %bb.th, label %bb.tz, !prof !61

bb.th:                                            ; preds = %bb.tg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i1053056, i64 16, i1 false)
  %i.ghs = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 16 ; 2 uses
  %i.ght = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 16 ; 3 uses
  %i.ghu = ptrtoint ptr %i.ght to i64
  %i.ghv = sub i64 %i.gel, %i.ghu                 ; 2 uses
  %i.ghw = icmp sgt i64 %i.ghv, 15
  br i1 %i.ghw, label %.lr.ph3058, label %.preheader1908, !llvm.loop !31

.preheader1906:                                   ; preds = %bb.tm, %.preheader1908
  %.2252.i106.lcssa = phi ptr [ %.1251.i104.lcssa, %.preheader1908 ], [ %i.gje, %bb.tm ] ; 3 uses
  %.2245.i107.lcssa = phi ptr [ %.1244.i105.lcssa, %.preheader1908 ], [ %i.gjf, %bb.tm ] ; 5 uses
  %i.ghx = icmp ugt ptr %i.gek, %.2245.i107.lcssa
  br i1 %i.ghx, label %.lr.ph3069.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188

.lr.ph3069.preheader:                             ; preds = %.preheader1906
  %.2245.i107.lcssa3711 = ptrtoaddr ptr %.2245.i107.lcssa to i64 ; 2 uses
  %i.ghy = getelementptr i8, ptr %.2245.i107.lcssa, i64 %i.gdl
  %scevgep3710 = getelementptr i8, ptr %i.ghy, i64 %i.gdo
  %i.ghz = sub i64 0, %.2245.i107.lcssa3711
  %scevgep3712 = getelementptr i8, ptr %scevgep3710, i64 %i.ghz
  %i.gia = sub i64 %i.gem, %.2245.i107.lcssa3711
  %i.gib = freeze i64 %i.gia                      ; 2 uses
  %i.gic = add i64 %i.gib, -1
  %xtraiter6751 = and i64 %i.gib, 3               ; 2 uses
  %lcmp.mod6752.not = icmp eq i64 %xtraiter6751, 0
  br i1 %lcmp.mod6752.not, label %.lr.ph3069.prol.loopexit, label %.lr.ph3069.prol

.lr.ph3069.prol:                                  ; preds = %.lr.ph3069.preheader, %bb.ti
  %.3246.i1093068.prol = phi ptr [ %i.gih, %bb.ti ], [ %.2245.i107.lcssa, %.lr.ph3069.preheader ] ; 3 uses
  %.3253.i1083067.prol = phi ptr [ %i.gii, %bb.ti ], [ %.2252.i106.lcssa, %.lr.ph3069.preheader ] ; 3 uses
  %prol.iter6753 = phi i64 [ %prol.iter6753.next, %bb.ti ], [ 0, %.lr.ph3069.preheader ]
  %i.gid = load i8, ptr %.3246.i1093068.prol, align 1, !tbaa !99 ; 2 uses
  %i.gie = zext i8 %i.gid to i64
end_hunk_7
begin_hunk_8_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.gis = load i8, ptr %i.gir, align 1, !tbaa !99
  %.not274.i163 = icmp eq i8 %i.gis, 0
  br i1 %.not274.i163, label %bb.tk, label %.loopexit1910, !prof !61

bb.tk:                                            ; preds = %bb.tj
  %i.git = getelementptr inbounds nuw i8, ptr %.2245.i1073063, i64 2
  %i.giu = load i8, ptr %i.git, align 1, !tbaa !99
  %i.giv = zext i8 %i.giu to i64
  %i.giw = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.giv
  %i.gix = load i8, ptr %i.giw, align 1, !tbaa !99
  %.not275.i166 = icmp eq i8 %i.gix, 0
  br i1 %.not275.i166, label %bb.tl, label %.loopexit1911, !prof !61

bb.tl:                                            ; preds = %bb.tk
  %i.giy = getelementptr inbounds nuw i8, ptr %.2245.i1073063, i64 3
  %i.giz = load i8, ptr %i.giy, align 1, !tbaa !99
  %i.gja = zext i8 %i.giz to i64
  %i.gjb = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gja
  %i.gjc = load i8, ptr %i.gjb, align 1, !tbaa !99
  %.not276.i169 = icmp eq i8 %i.gjc, 0
  br i1 %.not276.i169, label %bb.tm, label %.loopexit1912, !prof !61

bb.tm:                                            ; preds = %bb.tl
  %i.gjd = load i32, ptr %.2245.i1073063, align 1
  store i32 %i.gjd, ptr %.2252.i1063062, align 1
  %i.gje = getelementptr inbounds nuw i8, ptr %.2252.i1063062, i64 4 ; 2 uses
  %i.gjf = getelementptr inbounds nuw i8, ptr %.2245.i1073063, i64 4 ; 3 uses
  %i.gjg = ptrtoint ptr %i.gjf to i64
  %i.gjh = sub i64 %i.gel, %i.gjg
  %i.gji = icmp sgt i64 %i.gjh, 3
  br i1 %i.gji, label %.lr.ph3064, label %.preheader1906, !llvm.loop !32

.lr.ph3069:                                       ; preds = %.lr.ph3069.prol.loopexit, %bb.tn
  %.3246.i1093068 = phi ptr [ %i.gkf, %bb.tn ], [ %.3246.i1093068.unr, %.lr.ph3069.prol.loopexit ] ; 9 uses
  %.3253.i1083067 = phi ptr [ %i.gkg, %bb.tn ], [ %.3253.i1083067.unr, %.lr.ph3069.prol.loopexit ] ; 6 uses
  %i.gjj = load i8, ptr %.3246.i1093068, align 1, !tbaa !99 ; 2 uses
  %i.gjk = zext i8 %i.gjj to i64
  %i.gjl = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gjk
  %i.gjm = load i8, ptr %i.gjl, align 1, !tbaa !99
  %.not.i111 = icmp eq i8 %i.gjm, 0
  br i1 %.not.i111, label %.lr.ph3069.1, label %.preheader1903.preheader, !prof !61

.lr.ph3069.1:                                     ; preds = %.lr.ph3069
  %i.gjn = getelementptr inbounds nuw i8, ptr %.3246.i1093068, i64 1
  %i.gjo = getelementptr inbounds nuw i8, ptr %.3253.i1083067, i64 1 ; 2 uses
  store i8 %i.gjj, ptr %.3253.i1083067, align 1, !tbaa !99
  %i.gjp = load i8, ptr %i.gjn, align 1, !tbaa !99 ; 2 uses
  %i.gjq = zext i8 %i.gjp to i64
  %i.gjr = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gjq
  %i.gjs = load i8, ptr %i.gjr, align 1, !tbaa !99
  %.not.i111.1 = icmp eq i8 %i.gjs, 0
  br i1 %.not.i111.1, label %.lr.ph3069.2, label %.preheader1903.preheader.loopexit.loopexit.split.loop.exit7466, !prof !61

.lr.ph3069.2:                                     ; preds = %.lr.ph3069.1
  %i.gjt = getelementptr inbounds nuw i8, ptr %.3246.i1093068, i64 2
  %i.gju = getelementptr inbounds nuw i8, ptr %.3253.i1083067, i64 2 ; 2 uses
  store i8 %i.gjp, ptr %i.gjo, align 1, !tbaa !99
  %i.gjv = load i8, ptr %i.gjt, align 1, !tbaa !99 ; 2 uses
  %i.gjw = zext i8 %i.gjv to i64
  %i.gjx = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gjw
  %i.gjy = load i8, ptr %i.gjx, align 1, !tbaa !99
  %.not.i111.2 = icmp eq i8 %i.gjy, 0
  br i1 %.not.i111.2, label %.lr.ph3069.3, label %.preheader1903.preheader.loopexit.loopexit.split.loop.exit7463, !prof !61

.lr.ph3069.3:                                     ; preds = %.lr.ph3069.2
  %i.gjz = getelementptr inbounds nuw i8, ptr %.3246.i1093068, i64 3
  %i.gka = getelementptr inbounds nuw i8, ptr %.3253.i1083067, i64 3 ; 2 uses
  store i8 %i.gjv, ptr %i.gju, align 1, !tbaa !99
  %i.gkb = load i8, ptr %i.gjz, align 1, !tbaa !99 ; 2 uses
  %i.gkc = zext i8 %i.gkb to i64
  %i.gkd = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.gkc
  %i.gke = load i8, ptr %i.gkd, align 1, !tbaa !99
  %.not.i111.3 = icmp eq i8 %i.gke, 0
  br i1 %.not.i111.3, label %bb.tn, label %.preheader1903.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.tn:                                            ; preds = %.lr.ph3069.3
  %i.gkf = getelementptr inbounds nuw i8, ptr %.3246.i1093068, i64 4 ; 2 uses
  %i.gkg = getelementptr inbounds nuw i8, ptr %.3253.i1083067, i64 4 ; 2 uses
  store i8 %i.gkb, ptr %i.gka, align 1, !tbaa !99
  %exitcond3713.not.3 = icmp eq ptr %i.gkf, %scevgep3712
  br i1 %exitcond3713.not.3, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188, label %.lr.ph3069, !llvm.loop !33

.loopexit1910:                                    ; preds = %bb.ss, %bb.tj
  %i.gkh = phi i8 [ %i.gik, %bb.tj ], [ %i.ger, %bb.ss ]
  %.5255.i164 = phi ptr [ %.2252.i1063062, %bb.tj ], [ %.1251.i1043055, %bb.ss ] ; 2 uses
  %.5248.i165 = phi ptr [ %.2245.i1073063, %bb.tj ], [ %.1244.i1053056, %bb.ss ]
  store i8 %i.gkh, ptr %.5255.i164, align 1
  %i.gki = getelementptr inbounds nuw i8, ptr %.5255.i164, i64 1
  %i.gkj = getelementptr inbounds nuw i8, ptr %.5248.i165, i64 1
  br label %.preheader1903.preheader

.loopexit1911:                                    ; preds = %bb.st, %bb.tk
  %.6256.i167 = phi ptr [ %.2252.i1063062, %bb.tk ], [ %.1251.i1043055, %bb.st ] ; 2 uses
  %.6.i168 = phi ptr [ %.2245.i1073063, %bb.tk ], [ %.1244.i1053056, %bb.st ] ; 2 uses
  %i.gkk = load i16, ptr %.6.i168, align 1
  store i16 %i.gkk, ptr %.6256.i167, align 1
  %i.gkl = getelementptr inbounds nuw i8, ptr %.6256.i167, i64 2
  %i.gkm = getelementptr inbounds nuw i8, ptr %.6.i168, i64 2
  br label %.preheader1903.preheader

.loopexit1912:                                    ; preds = %bb.su, %bb.tl
  %.7257.i170 = phi ptr [ %.2252.i1063062, %bb.tl ], [ %.1251.i1043055, %bb.su ] ; 2 uses
  %.7.i171 = phi ptr [ %.2245.i1073063, %bb.tl ], [ %.1244.i1053056, %bb.su ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i170, ptr noundef nonnull align 1 dereferenceable(3) %.7.i171, i64 3, i1 false)
  %i.gkn = getelementptr inbounds nuw i8, ptr %.7257.i170, i64 3
  %i.gko = getelementptr inbounds nuw i8, ptr %.7.i171, i64 3
  br label %.preheader1903.preheader

bb.to:                                            ; preds = %bb.sv
  %i.gkp = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 4
  %i.gkq = load i32, ptr %.1244.i1053056, align 1
  store i32 %i.gkq, ptr %.1251.i1043055, align 1
  %i.gkr = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 4
  br label %.preheader1903.preheader

bb.tp:                                            ; preds = %bb.sw
  %i.gks = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i1053056, i64 5, i1 false)
  %i.gkt = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 5
  br label %.preheader1903.preheader

bb.tq:                                            ; preds = %bb.sx
  %i.gku = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i1053056, i64 6, i1 false)
  %i.gkv = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 6
  br label %.preheader1903.preheader

bb.tr:                                            ; preds = %bb.sy
  %i.gkw = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i1053056, i64 7, i1 false)
  %i.gkx = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 7
  br label %.preheader1903.preheader

bb.ts:                                            ; preds = %bb.sz
  %i.gky = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 8
  %i.gkz = load i64, ptr %.1244.i1053056, align 1
  store i64 %i.gkz, ptr %.1251.i1043055, align 1
  %i.gla = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 8
  br label %.preheader1903.preheader

bb.tt:                                            ; preds = %bb.ta
  %i.glb = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i1053056, i64 9, i1 false)
  %i.glc = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 9
  br label %.preheader1903.preheader

bb.tu:                                            ; preds = %bb.tb
  %i.gld = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i1053056, i64 10, i1 false)
  %i.gle = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 10
  br label %.preheader1903.preheader

bb.tv:                                            ; preds = %bb.tc
  %i.glf = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i1053056, i64 11, i1 false)
  %i.glg = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 11
  br label %.preheader1903.preheader

bb.tw:                                            ; preds = %bb.td
  %i.glh = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i1053056, i64 12, i1 false)
  %i.gli = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 12
  br label %.preheader1903.preheader

bb.tx:                                            ; preds = %bb.te
  %i.glj = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i1053056, i64 13, i1 false)
  %i.glk = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 13
  br label %.preheader1903.preheader

bb.ty:                                            ; preds = %bb.tf
  %i.gll = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i1053056, i64 14, i1 false)
  %i.glm = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 14
  br label %.preheader1903.preheader

bb.tz:                                            ; preds = %bb.tg
  %i.gln = getelementptr inbounds nuw i8, ptr %.1244.i1053056, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i1043055, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i1053056, i64 15, i1 false)
  %i.glo = getelementptr inbounds nuw i8, ptr %.1251.i1043055, i64 15
  br label %.preheader1903.preheader

.preheader1903.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph3069.3
  %i.glp = getelementptr inbounds nuw i8, ptr %.3246.i1093068, i64 3
  br label %.preheader1903.preheader

.preheader1903.preheader.loopexit.loopexit.split.loop.exit7463: ; preds = %.lr.ph3069.2
  %i.glq = getelementptr inbounds nuw i8, ptr %.3246.i1093068, i64 2
  br label %.preheader1903.preheader

.preheader1903.preheader.loopexit.loopexit.split.loop.exit7466: ; preds = %.lr.ph3069.1
  %i.glr = getelementptr inbounds nuw i8, ptr %.3246.i1093068, i64 1
  br label %.preheader1903.preheader

.preheader1903.preheader:                         ; preds = %.lr.ph3058, %.lr.ph3064, %.lr.ph3069, %.preheader1903.preheader.loopexit.loopexit.split.loop.exit7466, %.preheader1903.preheader.loopexit.loopexit.split.loop.exit7463, %.preheader1903.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph3069.prol, %.loopexit1910, %.loopexit1911, %.loopexit1912, %bb.to, %bb.tp, %bb.tq, %bb.tr, %bb.ts, %bb.tt, %bb.tu, %bb.tv, %bb.tw, %bb.tx, %bb.ty, %bb.tz
  %.8258.i114.ph = phi ptr [ %.2252.i1063062, %.lr.ph3064 ], [ %.3253.i1083067.prol, %.lr.ph3069.prol ], [ %i.gki, %.loopexit1910 ], [ %i.gkl, %.loopexit1911 ], [ %i.gkn, %.loopexit1912 ], [ %i.gkr, %bb.to ], [ %i.gkt, %bb.tp ], [ %i.gkv, %bb.tq ], [ %i.gkx, %bb.tr ], [ %i.gla, %bb.ts ], [ %i.glc, %bb.tt ], [ %i.gle, %bb.tu ], [ %i.glg, %bb.tv ], [ %i.gli, %bb.tw ], [ %i.glk, %bb.tx ], [ %i.glm, %bb.ty ], [ %i.glo, %bb.tz ], [ %.3253.i1083067, %.lr.ph3069 ], [ %i.gjo, %.preheader1903.preheader.loopexit.loopexit.split.loop.exit7466 ], [ %i.gju, %.preheader1903.preheader.loopexit.loopexit.split.loop.exit7463 ], [ %i.gka, %.preheader1903.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i1043055, %.lr.ph3058 ]
  %.8.i115.ph = phi ptr [ %.2245.i1073063, %.lr.ph3064 ], [ %.3246.i1093068.prol, %.lr.ph3069.prol ], [ %i.gkj, %.loopexit1910 ], [ %i.gkm, %.loopexit1911 ], [ %i.gko, %.loopexit1912 ], [ %i.gkp, %bb.to ], [ %i.gks, %bb.tp ], [ %i.gku, %bb.tq ], [ %i.gkw, %bb.tr ], [ %i.gky, %bb.ts ], [ %i.glb, %bb.tt ], [ %i.gld, %bb.tu ], [ %i.glf, %bb.tv ], [ %i.glh, %bb.tw ], [ %i.glj, %bb.tx ], [ %i.gll, %bb.ty ], [ %i.gln, %bb.tz ], [ %.3246.i1093068, %.lr.ph3069 ], [ %i.glr, %.preheader1903.preheader.loopexit.loopexit.split.loop.exit7466 ], [ %i.glq, %.preheader1903.preheader.loopexit.loopexit.split.loop.exit7463 ], [ %i.glp, %.preheader1903.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i1053056, %.lr.ph3058 ]
  br label %.preheader1903

.preheader1903:                                   ; preds = %.preheader1903.backedge, %.preheader1903.preheader
  %.8258.i114 = phi ptr [ %.8258.i114.ph, %.preheader1903.preheader ], [ %.8258.i114.be, %.preheader1903.backedge ] ; 34 uses
  %.8.i115 = phi ptr [ %.8.i115.ph, %.preheader1903.preheader ], [ %.8.i115.be, %.preheader1903.backedge ] ; 23 uses
  %i.gls = getelementptr inbounds nuw i8, ptr %.8.i115, i64 4 ; 3 uses
  %i.glt = icmp ugt ptr %i.gls, %i.gek            ; 2 uses
  br i1 %i.glt, label %bb.ua, label %._crit_edge3764, !prof !44

._crit_edge3764:                                  ; preds = %.preheader1903
  %.pre3765 = load i8, ptr %.8.i115, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert3766 = zext i8 %.pre3765 to i64 ; 2 uses
  %.phi.trans.insert3767 = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %.phi.trans.insert3766
  %.pre3768 = load i8, ptr %.phi.trans.insert3767, align 1, !tbaa !99
  br label %bb.ub

bb.ua:                                            ; preds = %.preheader1903
  %i.glu = ptrtoint ptr %.8.i115 to i64
  %i.glv = sub i64 %i.gel, %i.glu
  %i.glw = load i8, ptr %.8.i115, align 1, !tbaa !99 ; 3 uses
  %i.glx = zext i8 %i.glw to i64                  ; 2 uses
  %i.gly = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.glx
  %i.glz = load i8, ptr %i.gly, align 1, !tbaa !99 ; 2 uses
  %i.gma = lshr i8 %i.glz, 1
  %i.gmb = zext nneg i8 %i.gma to i64
  %i.gmc = icmp slt i64 %i.glv, %i.gmb
  br i1 %i.gmc, label %bb.uu, label %bb.ub

bb.ub:                                            ; preds = %._crit_edge3764, %bb.ua
  %.pre-phi3795 = phi i64 [ %.phi.trans.insert3766, %._crit_edge3764 ], [ %i.glx, %bb.ua ]
  %i.gmd = phi i8 [ %.pre3768, %._crit_edge3764 ], [ %i.glz, %bb.ua ]
  %i.gme = phi i8 [ %.pre3765, %._crit_edge3764 ], [ %i.glw, %bb.ua ] ; 2 uses
  switch i8 %i.gmd, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188 [
    i8 0, label %bb.uc
    i8 4, label %bb.ud
    i8 6, label %bb.uf
    i8 8, label %bb.uk
    i8 2, label %bb.um
    i8 3, label %bb.un
    i8 5, label %bb.uo
    i8 7, label %bb.uq
    i8 9, label %bb.us
    i8 1, label %bb.uu
  ]

bb.uc:                                            ; preds = %bb.ub
  %i.gmf = getelementptr inbounds nuw i8, ptr %.8.i115, i64 1
  store i8 %i.gme, ptr %.8258.i114, align 1, !tbaa !99
  br label %bb.sr

bb.ud:                                            ; preds = %bb.ub
  %.sroa.0.0.copyload.i564 = load i16, ptr %.8.i115, align 1 ; 3 uses
  %i.gmg = zext i16 %.sroa.0.0.copyload.i564 to i32 ; 2 uses
  %i.gmh = and i32 %i.gmg, 49376
  %i.gmi = icmp ne i32 %i.gmh, 32960
  %i.gmj = and i32 %i.gmg, 30
  %i.gmk = icmp eq i32 %i.gmj, 0
  %.not315.i158 = or i1 %i.gmi, %i.gmk
  %i.gml = trunc i16 %.sroa.0.0.copyload.i564 to i8
  br i1 %.not315.i158, label %.thread1712, label %bb.ue, !prof !44

bb.ue:                                            ; preds = %bb.ud
  store i16 %.sroa.0.0.copyload.i564, ptr %.8258.i114, align 1
  %i.gmm = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 2
  %i.gmn = getelementptr inbounds nuw i8, ptr %.8.i115, i64 2
  br label %.preheader1903.backedge

bb.uf:                                            ; preds = %bb.ub
  br i1 %i.glt, label %bb.ui, label %bb.ug, !prof !44

bb.ug:                                            ; preds = %bb.uf
  %.sroa.0.0.copyload.i333.i153 = load i32, ptr %.8.i115, align 1 ; 4 uses
  %i.gmo = and i32 %.sroa.0.0.copyload.i333.i153, 12632304
  %i.gmp = icmp eq i32 %i.gmo, 8421600
  %i.gmq = trunc i32 %.sroa.0.0.copyload.i333.i153 to i8 ; 3 uses
  br i1 %i.gmp, label %bb.uh, label %.thread1712, !prof !61

bb.uh:                                            ; preds = %bb.ug
  %i.gmr = and i32 %.sroa.0.0.copyload.i333.i153, 8207
  switch i32 %i.gmr, label %.critedge.i154 [
    i32 8205, label %.thread1712
    i32 0, label %.thread1712
  ], !prof !150

bb.ui:                                            ; preds = %bb.uf
  %.sroa.0.0.copyload.i604 = load i16, ptr %.8.i115, align 1 ; 2 uses
  %i.gms = getelementptr inbounds nuw i8, ptr %.8.i115, i64 2
  %i.gmt = load i8, ptr %i.gms, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i605 = zext i8 %i.gmt to i32
  %.sroa.4.0.insert.shift.i606 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i605, 16
  %.sroa.0.0.insert.ext.i607 = zext i16 %.sroa.0.0.copyload.i604 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i608 = or disjoint i32 %.sroa.4.0.insert.shift.i606, %.sroa.0.0.insert.ext.i607 ; 2 uses
  %i.gmu = and i32 %.sroa.0.0.insert.insert.i608, 12632304
  %i.gmv = icmp eq i32 %i.gmu, 8421600
  %i.gmw = trunc i16 %.sroa.0.0.copyload.i604 to i8 ; 3 uses
  br i1 %i.gmv, label %bb.uj, label %.thread1712, !prof !61

bb.uj:                                            ; preds = %bb.ui
  %i.gmx = and i32 %.sroa.0.0.insert.ext.i607, 8207
  switch i32 %i.gmx, label %.critedge.i154 [
    i32 8205, label %.thread1712
    i32 0, label %.thread1712
  ], !prof !150

.critedge.i154:                                   ; preds = %bb.uj, %bb.uh
  %storemerge1808 = phi i32 [ %.sroa.0.0.copyload.i333.i153, %bb.uh ], [ %.sroa.0.0.insert.insert.i608, %bb.uj ]
  store i32 %storemerge1808, ptr %.8258.i114, align 1
  %i.gmy = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 3
  %i.gmz = getelementptr inbounds nuw i8, ptr %.8.i115, i64 3
  br label %.preheader1903.backedge

bb.uk:                                            ; preds = %bb.ub
  %.sroa.0.0.copyload.i332.i144 = load i32, ptr %.8.i115, align 1 ; 6 uses
  %i.gna = and i32 %.sroa.0.0.copyload.i332.i144, -1061109512
  %i.gnb = icmp ne i32 %i.gna, -2139062032
  %i.gnc = and i32 %.sroa.0.0.copyload.i332.i144, 12295
  %.not306.i145 = icmp eq i32 %i.gnc, 0
  %or.cond.i146 = or i1 %i.gnb, %.not306.i145
  %i.gnd = trunc i32 %.sroa.0.0.copyload.i332.i144 to i8 ; 2 uses
  br i1 %or.cond.i146, label %.thread1712, label %bb.ul, !prof !151

bb.ul:                                            ; preds = %bb.uk
  %i.gne = and i32 %.sroa.0.0.copyload.i332.i144, 4
  %i.gnf = icmp ne i32 %i.gne, 0
  %i.gng = and i32 %.sroa.0.0.copyload.i332.i144, 12291
  %i.gnh = icmp ne i32 %i.gng, 0
  %.not309.i147 = and i1 %i.gnf, %i.gnh
  br i1 %.not309.i147, label %.thread1712, label %.critedge321.i148, !prof !44

.critedge321.i148:                                ; preds = %bb.ul
  store i32 %.sroa.0.0.copyload.i332.i144, ptr %.8258.i114, align 1
  %i.gni = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 4
  br label %.preheader1903.backedge

bb.um:                                            ; preds = %bb.ub
  %i.gnj = shl nuw nsw i64 %.pre-phi3795, 1
  %i.gnk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.gnj
  %i.gnl = load i16, ptr %i.gnk, align 2
  store i16 %i.gnl, ptr %.8258.i114, align 1
  %i.gnm = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 2
  %i.gnn = getelementptr inbounds nuw i8, ptr %.8.i115, i64 1
  br label %.preheader1903.backedge

.preheader1903.backedge:                          ; preds = %bb.um, %bb.un, %bb.uv, %bb.uw, %bb.ue, %.critedge.i154, %.critedge321.i148, %bb.up, %.critedge326.i130, %.critedge330.i126
  %.8258.i114.be = phi ptr [ %i.grn, %bb.uv ], [ %i.gmm, %bb.ue ], [ %i.gmy, %.critedge.i154 ], [ %i.gni, %.critedge321.i148 ], [ %i.gnm, %bb.um ], [ %i.gnu, %bb.un ], [ %i.goq, %bb.up ], [ %i.gpn, %.critedge326.i130 ], [ %i.grj, %.critedge330.i126 ], [ %i.grp, %bb.uw ]
  %.8.i115.be = phi ptr [ %i.grm, %bb.uv ], [ %i.gmn, %bb.ue ], [ %i.gmz, %.critedge.i154 ], [ %i.gls, %.critedge321.i148 ], [ %i.gnn, %bb.um ], [ %i.gnv, %bb.un ], [ %i.gor, %bb.up ], [ %i.gpo, %.critedge326.i130 ], [ %i.gls, %.critedge330.i126 ], [ %i.grq, %bb.uw ]
  br label %.preheader1903

bb.un:                                            ; preds = %bb.ub
  store i32 808482140, ptr %.8258.i114, align 1
  %i.gno = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 4
  %i.gnp = load i8, ptr %.8.i115, align 1, !tbaa !99
  %i.gnq = zext i8 %i.gnp to i64
  %i.gnr = shl nuw nsw i64 %i.gnq, 1
  %i.gns = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gnr
  %i.gnt = load i16, ptr %i.gns, align 2
  store i16 %i.gnt, ptr %i.gno, align 1
  %i.gnu = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 6
  %i.gnv = getelementptr inbounds nuw i8, ptr %.8.i115, i64 1
  br label %.preheader1903.backedge

bb.uo:                                            ; preds = %bb.ub
  %.sroa.0.0.copyload.i565 = load i16, ptr %.8.i115, align 1 ; 3 uses
  %i.gnw = zext i16 %.sroa.0.0.copyload.i565 to i32 ; 2 uses
  %i.gnx = and i32 %i.gnw, 49376
  %i.gny = icmp ne i32 %i.gnx, 32960
  %i.gnz = and i32 %i.gnw, 30
  %i.goa = icmp eq i32 %i.gnz, 0
  %.not303.i138 = or i1 %i.gny, %i.goa
  br i1 %.not303.i138, label %.thread1722, label %bb.up, !prof !44

bb.up:                                            ; preds = %bb.uo
  %i.gob = lshr i16 %.sroa.0.0.copyload.i565, 8
  %i.goc = trunc nuw i16 %i.gob to i8
  %i.god = trunc i16 %.sroa.0.0.copyload.i565 to i8 ; 2 uses
  %.tr304.i139 = shl i8 %i.god, 6
  %i.goe = and i8 %i.goc, 63
  store i16 30044, ptr %.8258.i114, align 1
  %i.gof = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 2
  %i.gog = lshr i8 %i.god, 1
  %i.goh = and i8 %i.gog, 14
  %i.goi = zext nneg i8 %i.goh to i64
  %i.goj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.goi
  %i.gok = load i16, ptr %i.goj, align 2
  store i16 %i.gok, ptr %i.gof, align 1
  %i.gol = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 4
  %.narrow305.i140 = or disjoint i8 %i.goe, %.tr304.i139
  %i.gom = zext i8 %.narrow305.i140 to i64
  %i.gon = shl nuw nsw i64 %i.gom, 1
  %i.goo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gon
  %i.gop = load i16, ptr %i.goo, align 2
  store i16 %i.gop, ptr %i.gol, align 1
  %i.goq = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 6
  %i.gor = getelementptr inbounds nuw i8, ptr %.8.i115, i64 2
  br label %.preheader1903.backedge

bb.uq:                                            ; preds = %bb.ub
  %.sroa.0.0.copyload.i609 = load i16, ptr %.8.i115, align 1 ; 3 uses
  %i.gos = getelementptr inbounds nuw i8, ptr %.8.i115, i64 2
  %i.got = load i8, ptr %i.gos, align 1, !tbaa !99 ; 2 uses
  %.sroa.4.0.insert.ext.i610 = zext i8 %i.got to i32
  %.sroa.4.0.insert.shift.i611 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i610, 16
  %.sroa.0.0.insert.ext.i612 = zext i16 %.sroa.0.0.copyload.i609 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i613 = or disjoint i32 %.sroa.4.0.insert.shift.i611, %.sroa.0.0.insert.ext.i612
  %i.gou = and i32 %.sroa.0.0.insert.insert.i613, 12632304
  %i.gov = icmp eq i32 %i.gou, 8421600
  br i1 %i.gov, label %bb.ur, label %.thread1722, !prof !61

bb.ur:                                            ; preds = %bb.uq
  %i.gow = and i32 %.sroa.0.0.insert.ext.i612, 8207
  switch i32 %i.gow, label %.critedge326.i130 [
    i32 8205, label %.thread1722
    i32 0, label %.thread1722
  ], !prof !150

.critedge326.i130:                                ; preds = %bb.ur
  %i.gox = zext i16 %.sroa.0.0.copyload.i609 to i64
  %i.goy = shl nuw nsw i64 %i.gox, 12
  %i.goz = lshr i16 %.sroa.0.0.copyload.i609, 2
  %i.gpa = and i16 %i.goz, 4032                   ; 2 uses
  %i.gpb = zext nneg i16 %i.gpa to i64
  %i.gpc = and i8 %i.got, 63
  store i16 30044, ptr %.8258.i114, align 1
  %i.gpd = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 2
  %.masked.i135 = or disjoint i64 %i.goy, %i.gpb
  %i.gpe = lshr i64 %.masked.i135, 7
  %i.gpf = and i64 %i.gpe, 510
  %i.gpg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gpf
  %i.gph = load i16, ptr %i.gpg, align 2
  store i16 %i.gph, ptr %i.gpd, align 1
  %i.gpi = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 4
  %.tr299.i136 = trunc i16 %i.gpa to i8
  %.narrow300.i137 = or disjoint i8 %i.gpc, %.tr299.i136
  %i.gpj = zext i8 %.narrow300.i137 to i64
  %i.gpk = shl nuw nsw i64 %i.gpj, 1
  %i.gpl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gpk
  %i.gpm = load i16, ptr %i.gpl, align 2
  store i16 %i.gpm, ptr %i.gpi, align 1
  %i.gpn = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 6
  %i.gpo = getelementptr inbounds nuw i8, ptr %.8.i115, i64 3
  br label %.preheader1903.backedge

bb.us:                                            ; preds = %bb.ub
  %.sroa.0.0.copyload.i.i120 = load i32, ptr %.8.i115, align 1 ; 9 uses
  %i.gpp = and i32 %.sroa.0.0.copyload.i.i120, -1061109512
  %i.gpq = icmp ne i32 %i.gpp, -2139062032
  %i.gpr = and i32 %.sroa.0.0.copyload.i.i120, 12295
  %.not293.i121 = icmp eq i32 %i.gpr, 0
  %or.cond328.i122 = or i1 %i.gpq, %.not293.i121
  %i.gps = lshr i32 %.sroa.0.0.copyload.i.i120, 24
  br i1 %or.cond328.i122, label %.thread1722, label %bb.ut, !prof !151

bb.ut:                                            ; preds = %bb.us
  %i.gpt = and i32 %.sroa.0.0.copyload.i.i120, 4
  %i.gpu = icmp ne i32 %i.gpt, 0
  %i.gpv = and i32 %.sroa.0.0.copyload.i.i120, 12291
  %i.gpw = icmp ne i32 %i.gpv, 0
  %.not296.i123 = and i1 %i.gpu, %i.gpw
  br i1 %.not296.i123, label %.thread1722, label %.critedge330.i126, !prof !44

.critedge330.i126:                                ; preds = %bb.ut
  %i.gpx = shl i32 %.sroa.0.0.copyload.i.i120, 18
  %i.gpy = and i32 %i.gpx, 1835008
  %i.gpz = shl i32 %.sroa.0.0.copyload.i.i120, 4
  %i.gqa = and i32 %i.gpz, 258048
  %i.gqb = lshr i32 %.sroa.0.0.copyload.i.i120, 10 ; 2 uses
  %i.gqc = and i32 %i.gqb, 3072
  %i.gqd = and i32 %i.gps, 63
  %i.gqe = add nsw i32 %i.gpy, -65536
  %i.gqf = add nsw i32 %i.gqe, %i.gqa             ; 2 uses
  %i.gqg = or disjoint i32 %i.gqf, %i.gqc
  %i.gqh = lshr exact i32 %i.gqf, 10
  %i.gqi = add nuw nsw i32 %i.gqh, 55296
  store i16 30044, ptr %.8258.i114, align 1
  %i.gqj = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 2
  %i.gqk = lshr i32 %i.gqi, 7
  %i.gql = and i32 %i.gqk, 65534
  %i.gqm = zext nneg i32 %i.gql to i64
  %i.gqn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gqm
  %i.gqo = load i16, ptr %i.gqn, align 2
  store i16 %i.gqo, ptr %i.gqj, align 1
  %i.gqp = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 4
  %i.gqq = lshr exact i32 %i.gqg, 9
  %i.gqr = and i32 %i.gqq, 510
  %i.gqs = zext nneg i32 %i.gqr to i64
  %i.gqt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gqs
  %i.gqu = load i16, ptr %i.gqt, align 2
  store i16 %i.gqu, ptr %i.gqp, align 1
  %i.gqv = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 6
  store i16 30044, ptr %i.gqv, align 1
  %i.gqw = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 8
  %i.gqx = lshr i32 %.sroa.0.0.copyload.i.i120, 17
  %i.gqy = and i32 %i.gqx, 6
  %i.gqz = zext nneg i32 %i.gqy to i64
  %i.gra = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gqz
  %i.grb = getelementptr inbounds nuw i8, ptr %i.gra, i64 440
  %i.grc = load i16, ptr %i.grb, align 2
  store i16 %i.grc, ptr %i.gqw, align 1
  %i.grd = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 10
  %.masked3956 = and i32 %i.gqb, 192
  %i.gre = or disjoint i32 %i.gqd, %.masked3956
  %i.grf = shl nuw nsw i32 %i.gre, 1
  %i.grg = zext nneg i32 %i.grf to i64
  %i.grh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.grg
  %i.gri = load i16, ptr %i.grh, align 2
  store i16 %i.gri, ptr %i.grd, align 1
  %i.grj = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 12
  br label %.preheader1903.backedge

bb.uu:                                            ; preds = %bb.ub, %bb.ua
  %i.grk = phi i8 [ %i.gme, %bb.ub ], [ %i.glw, %bb.ua ]
  br i1 %.not1789, label %.thread1712, label %.thread1722

.thread1712:                                      ; preds = %bb.uk, %bb.ul, %bb.ui, %bb.ug, %bb.uj, %bb.uj, %bb.uh, %bb.uh, %bb.ud, %bb.uu
  %i.grl = phi i8 [ %i.gnd, %bb.uk ], [ %i.gnd, %bb.ul ], [ %i.gmw, %bb.ui ], [ %i.gmq, %bb.ug ], [ %i.gmw, %bb.uj ], [ %i.gmw, %bb.uj ], [ %i.gmq, %bb.uh ], [ %i.gmq, %bb.uh ], [ %i.gml, %bb.ud ], [ %i.grk, %bb.uu ]
  br i1 %.not1792, label %.loopexit1890, label %bb.uv

bb.uv:                                            ; preds = %.thread1712
  %i.grm = getelementptr inbounds nuw i8, ptr %.8.i115, i64 1
  %i.grn = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 1
  store i8 %i.grl, ptr %.8258.i114, align 1, !tbaa !99
  br label %.preheader1903.backedge

.thread1722:                                      ; preds = %bb.us, %bb.ut, %bb.uq, %bb.ur, %bb.ur, %bb.uo, %bb.uu
  br i1 %.not1792, label %.loopexit1890, label %bb.uw

bb.uw:                                            ; preds = %.thread1722
  store i16 30044, ptr %.8258.i114, align 1
  %i.gro = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 2
  store i32 1145456198, ptr %i.gro, align 1
  %i.grp = getelementptr inbounds nuw i8, ptr %.8258.i114, i64 6
  %i.grq = getelementptr inbounds nuw i8, ptr %.8.i115, i64 1
  br label %.preheader1903.backedge

bb.ux:                                            ; preds = %bb.sq
  %i.grr = load i64, ptr %.0371.i, align 8, !tbaa !98
  %i.grs = and i64 %i.grr, 24
  %.not395.i = icmp eq i64 %i.grs, 0
  store i8 34, ptr %.1352.i, align 1, !tbaa !99
  br i1 %.not395.i, label %.split373.i, label %bb.xe

.split373.i:                                      ; preds = %bb.ux
  %i.grt = getelementptr inbounds nuw i8, ptr %i.gdn, i64 %i.gdl ; 3 uses
  %i.gru = ptrtoint ptr %i.grt to i64             ; 4 uses
  %i.grv = add i64 %i.gdl, %i.gdo
  br label %bb.uy

bb.uy:                                            ; preds = %bb.wj, %.split373.i
  %.pn.i = phi ptr [ %.1352.i, %.split373.i ], [ %.8258.i, %bb.wj ]
  %.0243.i = phi ptr [ %i.gdn, %.split373.i ], [ %i.gzo, %bb.wj ] ; 3 uses
  %.0250.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.grw = ptrtoint ptr %.0243.i to i64
  %i.grx = sub i64 %i.gru, %i.grw                 ; 2 uses
  %i.gry = icmp sgt i64 %i.grx, 15
  br i1 %i.gry, label %.lr.ph3109, label %.preheader1894

.preheader1894:                                   ; preds = %bb.vo, %bb.uy
  %.pre-phi3791 = phi i64 [ %i.grx, %bb.uy ], [ %i.gve, %bb.vo ]
  %.1251.i.lcssa = phi ptr [ %.0250.i, %bb.uy ], [ %i.gvb, %bb.vo ] ; 2 uses
  %.1244.i.lcssa = phi ptr [ %.0243.i, %bb.uy ], [ %i.gvc, %bb.vo ] ; 2 uses
  %i.grz = icmp sgt i64 %.pre-phi3791, 3
  br i1 %i.grz, label %.lr.ph3115, label %.preheader1892

.lr.ph3109:                                       ; preds = %bb.uy, %bb.vo
  %.1244.i3107 = phi ptr [ %i.gvc, %bb.vo ], [ %.0243.i, %bb.uy ] ; 46 uses
  %.1251.i3106 = phi ptr [ %i.gvb, %bb.vo ], [ %.0250.i, %bb.uy ] ; 30 uses
  %i.gsa = load i8, ptr %.1244.i3107, align 1, !tbaa !99 ; 2 uses
  %i.gsb = zext i8 %i.gsa to i64
  %i.gsc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gsb
  %i.gsd = load i8, ptr %i.gsc, align 1, !tbaa !99
  %.not277.i = icmp eq i8 %i.gsd, 0
  br i1 %.not277.i, label %bb.uz, label %.preheader1889.preheader, !prof !61

bb.uz:                                            ; preds = %.lr.ph3109
  %i.gse = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 1
  %i.gsf = load i8, ptr %i.gse, align 1, !tbaa !99
  %i.gsg = zext i8 %i.gsf to i64
  %i.gsh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gsg
  %i.gsi = load i8, ptr %i.gsh, align 1, !tbaa !99
  %.not278.i = icmp eq i8 %i.gsi, 0
  br i1 %.not278.i, label %bb.va, label %.loopexit1896, !prof !61

bb.va:                                            ; preds = %bb.uz
  %i.gsj = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 2
  %i.gsk = load i8, ptr %i.gsj, align 1, !tbaa !99
  %i.gsl = zext i8 %i.gsk to i64
  %i.gsm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gsl
  %i.gsn = load i8, ptr %i.gsm, align 1, !tbaa !99
  %.not279.i = icmp eq i8 %i.gsn, 0
  br i1 %.not279.i, label %bb.vb, label %.loopexit1897, !prof !61

bb.vb:                                            ; preds = %bb.va
  %i.gso = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 3
  %i.gsp = load i8, ptr %i.gso, align 1, !tbaa !99
  %i.gsq = zext i8 %i.gsp to i64
  %i.gsr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gsq
  %i.gss = load i8, ptr %i.gsr, align 1, !tbaa !99
  %.not280.i = icmp eq i8 %i.gss, 0
  br i1 %.not280.i, label %bb.vc, label %.loopexit1898, !prof !61

bb.vc:                                            ; preds = %bb.vb
  %i.gst = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 4
  %i.gsu = load i8, ptr %i.gst, align 1, !tbaa !99
  %i.gsv = zext i8 %i.gsu to i64
  %i.gsw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gsv
  %i.gsx = load i8, ptr %i.gsw, align 1, !tbaa !99
  %.not281.i = icmp eq i8 %i.gsx, 0
  br i1 %.not281.i, label %bb.vd, label %bb.vv, !prof !61

bb.vd:                                            ; preds = %bb.vc
  %i.gsy = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 5
  %i.gsz = load i8, ptr %i.gsy, align 1, !tbaa !99
  %i.gta = zext i8 %i.gsz to i64
  %i.gtb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gta
  %i.gtc = load i8, ptr %i.gtb, align 1, !tbaa !99
  %.not282.i = icmp eq i8 %i.gtc, 0
  br i1 %.not282.i, label %bb.ve, label %bb.vw, !prof !61

bb.ve:                                            ; preds = %bb.vd
  %i.gtd = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 6
  %i.gte = load i8, ptr %i.gtd, align 1, !tbaa !99
  %i.gtf = zext i8 %i.gte to i64
  %i.gtg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gtf
  %i.gth = load i8, ptr %i.gtg, align 1, !tbaa !99
  %.not283.i = icmp eq i8 %i.gth, 0
  br i1 %.not283.i, label %bb.vf, label %bb.vx, !prof !61

bb.vf:                                            ; preds = %bb.ve
  %i.gti = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 7
  %i.gtj = load i8, ptr %i.gti, align 1, !tbaa !99
  %i.gtk = zext i8 %i.gtj to i64
  %i.gtl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gtk
  %i.gtm = load i8, ptr %i.gtl, align 1, !tbaa !99
  %.not284.i = icmp eq i8 %i.gtm, 0
  br i1 %.not284.i, label %bb.vg, label %bb.vy, !prof !61

bb.vg:                                            ; preds = %bb.vf
  %i.gtn = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 8
  %i.gto = load i8, ptr %i.gtn, align 1, !tbaa !99
  %i.gtp = zext i8 %i.gto to i64
  %i.gtq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gtp
  %i.gtr = load i8, ptr %i.gtq, align 1, !tbaa !99
  %.not285.i = icmp eq i8 %i.gtr, 0
  br i1 %.not285.i, label %bb.vh, label %bb.vz, !prof !61

bb.vh:                                            ; preds = %bb.vg
  %i.gts = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 9
  %i.gtt = load i8, ptr %i.gts, align 1, !tbaa !99
  %i.gtu = zext i8 %i.gtt to i64
  %i.gtv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gtu
  %i.gtw = load i8, ptr %i.gtv, align 1, !tbaa !99
  %.not286.i = icmp eq i8 %i.gtw, 0
  br i1 %.not286.i, label %bb.vi, label %bb.wa, !prof !61

bb.vi:                                            ; preds = %bb.vh
  %i.gtx = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 10
  %i.gty = load i8, ptr %i.gtx, align 1, !tbaa !99
  %i.gtz = zext i8 %i.gty to i64
  %i.gua = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gtz
  %i.gub = load i8, ptr %i.gua, align 1, !tbaa !99
  %.not287.i = icmp eq i8 %i.gub, 0
  br i1 %.not287.i, label %bb.vj, label %bb.wb, !prof !61

bb.vj:                                            ; preds = %bb.vi
  %i.guc = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 11
  %i.gud = load i8, ptr %i.guc, align 1, !tbaa !99
  %i.gue = zext i8 %i.gud to i64
  %i.guf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gue
  %i.gug = load i8, ptr %i.guf, align 1, !tbaa !99
  %.not288.i = icmp eq i8 %i.gug, 0
  br i1 %.not288.i, label %bb.vk, label %bb.wc, !prof !61

bb.vk:                                            ; preds = %bb.vj
  %i.guh = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 12
  %i.gui = load i8, ptr %i.guh, align 1, !tbaa !99
  %i.guj = zext i8 %i.gui to i64
  %i.guk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.guj
  %i.gul = load i8, ptr %i.guk, align 1, !tbaa !99
  %.not289.i = icmp eq i8 %i.gul, 0
  br i1 %.not289.i, label %bb.vl, label %bb.wd, !prof !61

bb.vl:                                            ; preds = %bb.vk
  %i.gum = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 13
  %i.gun = load i8, ptr %i.gum, align 1, !tbaa !99
  %i.guo = zext i8 %i.gun to i64
  %i.gup = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.guo
  %i.guq = load i8, ptr %i.gup, align 1, !tbaa !99
  %.not290.i = icmp eq i8 %i.guq, 0
  br i1 %.not290.i, label %bb.vm, label %bb.we, !prof !61

bb.vm:                                            ; preds = %bb.vl
  %i.gur = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 14
  %i.gus = load i8, ptr %i.gur, align 1, !tbaa !99
  %i.gut = zext i8 %i.gus to i64
  %i.guu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gut
  %i.guv = load i8, ptr %i.guu, align 1, !tbaa !99
  %.not291.i = icmp eq i8 %i.guv, 0
  br i1 %.not291.i, label %bb.vn, label %bb.wf, !prof !61

bb.vn:                                            ; preds = %bb.vm
  %i.guw = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 15
  %i.gux = load i8, ptr %i.guw, align 1, !tbaa !99
  %i.guy = zext i8 %i.gux to i64
  %i.guz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.guy
  %i.gva = load i8, ptr %i.guz, align 1, !tbaa !99
  %.not292.i = icmp eq i8 %i.gva, 0
  br i1 %.not292.i, label %bb.vo, label %bb.wg, !prof !61

bb.vo:                                            ; preds = %bb.vn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i3107, i64 16, i1 false)
  %i.gvb = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 16 ; 2 uses
  %i.gvc = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 16 ; 3 uses
  %i.gvd = ptrtoint ptr %i.gvc to i64
  %i.gve = sub i64 %i.gru, %i.gvd                 ; 2 uses
  %i.gvf = icmp sgt i64 %i.gve, 15
  br i1 %i.gvf, label %.lr.ph3109, label %.preheader1894, !llvm.loop !31

.preheader1892:                                   ; preds = %bb.vt, %.preheader1894
  %.2252.i.lcssa = phi ptr [ %.1251.i.lcssa, %.preheader1894 ], [ %i.gwn, %bb.vt ] ; 3 uses
  %.2245.i.lcssa = phi ptr [ %.1244.i.lcssa, %.preheader1894 ], [ %i.gwo, %bb.vt ] ; 5 uses
  %i.gvg = icmp ugt ptr %i.grt, %.2245.i.lcssa
  br i1 %i.gvg, label %.lr.ph3120.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188

.lr.ph3120.preheader:                             ; preds = %.preheader1892
  %.2245.i.lcssa3715 = ptrtoaddr ptr %.2245.i.lcssa to i64 ; 2 uses
  %i.gvh = getelementptr i8, ptr %.2245.i.lcssa, i64 %i.gdl
  %scevgep3714 = getelementptr i8, ptr %i.gvh, i64 %i.gdo
  %i.gvi = sub i64 0, %.2245.i.lcssa3715
  %scevgep3716 = getelementptr i8, ptr %scevgep3714, i64 %i.gvi
  %i.gvj = sub i64 %i.grv, %.2245.i.lcssa3715
  %i.gvk = freeze i64 %i.gvj                      ; 2 uses
  %i.gvl = add i64 %i.gvk, -1
  %xtraiter6761 = and i64 %i.gvk, 3               ; 2 uses
  %lcmp.mod6762.not = icmp eq i64 %xtraiter6761, 0
  br i1 %lcmp.mod6762.not, label %.lr.ph3120.prol.loopexit, label %.lr.ph3120.prol

.lr.ph3120.prol:                                  ; preds = %.lr.ph3120.preheader, %bb.vp
  %.3246.i3119.prol = phi ptr [ %i.gvq, %bb.vp ], [ %.2245.i.lcssa, %.lr.ph3120.preheader ] ; 3 uses
  %.3253.i3118.prol = phi ptr [ %i.gvr, %bb.vp ], [ %.2252.i.lcssa, %.lr.ph3120.preheader ] ; 3 uses
  %prol.iter6763 = phi i64 [ %prol.iter6763.next, %bb.vp ], [ 0, %.lr.ph3120.preheader ]
  %i.gvm = load i8, ptr %.3246.i3119.prol, align 1, !tbaa !99 ; 2 uses
  %i.gvn = zext i8 %i.gvm to i64
  %i.gvo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gvn
end_hunk_8
begin_hunk_9_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.gwb = load i8, ptr %i.gwa, align 1, !tbaa !99
  %.not274.i = icmp eq i8 %i.gwb, 0
  br i1 %.not274.i, label %bb.vr, label %.loopexit1896, !prof !61

bb.vr:                                            ; preds = %bb.vq
  %i.gwc = getelementptr inbounds nuw i8, ptr %.2245.i3114, i64 2
  %i.gwd = load i8, ptr %i.gwc, align 1, !tbaa !99
  %i.gwe = zext i8 %i.gwd to i64
  %i.gwf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gwe
  %i.gwg = load i8, ptr %i.gwf, align 1, !tbaa !99
  %.not275.i = icmp eq i8 %i.gwg, 0
  br i1 %.not275.i, label %bb.vs, label %.loopexit1897, !prof !61

bb.vs:                                            ; preds = %bb.vr
  %i.gwh = getelementptr inbounds nuw i8, ptr %.2245.i3114, i64 3
  %i.gwi = load i8, ptr %i.gwh, align 1, !tbaa !99
  %i.gwj = zext i8 %i.gwi to i64
  %i.gwk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gwj
  %i.gwl = load i8, ptr %i.gwk, align 1, !tbaa !99
  %.not276.i = icmp eq i8 %i.gwl, 0
  br i1 %.not276.i, label %bb.vt, label %.loopexit1898, !prof !61

bb.vt:                                            ; preds = %bb.vs
  %i.gwm = load i32, ptr %.2245.i3114, align 1
  store i32 %i.gwm, ptr %.2252.i3113, align 1
  %i.gwn = getelementptr inbounds nuw i8, ptr %.2252.i3113, i64 4 ; 2 uses
  %i.gwo = getelementptr inbounds nuw i8, ptr %.2245.i3114, i64 4 ; 3 uses
  %i.gwp = ptrtoint ptr %i.gwo to i64
  %i.gwq = sub i64 %i.gru, %i.gwp
  %i.gwr = icmp sgt i64 %i.gwq, 3
  br i1 %i.gwr, label %.lr.ph3115, label %.preheader1892, !llvm.loop !32

.lr.ph3120:                                       ; preds = %.lr.ph3120.prol.loopexit, %bb.vu
  %.3246.i3119 = phi ptr [ %i.gxo, %bb.vu ], [ %.3246.i3119.unr, %.lr.ph3120.prol.loopexit ] ; 9 uses
  %.3253.i3118 = phi ptr [ %i.gxp, %bb.vu ], [ %.3253.i3118.unr, %.lr.ph3120.prol.loopexit ] ; 6 uses
  %i.gws = load i8, ptr %.3246.i3119, align 1, !tbaa !99 ; 2 uses
  %i.gwt = zext i8 %i.gws to i64
  %i.gwu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gwt
  %i.gwv = load i8, ptr %i.gwu, align 1, !tbaa !99
  %.not.i86 = icmp eq i8 %i.gwv, 0
  br i1 %.not.i86, label %.lr.ph3120.1, label %.preheader1889.preheader, !prof !61

.lr.ph3120.1:                                     ; preds = %.lr.ph3120
  %i.gww = getelementptr inbounds nuw i8, ptr %.3246.i3119, i64 1
  %i.gwx = getelementptr inbounds nuw i8, ptr %.3253.i3118, i64 1 ; 2 uses
  store i8 %i.gws, ptr %.3253.i3118, align 1, !tbaa !99
  %i.gwy = load i8, ptr %i.gww, align 1, !tbaa !99 ; 2 uses
  %i.gwz = zext i8 %i.gwy to i64
  %i.gxa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gwz
  %i.gxb = load i8, ptr %i.gxa, align 1, !tbaa !99
  %.not.i86.1 = icmp eq i8 %i.gxb, 0
  br i1 %.not.i86.1, label %.lr.ph3120.2, label %.preheader1889.preheader.loopexit.loopexit.split.loop.exit7478, !prof !61

.lr.ph3120.2:                                     ; preds = %.lr.ph3120.1
  %i.gxc = getelementptr inbounds nuw i8, ptr %.3246.i3119, i64 2
  %i.gxd = getelementptr inbounds nuw i8, ptr %.3253.i3118, i64 2 ; 2 uses
  store i8 %i.gwy, ptr %i.gwx, align 1, !tbaa !99
  %i.gxe = load i8, ptr %i.gxc, align 1, !tbaa !99 ; 2 uses
  %i.gxf = zext i8 %i.gxe to i64
  %i.gxg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gxf
  %i.gxh = load i8, ptr %i.gxg, align 1, !tbaa !99
  %.not.i86.2 = icmp eq i8 %i.gxh, 0
  br i1 %.not.i86.2, label %.lr.ph3120.3, label %.preheader1889.preheader.loopexit.loopexit.split.loop.exit7475, !prof !61

.lr.ph3120.3:                                     ; preds = %.lr.ph3120.2
  %i.gxi = getelementptr inbounds nuw i8, ptr %.3246.i3119, i64 3
  %i.gxj = getelementptr inbounds nuw i8, ptr %.3253.i3118, i64 3 ; 2 uses
  store i8 %i.gxe, ptr %i.gxd, align 1, !tbaa !99
  %i.gxk = load i8, ptr %i.gxi, align 1, !tbaa !99 ; 2 uses
  %i.gxl = zext i8 %i.gxk to i64
  %i.gxm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gxl
  %i.gxn = load i8, ptr %i.gxm, align 1, !tbaa !99
  %.not.i86.3 = icmp eq i8 %i.gxn, 0
  br i1 %.not.i86.3, label %bb.vu, label %.preheader1889.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.vu:                                            ; preds = %.lr.ph3120.3
  %i.gxo = getelementptr inbounds nuw i8, ptr %.3246.i3119, i64 4 ; 2 uses
  %i.gxp = getelementptr inbounds nuw i8, ptr %.3253.i3118, i64 4 ; 2 uses
  store i8 %i.gxk, ptr %i.gxj, align 1, !tbaa !99
  %exitcond3717.not.3 = icmp eq ptr %i.gxo, %scevgep3716
  br i1 %exitcond3717.not.3, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188, label %.lr.ph3120, !llvm.loop !33

.loopexit1896:                                    ; preds = %bb.uz, %bb.vq
  %i.gxq = phi i8 [ %i.gvt, %bb.vq ], [ %i.gsa, %bb.uz ]
  %.5255.i = phi ptr [ %.2252.i3113, %bb.vq ], [ %.1251.i3106, %bb.uz ] ; 2 uses
  %.5248.i = phi ptr [ %.2245.i3114, %bb.vq ], [ %.1244.i3107, %bb.uz ]
  store i8 %i.gxq, ptr %.5255.i, align 1
  %i.gxr = getelementptr inbounds nuw i8, ptr %.5255.i, i64 1
  %i.gxs = getelementptr inbounds nuw i8, ptr %.5248.i, i64 1
  br label %.preheader1889.preheader

.loopexit1897:                                    ; preds = %bb.va, %bb.vr
  %.6256.i = phi ptr [ %.2252.i3113, %bb.vr ], [ %.1251.i3106, %bb.va ] ; 2 uses
  %.6.i99 = phi ptr [ %.2245.i3114, %bb.vr ], [ %.1244.i3107, %bb.va ] ; 2 uses
  %i.gxt = load i16, ptr %.6.i99, align 1
  store i16 %i.gxt, ptr %.6256.i, align 1
  %i.gxu = getelementptr inbounds nuw i8, ptr %.6256.i, i64 2
  %i.gxv = getelementptr inbounds nuw i8, ptr %.6.i99, i64 2
  br label %.preheader1889.preheader

.loopexit1898:                                    ; preds = %bb.vb, %bb.vs
  %.7257.i = phi ptr [ %.2252.i3113, %bb.vs ], [ %.1251.i3106, %bb.vb ] ; 2 uses
  %.7.i100 = phi ptr [ %.2245.i3114, %bb.vs ], [ %.1244.i3107, %bb.vb ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i100, i64 3, i1 false)
  %i.gxw = getelementptr inbounds nuw i8, ptr %.7257.i, i64 3
  %i.gxx = getelementptr inbounds nuw i8, ptr %.7.i100, i64 3
  br label %.preheader1889.preheader

bb.vv:                                            ; preds = %bb.vc
  %i.gxy = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 4
  %i.gxz = load i32, ptr %.1244.i3107, align 1
  store i32 %i.gxz, ptr %.1251.i3106, align 1
  %i.gya = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 4
  br label %.preheader1889.preheader

bb.vw:                                            ; preds = %bb.vd
  %i.gyb = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i3107, i64 5, i1 false)
  %i.gyc = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 5
  br label %.preheader1889.preheader

bb.vx:                                            ; preds = %bb.ve
  %i.gyd = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i3107, i64 6, i1 false)
  %i.gye = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 6
  br label %.preheader1889.preheader

bb.vy:                                            ; preds = %bb.vf
  %i.gyf = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i3107, i64 7, i1 false)
  %i.gyg = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 7
  br label %.preheader1889.preheader

bb.vz:                                            ; preds = %bb.vg
  %i.gyh = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 8
  %i.gyi = load i64, ptr %.1244.i3107, align 1
  store i64 %i.gyi, ptr %.1251.i3106, align 1
  %i.gyj = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 8
  br label %.preheader1889.preheader

bb.wa:                                            ; preds = %bb.vh
  %i.gyk = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i3107, i64 9, i1 false)
  %i.gyl = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 9
  br label %.preheader1889.preheader

bb.wb:                                            ; preds = %bb.vi
  %i.gym = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i3107, i64 10, i1 false)
  %i.gyn = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 10
  br label %.preheader1889.preheader

bb.wc:                                            ; preds = %bb.vj
  %i.gyo = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i3107, i64 11, i1 false)
  %i.gyp = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 11
  br label %.preheader1889.preheader

bb.wd:                                            ; preds = %bb.vk
  %i.gyq = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i3107, i64 12, i1 false)
  %i.gyr = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 12
  br label %.preheader1889.preheader

bb.we:                                            ; preds = %bb.vl
  %i.gys = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i3107, i64 13, i1 false)
  %i.gyt = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 13
  br label %.preheader1889.preheader

bb.wf:                                            ; preds = %bb.vm
  %i.gyu = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i3107, i64 14, i1 false)
  %i.gyv = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 14
  br label %.preheader1889.preheader

bb.wg:                                            ; preds = %bb.vn
  %i.gyw = getelementptr inbounds nuw i8, ptr %.1244.i3107, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i3106, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i3107, i64 15, i1 false)
  %i.gyx = getelementptr inbounds nuw i8, ptr %.1251.i3106, i64 15
  br label %.preheader1889.preheader

.preheader1889.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph3120.3
  %i.gyy = getelementptr inbounds nuw i8, ptr %.3246.i3119, i64 3
  br label %.preheader1889.preheader

.preheader1889.preheader.loopexit.loopexit.split.loop.exit7475: ; preds = %.lr.ph3120.2
  %i.gyz = getelementptr inbounds nuw i8, ptr %.3246.i3119, i64 2
  br label %.preheader1889.preheader

.preheader1889.preheader.loopexit.loopexit.split.loop.exit7478: ; preds = %.lr.ph3120.1
  %i.gza = getelementptr inbounds nuw i8, ptr %.3246.i3119, i64 1
  br label %.preheader1889.preheader

.preheader1889.preheader:                         ; preds = %.lr.ph3109, %.lr.ph3115, %.lr.ph3120, %.preheader1889.preheader.loopexit.loopexit.split.loop.exit7478, %.preheader1889.preheader.loopexit.loopexit.split.loop.exit7475, %.preheader1889.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph3120.prol, %.loopexit1896, %.loopexit1897, %.loopexit1898, %bb.vv, %bb.vw, %bb.vx, %bb.vy, %bb.vz, %bb.wa, %bb.wb, %bb.wc, %bb.wd, %bb.we, %bb.wf, %bb.wg
  %.8258.i.ph = phi ptr [ %.2252.i3113, %.lr.ph3115 ], [ %.3253.i3118.prol, %.lr.ph3120.prol ], [ %i.gxr, %.loopexit1896 ], [ %i.gxu, %.loopexit1897 ], [ %i.gxw, %.loopexit1898 ], [ %i.gya, %bb.vv ], [ %i.gyc, %bb.vw ], [ %i.gye, %bb.vx ], [ %i.gyg, %bb.vy ], [ %i.gyj, %bb.vz ], [ %i.gyl, %bb.wa ], [ %i.gyn, %bb.wb ], [ %i.gyp, %bb.wc ], [ %i.gyr, %bb.wd ], [ %i.gyt, %bb.we ], [ %i.gyv, %bb.wf ], [ %i.gyx, %bb.wg ], [ %.3253.i3118, %.lr.ph3120 ], [ %i.gwx, %.preheader1889.preheader.loopexit.loopexit.split.loop.exit7478 ], [ %i.gxd, %.preheader1889.preheader.loopexit.loopexit.split.loop.exit7475 ], [ %i.gxj, %.preheader1889.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i3106, %.lr.ph3109 ]
  %.8.i87.ph = phi ptr [ %.2245.i3114, %.lr.ph3115 ], [ %.3246.i3119.prol, %.lr.ph3120.prol ], [ %i.gxs, %.loopexit1896 ], [ %i.gxv, %.loopexit1897 ], [ %i.gxx, %.loopexit1898 ], [ %i.gxy, %bb.vv ], [ %i.gyb, %bb.vw ], [ %i.gyd, %bb.vx ], [ %i.gyf, %bb.vy ], [ %i.gyh, %bb.vz ], [ %i.gyk, %bb.wa ], [ %i.gym, %bb.wb ], [ %i.gyo, %bb.wc ], [ %i.gyq, %bb.wd ], [ %i.gys, %bb.we ], [ %i.gyu, %bb.wf ], [ %i.gyw, %bb.wg ], [ %.3246.i3119, %.lr.ph3120 ], [ %i.gza, %.preheader1889.preheader.loopexit.loopexit.split.loop.exit7478 ], [ %i.gyz, %.preheader1889.preheader.loopexit.loopexit.split.loop.exit7475 ], [ %i.gyy, %.preheader1889.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i3107, %.lr.ph3109 ]
  br label %.preheader1889

.preheader1889:                                   ; preds = %.preheader1889.backedge, %.preheader1889.preheader
  %.8258.i = phi ptr [ %.8258.i.ph, %.preheader1889.preheader ], [ %.8258.i.be, %.preheader1889.backedge ] ; 34 uses
  %.8.i87 = phi ptr [ %.8.i87.ph, %.preheader1889.preheader ], [ %.8.i87.be, %.preheader1889.backedge ] ; 23 uses
  %i.gzb = getelementptr inbounds nuw i8, ptr %.8.i87, i64 4 ; 3 uses
  %i.gzc = icmp ugt ptr %i.gzb, %i.grt            ; 2 uses
  br i1 %i.gzc, label %bb.wh, label %._crit_edge3769, !prof !44

._crit_edge3769:                                  ; preds = %.preheader1889
  %.pre3770 = load i8, ptr %.8.i87, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert3771 = zext i8 %.pre3770 to i64 ; 2 uses
  %.phi.trans.insert3772 = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %.phi.trans.insert3771
  %.pre3773 = load i8, ptr %.phi.trans.insert3772, align 1, !tbaa !99
  br label %bb.wi

bb.wh:                                            ; preds = %.preheader1889
  %i.gzd = ptrtoint ptr %.8.i87 to i64
  %i.gze = sub i64 %i.gru, %i.gzd
  %i.gzf = load i8, ptr %.8.i87, align 1, !tbaa !99 ; 3 uses
  %i.gzg = zext i8 %i.gzf to i64                  ; 2 uses
  %i.gzh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gzg
  %i.gzi = load i8, ptr %i.gzh, align 1, !tbaa !99 ; 2 uses
  %i.gzj = lshr i8 %i.gzi, 1
  %i.gzk = zext nneg i8 %i.gzj to i64
  %i.gzl = icmp slt i64 %i.gze, %i.gzk
  br i1 %i.gzl, label %bb.xb, label %bb.wi

bb.wi:                                            ; preds = %._crit_edge3769, %bb.wh
  %.pre-phi3792 = phi i64 [ %.phi.trans.insert3771, %._crit_edge3769 ], [ %i.gzg, %bb.wh ]
  %i.gzm = phi i8 [ %.pre3773, %._crit_edge3769 ], [ %i.gzi, %bb.wh ]
  %i.gzn = phi i8 [ %.pre3770, %._crit_edge3769 ], [ %i.gzf, %bb.wh ] ; 2 uses
  switch i8 %i.gzm, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188 [
    i8 0, label %bb.wj
    i8 4, label %bb.wk
    i8 6, label %bb.wm
    i8 8, label %bb.wr
    i8 2, label %bb.wt
    i8 3, label %bb.wu
    i8 5, label %bb.wv
    i8 7, label %bb.wx
    i8 9, label %bb.wz
    i8 1, label %bb.xb
  ]

bb.wj:                                            ; preds = %bb.wi
  %i.gzo = getelementptr inbounds nuw i8, ptr %.8.i87, i64 1
  store i8 %i.gzn, ptr %.8258.i, align 1, !tbaa !99
  br label %bb.uy

bb.wk:                                            ; preds = %bb.wi
  %.sroa.0.0.copyload.i566 = load i16, ptr %.8.i87, align 1 ; 3 uses
  %i.gzp = zext i16 %.sroa.0.0.copyload.i566 to i32 ; 2 uses
  %i.gzq = and i32 %i.gzp, 49376
  %i.gzr = icmp ne i32 %i.gzq, 32960
  %i.gzs = and i32 %i.gzp, 30
  %i.gzt = icmp eq i32 %i.gzs, 0
  %.not315.i = or i1 %i.gzr, %i.gzt
  %i.gzu = trunc i16 %.sroa.0.0.copyload.i566 to i8
  br i1 %.not315.i, label %.thread1732, label %bb.wl, !prof !44

bb.wl:                                            ; preds = %bb.wk
  store i16 %.sroa.0.0.copyload.i566, ptr %.8258.i, align 1
  %i.gzv = getelementptr inbounds nuw i8, ptr %.8258.i, i64 2
  %i.gzw = getelementptr inbounds nuw i8, ptr %.8.i87, i64 2
  br label %.preheader1889.backedge

bb.wm:                                            ; preds = %bb.wi
  br i1 %i.gzc, label %bb.wp, label %bb.wn, !prof !44

bb.wn:                                            ; preds = %bb.wm
  %.sroa.0.0.copyload.i333.i = load i32, ptr %.8.i87, align 1 ; 4 uses
  %i.gzx = and i32 %.sroa.0.0.copyload.i333.i, 12632304
  %i.gzy = icmp eq i32 %i.gzx, 8421600
  %i.gzz = trunc i32 %.sroa.0.0.copyload.i333.i to i8 ; 3 uses
  br i1 %i.gzy, label %bb.wo, label %.thread1732, !prof !61

bb.wo:                                            ; preds = %bb.wn
  %i.haa = and i32 %.sroa.0.0.copyload.i333.i, 8207
  switch i32 %i.haa, label %.critedge.i [
    i32 8205, label %.thread1732
    i32 0, label %.thread1732
  ], !prof !150

bb.wp:                                            ; preds = %bb.wm
  %.sroa.0.0.copyload.i614 = load i16, ptr %.8.i87, align 1 ; 2 uses
  %i.hab = getelementptr inbounds nuw i8, ptr %.8.i87, i64 2
  %i.hac = load i8, ptr %i.hab, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i615 = zext i8 %i.hac to i32
  %.sroa.4.0.insert.shift.i616 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i615, 16
  %.sroa.0.0.insert.ext.i617 = zext i16 %.sroa.0.0.copyload.i614 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i618 = or disjoint i32 %.sroa.4.0.insert.shift.i616, %.sroa.0.0.insert.ext.i617 ; 2 uses
  %i.had = and i32 %.sroa.0.0.insert.insert.i618, 12632304
  %i.hae = icmp eq i32 %i.had, 8421600
  %i.haf = trunc i16 %.sroa.0.0.copyload.i614 to i8 ; 3 uses
  br i1 %i.hae, label %bb.wq, label %.thread1732, !prof !61

bb.wq:                                            ; preds = %bb.wp
  %i.hag = and i32 %.sroa.0.0.insert.ext.i617, 8207
  switch i32 %i.hag, label %.critedge.i [
    i32 8205, label %.thread1732
    i32 0, label %.thread1732
  ], !prof !150

.critedge.i:                                      ; preds = %bb.wq, %bb.wo
  %storemerge1809 = phi i32 [ %.sroa.0.0.copyload.i333.i, %bb.wo ], [ %.sroa.0.0.insert.insert.i618, %bb.wq ]
  store i32 %storemerge1809, ptr %.8258.i, align 1
  %i.hah = getelementptr inbounds nuw i8, ptr %.8258.i, i64 3
  %i.hai = getelementptr inbounds nuw i8, ptr %.8.i87, i64 3
  br label %.preheader1889.backedge

bb.wr:                                            ; preds = %bb.wi
  %.sroa.0.0.copyload.i332.i = load i32, ptr %.8.i87, align 1 ; 6 uses
  %i.haj = and i32 %.sroa.0.0.copyload.i332.i, -1061109512
  %i.hak = icmp ne i32 %i.haj, -2139062032
  %i.hal = and i32 %.sroa.0.0.copyload.i332.i, 12295
  %.not306.i = icmp eq i32 %i.hal, 0
  %or.cond.i = or i1 %i.hak, %.not306.i
  %i.ham = trunc i32 %.sroa.0.0.copyload.i332.i to i8 ; 2 uses
  br i1 %or.cond.i, label %.thread1732, label %bb.ws, !prof !151

bb.ws:                                            ; preds = %bb.wr
  %i.han = and i32 %.sroa.0.0.copyload.i332.i, 4
  %i.hao = icmp ne i32 %i.han, 0
  %i.hap = and i32 %.sroa.0.0.copyload.i332.i, 12291
  %i.haq = icmp ne i32 %i.hap, 0
  %.not309.i = and i1 %i.hao, %i.haq
  br i1 %.not309.i, label %.thread1732, label %.critedge321.i, !prof !44

.critedge321.i:                                   ; preds = %bb.ws
  store i32 %.sroa.0.0.copyload.i332.i, ptr %.8258.i, align 1
  %i.har = getelementptr inbounds nuw i8, ptr %.8258.i, i64 4
  br label %.preheader1889.backedge

bb.wt:                                            ; preds = %bb.wi
  %i.has = shl nuw nsw i64 %.pre-phi3792, 1
  %i.hat = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.has
  %i.hau = load i16, ptr %i.hat, align 2
  store i16 %i.hau, ptr %.8258.i, align 1
  %i.hav = getelementptr inbounds nuw i8, ptr %.8258.i, i64 2
  %i.haw = getelementptr inbounds nuw i8, ptr %.8.i87, i64 1
  br label %.preheader1889.backedge

.preheader1889.backedge:                          ; preds = %bb.wt, %bb.wu, %bb.xc, %bb.xd, %bb.wl, %.critedge.i, %.critedge321.i, %bb.ww, %.critedge326.i, %.critedge330.i
  %.8258.i.be = phi ptr [ %i.hew, %bb.xc ], [ %i.gzv, %bb.wl ], [ %i.hah, %.critedge.i ], [ %i.har, %.critedge321.i ], [ %i.hav, %bb.wt ], [ %i.hbd, %bb.wu ], [ %i.hbz, %bb.ww ], [ %i.hcw, %.critedge326.i ], [ %i.hes, %.critedge330.i ], [ %i.hey, %bb.xd ]
  %.8.i87.be = phi ptr [ %i.hev, %bb.xc ], [ %i.gzw, %bb.wl ], [ %i.hai, %.critedge.i ], [ %i.gzb, %.critedge321.i ], [ %i.haw, %bb.wt ], [ %i.hbe, %bb.wu ], [ %i.hca, %bb.ww ], [ %i.hcx, %.critedge326.i ], [ %i.gzb, %.critedge330.i ], [ %i.hez, %bb.xd ]
  br label %.preheader1889

bb.wu:                                            ; preds = %bb.wi
  store i32 808482140, ptr %.8258.i, align 1
  %i.hax = getelementptr inbounds nuw i8, ptr %.8258.i, i64 4
  %i.hay = load i8, ptr %.8.i87, align 1, !tbaa !99
  %i.haz = zext i8 %i.hay to i64
  %i.hba = shl nuw nsw i64 %i.haz, 1
  %i.hbb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.hba
  %i.hbc = load i16, ptr %i.hbb, align 2
  store i16 %i.hbc, ptr %i.hax, align 1
  %i.hbd = getelementptr inbounds nuw i8, ptr %.8258.i, i64 6
  %i.hbe = getelementptr inbounds nuw i8, ptr %.8.i87, i64 1
  br label %.preheader1889.backedge

bb.wv:                                            ; preds = %bb.wi
  %.sroa.0.0.copyload.i567 = load i16, ptr %.8.i87, align 1 ; 3 uses
  %i.hbf = zext i16 %.sroa.0.0.copyload.i567 to i32 ; 2 uses
  %i.hbg = and i32 %i.hbf, 49376
  %i.hbh = icmp ne i32 %i.hbg, 32960
  %i.hbi = and i32 %i.hbf, 30
  %i.hbj = icmp eq i32 %i.hbi, 0
  %.not303.i = or i1 %i.hbh, %i.hbj
  br i1 %.not303.i, label %.thread1742, label %bb.ww, !prof !44

bb.ww:                                            ; preds = %bb.wv
  %i.hbk = lshr i16 %.sroa.0.0.copyload.i567, 8
  %i.hbl = trunc nuw i16 %i.hbk to i8
  %i.hbm = trunc i16 %.sroa.0.0.copyload.i567 to i8 ; 2 uses
  %.tr304.i = shl i8 %i.hbm, 6
  %i.hbn = and i8 %i.hbl, 63
  store i16 30044, ptr %.8258.i, align 1
  %i.hbo = getelementptr inbounds nuw i8, ptr %.8258.i, i64 2
  %i.hbp = lshr i8 %i.hbm, 1
  %i.hbq = and i8 %i.hbp, 14
  %i.hbr = zext nneg i8 %i.hbq to i64
  %i.hbs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.hbr
  %i.hbt = load i16, ptr %i.hbs, align 2
  store i16 %i.hbt, ptr %i.hbo, align 1
  %i.hbu = getelementptr inbounds nuw i8, ptr %.8258.i, i64 4
  %.narrow305.i = or disjoint i8 %i.hbn, %.tr304.i
  %i.hbv = zext i8 %.narrow305.i to i64
  %i.hbw = shl nuw nsw i64 %i.hbv, 1
  %i.hbx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.hbw
  %i.hby = load i16, ptr %i.hbx, align 2
  store i16 %i.hby, ptr %i.hbu, align 1
  %i.hbz = getelementptr inbounds nuw i8, ptr %.8258.i, i64 6
  %i.hca = getelementptr inbounds nuw i8, ptr %.8.i87, i64 2
  br label %.preheader1889.backedge

bb.wx:                                            ; preds = %bb.wi
  %.sroa.0.0.copyload.i619 = load i16, ptr %.8.i87, align 1 ; 3 uses
  %i.hcb = getelementptr inbounds nuw i8, ptr %.8.i87, i64 2
  %i.hcc = load i8, ptr %i.hcb, align 1, !tbaa !99 ; 2 uses
  %.sroa.4.0.insert.ext.i620 = zext i8 %i.hcc to i32
  %.sroa.4.0.insert.shift.i621 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i620, 16
  %.sroa.0.0.insert.ext.i622 = zext i16 %.sroa.0.0.copyload.i619 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i623 = or disjoint i32 %.sroa.4.0.insert.shift.i621, %.sroa.0.0.insert.ext.i622
  %i.hcd = and i32 %.sroa.0.0.insert.insert.i623, 12632304
  %i.hce = icmp eq i32 %i.hcd, 8421600
  br i1 %i.hce, label %bb.wy, label %.thread1742, !prof !61

bb.wy:                                            ; preds = %bb.wx
  %i.hcf = and i32 %.sroa.0.0.insert.ext.i622, 8207
  switch i32 %i.hcf, label %.critedge326.i [
    i32 8205, label %.thread1742
    i32 0, label %.thread1742
  ], !prof !150

.critedge326.i:                                   ; preds = %bb.wy
  %i.hcg = zext i16 %.sroa.0.0.copyload.i619 to i64
end_hunk_9
begin_hunk_10_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
vector.ph6005:                                    ; preds = %.lr.ph3084.preheader
  %n.vec6006 = and i64 %i.hff, 9223372036854775800 ; 4 uses
  %i.hfh = shl i64 %n.vec6006, 2
  %i.hfi = sub i64 %.0.i60.lcssa, %i.hfh          ; 2 uses
  %i.hfj = shl i64 %n.vec6006, 2                  ; 2 uses
  %i.hfk = getelementptr i8, ptr %.018.i.lcssa, i64 %i.hfj ; 2 uses
  %i.hfl = getelementptr i8, ptr %.021.i.lcssa, i64 %i.hfj ; 2 uses
  br label %vector.body6007

vector.body6007:                                  ; preds = %vector.body6007, %vector.ph6005
  %index6008 = phi i64 [ 0, %vector.ph6005 ], [ %index.next6013, %vector.body6007 ] ; 2 uses
  %i.hfm = shl i64 %index6008, 2                  ; 2 uses
  %next.gep6009 = getelementptr i8, ptr %.018.i.lcssa, i64 %i.hfm ; 2 uses
  %next.gep6010 = getelementptr i8, ptr %.021.i.lcssa, i64 %i.hfm ; 2 uses
  %i.hfn = getelementptr i8, ptr %next.gep6009, i64 16
  %wide.load6011 = load <4 x i32>, ptr %next.gep6009, align 1
  %wide.load6012 = load <4 x i32>, ptr %i.hfn, align 1
  %i.hfo = getelementptr i8, ptr %next.gep6010, i64 16
  store <4 x i32> %wide.load6011, ptr %next.gep6010, align 1
  store <4 x i32> %wide.load6012, ptr %i.hfo, align 1
  %index.next6013 = add nuw i64 %index6008, 8     ; 2 uses
  %i.hfp = icmp eq i64 %index.next6013, %n.vec6006
  br i1 %i.hfp, label %middle.block6014, label %vector.body6007, !llvm.loop !320

middle.block6014:                                 ; preds = %vector.body6007
  %cmp.n6015 = icmp eq i64 %i.hff, %n.vec6006
  br i1 %cmp.n6015, label %.preheader1919, label %.lr.ph3084.preheader6273

.lr.ph3084.preheader6273:                         ; preds = %.lr.ph3084.preheader, %middle.block6014
  %.1.i613083.ph = phi i64 [ %.0.i60.lcssa, %.lr.ph3084.preheader ], [ %i.hfi, %middle.block6014 ]
  %.119.i3082.ph = phi ptr [ %.018.i.lcssa, %.lr.ph3084.preheader ], [ %i.hfk, %middle.block6014 ]
  %.122.i3081.ph = phi ptr [ %.021.i.lcssa, %.lr.ph3084.preheader ], [ %i.hfl, %middle.block6014 ]
  br label %.lr.ph3084

.lr.ph3077:                                       ; preds = %bb.xe, %.lr.ph3077
  %.0.i603075 = phi i64 [ %i.hfs, %.lr.ph3077 ], [ %i.gdl, %bb.xe ]
  %.018.i3074 = phi ptr [ %i.hfr, %.lr.ph3077 ], [ %i.gdn, %bb.xe ] ; 2 uses
  %.021.i3073 = phi ptr [ %i.hfq, %.lr.ph3077 ], [ %i.hfa, %bb.xe ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i3073, ptr noundef nonnull align 1 dereferenceable(16) %.018.i3074, i64 16, i1 false)
  %i.hfq = getelementptr inbounds nuw i8, ptr %.021.i3073, i64 16 ; 2 uses
  %i.hfr = getelementptr inbounds nuw i8, ptr %.018.i3074, i64 16 ; 2 uses
  %i.hfs = add nsw i64 %.0.i603075, -16           ; 3 uses
  %i.hft = icmp ugt i64 %i.hfs, 15
  br i1 %i.hft, label %.lr.ph3077, label %.preheader1920, !llvm.loop !34

.preheader1919:                                   ; preds = %.lr.ph3084, %middle.block6014, %.preheader1920
  %.122.i.lcssa = phi ptr [ %.021.i.lcssa, %.preheader1920 ], [ %i.hfl, %middle.block6014 ], [ %i.hgn, %.lr.ph3084 ] ; 7 uses
  %.119.i.lcssa = phi ptr [ %.018.i.lcssa, %.preheader1920 ], [ %i.hfk, %middle.block6014 ], [ %i.hgo, %.lr.ph3084 ] ; 6 uses
  %.1.i61.lcssa = phi i64 [ %.0.i60.lcssa, %.preheader1920 ], [ %i.hfi, %middle.block6014 ], [ %i.hgp, %.lr.ph3084 ] ; 11 uses
  %.not.i633088 = icmp eq i64 %.1.i61.lcssa, 0
  br i1 %.not.i633088, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188, label %iter.check5982

iter.check5982:                                   ; preds = %.preheader1919
  %.119.i.lcssa5961 = ptrtoaddr ptr %.119.i.lcssa to i64
  %.122.i.lcssa5960 = ptrtoaddr ptr %.122.i.lcssa to i64
  %min.iters.check5964 = icmp ult i64 %.1.i61.lcssa, 4
  %i.hfu = sub i64 %.119.i.lcssa5961, %.122.i.lcssa5960
  %diff.check5962 = icmp ugt i64 %i.hfu, -32
  %or.cond6084 = select i1 %min.iters.check5964, i1 true, i1 %diff.check5962
  br i1 %or.cond6084, label %.lr.ph3092.preheader, label %vector.main.loop.iter.check5965

vector.main.loop.iter.check5965:                  ; preds = %iter.check5982
  %min.iters.check5966 = icmp ult i64 %.1.i61.lcssa, 32
  br i1 %min.iters.check5966, label %vec.epilog.ph5986, label %vector.ph5967

vector.ph5967:                                    ; preds = %vector.main.loop.iter.check5965
  %i.hfv = and i64 %.1.i61.lcssa, 28
  %n.vec5968 = and i64 %.1.i61.lcssa, -32         ; 5 uses
  %i.hfw = and i64 %.1.i61.lcssa, 31
  %i.hfx = getelementptr i8, ptr %.119.i.lcssa, i64 %n.vec5968
  %i.hfy = getelementptr i8, ptr %.122.i.lcssa, i64 %n.vec5968 ; 2 uses
  br label %vector.body5969

vector.body5969:                                  ; preds = %vector.body5969, %vector.ph5967
  %index5970 = phi i64 [ 0, %vector.ph5967 ], [ %index.next5975, %vector.body5969 ] ; 3 uses
  %next.gep5971 = getelementptr i8, ptr %.119.i.lcssa, i64 %index5970 ; 2 uses
  %next.gep5972 = getelementptr i8, ptr %.122.i.lcssa, i64 %index5970 ; 2 uses
  %i.hfz = getelementptr i8, ptr %next.gep5971, i64 16
  %wide.load5973 = load <16 x i8>, ptr %next.gep5971, align 1, !tbaa !99
  %wide.load5974 = load <16 x i8>, ptr %i.hfz, align 1, !tbaa !99
  %i.hga = getelementptr i8, ptr %next.gep5972, i64 16
  store <16 x i8> %wide.load5973, ptr %next.gep5972, align 1, !tbaa !99
  store <16 x i8> %wide.load5974, ptr %i.hga, align 1, !tbaa !99
  %index.next5975 = add nuw i64 %index5970, 32    ; 2 uses
  %i.hgb = icmp eq i64 %index.next5975, %n.vec5968
  br i1 %i.hgb, label %middle.block5976, label %vector.body5969, !llvm.loop !321

middle.block5976:                                 ; preds = %vector.body5969
  %cmp.n5977 = icmp eq i64 %.1.i61.lcssa, %n.vec5968
  br i1 %cmp.n5977, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188, label %vec.epilog.iter.check5984

vec.epilog.iter.check5984:                        ; preds = %middle.block5976
  %min.epilog.iters.check5985 = icmp eq i64 %i.hfv, 0
  br i1 %min.epilog.iters.check5985, label %.lr.ph3092.preheader, label %vec.epilog.ph5986, !prof !152

vec.epilog.ph5986:                                ; preds = %vector.main.loop.iter.check5965, %vec.epilog.iter.check5984
  %vec.epilog.resume.val5978 = phi i64 [ %n.vec5968, %vec.epilog.iter.check5984 ], [ 0, %vector.main.loop.iter.check5965 ]
  %n.vec5987 = and i64 %.1.i61.lcssa, -4          ; 4 uses
  %i.hgc = and i64 %.1.i61.lcssa, 3
  %i.hgd = getelementptr i8, ptr %.119.i.lcssa, i64 %n.vec5987
  %i.hge = getelementptr i8, ptr %.122.i.lcssa, i64 %n.vec5987 ; 2 uses
  br label %vec.epilog.vector.body5988

vec.epilog.vector.body5988:                       ; preds = %vec.epilog.vector.body5988, %vec.epilog.ph5986
  %index5989 = phi i64 [ %vec.epilog.resume.val5978, %vec.epilog.ph5986 ], [ %index.next5993, %vec.epilog.vector.body5988 ] ; 3 uses
  %next.gep5990 = getelementptr i8, ptr %.119.i.lcssa, i64 %index5989
  %next.gep5991 = getelementptr i8, ptr %.122.i.lcssa, i64 %index5989
  %wide.load5992 = load <4 x i8>, ptr %next.gep5990, align 1, !tbaa !99
  store <4 x i8> %wide.load5992, ptr %next.gep5991, align 1, !tbaa !99
  %index.next5993 = add nuw i64 %index5989, 4     ; 2 uses
  %i.hgf = icmp eq i64 %index.next5993, %n.vec5987
  br i1 %i.hgf, label %vec.epilog.middle.block5994, label %vec.epilog.vector.body5988, !llvm.loop !322

vec.epilog.middle.block5994:                      ; preds = %vec.epilog.vector.body5988
  %cmp.n5995 = icmp eq i64 %.1.i61.lcssa, %n.vec5987
  br i1 %cmp.n5995, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188, label %.lr.ph3092.preheader

.lr.ph3092.preheader:                             ; preds = %iter.check5982, %vec.epilog.iter.check5984, %vec.epilog.middle.block5994
  %.2.i623091.ph = phi i64 [ %.1.i61.lcssa, %iter.check5982 ], [ %i.hfw, %vec.epilog.iter.check5984 ], [ %i.hgc, %vec.epilog.middle.block5994 ] ; 4 uses
  %.220.i3090.ph = phi ptr [ %.119.i.lcssa, %iter.check5982 ], [ %i.hfx, %vec.epilog.iter.check5984 ], [ %i.hgd, %vec.epilog.middle.block5994 ] ; 2 uses
  %.223.i3089.ph = phi ptr [ %.122.i.lcssa, %iter.check5982 ], [ %i.hfy, %vec.epilog.iter.check5984 ], [ %i.hge, %vec.epilog.middle.block5994 ] ; 2 uses
  %i.hgg = add nsw i64 %.2.i623091.ph, -1
  %xtraiter6758 = and i64 %.2.i623091.ph, 7       ; 2 uses
  %lcmp.mod6759.not = icmp eq i64 %xtraiter6758, 0
  br i1 %lcmp.mod6759.not, label %.lr.ph3092.prol.loopexit, label %.lr.ph3092.prol

.lr.ph3092.prol:                                  ; preds = %.lr.ph3092.preheader, %.lr.ph3092.prol
  %.2.i623091.prol = phi i64 [ %i.hgk, %.lr.ph3092.prol ], [ %.2.i623091.ph, %.lr.ph3092.preheader ]
  %.220.i3090.prol = phi ptr [ %i.hgh, %.lr.ph3092.prol ], [ %.220.i3090.ph, %.lr.ph3092.preheader ] ; 2 uses
  %.223.i3089.prol = phi ptr [ %i.hgj, %.lr.ph3092.prol ], [ %.223.i3089.ph, %.lr.ph3092.preheader ] ; 2 uses
  %prol.iter6760 = phi i64 [ %prol.iter6760.next, %.lr.ph3092.prol ], [ 0, %.lr.ph3092.preheader ]
  %i.hgh = getelementptr inbounds nuw i8, ptr %.220.i3090.prol, i64 1 ; 2 uses
  %i.hgi = load i8, ptr %.220.i3090.prol, align 1, !tbaa !99
  %i.hgj = getelementptr inbounds nuw i8, ptr %.223.i3089.prol, i64 1 ; 3 uses
  store i8 %i.hgi, ptr %.223.i3089.prol, align 1, !tbaa !99
  %i.hgk = add nsw i64 %.2.i623091.prol, -1       ; 2 uses
  %prol.iter6760.next = add i64 %prol.iter6760, 1 ; 2 uses
  %prol.iter6760.cmp.not = icmp eq i64 %prol.iter6760.next, %xtraiter6758
  br i1 %prol.iter6760.cmp.not, label %.lr.ph3092.prol.loopexit, label %.lr.ph3092.prol, !llvm.loop !323

.lr.ph3092.prol.loopexit:                         ; preds = %.lr.ph3092.prol, %.lr.ph3092.preheader
  %.lcssa6359.unr = phi ptr [ poison, %.lr.ph3092.preheader ], [ %i.hgj, %.lr.ph3092.prol ]
  %.2.i623091.unr = phi i64 [ %.2.i623091.ph, %.lr.ph3092.preheader ], [ %i.hgk, %.lr.ph3092.prol ]
  %.220.i3090.unr = phi ptr [ %.220.i3090.ph, %.lr.ph3092.preheader ], [ %i.hgh, %.lr.ph3092.prol ]
  %.223.i3089.unr = phi ptr [ %.223.i3089.ph, %.lr.ph3092.preheader ], [ %i.hgj, %.lr.ph3092.prol ]
  %i.hgl = icmp ult i64 %i.hgg, 7
  br i1 %i.hgl, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188, label %.lr.ph3092

.lr.ph3084:                                       ; preds = %.lr.ph3084.preheader6273, %.lr.ph3084
  %.1.i613083 = phi i64 [ %i.hgp, %.lr.ph3084 ], [ %.1.i613083.ph, %.lr.ph3084.preheader6273 ]
  %.119.i3082 = phi ptr [ %i.hgo, %.lr.ph3084 ], [ %.119.i3082.ph, %.lr.ph3084.preheader6273 ] ; 2 uses
  %.122.i3081 = phi ptr [ %i.hgn, %.lr.ph3084 ], [ %.122.i3081.ph, %.lr.ph3084.preheader6273 ] ; 2 uses
  %i.hgm = load i32, ptr %.119.i3082, align 1
  store i32 %i.hgm, ptr %.122.i3081, align 1
  %i.hgn = getelementptr inbounds nuw i8, ptr %.122.i3081, i64 4 ; 2 uses
  %i.hgo = getelementptr inbounds nuw i8, ptr %.119.i3082, i64 4 ; 2 uses
  %i.hgp = add nsw i64 %.1.i613083, -4            ; 3 uses
  %i.hgq = icmp ugt i64 %i.hgp, 3
  br i1 %i.hgq, label %.lr.ph3084, label %.preheader1919, !llvm.loop !324

.lr.ph3092:                                       ; preds = %.lr.ph3092.prol.loopexit, %.lr.ph3092
  %.2.i623091 = phi i64 [ %i.hhp, %.lr.ph3092 ], [ %.2.i623091.unr, %.lr.ph3092.prol.loopexit ]
  %.220.i3090 = phi ptr [ %i.hhm, %.lr.ph3092 ], [ %.220.i3090.unr, %.lr.ph3092.prol.loopexit ] ; 9 uses
  %.223.i3089 = phi ptr [ %i.hho, %.lr.ph3092 ], [ %.223.i3089.unr, %.lr.ph3092.prol.loopexit ] ; 9 uses
  %i.hgr = getelementptr inbounds nuw i8, ptr %.220.i3090, i64 1
  %i.hgs = load i8, ptr %.220.i3090, align 1, !tbaa !99
  %i.hgt = getelementptr inbounds nuw i8, ptr %.223.i3089, i64 1
  store i8 %i.hgs, ptr %.223.i3089, align 1, !tbaa !99
  %i.hgu = getelementptr inbounds nuw i8, ptr %.220.i3090, i64 2
  %i.hgv = load i8, ptr %i.hgr, align 1, !tbaa !99
  %i.hgw = getelementptr inbounds nuw i8, ptr %.223.i3089, i64 2
  store i8 %i.hgv, ptr %i.hgt, align 1, !tbaa !99
  %i.hgx = getelementptr inbounds nuw i8, ptr %.220.i3090, i64 3
  %i.hgy = load i8, ptr %i.hgu, align 1, !tbaa !99
  %i.hgz = getelementptr inbounds nuw i8, ptr %.223.i3089, i64 3
  store i8 %i.hgy, ptr %i.hgw, align 1, !tbaa !99
  %i.hha = getelementptr inbounds nuw i8, ptr %.220.i3090, i64 4
  %i.hhb = load i8, ptr %i.hgx, align 1, !tbaa !99
  %i.hhc = getelementptr inbounds nuw i8, ptr %.223.i3089, i64 4
  store i8 %i.hhb, ptr %i.hgz, align 1, !tbaa !99
  %i.hhd = getelementptr inbounds nuw i8, ptr %.220.i3090, i64 5
  %i.hhe = load i8, ptr %i.hha, align 1, !tbaa !99
  %i.hhf = getelementptr inbounds nuw i8, ptr %.223.i3089, i64 5
  store i8 %i.hhe, ptr %i.hhc, align 1, !tbaa !99
  %i.hhg = getelementptr inbounds nuw i8, ptr %.220.i3090, i64 6
  %i.hhh = load i8, ptr %i.hhd, align 1, !tbaa !99
  %i.hhi = getelementptr inbounds nuw i8, ptr %.223.i3089, i64 6
  store i8 %i.hhh, ptr %i.hhf, align 1, !tbaa !99
  %i.hhj = getelementptr inbounds nuw i8, ptr %.220.i3090, i64 7
  %i.hhk = load i8, ptr %i.hhg, align 1, !tbaa !99
  %i.hhl = getelementptr inbounds nuw i8, ptr %.223.i3089, i64 7
  store i8 %i.hhk, ptr %i.hhi, align 1, !tbaa !99
  %i.hhm = getelementptr inbounds nuw i8, ptr %.220.i3090, i64 8
  %i.hhn = load i8, ptr %i.hhj, align 1, !tbaa !99
  %i.hho = getelementptr inbounds nuw i8, ptr %.223.i3089, i64 8 ; 2 uses
  store i8 %i.hhn, ptr %i.hhl, align 1, !tbaa !99
  %i.hhp = add nsw i64 %.2.i623091, -8            ; 2 uses
  %.not.i63.7 = icmp eq i64 %i.hhp, 0
  br i1 %.not.i63.7, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188, label %.lr.ph3092, !llvm.loop !325

_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit188: ; preds = %.preheader1906, %.lr.ph3092.prol.loopexit, %.lr.ph3092, %.preheader1892, %bb.tn, %.lr.ph3069.prol.loopexit, %bb.ub, %bb.vu, %.lr.ph3120.prol.loopexit, %bb.wi, %middle.block5976, %vec.epilog.middle.block5994, %.preheader1919
  %.3253.i108.lcssa.sink5273 = phi ptr [ %.lcssa6429.unr, %.lr.ph3120.prol.loopexit ], [ %.8258.i114, %bb.ub ], [ %.2252.i.lcssa, %.preheader1892 ], [ %.8258.i, %bb.wi ], [ %i.hho, %.lr.ph3092 ], [ %.lcssa6346.unr, %.lr.ph3069.prol.loopexit ], [ %.122.i.lcssa, %.preheader1919 ], [ %i.hge, %vec.epilog.middle.block5994 ], [ %i.hfy, %middle.block5976 ], [ %i.gxp, %bb.vu ], [ %i.gkg, %bb.tn ], [ %.lcssa6359.unr, %.lr.ph3092.prol.loopexit ], [ %.2252.i106.lcssa, %.preheader1906 ] ; 3 uses
  %i.hhq = getelementptr inbounds nuw i8, ptr %.3253.i108.lcssa.sink5273, i64 1
  store i8 34, ptr %.3253.i108.lcssa.sink5273, align 1, !tbaa !99
  %i.hhr = select i1 %.not392.i, i8 44, i8 58
  %i.hhs = getelementptr inbounds nuw i8, ptr %.3253.i108.lcssa.sink5273, i64 2
  store i8 %i.hhr, ptr %i.hhq, align 1, !tbaa !99
  br label %bb.abs

bb.xf:                                            ; preds = %bb.sn
  %i.hht = getelementptr inbounds nuw i8, ptr %.0351.i, i64 32
  %.not388.i = icmp ult ptr %i.hht, %.0335.i
  br i1 %.not388.i, label %bb.xh, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit412.i, !prof !61

_ZN13duckdb_yyjsonL13size_align_upEmm.exit412.i:  ; preds = %bb.xf
  %i.hhu = lshr i64 %.0.i36, 1
  %i.hhv = tail call i64 @llvm.umax.i64(i64 %i.hhu, i64 32)
  %i.hhw = add nuw i64 %i.hhv, 7
  %i.hhx = and i64 %i.hhw, -8
  %i.hhy = add i64 %i.hhx, %.0.i36                ; 4 uses
  %i.hhz = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0360.i, i64 noundef %.0.i36, i64 noundef %i.hhy), !inline_history !317 ; 6 uses
  %.not389.i = icmp eq ptr %i.hhz, null
  br i1 %.not389.i, label %.loopexit1921, label %bb.xg, !prof !44

bb.xg:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit412.i
  %i.hia = ptrtoint ptr %.0343.i to i64
  %i.hib = ptrtoint ptr %.0335.i to i64           ; 2 uses
  %i.hic = sub i64 %i.hia, %i.hib                 ; 2 uses
  %i.hid = sub i64 %i.hhy, %i.hic
  %i.hie = getelementptr inbounds nuw i8, ptr %i.hhz, i64 %i.hid ; 2 uses
  %i.hif = ptrtoint ptr %.0360.i to i64           ; 2 uses
  %i.hig = sub i64 %i.hib, %i.hif
  %i.hih = getelementptr inbounds i8, ptr %i.hhz, i64 %i.hig
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hie, ptr nonnull align 1 %i.hih, i64 %i.hic, i1 false)
  %i.hii = ptrtoint ptr %.0351.i to i64
  %i.hij = sub i64 %i.hii, %i.hif
  %i.hik = getelementptr inbounds i8, ptr %i.hhz, i64 %i.hij
  %i.hil = getelementptr inbounds nuw i8, ptr %i.hhz, i64 %i.hhy
  %.pre3763 = load i64, ptr %.0371.i, align 8, !tbaa !98
  br label %bb.xh

bb.xh:                                            ; preds = %bb.xg, %bb.xf
  %i.him = phi i64 [ %.pre3763, %bb.xg ], [ %i.gdf, %bb.xf ] ; 2 uses
  %.2362.i = phi ptr [ %i.hhz, %bb.xg ], [ %.0360.i, %bb.xf ] ; 2 uses
  %.3354.i = phi ptr [ %i.hik, %bb.xg ], [ %.0351.i, %bb.xf ] ; 11 uses
  %.2345.i = phi ptr [ %i.hil, %bb.xg ], [ %.0343.i, %bb.xf ]
  %.2337.i = phi ptr [ %i.hie, %bb.xg ], [ %.0335.i, %bb.xf ]
  %.2.i37 = phi i64 [ %i.hhy, %bb.xg ], [ %.0.i36, %bb.xf ]
  %i.hin = and i64 %i.him, 16
  %.not.i541 = icmp eq i64 %i.hin, 0
  %i.hio = getelementptr inbounds nuw i8, ptr %.0371.i, i64 8
  %i.hip = load i64, ptr %i.hio, align 8, !tbaa !99 ; 10 uses
  br i1 %.not.i541, label %bb.aak, label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  %i.hiq = and i64 %i.hip, 4503599627370495       ; 4 uses
  %i.hir = lshr i64 %i.hip, 52
  %i.his = trunc nuw nsw i64 %i.hir to i32
  %i.hit = and i32 %i.his, 2047                   ; 7 uses
  %i.hiu = icmp eq i32 %i.hit, 2047
  br i1 %i.hiu, label %bb.xj, label %bb.xp, !prof !44

bb.xj:                                            ; preds = %bb.xi
  br i1 %.not1806, label %bb.xl, label %bb.xk, !prof !61

bb.xk:                                            ; preds = %bb.xj
  store i32 1819047278, ptr %.3354.i, align 1
  %i.hiv = getelementptr inbounds nuw i8, ptr %.3354.i, i64 4
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.xl:                                            ; preds = %bb.xj
  br i1 %.not1807, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread1758, label %bb.xm, !prof !61

bb.xm:                                            ; preds = %bb.xl
  %i.hiw = icmp eq i64 %i.hiq, 0
  br i1 %i.hiw, label %bb.xn, label %bb.xo

bb.xn:                                            ; preds = %bb.xm
  store i8 45, ptr %.3354.i, align 1, !tbaa !99
  %.lobit131.i658 = lshr i64 %i.hip, 63
  %i.hix = getelementptr inbounds nuw i8, ptr %.3354.i, i64 %.lobit131.i658 ; 2 uses
  store i64 8751735898823355977, ptr %i.hix, align 1
  %i.hiy = getelementptr inbounds nuw i8, ptr %i.hix, i64 8
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.xo:                                            ; preds = %bb.xm
  store i32 5136718, ptr %.3354.i, align 1
  %i.hiz = getelementptr inbounds nuw i8, ptr %.3354.i, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.xp:                                            ; preds = %bb.xi
  store i8 45, ptr %.3354.i, align 1, !tbaa !99
  %.lobit.i645 = lshr i64 %i.hip, 63              ; 2 uses
  %i.hja = getelementptr i8, ptr %.3354.i, i64 %.lobit.i645 ; 38 uses
  %.mask.i646 = and i64 %i.hip, 9223372036854775807
  %i.hjb = icmp eq i64 %.mask.i646, 0
  br i1 %i.hjb, label %bb.xq, label %bb.xr

bb.xq:                                            ; preds = %bb.xp
  store i32 3157552, ptr %i.hja, align 1
  %i.hjc = getelementptr inbounds nuw i8, ptr %i.hja, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.xr:                                            ; preds = %bb.xp
  %.not.i647 = icmp eq i32 %i.hit, 0
  br i1 %.not.i647, label %bb.zn, label %bb.xs, !prof !44

bb.xs:                                            ; preds = %bb.xr
  %i.hjd = or disjoint i64 %i.hiq, 4503599627370496 ; 3 uses
  %i.hje = add nsw i32 %i.hit, -1023
  %or.cond.i648 = icmp ult i32 %i.hje, 53
  br i1 %or.cond.i648, label %bb.xt, label %bb.yj

bb.xt:                                            ; preds = %bb.xs
  %i.hjf = tail call range(i64 0, 53) i64 @llvm.cttz.i64(i64 range(i64 4503599627370496, 9007199254740992) %i.hjd, i1 true)
  %i.hjg = trunc nuw nsw i64 %i.hjf to i32
  %i.hjh = sub nuw nsw i32 1075, %i.hit           ; 2 uses
  %.not127.i655 = icmp samesign ugt i32 %i.hjh, %i.hjg
  br i1 %.not127.i655, label %bb.yj, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.hji = zext nneg i32 %i.hjh to i64
  %i.hjj = lshr i64 %i.hjd, %i.hji                ; 21 uses
  %i.hjk = icmp samesign ult i64 %i.hjj, 100000000
  br i1 %i.hjk, label %bb.xv, label %bb.yc

bb.xv:                                            ; preds = %bb.xu
  %i.hjl = trunc nuw nsw i64 %i.hjj to i32        ; 4 uses
  %i.hjm = icmp samesign ult i64 %i.hjj, 100
  br i1 %i.hjm, label %bb.xw, label %bb.xx

bb.xw:                                            ; preds = %bb.xv
  %i.hjn = icmp samesign ult i64 %i.hjj, 10       ; 2 uses
  %i.hjo = shl nuw nsw i64 %i.hjj, 1
  %i.hjp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hjo
  %.neg70.i1038 = sext i1 %i.hjn to i64
  %i.hjq = zext i1 %i.hjn to i64
  %i.hjr = getelementptr inbounds nuw i8, ptr %i.hjp, i64 %i.hjq
  %i.hjs = load i16, ptr %i.hjr, align 1
  store i16 %i.hjs, ptr %i.hja, align 1
  %i.hjt = getelementptr inbounds i8, ptr %i.hja, i64 %.neg70.i1038
  %i.hju = getelementptr inbounds nuw i8, ptr %i.hjt, i64 2
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit

bb.xx:                                            ; preds = %bb.xv
  %i.hjv = icmp samesign ult i64 %i.hjj, 10000
  br i1 %i.hjv, label %bb.xy, label %bb.xz

bb.xy:                                            ; preds = %bb.xx
  %i.hjw = mul nuw nsw i32 %i.hjl, 5243
  %i.hjx = lshr i32 %i.hjw, 19                    ; 2 uses
  %.neg68.i1036 = mul nsw i32 %i.hjx, -100
  %i.hjy = add nsw i32 %.neg68.i1036, %i.hjl
  %i.hjz = icmp samesign ult i64 %i.hjj, 1000     ; 2 uses
  %i.hka = shl nuw nsw i32 %i.hjx, 1
  %i.hkb = zext nneg i32 %i.hka to i64
  %i.hkc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hkb
  %.neg69.i1037 = sext i1 %i.hjz to i64
  %i.hkd = zext i1 %i.hjz to i64
  %i.hke = getelementptr inbounds nuw i8, ptr %i.hkc, i64 %i.hkd
  %i.hkf = load i16, ptr %i.hke, align 1
  store i16 %i.hkf, ptr %i.hja, align 1
  %i.hkg = getelementptr inbounds i8, ptr %i.hja, i64 %.neg69.i1037 ; 2 uses
  %i.hkh = getelementptr inbounds nuw i8, ptr %i.hkg, i64 2
  %i.hki = shl nsw i32 %i.hjy, 1
  %i.hkj = zext i32 %i.hki to i64
  %i.hkk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hkj
  %i.hkl = load i16, ptr %i.hkk, align 2
  store i16 %i.hkl, ptr %i.hkh, align 1
  %i.hkm = getelementptr inbounds nuw i8, ptr %i.hkg, i64 4
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit

bb.xz:                                            ; preds = %bb.xx
  %i.hkn = icmp samesign ult i64 %i.hjj, 1000000
  br i1 %i.hkn, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %bb.xz
  %i.hko = mul nuw nsw i64 %i.hjj, 429497
  %i.hkp = lshr i64 %i.hko, 32                    ; 2 uses
  %i.hkq = trunc nuw nsw i64 %i.hkp to i32
  %.neg65.i1033 = mul nsw i32 %i.hkq, -10000
  %i.hkr = add nsw i32 %.neg65.i1033, %i.hjl      ; 2 uses
  %i.hks = mul i32 %i.hkr, 5243
  %i.hkt = lshr i32 %i.hks, 19                    ; 2 uses
  %.neg66.i1034 = mul nsw i32 %i.hkt, -100
  %i.hku = add nsw i32 %.neg66.i1034, %i.hkr
  %i.hkv = icmp samesign ult i64 %i.hjj, 100000   ; 2 uses
  %i.hkw = shl nuw nsw i64 %i.hkp, 1
  %i.hkx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hkw
  %.neg67.i1035 = sext i1 %i.hkv to i64
  %i.hky = zext i1 %i.hkv to i64
  %i.hkz = getelementptr inbounds nuw i8, ptr %i.hkx, i64 %i.hky
  %i.hla = load i16, ptr %i.hkz, align 1
  store i16 %i.hla, ptr %i.hja, align 1
  %i.hlb = getelementptr inbounds i8, ptr %i.hja, i64 %.neg67.i1035 ; 3 uses
  %i.hlc = getelementptr inbounds nuw i8, ptr %i.hlb, i64 2
  %i.hld = shl nuw nsw i32 %i.hkt, 1
  %i.hle = zext nneg i32 %i.hld to i64
  %i.hlf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hle
  %i.hlg = load i16, ptr %i.hlf, align 2
  store i16 %i.hlg, ptr %i.hlc, align 1
  %i.hlh = getelementptr inbounds nuw i8, ptr %i.hlb, i64 4
  %i.hli = shl nsw i32 %i.hku, 1
  %i.hlj = zext i32 %i.hli to i64
  %i.hlk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hlj
  %i.hll = load i16, ptr %i.hlk, align 2
end_hunk_10
begin_hunk_11_@_ZN13duckdb_yyjson19yyjson_val_write_fpEP8_IO_FILEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE:bb.a
bb.f:                                             ; preds = %bb.c, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.not.i, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13duckdb_yyjson17yyjson_write_fileEPKcPKNS_10yyjson_docEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !94
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_ZN13duckdb_yyjson21yyjson_val_write_fileEPKcPKNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr noundef %0, ptr noundef %i.b, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13duckdb_yyjson15yyjson_write_fpEP8_IO_FILEPKNS_10yyjson_docEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %"struct.duckdb_yyjson::yyjson_write_err", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !105
  %.not.i = icmp eq ptr %3, null
  %i.d = select i1 %.not.i, ptr @_ZN13duckdb_yyjsonL18YYJSON_DEFAULT_ALCE, ptr %3 ; 3 uses
  %.not20.i = icmp eq ptr %4, null                ; 3 uses
  %i.e = select i1 %.not20.i, ptr %5, ptr %4      ; 3 uses
  %.not21.i = icmp eq ptr %0, null
  br i1 %.not21.i, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20.i, ptr %5, ptr %4
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.42, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  store i32 1, ptr %i.e, align 8, !tbaa !149
  br label %_ZN13duckdb_yyjson19yyjson_val_write_fpEP8_IO_FILEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit

bb.e:                                             ; preds = %bb.c
  %i.f = call noundef ptr @_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef readonly %i.c, i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) ; 3 uses
  %.not22.i = icmp eq ptr %i.f, null
  br i1 %.not22.i, label %_ZN13duckdb_yyjson19yyjson_val_write_fpEP8_IO_FILEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit, label %bb.f, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.g = load i64, ptr %i.a, align 8, !tbaa !105
  %i.h = call i64 @fwrite(ptr noundef nonnull readonly %i.f, i64 noundef %i.g, i64 noundef 1, ptr noundef nonnull %0)
  %.not.i.i = icmp eq i64 %i.h, 1                 ; 2 uses
  br i1 %.not.i.i, label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20.i, ptr %5, ptr %4
  %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.95, ptr %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  store i32 6, ptr %i.e, align 8, !tbaa !149
  br label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i

_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i: ; preds = %bb.g, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  call void %i.j(ptr noundef %i.l, ptr noundef nonnull %i.f), !inline_history !328
  br label %_ZN13duckdb_yyjson19yyjson_val_write_fpEP8_IO_FILEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjson19yyjson_val_write_fpEP8_IO_FILEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit: ; preds = %bb.d, %bb.e, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i
  %.0.i = phi i1 [ false, %bb.d ], [ %.not.i.i, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN13duckdb_yyjson25yyjson_mut_val_write_optsEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef %0, i64 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #10 {
bb.a:
  %6 = alloca %"struct.duckdb_yyjson::yyjson_write_err", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %.not = icmp eq ptr %3, null
  %i.a = select i1 %.not, ptr @_ZN13duckdb_yyjsonL18YYJSON_DEFAULT_ALCE, ptr %3 ; 4 uses
  %.sroa.0491.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !46 ; 9 uses
  %.sroa.6494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6494.0.copyload = load ptr, ptr %.sroa.6494.0..sroa_idx, align 8, !tbaa !46 ; 16 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !46 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !46 ; 35 uses
  %.not28 = icmp eq ptr %5, null                  ; 16 uses
  %i.b = select i1 %.not28, ptr %6, ptr %5        ; 16 uses
  %.not29 = icmp eq ptr %4, null                  ; 16 uses
  %.not30 = icmp eq ptr %0, null
  br i1 %.not30, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  br i1 %.not29, label %.cont422, label %.else424

.else424:                                         ; preds = %bb.b
  store i64 0, ptr %4, align 8, !tbaa !105
  br label %.cont422

.cont422:                                         ; preds = %bb.b, %.else424
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.40, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  store i32 1, ptr %i.b, align 8, !tbaa !149
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !98     ; 5 uses
  %i.d = trunc i64 %i.c to i8                     ; 2 uses
  %i.e = and i8 %i.d, 6
  %i.f = icmp ne i8 %i.e, 6
  %i.g = icmp ult i64 %i.c, 256
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %bb.ii

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %2, 2
  %.not990 = icmp eq i32 %i.h, 0                  ; 3 uses
  %i.i = and i32 %2, 4
  %.not991 = icmp eq i32 %i.i, 0                  ; 2 uses
  br i1 %.not990, label %bb.f, label %bb.e, !prof !61

bb.e:                                             ; preds = %bb.d
  %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i.i = select i1 %.not991, ptr @_ZN13duckdb_yyjsonL13enc_table_escE, ptr @_ZN13duckdb_yyjsonL19enc_table_esc_slashE, !prof !61
  br label %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i

bb.f:                                             ; preds = %bb.d
  %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i.i = select i1 %.not991, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, ptr @_ZN13duckdb_yyjsonL19enc_table_cpy_slashE, !prof !61
  br label %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i

_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i: ; preds = %bb.f, %bb.e
  %.0.i3.i = phi ptr [ %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i.i, %bb.e ], [ %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i.i, %bb.f ] ; 28 uses
  %i.j = icmp eq ptr %.0.i3.i, @_ZN13duckdb_yyjsonL13enc_table_cpyE
  %i.k = and i32 %2, 32
  %.not993 = icmp eq i32 %i.k, 0                  ; 4 uses
  %i.l = and i32 %2, 128
  %.not994 = icmp eq i32 %i.l, 0
  %i.m = and i8 %i.d, 7
  switch i8 %i.m, label %default.unreachable [
    i8 1, label %bb.g
    i8 5, label %bb.i
    i8 4, label %bb.ea
    i8 3, label %bb.hx
    i8 2, label %bb.hy
    i8 6, label %bb.ia
    i8 7, label %bb.ic
    i8 0, label %bb.ih
  ]

bb.g:                                             ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i
  %i.n = lshr i64 %i.c, 8                         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.q = add nuw nsw i64 %i.n, 2
  %i.r = tail call noundef ptr %.sroa.0491.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.q), !inline_history !329 ; 4 uses
  %.not107.i.i = icmp eq ptr %i.r, null
  br i1 %.not107.i.i, label %bb.ig, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.p, i64 range(i64 0, 72057594037927936) %i.n, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.i:                                             ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i
  %i.t = lshr i64 %i.c, 8                         ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 7 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 4 uses
  %i.x = mul nuw nsw i64 %i.t, 6
  %i.y = add nuw nsw i64 %i.x, 4
  %i.z = tail call noundef ptr %.sroa.0491.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.y), !inline_history !329 ; 12 uses
  %.not104.i.i = icmp eq ptr %i.z, null
  br i1 %.not104.i.i, label %bb.ig, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.j, label %bb.br, label %.split.i.i, !prof !61

.split.i.i:                                       ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t ; 3 uses
  store i8 34, ptr %i.z, align 1, !tbaa !99
  %i.ab = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ac = add i64 %i.t, %i.w
  br label %bb.k

bb.k:                                             ; preds = %bb.av, %.split.i.i
  %.pn.i11.i = phi ptr [ %i.z, %.split.i.i ], [ %.8258.i24.i, %bb.av ]
  %.0243.i12.i = phi ptr [ %i.v, %.split.i.i ], [ %i.hw, %bb.av ] ; 3 uses
  %.0250.i13.i = getelementptr inbounds nuw i8, ptr %.pn.i11.i, i64 1 ; 2 uses
  %i.ad = ptrtoint ptr %.0243.i12.i to i64
  %i.ae = sub i64 %i.ab, %i.ad                    ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 15
  br i1 %i.af, label %.lr.ph2326, label %.preheader1059

.preheader1059:                                   ; preds = %bb.aa, %bb.k
  %.pre-phi2975 = phi i64 [ %i.ae, %bb.k ], [ %i.dl, %bb.aa ]
  %.1251.i14.i.lcssa = phi ptr [ %.0250.i13.i, %bb.k ], [ %i.di, %bb.aa ] ; 2 uses
  %.1244.i15.i.lcssa = phi ptr [ %.0243.i12.i, %bb.k ], [ %i.dj, %bb.aa ] ; 2 uses
  %i.ag = icmp sgt i64 %.pre-phi2975, 3
  br i1 %i.ag, label %.lr.ph2332, label %.preheader1057

.lr.ph2326:                                       ; preds = %bb.k, %bb.aa
  %.1244.i15.i2324 = phi ptr [ %i.dj, %bb.aa ], [ %.0243.i12.i, %bb.k ] ; 46 uses
  %.1251.i14.i2323 = phi ptr [ %i.di, %bb.aa ], [ %.0250.i13.i, %bb.k ] ; 30 uses
  %i.ah = load i8, ptr %.1244.i15.i2324, align 1, !tbaa !99 ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !99
  %.not277.i82.i = icmp eq i8 %i.ak, 0
  br i1 %.not277.i82.i, label %bb.l, label %.preheader1054.preheader, !prof !61

bb.l:                                             ; preds = %.lr.ph2326
  %i.al = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !99
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !99
  %.not278.i83.i = icmp eq i8 %i.ap, 0
  br i1 %.not278.i83.i, label %bb.m, label %.loopexit1061, !prof !61

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !99
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !99
  %.not279.i84.i = icmp eq i8 %i.au, 0
  br i1 %.not279.i84.i, label %bb.n, label %.loopexit1062, !prof !61

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !99
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !99
  %.not280.i85.i = icmp eq i8 %i.az, 0
  br i1 %.not280.i85.i, label %bb.o, label %.loopexit1063, !prof !61

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !99
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !99
  %.not281.i86.i = icmp eq i8 %i.be, 0
  br i1 %.not281.i86.i, label %bb.p, label %bb.ah, !prof !61

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !99
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !99
  %.not282.i87.i = icmp eq i8 %i.bj, 0
  br i1 %.not282.i87.i, label %bb.q, label %bb.ai, !prof !61

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 6
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !99
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !99
  %.not283.i88.i = icmp eq i8 %i.bo, 0
  br i1 %.not283.i88.i, label %bb.r, label %bb.aj, !prof !61

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 7
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !99
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !99
  %.not284.i89.i = icmp eq i8 %i.bt, 0
  br i1 %.not284.i89.i, label %bb.s, label %bb.ak, !prof !61

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 8
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !99
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !99
  %.not285.i90.i = icmp eq i8 %i.by, 0
  br i1 %.not285.i90.i, label %bb.t, label %bb.al, !prof !61

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !99
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !99
  %.not286.i91.i = icmp eq i8 %i.cd, 0
  br i1 %.not286.i91.i, label %bb.u, label %bb.am, !prof !61

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 10
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !99
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !99
  %.not287.i92.i = icmp eq i8 %i.ci, 0
  br i1 %.not287.i92.i, label %bb.v, label %bb.an, !prof !61

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !99
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !99
  %.not288.i93.i = icmp eq i8 %i.cn, 0
  br i1 %.not288.i93.i, label %bb.w, label %bb.ao, !prof !61

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 12
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !99
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !99
  %.not289.i94.i = icmp eq i8 %i.cs, 0
  br i1 %.not289.i94.i, label %bb.x, label %bb.ap, !prof !61

bb.x:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 13
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !99
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !99
  %.not290.i95.i = icmp eq i8 %i.cx, 0
  br i1 %.not290.i95.i, label %bb.y, label %bb.aq, !prof !61

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 14
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !99
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !99
  %.not291.i96.i = icmp eq i8 %i.dc, 0
  br i1 %.not291.i96.i, label %bb.z, label %bb.ar, !prof !61

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 15
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !99
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !99
  %.not292.i97.i = icmp eq i8 %i.dh, 0
  br i1 %.not292.i97.i, label %bb.aa, label %bb.as, !prof !61

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i15.i2324, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 16 ; 3 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.ab, %i.dk                    ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 15
  br i1 %i.dm, label %.lr.ph2326, label %.preheader1059, !llvm.loop !31

.preheader1057:                                   ; preds = %bb.af, %.preheader1059
  %.2252.i16.i.lcssa = phi ptr [ %.1251.i14.i.lcssa, %.preheader1059 ], [ %i.eu, %bb.af ] ; 3 uses
  %.2245.i17.i.lcssa = phi ptr [ %.1244.i15.i.lcssa, %.preheader1059 ], [ %i.ev, %bb.af ] ; 5 uses
  %i.dn = icmp ugt ptr %i.aa, %.2245.i17.i.lcssa
  br i1 %i.dn, label %.lr.ph2337.preheader, label %.preheader1057._crit_edge

.lr.ph2337.preheader:                             ; preds = %.preheader1057
  %.2245.i17.i.lcssa2906 = ptrtoaddr ptr %.2245.i17.i.lcssa to i64 ; 2 uses
  %i.do = getelementptr i8, ptr %.2245.i17.i.lcssa, i64 %i.t
  %scevgep2905 = getelementptr i8, ptr %i.do, i64 %i.w
  %i.dp = sub i64 0, %.2245.i17.i.lcssa2906
  %scevgep2907 = getelementptr i8, ptr %scevgep2905, i64 %i.dp
  %i.dq = sub i64 %i.ac, %.2245.i17.i.lcssa2906
  %i.dr = freeze i64 %i.dq                        ; 2 uses
  %i.ds = add i64 %i.dr, -1
  %xtraiter5967.a = and i64 %i.dr, 3              ; 2 uses
  %lcmp.mod5968.not.a = icmp eq i64 %xtraiter5967.a, 0
  br i1 %lcmp.mod5968.not.a, label %.lr.ph2337.prol.loopexit, label %.lr.ph2337.prol

.lr.ph2337.prol:                                  ; preds = %.lr.ph2337.preheader, %bb.ab
  %.3246.i19.i2336.prol = phi ptr [ %i.dx, %bb.ab ], [ %.2245.i17.i.lcssa, %.lr.ph2337.preheader ] ; 3 uses
  %.3253.i18.i2335.prol = phi ptr [ %i.dy, %bb.ab ], [ %.2252.i16.i.lcssa, %.lr.ph2337.preheader ] ; 3 uses
  %prol.iter5969.a = phi i64 [ %prol.iter5969.next.a, %bb.ab ], [ 0, %.lr.ph2337.preheader ]
  %i.dt = load i8, ptr %.3246.i19.i2336.prol, align 1, !tbaa !99 ; 2 uses
  %i.du = zext i8 %i.dt to i64
end_hunk_11
begin_hunk_12_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !99
  %.not275.i76.i = icmp eq i8 %i.en, 0
  br i1 %.not275.i76.i, label %bb.ae, label %.loopexit1062, !prof !61

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %.2245.i17.i2331, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !99
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !99
  %.not276.i79.i = icmp eq i8 %i.es, 0
  br i1 %.not276.i79.i, label %bb.af, label %.loopexit1063, !prof !61

bb.af:                                            ; preds = %bb.ae
  %i.et = load i32, ptr %.2245.i17.i2331, align 1
  store i32 %i.et, ptr %.2252.i16.i2330, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.2252.i16.i2330, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.2245.i17.i2331, i64 4 ; 3 uses
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %i.ab, %i.ew
  %i.ey = icmp sgt i64 %i.ex, 3
  br i1 %i.ey, label %.lr.ph2332, label %.preheader1057, !llvm.loop !32

.lr.ph2337:                                       ; preds = %.lr.ph2337.prol.loopexit, %bb.ag
  %.3246.i19.i2336 = phi ptr [ %i.fv, %bb.ag ], [ %.3246.i19.i2336.unr, %.lr.ph2337.prol.loopexit ] ; 9 uses
  %.3253.i18.i2335 = phi ptr [ %i.fw, %bb.ag ], [ %.3253.i18.i2335.unr, %.lr.ph2337.prol.loopexit ] ; 6 uses
  %i.ez = load i8, ptr %.3246.i19.i2336, align 1, !tbaa !99 ; 2 uses
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !99
  %.not.i21.i = icmp eq i8 %i.fc, 0
  br i1 %.not.i21.i, label %.lr.ph2337.1, label %.preheader1054.preheader, !prof !61

.lr.ph2337.1:                                     ; preds = %.lr.ph2337
  %i.fd = getelementptr inbounds nuw i8, ptr %.3246.i19.i2336, i64 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.3253.i18.i2335, i64 1 ; 2 uses
  store i8 %i.ez, ptr %.3253.i18.i2335, align 1, !tbaa !99
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !99  ; 2 uses
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !99
  %.not.i21.i.1 = icmp eq i8 %i.fi, 0
  br i1 %.not.i21.i.1, label %.lr.ph2337.2, label %.preheader1054.preheader.loopexit.loopexit.split.loop.exit6695, !prof !61

.lr.ph2337.2:                                     ; preds = %.lr.ph2337.1
  %i.fj = getelementptr inbounds nuw i8, ptr %.3246.i19.i2336, i64 2
  %i.fk = getelementptr inbounds nuw i8, ptr %.3253.i18.i2335, i64 2 ; 2 uses
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !99
  %i.fl = load i8, ptr %i.fj, align 1, !tbaa !99  ; 2 uses
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !99
  %.not.i21.i.2 = icmp eq i8 %i.fo, 0
  br i1 %.not.i21.i.2, label %.lr.ph2337.3, label %.preheader1054.preheader.loopexit.loopexit.split.loop.exit6692, !prof !61

.lr.ph2337.3:                                     ; preds = %.lr.ph2337.2
  %i.fp = getelementptr inbounds nuw i8, ptr %.3246.i19.i2336, i64 3
  %i.fq = getelementptr inbounds nuw i8, ptr %.3253.i18.i2335, i64 3 ; 2 uses
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !99
  %i.fr = load i8, ptr %i.fp, align 1, !tbaa !99  ; 2 uses
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !99
  %.not.i21.i.3 = icmp eq i8 %i.fu, 0
  br i1 %.not.i21.i.3, label %bb.ag, label %.preheader1054.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.ag:                                            ; preds = %.lr.ph2337.3
  %i.fv = getelementptr inbounds nuw i8, ptr %.3246.i19.i2336, i64 4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.3253.i18.i2335, i64 4 ; 2 uses
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !99
  %exitcond2908.not.3 = icmp eq ptr %i.fv, %scevgep2907
  br i1 %exitcond2908.not.3, label %.preheader1057._crit_edge, label %.lr.ph2337, !llvm.loop !33

.preheader1057._crit_edge:                        ; preds = %.preheader1057, %bb.ag, %.lr.ph2337.prol.loopexit
  %.3253.i18.i.lcssa = phi ptr [ %.lcssa5445.unr, %.lr.ph2337.prol.loopexit ], [ %i.fw, %bb.ag ], [ %.2252.i16.i.lcssa, %.preheader1057 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.3253.i18.i.lcssa, i64 1
  store i8 34, ptr %.3253.i18.i.lcssa, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

.loopexit1061:                                    ; preds = %bb.l, %bb.ac
  %i.fy = phi i8 [ %i.ea, %bb.ac ], [ %i.ah, %bb.l ]
  %.5255.i74.i = phi ptr [ %.2252.i16.i2330, %bb.ac ], [ %.1251.i14.i2323, %bb.l ] ; 2 uses
  %.5248.i75.i = phi ptr [ %.2245.i17.i2331, %bb.ac ], [ %.1244.i15.i2324, %bb.l ]
  store i8 %i.fy, ptr %.5255.i74.i, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.5255.i74.i, i64 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.5248.i75.i, i64 1
  br label %.preheader1054.preheader

.loopexit1062:                                    ; preds = %bb.m, %bb.ad
  %.6256.i77.i = phi ptr [ %.2252.i16.i2330, %bb.ad ], [ %.1251.i14.i2323, %bb.m ] ; 2 uses
  %.6.i78.i = phi ptr [ %.2245.i17.i2331, %bb.ad ], [ %.1244.i15.i2324, %bb.m ] ; 2 uses
  %i.gb = load i16, ptr %.6.i78.i, align 1
  store i16 %i.gb, ptr %.6256.i77.i, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.6256.i77.i, i64 2
  %i.gd = getelementptr inbounds nuw i8, ptr %.6.i78.i, i64 2
  br label %.preheader1054.preheader

.loopexit1063:                                    ; preds = %bb.n, %bb.ae
  %.7257.i80.i = phi ptr [ %.2252.i16.i2330, %bb.ae ], [ %.1251.i14.i2323, %bb.n ] ; 2 uses
  %.7.i81.i = phi ptr [ %.2245.i17.i2331, %bb.ae ], [ %.1244.i15.i2324, %bb.n ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i80.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i81.i, i64 3, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.7257.i80.i, i64 3
  %i.gf = getelementptr inbounds nuw i8, ptr %.7.i81.i, i64 3
  br label %.preheader1054.preheader

bb.ah:                                            ; preds = %bb.o
  %i.gg = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 4
  %i.gh = load i32, ptr %.1244.i15.i2324, align 1
  store i32 %i.gh, ptr %.1251.i14.i2323, align 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 4
  br label %.preheader1054.preheader

bb.ai:                                            ; preds = %bb.p
  %i.gj = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i15.i2324, i64 5, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 5
  br label %.preheader1054.preheader

bb.aj:                                            ; preds = %bb.q
  %i.gl = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i15.i2324, i64 6, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 6
  br label %.preheader1054.preheader

bb.ak:                                            ; preds = %bb.r
  %i.gn = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i15.i2324, i64 7, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 7
  br label %.preheader1054.preheader

bb.al:                                            ; preds = %bb.s
  %i.gp = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 8
  %i.gq = load i64, ptr %.1244.i15.i2324, align 1
  store i64 %i.gq, ptr %.1251.i14.i2323, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 8
  br label %.preheader1054.preheader

bb.am:                                            ; preds = %bb.t
  %i.gs = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i15.i2324, i64 9, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 9
  br label %.preheader1054.preheader

bb.an:                                            ; preds = %bb.u
  %i.gu = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i15.i2324, i64 10, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 10
  br label %.preheader1054.preheader

bb.ao:                                            ; preds = %bb.v
  %i.gw = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i15.i2324, i64 11, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 11
  br label %.preheader1054.preheader

bb.ap:                                            ; preds = %bb.w
  %i.gy = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i15.i2324, i64 12, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 12
  br label %.preheader1054.preheader

bb.aq:                                            ; preds = %bb.x
  %i.ha = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i15.i2324, i64 13, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 13
  br label %.preheader1054.preheader

bb.ar:                                            ; preds = %bb.y
  %i.hc = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i15.i2324, i64 14, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 14
  br label %.preheader1054.preheader

bb.as:                                            ; preds = %bb.z
  %i.he = getelementptr inbounds nuw i8, ptr %.1244.i15.i2324, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i14.i2323, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i15.i2324, i64 15, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %.1251.i14.i2323, i64 15
  br label %.preheader1054.preheader

.preheader1054.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2337.3
  %i.hg = getelementptr inbounds nuw i8, ptr %.3246.i19.i2336, i64 3
  br label %.preheader1054.preheader

.preheader1054.preheader.loopexit.loopexit.split.loop.exit6692: ; preds = %.lr.ph2337.2
  %i.hh = getelementptr inbounds nuw i8, ptr %.3246.i19.i2336, i64 2
  br label %.preheader1054.preheader

.preheader1054.preheader.loopexit.loopexit.split.loop.exit6695: ; preds = %.lr.ph2337.1
  %i.hi = getelementptr inbounds nuw i8, ptr %.3246.i19.i2336, i64 1
  br label %.preheader1054.preheader

.preheader1054.preheader:                         ; preds = %.lr.ph2326, %.lr.ph2332, %.lr.ph2337, %.preheader1054.preheader.loopexit.loopexit.split.loop.exit6695, %.preheader1054.preheader.loopexit.loopexit.split.loop.exit6692, %.preheader1054.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2337.prol, %.loopexit1061, %.loopexit1062, %.loopexit1063, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.8258.i24.i.ph = phi ptr [ %.2252.i16.i2330, %.lr.ph2332 ], [ %.3253.i18.i2335.prol, %.lr.ph2337.prol ], [ %i.fz, %.loopexit1061 ], [ %i.gc, %.loopexit1062 ], [ %i.ge, %.loopexit1063 ], [ %i.gi, %bb.ah ], [ %i.gk, %bb.ai ], [ %i.gm, %bb.aj ], [ %i.go, %bb.ak ], [ %i.gr, %bb.al ], [ %i.gt, %bb.am ], [ %i.gv, %bb.an ], [ %i.gx, %bb.ao ], [ %i.gz, %bb.ap ], [ %i.hb, %bb.aq ], [ %i.hd, %bb.ar ], [ %i.hf, %bb.as ], [ %.3253.i18.i2335, %.lr.ph2337 ], [ %i.fe, %.preheader1054.preheader.loopexit.loopexit.split.loop.exit6695 ], [ %i.fk, %.preheader1054.preheader.loopexit.loopexit.split.loop.exit6692 ], [ %i.fq, %.preheader1054.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i14.i2323, %.lr.ph2326 ]
  %.8.i25.i.ph = phi ptr [ %.2245.i17.i2331, %.lr.ph2332 ], [ %.3246.i19.i2336.prol, %.lr.ph2337.prol ], [ %i.ga, %.loopexit1061 ], [ %i.gd, %.loopexit1062 ], [ %i.gf, %.loopexit1063 ], [ %i.gg, %bb.ah ], [ %i.gj, %bb.ai ], [ %i.gl, %bb.aj ], [ %i.gn, %bb.ak ], [ %i.gp, %bb.al ], [ %i.gs, %bb.am ], [ %i.gu, %bb.an ], [ %i.gw, %bb.ao ], [ %i.gy, %bb.ap ], [ %i.ha, %bb.aq ], [ %i.hc, %bb.ar ], [ %i.he, %bb.as ], [ %.3246.i19.i2336, %.lr.ph2337 ], [ %i.hi, %.preheader1054.preheader.loopexit.loopexit.split.loop.exit6695 ], [ %i.hh, %.preheader1054.preheader.loopexit.loopexit.split.loop.exit6692 ], [ %i.hg, %.preheader1054.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i15.i2324, %.lr.ph2326 ]
  br label %.preheader1054

.preheader1054:                                   ; preds = %.preheader1054.backedge, %.preheader1054.preheader
  %.8258.i24.i = phi ptr [ %.8258.i24.i.ph, %.preheader1054.preheader ], [ %.8258.i24.i.be, %.preheader1054.backedge ] ; 35 uses
  %.8.i25.i = phi ptr [ %.8.i25.i.ph, %.preheader1054.preheader ], [ %.8.i25.i.be, %.preheader1054.backedge ] ; 23 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 4 ; 3 uses
  %i.hk = icmp ugt ptr %i.hj, %i.aa               ; 2 uses
  br i1 %i.hk, label %bb.at, label %._crit_edge2962, !prof !44

._crit_edge2962:                                  ; preds = %.preheader1054
  %.pre2963 = load i8, ptr %.8.i25.i, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert2964 = zext i8 %.pre2963 to i64 ; 2 uses
  %.phi.trans.insert2965.a = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %.phi.trans.insert2964
  %.pre2966 = load i8, ptr %.phi.trans.insert2965.a, align 1, !tbaa !99
  br label %bb.au

bb.at:                                            ; preds = %.preheader1054
  %i.hl = ptrtoint ptr %.8.i25.i to i64
  %i.hm = sub i64 %i.ab, %i.hl
  %i.hn = load i8, ptr %.8.i25.i, align 1, !tbaa !99 ; 3 uses
  %i.ho = zext i8 %i.hn to i64                    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !99  ; 2 uses
  %i.hr = lshr i8 %i.hq, 1
  %i.hs = zext nneg i8 %i.hr to i64
  %i.ht = icmp slt i64 %i.hm, %i.hs
  br i1 %i.ht, label %bb.bo, label %bb.au

bb.au:                                            ; preds = %._crit_edge2962, %bb.at
  %.pre-phi2976 = phi i64 [ %.phi.trans.insert2964, %._crit_edge2962 ], [ %i.ho, %bb.at ]
  %i.hu = phi i8 [ %.pre2966, %._crit_edge2962 ], [ %i.hq, %bb.at ]
  %i.hv = phi i8 [ %.pre2963, %._crit_edge2962 ], [ %i.hn, %bb.at ] ; 2 uses
  switch i8 %i.hu, label %bb.bn [
    i8 0, label %bb.av
    i8 4, label %bb.aw
    i8 6, label %bb.ay
    i8 8, label %bb.bd
    i8 2, label %bb.bf
    i8 3, label %bb.bg
    i8 5, label %bb.bh
    i8 7, label %bb.bj
    i8 9, label %bb.bl
    i8 1, label %bb.bo
  ]

bb.av:                                            ; preds = %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  store i8 %i.hv, ptr %.8258.i24.i, align 1, !tbaa !99
  br label %bb.k

bb.aw:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i.i = load i16, ptr %.8.i25.i, align 1 ; 3 uses
  %i.hx = zext i16 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.hy = and i32 %i.hx, 49376
  %i.hz = icmp ne i32 %i.hy, 32960
  %i.ia = and i32 %i.hx, 30
  %i.ib = icmp eq i32 %i.ia, 0
  %.not315.i68.i = or i1 %i.hz, %i.ib
  %i.ic = trunc i16 %.sroa.0.0.copyload.i.i to i8
  br i1 %.not315.i68.i, label %.thread, label %bb.ax, !prof !44

bb.ax:                                            ; preds = %bb.aw
  store i16 %.sroa.0.0.copyload.i.i, ptr %.8258.i24.i, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 2
  %i.ie = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 2
  br label %.preheader1054.backedge

bb.ay:                                            ; preds = %bb.au
  br i1 %i.hk, label %bb.bb, label %bb.az, !prof !44

bb.az:                                            ; preds = %bb.ay
  %.sroa.0.0.copyload.i333.i63.i = load i32, ptr %.8.i25.i, align 1 ; 4 uses
  %i.if = and i32 %.sroa.0.0.copyload.i333.i63.i, 12632304
  %i.ig = icmp eq i32 %i.if, 8421600
  %i.ih = trunc i32 %.sroa.0.0.copyload.i333.i63.i to i8 ; 3 uses
  br i1 %i.ig, label %bb.ba, label %.thread, !prof !61

bb.ba:                                            ; preds = %bb.az
  %i.ii = and i32 %.sroa.0.0.copyload.i333.i63.i, 8207
  switch i32 %i.ii, label %.critedge.i64.i [
    i32 8205, label %.thread
    i32 0, label %.thread
  ], !prof !150

bb.bb:                                            ; preds = %bb.ay
  %.sroa.0.0.copyload.i104.i = load i16, ptr %.8.i25.i, align 1 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i.i = zext i8 %i.ik to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %.sroa.0.0.copyload.i104.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i ; 2 uses
  %i.il = and i32 %.sroa.0.0.insert.insert.i.i, 12632304
  %i.im = icmp eq i32 %i.il, 8421600
  %i.in = trunc i16 %.sroa.0.0.copyload.i104.i to i8 ; 3 uses
  br i1 %i.im, label %bb.bc, label %.thread, !prof !61

bb.bc:                                            ; preds = %bb.bb
  %i.io = and i32 %.sroa.0.0.insert.ext.i.i, 8207
  switch i32 %i.io, label %.critedge.i64.i [
    i32 8205, label %.thread
    i32 0, label %.thread
  ], !prof !150

.critedge.i64.i:                                  ; preds = %bb.bc, %bb.ba
  %storemerge1010 = phi i32 [ %.sroa.0.0.copyload.i333.i63.i, %bb.ba ], [ %.sroa.0.0.insert.insert.i.i, %bb.bc ]
  store i32 %storemerge1010, ptr %.8258.i24.i, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 3
  %i.iq = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 3
  br label %.preheader1054.backedge

bb.bd:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i332.i54.i = load i32, ptr %.8.i25.i, align 1 ; 6 uses
  %i.ir = and i32 %.sroa.0.0.copyload.i332.i54.i, -1061109512
  %i.is = icmp ne i32 %i.ir, -2139062032
  %i.it = and i32 %.sroa.0.0.copyload.i332.i54.i, 12295
  %.not306.i55.i = icmp eq i32 %i.it, 0
  %or.cond.i56.i = or i1 %i.is, %.not306.i55.i
  %i.iu = trunc i32 %.sroa.0.0.copyload.i332.i54.i to i8 ; 2 uses
  br i1 %or.cond.i56.i, label %.thread, label %bb.be, !prof !151

bb.be:                                            ; preds = %bb.bd
  %i.iv = and i32 %.sroa.0.0.copyload.i332.i54.i, 4
  %i.iw = icmp ne i32 %i.iv, 0
  %i.ix = and i32 %.sroa.0.0.copyload.i332.i54.i, 12291
  %i.iy = icmp ne i32 %i.ix, 0
  %.not309.i57.i = and i1 %i.iw, %i.iy
  br i1 %.not309.i57.i, label %.thread, label %.critedge321.i58.i, !prof !44

.critedge321.i58.i:                               ; preds = %bb.be
  store i32 %.sroa.0.0.copyload.i332.i54.i, ptr %.8258.i24.i, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 4
  br label %.preheader1054.backedge

bb.bf:                                            ; preds = %bb.au
  %i.ja = shl nuw nsw i64 %.pre-phi2976, 1
  %i.jb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2
  store i16 %i.jc, ptr %.8258.i24.i, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 2
  %i.je = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  br label %.preheader1054.backedge

.preheader1054.backedge:                          ; preds = %bb.bf, %bb.bg, %bb.bp, %bb.bq, %bb.ax, %.critedge.i64.i, %.critedge321.i58.i, %bb.bi, %.critedge326.i40.i, %.critedge330.i36.i
  %.8258.i24.i.be = phi ptr [ %i.nf, %bb.bp ], [ %i.id, %bb.ax ], [ %i.ip, %.critedge.i64.i ], [ %i.iz, %.critedge321.i58.i ], [ %i.jd, %bb.bf ], [ %i.jl, %bb.bg ], [ %i.kh, %bb.bi ], [ %i.le, %.critedge326.i40.i ], [ %i.na, %.critedge330.i36.i ], [ %i.nh, %bb.bq ]
  %.8.i25.i.be = phi ptr [ %i.ne, %bb.bp ], [ %i.ie, %bb.ax ], [ %i.iq, %.critedge.i64.i ], [ %i.hj, %.critedge321.i58.i ], [ %i.je, %bb.bf ], [ %i.jm, %bb.bg ], [ %i.ki, %bb.bi ], [ %i.lf, %.critedge326.i40.i ], [ %i.hj, %.critedge330.i36.i ], [ %i.ni, %bb.bq ]
  br label %.preheader1054

bb.bg:                                            ; preds = %bb.au
  store i32 808482140, ptr %.8258.i24.i, align 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 4
  %i.jg = load i8, ptr %.8.i25.i, align 1, !tbaa !99
  %i.jh = zext i8 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 1
  %i.jj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2
  store i16 %i.jk, ptr %i.jf, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 6
  %i.jm = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  br label %.preheader1054.backedge

bb.bh:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i101.i = load i16, ptr %.8.i25.i, align 1 ; 3 uses
  %i.jn = zext i16 %.sroa.0.0.copyload.i101.i to i32 ; 2 uses
  %i.jo = and i32 %i.jn, 49376
  %i.jp = icmp ne i32 %i.jo, 32960
  %i.jq = and i32 %i.jn, 30
  %i.jr = icmp eq i32 %i.jq, 0
  %.not303.i48.i = or i1 %i.jp, %i.jr
  br i1 %.not303.i48.i, label %.thread799, label %bb.bi, !prof !44

bb.bi:                                            ; preds = %bb.bh
  %i.js = lshr i16 %.sroa.0.0.copyload.i101.i, 8
  %i.jt = trunc nuw i16 %i.js to i8
  %i.ju = trunc i16 %.sroa.0.0.copyload.i101.i to i8 ; 2 uses
  %.tr304.i49.i = shl i8 %i.ju, 6
  %i.jv = and i8 %i.jt, 63
  store i16 30044, ptr %.8258.i24.i, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 2
  %i.jx = lshr i8 %i.ju, 1
  %i.jy = and i8 %i.jx, 14
  %i.jz = zext nneg i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2
  store i16 %i.kb, ptr %i.jw, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 4
  %.narrow305.i50.i = or disjoint i8 %i.jv, %.tr304.i49.i
  %i.kd = zext i8 %.narrow305.i50.i to i64
  %i.ke = shl nuw nsw i64 %i.kd, 1
  %i.kf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2
  store i16 %i.kg, ptr %i.kc, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 6
  %i.ki = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 2
  br label %.preheader1054.backedge

bb.bj:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i105.i = load i16, ptr %.8.i25.i, align 1 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 2
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !99  ; 2 uses
  %.sroa.4.0.insert.ext.i106.i = zext i8 %i.kk to i32
  %.sroa.4.0.insert.shift.i107.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i106.i, 16
  %.sroa.0.0.insert.ext.i108.i = zext i16 %.sroa.0.0.copyload.i105.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i109.i = or disjoint i32 %.sroa.4.0.insert.shift.i107.i, %.sroa.0.0.insert.ext.i108.i
  %i.kl = and i32 %.sroa.0.0.insert.insert.i109.i, 12632304
  %i.km = icmp eq i32 %i.kl, 8421600
  br i1 %i.km, label %bb.bk, label %.thread799, !prof !61

bb.bk:                                            ; preds = %bb.bj
  %i.kn = and i32 %.sroa.0.0.insert.ext.i108.i, 8207
  switch i32 %i.kn, label %.critedge326.i40.i [
    i32 8205, label %.thread799
    i32 0, label %.thread799
  ], !prof !150

.critedge326.i40.i:                               ; preds = %bb.bk
  %i.ko = zext i16 %.sroa.0.0.copyload.i105.i to i64
  %i.kp = shl nuw nsw i64 %i.ko, 12
  %i.kq = lshr i16 %.sroa.0.0.copyload.i105.i, 2
  %i.kr = and i16 %i.kq, 4032                     ; 2 uses
  %i.ks = zext nneg i16 %i.kr to i64
  %i.kt = and i8 %i.kk, 63
  store i16 30044, ptr %.8258.i24.i, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 2
  %.masked.i45.i = or disjoint i64 %i.kp, %i.ks
  %i.kv = lshr i64 %.masked.i45.i, 7
  %i.kw = and i64 %i.kv, 510
  %i.kx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2
  store i16 %i.ky, ptr %i.ku, align 1
  %i.kz = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 4
  %.tr299.i46.i = trunc i16 %i.kr to i8
  %.narrow300.i47.i = or disjoint i8 %i.kt, %.tr299.i46.i
  %i.la = zext i8 %.narrow300.i47.i to i64
  %i.lb = shl nuw nsw i64 %i.la, 1
  %i.lc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.lb
  %i.ld = load i16, ptr %i.lc, align 2
  store i16 %i.ld, ptr %i.kz, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 6
  %i.lf = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 3
  br label %.preheader1054.backedge

bb.bl:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i.i30.i = load i32, ptr %.8.i25.i, align 1 ; 9 uses
  %i.lg = and i32 %.sroa.0.0.copyload.i.i30.i, -1061109512
  %i.lh = icmp ne i32 %i.lg, -2139062032
  %i.li = and i32 %.sroa.0.0.copyload.i.i30.i, 12295
  %.not293.i31.i = icmp eq i32 %i.li, 0
  %or.cond328.i32.i = or i1 %i.lh, %.not293.i31.i
  %i.lj = lshr i32 %.sroa.0.0.copyload.i.i30.i, 24
  br i1 %or.cond328.i32.i, label %.thread799, label %bb.bm, !prof !151

bb.bm:                                            ; preds = %bb.bl
  %i.lk = and i32 %.sroa.0.0.copyload.i.i30.i, 4
  %i.ll = icmp ne i32 %i.lk, 0
  %i.lm = and i32 %.sroa.0.0.copyload.i.i30.i, 12291
  %i.ln = icmp ne i32 %i.lm, 0
  %.not296.i33.i = and i1 %i.ll, %i.ln
  br i1 %.not296.i33.i, label %.thread799, label %.critedge330.i36.i, !prof !44

.critedge330.i36.i:                               ; preds = %bb.bm
  %i.lo = shl i32 %.sroa.0.0.copyload.i.i30.i, 18
  %i.lp = and i32 %i.lo, 1835008
  %i.lq = shl i32 %.sroa.0.0.copyload.i.i30.i, 4
  %i.lr = and i32 %i.lq, 258048
  %i.ls = lshr i32 %.sroa.0.0.copyload.i.i30.i, 10 ; 2 uses
  %i.lt = and i32 %i.ls, 3072
  %i.lu = and i32 %i.lj, 63
  %i.lv = add nsw i32 %i.lp, -65536
  %i.lw = add nsw i32 %i.lv, %i.lr                ; 2 uses
  %i.lx = or disjoint i32 %i.lw, %i.lt
  %i.ly = lshr exact i32 %i.lw, 10
  %i.lz = add nuw nsw i32 %i.ly, 55296
  store i16 30044, ptr %.8258.i24.i, align 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 2
  %i.mb = lshr i32 %i.lz, 7
  %i.mc = and i32 %i.mb, 65534
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2
  store i16 %i.mf, ptr %i.ma, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 4
  %i.mh = lshr exact i32 %i.lx, 9
  %i.mi = and i32 %i.mh, 510
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.mj
  %i.ml = load i16, ptr %i.mk, align 2
  store i16 %i.ml, ptr %i.mg, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 6
  store i16 30044, ptr %i.mm, align 1
  %i.mn = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 8
  %i.mo = lshr i32 %.sroa.0.0.copyload.i.i30.i, 17
  %i.mp = and i32 %i.mo, 6
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 440
  %i.mt = load i16, ptr %i.ms, align 2
  store i16 %i.mt, ptr %i.mn, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 10
  %.masked3148.a = and i32 %i.ls, 192
  %i.mv = or disjoint i32 %i.lu, %.masked3148.a
  %i.mw = shl nuw nsw i32 %i.mv, 1
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.mx
  %i.mz = load i16, ptr %i.my, align 2
  store i16 %i.mz, ptr %i.mu, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 12
  br label %.preheader1054.backedge

bb.bn:                                            ; preds = %bb.au
  %i.nb = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 1
  store i8 34, ptr %.8258.i24.i, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.bo:                                            ; preds = %bb.au, %bb.at
  %i.nc = phi i8 [ %i.hv, %bb.au ], [ %i.hn, %bb.at ]
  br i1 %.not990, label %.thread, label %.thread799

.thread:                                          ; preds = %bb.bd, %bb.be, %bb.bb, %bb.az, %bb.bc, %bb.bc, %bb.ba, %bb.ba, %bb.aw, %bb.bo
  %i.nd = phi i8 [ %i.iu, %bb.bd ], [ %i.iu, %bb.be ], [ %i.in, %bb.bb ], [ %i.ih, %bb.az ], [ %i.in, %bb.bc ], [ %i.in, %bb.bc ], [ %i.ih, %bb.ba ], [ %i.ih, %bb.ba ], [ %i.ic, %bb.aw ], [ %i.nc, %bb.bo ]
  br i1 %.not993, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %.thread
  %i.ne = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 1
  store i8 %i.nd, ptr %.8258.i24.i, align 1, !tbaa !99
  br label %.preheader1054.backedge

.thread799:                                       ; preds = %bb.bl, %bb.bm, %bb.bj, %bb.bk, %bb.bk, %bb.bh, %bb.bo
  br i1 %.not993, label %.loopexit, label %bb.bq

bb.bq:                                            ; preds = %.thread799
  store i16 30044, ptr %.8258.i24.i, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 2
  store i32 1145456198, ptr %i.ng, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %.8258.i24.i, i64 6
  %i.ni = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  br label %.preheader1054.backedge

bb.br:                                            ; preds = %bb.j
  %i.nj = load i64, ptr %0, align 8, !tbaa !98
  %i.nk = and i64 %i.nj, 24
  %.not105.i.i = icmp eq i64 %i.nk, 0
  store i8 34, ptr %i.z, align 1, !tbaa !99
  br i1 %.not105.i.i, label %.split83.i.i, label %bb.dz

.split83.i.i:                                     ; preds = %bb.br
  %i.nl = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t ; 3 uses
  %i.nm = ptrtoint ptr %i.nl to i64               ; 4 uses
  %i.nn = add i64 %i.t, %i.w
  br label %bb.bs

bb.bs:                                            ; preds = %bb.dd, %.split83.i.i
  %.pn.i.i = phi ptr [ %i.z, %.split83.i.i ], [ %.8258.i.i, %bb.dd ]
  %.0243.i.i = phi ptr [ %i.v, %.split83.i.i ], [ %i.vh, %bb.dd ] ; 3 uses
  %.0250.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %i.no = ptrtoint ptr %.0243.i.i to i64
  %i.np = sub i64 %i.nm, %i.no                    ; 2 uses
  %i.nq = icmp sgt i64 %i.np, 15
  br i1 %i.nq, label %.lr.ph2377, label %.preheader1043

.preheader1043:                                   ; preds = %bb.ci, %bb.bs
  %.pre-phi2972 = phi i64 [ %i.np, %bb.bs ], [ %i.qw, %bb.ci ]
  %.1251.i.i.lcssa = phi ptr [ %.0250.i.i, %bb.bs ], [ %i.qt, %bb.ci ] ; 2 uses
  %.1244.i.i.lcssa = phi ptr [ %.0243.i.i, %bb.bs ], [ %i.qu, %bb.ci ] ; 2 uses
  %i.nr = icmp sgt i64 %.pre-phi2972, 3
  br i1 %i.nr, label %.lr.ph2383, label %.preheader1041

.lr.ph2377:                                       ; preds = %bb.bs, %bb.ci
  %.1244.i.i2375 = phi ptr [ %i.qu, %bb.ci ], [ %.0243.i.i, %bb.bs ] ; 46 uses
  %.1251.i.i2374 = phi ptr [ %i.qt, %bb.ci ], [ %.0250.i.i, %bb.bs ] ; 30 uses
  %i.ns = load i8, ptr %.1244.i.i2375, align 1, !tbaa !99 ; 2 uses
  %i.nt = zext i8 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !99
  %.not277.i.i = icmp eq i8 %i.nv, 0
  br i1 %.not277.i.i, label %bb.bt, label %.preheader.preheader, !prof !61

bb.bt:                                            ; preds = %.lr.ph2377
  %i.nw = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !99
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !99
  %.not278.i.i = icmp eq i8 %i.oa, 0
  br i1 %.not278.i.i, label %bb.bu, label %.loopexit1045, !prof !61

bb.bu:                                            ; preds = %bb.bt
  %i.ob = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !99
  %i.od = zext i8 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !99
  %.not279.i.i = icmp eq i8 %i.of, 0
  br i1 %.not279.i.i, label %bb.bv, label %.loopexit1046, !prof !61

bb.bv:                                            ; preds = %bb.bu
  %i.og = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 3
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !99
  %i.oi = zext i8 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !99
  %.not280.i.i = icmp eq i8 %i.ok, 0
  br i1 %.not280.i.i, label %bb.bw, label %.loopexit1047, !prof !61

bb.bw:                                            ; preds = %bb.bv
  %i.ol = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 4
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !99
  %i.on = zext i8 %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !99
  %.not281.i.i = icmp eq i8 %i.op, 0
  br i1 %.not281.i.i, label %bb.bx, label %bb.cp, !prof !61

bb.bx:                                            ; preds = %bb.bw
  %i.oq = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 5
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !99
  %i.os = zext i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !99
  %.not282.i.i = icmp eq i8 %i.ou, 0
  br i1 %.not282.i.i, label %bb.by, label %bb.cq, !prof !61

bb.by:                                            ; preds = %bb.bx
  %i.ov = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 6
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !99
  %i.ox = zext i8 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !99
  %.not283.i.i = icmp eq i8 %i.oz, 0
  br i1 %.not283.i.i, label %bb.bz, label %bb.cr, !prof !61

bb.bz:                                            ; preds = %bb.by
  %i.pa = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 7
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !99
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !99
  %.not284.i.i = icmp eq i8 %i.pe, 0
  br i1 %.not284.i.i, label %bb.ca, label %bb.cs, !prof !61

bb.ca:                                            ; preds = %bb.bz
  %i.pf = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 8
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !99
  %i.ph = zext i8 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !99
  %.not285.i.i = icmp eq i8 %i.pj, 0
  br i1 %.not285.i.i, label %bb.cb, label %bb.ct, !prof !61

bb.cb:                                            ; preds = %bb.ca
  %i.pk = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 9
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !99
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !99
  %.not286.i.i = icmp eq i8 %i.po, 0
  br i1 %.not286.i.i, label %bb.cc, label %bb.cu, !prof !61

bb.cc:                                            ; preds = %bb.cb
  %i.pp = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 10
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !99
  %i.pr = zext i8 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !99
  %.not287.i.i = icmp eq i8 %i.pt, 0
  br i1 %.not287.i.i, label %bb.cd, label %bb.cv, !prof !61

bb.cd:                                            ; preds = %bb.cc
  %i.pu = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 11
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !99
  %i.pw = zext i8 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !99
  %.not288.i.i = icmp eq i8 %i.py, 0
  br i1 %.not288.i.i, label %bb.ce, label %bb.cw, !prof !61

bb.ce:                                            ; preds = %bb.cd
  %i.pz = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 12
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !99
  %i.qb = zext i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !99
  %.not289.i.i = icmp eq i8 %i.qd, 0
  br i1 %.not289.i.i, label %bb.cf, label %bb.cx, !prof !61

bb.cf:                                            ; preds = %bb.ce
  %i.qe = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 13
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !99
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !99
  %.not290.i.i = icmp eq i8 %i.qi, 0
  br i1 %.not290.i.i, label %bb.cg, label %bb.cy, !prof !61

bb.cg:                                            ; preds = %bb.cf
  %i.qj = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 14
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !99
  %i.ql = zext i8 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !99
  %.not291.i.i = icmp eq i8 %i.qn, 0
  br i1 %.not291.i.i, label %bb.ch, label %bb.cz, !prof !61

bb.ch:                                            ; preds = %bb.cg
  %i.qo = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 15
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !99
  %i.qq = zext i8 %i.qp to i64
  %i.qr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !99
  %.not292.i.i = icmp eq i8 %i.qs, 0
  br i1 %.not292.i.i, label %bb.ci, label %bb.da, !prof !61

bb.ci:                                            ; preds = %bb.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i.i2375, i64 16, i1 false)
  %i.qt = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 16 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 16 ; 3 uses
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = sub i64 %i.nm, %i.qv                    ; 2 uses
  %i.qx = icmp sgt i64 %i.qw, 15
  br i1 %i.qx, label %.lr.ph2377, label %.preheader1043, !llvm.loop !31

.preheader1041:                                   ; preds = %bb.cn, %.preheader1043
  %.2252.i.i.lcssa = phi ptr [ %.1251.i.i.lcssa, %.preheader1043 ], [ %i.sf, %bb.cn ] ; 3 uses
  %.2245.i.i.lcssa = phi ptr [ %.1244.i.i.lcssa, %.preheader1043 ], [ %i.sg, %bb.cn ] ; 5 uses
  %i.qy = icmp ugt ptr %i.nl, %.2245.i.i.lcssa
  br i1 %i.qy, label %.lr.ph2388.preheader, label %.preheader1041._crit_edge

.lr.ph2388.preheader:                             ; preds = %.preheader1041
  %.2245.i.i.lcssa2910 = ptrtoaddr ptr %.2245.i.i.lcssa to i64 ; 2 uses
  %i.qz = getelementptr i8, ptr %.2245.i.i.lcssa, i64 %i.t
  %scevgep2909 = getelementptr i8, ptr %i.qz, i64 %i.w
  %i.ra = sub i64 0, %.2245.i.i.lcssa2910
  %scevgep2911 = getelementptr i8, ptr %scevgep2909, i64 %i.ra
  %i.rb = sub i64 %i.nn, %.2245.i.i.lcssa2910
  %i.rc = freeze i64 %i.rb                        ; 2 uses
  %i.rd = add i64 %i.rc, -1
  %xtraiter5977 = and i64 %i.rc, 3                ; 2 uses
  %lcmp.mod5978.not = icmp eq i64 %xtraiter5977, 0
  br i1 %lcmp.mod5978.not, label %.lr.ph2388.prol.loopexit, label %.lr.ph2388.prol

.lr.ph2388.prol:                                  ; preds = %.lr.ph2388.preheader, %bb.cj
  %.3246.i.i2387.prol = phi ptr [ %i.ri, %bb.cj ], [ %.2245.i.i.lcssa, %.lr.ph2388.preheader ] ; 3 uses
  %.3253.i.i2386.prol = phi ptr [ %i.rj, %bb.cj ], [ %.2252.i.i.lcssa, %.lr.ph2388.preheader ] ; 3 uses
  %prol.iter5979 = phi i64 [ %prol.iter5979.next, %bb.cj ], [ 0, %.lr.ph2388.preheader ]
  %i.re = load i8, ptr %.3246.i.i2387.prol, align 1, !tbaa !99 ; 2 uses
  %i.rf = zext i8 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.rf
end_hunk_12
begin_hunk_13_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.rw = zext i8 %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !99
  %.not275.i.i = icmp eq i8 %i.ry, 0
  br i1 %.not275.i.i, label %bb.cm, label %.loopexit1046, !prof !61

bb.cm:                                            ; preds = %bb.cl
  %i.rz = getelementptr inbounds nuw i8, ptr %.2245.i.i2382, i64 3
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !99
  %i.sb = zext i8 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !99
  %.not276.i.i = icmp eq i8 %i.sd, 0
  br i1 %.not276.i.i, label %bb.cn, label %.loopexit1047, !prof !61

bb.cn:                                            ; preds = %bb.cm
  %i.se = load i32, ptr %.2245.i.i2382, align 1
  store i32 %i.se, ptr %.2252.i.i2381, align 1
  %i.sf = getelementptr inbounds nuw i8, ptr %.2252.i.i2381, i64 4 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.2245.i.i2382, i64 4 ; 3 uses
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = sub i64 %i.nm, %i.sh
  %i.sj = icmp sgt i64 %i.si, 3
  br i1 %i.sj, label %.lr.ph2383, label %.preheader1041, !llvm.loop !32

.lr.ph2388:                                       ; preds = %.lr.ph2388.prol.loopexit, %bb.co
  %.3246.i.i2387 = phi ptr [ %i.tg, %bb.co ], [ %.3246.i.i2387.unr, %.lr.ph2388.prol.loopexit ] ; 9 uses
  %.3253.i.i2386 = phi ptr [ %i.th, %bb.co ], [ %.3253.i.i2386.unr, %.lr.ph2388.prol.loopexit ] ; 6 uses
  %i.sk = load i8, ptr %.3246.i.i2387, align 1, !tbaa !99 ; 2 uses
  %i.sl = zext i8 %i.sk to i64
  %i.sm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !99
  %.not.i7.i = icmp eq i8 %i.sn, 0
  br i1 %.not.i7.i, label %.lr.ph2388.1, label %.preheader.preheader, !prof !61

.lr.ph2388.1:                                     ; preds = %.lr.ph2388
  %i.so = getelementptr inbounds nuw i8, ptr %.3246.i.i2387, i64 1
  %i.sp = getelementptr inbounds nuw i8, ptr %.3253.i.i2386, i64 1 ; 2 uses
  store i8 %i.sk, ptr %.3253.i.i2386, align 1, !tbaa !99
  %i.sq = load i8, ptr %i.so, align 1, !tbaa !99  ; 2 uses
  %i.sr = zext i8 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !99
  %.not.i7.i.1 = icmp eq i8 %i.st, 0
  br i1 %.not.i7.i.1, label %.lr.ph2388.2, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6707, !prof !61

.lr.ph2388.2:                                     ; preds = %.lr.ph2388.1
  %i.su = getelementptr inbounds nuw i8, ptr %.3246.i.i2387, i64 2
  %i.sv = getelementptr inbounds nuw i8, ptr %.3253.i.i2386, i64 2 ; 2 uses
  store i8 %i.sq, ptr %i.sp, align 1, !tbaa !99
  %i.sw = load i8, ptr %i.su, align 1, !tbaa !99  ; 2 uses
  %i.sx = zext i8 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !99
  %.not.i7.i.2 = icmp eq i8 %i.sz, 0
  br i1 %.not.i7.i.2, label %.lr.ph2388.3, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6704, !prof !61

.lr.ph2388.3:                                     ; preds = %.lr.ph2388.2
  %i.ta = getelementptr inbounds nuw i8, ptr %.3246.i.i2387, i64 3
  %i.tb = getelementptr inbounds nuw i8, ptr %.3253.i.i2386, i64 3 ; 2 uses
  store i8 %i.sw, ptr %i.sv, align 1, !tbaa !99
  %i.tc = load i8, ptr %i.ta, align 1, !tbaa !99  ; 2 uses
  %i.td = zext i8 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !99
  %.not.i7.i.3 = icmp eq i8 %i.tf, 0
  br i1 %.not.i7.i.3, label %bb.co, label %.preheader.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.co:                                            ; preds = %.lr.ph2388.3
  %i.tg = getelementptr inbounds nuw i8, ptr %.3246.i.i2387, i64 4 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.3253.i.i2386, i64 4 ; 2 uses
  store i8 %i.tc, ptr %i.tb, align 1, !tbaa !99
  %exitcond2912.not.3 = icmp eq ptr %i.tg, %scevgep2911
  br i1 %exitcond2912.not.3, label %.preheader1041._crit_edge, label %.lr.ph2388, !llvm.loop !33

.preheader1041._crit_edge:                        ; preds = %.preheader1041, %bb.co, %.lr.ph2388.prol.loopexit
  %.3253.i.i.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph2388.prol.loopexit ], [ %i.th, %bb.co ], [ %.2252.i.i.lcssa, %.preheader1041 ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.3253.i.i.lcssa, i64 1
  store i8 34, ptr %.3253.i.i.lcssa, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

.loopexit1045:                                    ; preds = %bb.bt, %bb.ck
  %i.tj = phi i8 [ %i.rl, %bb.ck ], [ %i.ns, %bb.bt ]
  %.5255.i.i = phi ptr [ %.2252.i.i2381, %bb.ck ], [ %.1251.i.i2374, %bb.bt ] ; 2 uses
  %.5248.i.i = phi ptr [ %.2245.i.i2382, %bb.ck ], [ %.1244.i.i2375, %bb.bt ]
  store i8 %i.tj, ptr %.5255.i.i, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %.5255.i.i, i64 1
  %i.tl = getelementptr inbounds nuw i8, ptr %.5248.i.i, i64 1
  br label %.preheader.preheader

.loopexit1046:                                    ; preds = %bb.bu, %bb.cl
  %.6256.i.i = phi ptr [ %.2252.i.i2381, %bb.cl ], [ %.1251.i.i2374, %bb.bu ] ; 2 uses
  %.6.i.i = phi ptr [ %.2245.i.i2382, %bb.cl ], [ %.1244.i.i2375, %bb.bu ] ; 2 uses
  %i.tm = load i16, ptr %.6.i.i, align 1
  store i16 %i.tm, ptr %.6256.i.i, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %.6256.i.i, i64 2
  %i.to = getelementptr inbounds nuw i8, ptr %.6.i.i, i64 2
  br label %.preheader.preheader

.loopexit1047:                                    ; preds = %bb.bv, %bb.cm
  %.7257.i.i = phi ptr [ %.2252.i.i2381, %bb.cm ], [ %.1251.i.i2374, %bb.bv ] ; 2 uses
  %.7.i.i = phi ptr [ %.2245.i.i2382, %bb.cm ], [ %.1244.i.i2375, %bb.bv ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i.i, i64 3, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %.7257.i.i, i64 3
  %i.tq = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 3
  br label %.preheader.preheader

bb.cp:                                            ; preds = %bb.bw
  %i.tr = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 4
  %i.ts = load i32, ptr %.1244.i.i2375, align 1
  store i32 %i.ts, ptr %.1251.i.i2374, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 4
  br label %.preheader.preheader

bb.cq:                                            ; preds = %bb.bx
  %i.tu = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i.i2375, i64 5, i1 false)
  %i.tv = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 5
  br label %.preheader.preheader

bb.cr:                                            ; preds = %bb.by
  %i.tw = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i.i2375, i64 6, i1 false)
  %i.tx = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 6
  br label %.preheader.preheader

bb.cs:                                            ; preds = %bb.bz
  %i.ty = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i.i2375, i64 7, i1 false)
  %i.tz = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 7
  br label %.preheader.preheader

bb.ct:                                            ; preds = %bb.ca
  %i.ua = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 8
  %i.ub = load i64, ptr %.1244.i.i2375, align 1
  store i64 %i.ub, ptr %.1251.i.i2374, align 1
  %i.uc = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 8
  br label %.preheader.preheader

bb.cu:                                            ; preds = %bb.cb
  %i.ud = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i.i2375, i64 9, i1 false)
  %i.ue = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 9
  br label %.preheader.preheader

bb.cv:                                            ; preds = %bb.cc
  %i.uf = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i.i2375, i64 10, i1 false)
  %i.ug = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 10
  br label %.preheader.preheader

bb.cw:                                            ; preds = %bb.cd
  %i.uh = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i.i2375, i64 11, i1 false)
  %i.ui = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 11
  br label %.preheader.preheader

bb.cx:                                            ; preds = %bb.ce
  %i.uj = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i.i2375, i64 12, i1 false)
  %i.uk = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 12
  br label %.preheader.preheader

bb.cy:                                            ; preds = %bb.cf
  %i.ul = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i.i2375, i64 13, i1 false)
  %i.um = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 13
  br label %.preheader.preheader

bb.cz:                                            ; preds = %bb.cg
  %i.un = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i.i2375, i64 14, i1 false)
  %i.uo = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 14
  br label %.preheader.preheader

bb.da:                                            ; preds = %bb.ch
  %i.up = getelementptr inbounds nuw i8, ptr %.1244.i.i2375, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i.i2374, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i.i2375, i64 15, i1 false)
  %i.uq = getelementptr inbounds nuw i8, ptr %.1251.i.i2374, i64 15
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2388.3
  %i.ur = getelementptr inbounds nuw i8, ptr %.3246.i.i2387, i64 3
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit6704: ; preds = %.lr.ph2388.2
  %i.us = getelementptr inbounds nuw i8, ptr %.3246.i.i2387, i64 2
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit6707: ; preds = %.lr.ph2388.1
  %i.ut = getelementptr inbounds nuw i8, ptr %.3246.i.i2387, i64 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph2377, %.lr.ph2383, %.lr.ph2388, %.preheader.preheader.loopexit.loopexit.split.loop.exit6707, %.preheader.preheader.loopexit.loopexit.split.loop.exit6704, %.preheader.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2388.prol, %.loopexit1045, %.loopexit1046, %.loopexit1047, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da
  %.8258.i.i.ph = phi ptr [ %.2252.i.i2381, %.lr.ph2383 ], [ %.3253.i.i2386.prol, %.lr.ph2388.prol ], [ %i.tk, %.loopexit1045 ], [ %i.tn, %.loopexit1046 ], [ %i.tp, %.loopexit1047 ], [ %i.tt, %bb.cp ], [ %i.tv, %bb.cq ], [ %i.tx, %bb.cr ], [ %i.tz, %bb.cs ], [ %i.uc, %bb.ct ], [ %i.ue, %bb.cu ], [ %i.ug, %bb.cv ], [ %i.ui, %bb.cw ], [ %i.uk, %bb.cx ], [ %i.um, %bb.cy ], [ %i.uo, %bb.cz ], [ %i.uq, %bb.da ], [ %.3253.i.i2386, %.lr.ph2388 ], [ %i.sp, %.preheader.preheader.loopexit.loopexit.split.loop.exit6707 ], [ %i.sv, %.preheader.preheader.loopexit.loopexit.split.loop.exit6704 ], [ %i.tb, %.preheader.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i.i2374, %.lr.ph2377 ]
  %.8.i.i.ph = phi ptr [ %.2245.i.i2382, %.lr.ph2383 ], [ %.3246.i.i2387.prol, %.lr.ph2388.prol ], [ %i.tl, %.loopexit1045 ], [ %i.to, %.loopexit1046 ], [ %i.tq, %.loopexit1047 ], [ %i.tr, %bb.cp ], [ %i.tu, %bb.cq ], [ %i.tw, %bb.cr ], [ %i.ty, %bb.cs ], [ %i.ua, %bb.ct ], [ %i.ud, %bb.cu ], [ %i.uf, %bb.cv ], [ %i.uh, %bb.cw ], [ %i.uj, %bb.cx ], [ %i.ul, %bb.cy ], [ %i.un, %bb.cz ], [ %i.up, %bb.da ], [ %.3246.i.i2387, %.lr.ph2388 ], [ %i.ut, %.preheader.preheader.loopexit.loopexit.split.loop.exit6707 ], [ %i.us, %.preheader.preheader.loopexit.loopexit.split.loop.exit6704 ], [ %i.ur, %.preheader.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i.i2375, %.lr.ph2377 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %.8258.i.i = phi ptr [ %.8258.i.i.ph, %.preheader.preheader ], [ %.8258.i.i.be, %.preheader.backedge ] ; 35 uses
  %.8.i.i = phi ptr [ %.8.i.i.ph, %.preheader.preheader ], [ %.8.i.i.be, %.preheader.backedge ] ; 23 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 4 ; 3 uses
  %i.uv = icmp ugt ptr %i.uu, %i.nl               ; 2 uses
  br i1 %i.uv, label %bb.db, label %._crit_edge2967, !prof !44

._crit_edge2967:                                  ; preds = %.preheader
  %.pre2968.a = load i8, ptr %.8.i.i, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert2969 = zext i8 %.pre2968.a to i64 ; 2 uses
  %.phi.trans.insert2970 = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %.phi.trans.insert2969
  %.pre2971 = load i8, ptr %.phi.trans.insert2970, align 1, !tbaa !99
  br label %bb.dc

bb.db:                                            ; preds = %.preheader
  %i.uw = ptrtoint ptr %.8.i.i to i64
  %i.ux = sub i64 %i.nm, %i.uw
  %i.uy = load i8, ptr %.8.i.i, align 1, !tbaa !99 ; 3 uses
  %i.uz = zext i8 %i.uy to i64                    ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !99  ; 2 uses
  %i.vc = lshr i8 %i.vb, 1
  %i.vd = zext nneg i8 %i.vc to i64
  %i.ve = icmp slt i64 %i.ux, %i.vd
  br i1 %i.ve, label %bb.dw, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge2967, %bb.db
  %.pre-phi2973 = phi i64 [ %.phi.trans.insert2969, %._crit_edge2967 ], [ %i.uz, %bb.db ]
  %i.vf = phi i8 [ %.pre2971, %._crit_edge2967 ], [ %i.vb, %bb.db ]
  %i.vg = phi i8 [ %.pre2968.a, %._crit_edge2967 ], [ %i.uy, %bb.db ] ; 2 uses
  switch i8 %i.vf, label %bb.dv [
    i8 0, label %bb.dd
    i8 4, label %bb.de
    i8 6, label %bb.dg
    i8 8, label %bb.dl
    i8 2, label %bb.dn
    i8 3, label %bb.do
    i8 5, label %bb.dp
    i8 7, label %bb.dr
    i8 9, label %bb.dt
    i8 1, label %bb.dw
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.vh = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  store i8 %i.vg, ptr %.8258.i.i, align 1, !tbaa !99
  br label %bb.bs

bb.de:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i102.i = load i16, ptr %.8.i.i, align 1 ; 3 uses
  %i.vi = zext i16 %.sroa.0.0.copyload.i102.i to i32 ; 2 uses
  %i.vj = and i32 %i.vi, 49376
  %i.vk = icmp ne i32 %i.vj, 32960
  %i.vl = and i32 %i.vi, 30
  %i.vm = icmp eq i32 %i.vl, 0
  %.not315.i.i = or i1 %i.vk, %i.vm
  %i.vn = trunc i16 %.sroa.0.0.copyload.i102.i to i8
  br i1 %.not315.i.i, label %.thread809, label %bb.df, !prof !44

bb.df:                                            ; preds = %bb.de
  store i16 %.sroa.0.0.copyload.i102.i, ptr %.8258.i.i, align 1
  %i.vo = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 2
  %i.vp = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 2
  br label %.preheader.backedge

bb.dg:                                            ; preds = %bb.dc
  br i1 %i.uv, label %bb.dj, label %bb.dh, !prof !44

bb.dh:                                            ; preds = %bb.dg
  %.sroa.0.0.copyload.i333.i.i = load i32, ptr %.8.i.i, align 1 ; 4 uses
  %i.vq = and i32 %.sroa.0.0.copyload.i333.i.i, 12632304
  %i.vr = icmp eq i32 %i.vq, 8421600
  %i.vs = trunc i32 %.sroa.0.0.copyload.i333.i.i to i8 ; 3 uses
  br i1 %i.vr, label %bb.di, label %.thread809, !prof !61

bb.di:                                            ; preds = %bb.dh
  %i.vt = and i32 %.sroa.0.0.copyload.i333.i.i, 8207
  switch i32 %i.vt, label %.critedge.i.i [
    i32 8205, label %.thread809
    i32 0, label %.thread809
  ], !prof !150

bb.dj:                                            ; preds = %bb.dg
  %.sroa.0.0.copyload.i110.i = load i16, ptr %.8.i.i, align 1 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 2
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i111.i = zext i8 %i.vv to i32
  %.sroa.4.0.insert.shift.i112.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i111.i, 16
  %.sroa.0.0.insert.ext.i113.i = zext i16 %.sroa.0.0.copyload.i110.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i114.i = or disjoint i32 %.sroa.4.0.insert.shift.i112.i, %.sroa.0.0.insert.ext.i113.i ; 2 uses
  %i.vw = and i32 %.sroa.0.0.insert.insert.i114.i, 12632304
  %i.vx = icmp eq i32 %i.vw, 8421600
  %i.vy = trunc i16 %.sroa.0.0.copyload.i110.i to i8 ; 3 uses
  br i1 %i.vx, label %bb.dk, label %.thread809, !prof !61

bb.dk:                                            ; preds = %bb.dj
  %i.vz = and i32 %.sroa.0.0.insert.ext.i113.i, 8207
  switch i32 %i.vz, label %.critedge.i.i [
    i32 8205, label %.thread809
    i32 0, label %.thread809
  ], !prof !150

.critedge.i.i:                                    ; preds = %bb.dk, %bb.di
  %storemerge1011 = phi i32 [ %.sroa.0.0.copyload.i333.i.i, %bb.di ], [ %.sroa.0.0.insert.insert.i114.i, %bb.dk ]
  store i32 %storemerge1011, ptr %.8258.i.i, align 1
  %i.wa = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 3
  %i.wb = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 3
  br label %.preheader.backedge

bb.dl:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i332.i.i = load i32, ptr %.8.i.i, align 1 ; 6 uses
  %i.wc = and i32 %.sroa.0.0.copyload.i332.i.i, -1061109512
  %i.wd = icmp ne i32 %i.wc, -2139062032
  %i.we = and i32 %.sroa.0.0.copyload.i332.i.i, 12295
  %.not306.i.i = icmp eq i32 %i.we, 0
  %or.cond.i.i = or i1 %i.wd, %.not306.i.i
  %i.wf = trunc i32 %.sroa.0.0.copyload.i332.i.i to i8 ; 2 uses
  br i1 %or.cond.i.i, label %.thread809, label %bb.dm, !prof !151

bb.dm:                                            ; preds = %bb.dl
  %i.wg = and i32 %.sroa.0.0.copyload.i332.i.i, 4
  %i.wh = icmp ne i32 %i.wg, 0
  %i.wi = and i32 %.sroa.0.0.copyload.i332.i.i, 12291
  %i.wj = icmp ne i32 %i.wi, 0
  %.not309.i.i = and i1 %i.wh, %i.wj
  br i1 %.not309.i.i, label %.thread809, label %.critedge321.i.i, !prof !44

.critedge321.i.i:                                 ; preds = %bb.dm
  store i32 %.sroa.0.0.copyload.i332.i.i, ptr %.8258.i.i, align 1
  %i.wk = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 4
  br label %.preheader.backedge

bb.dn:                                            ; preds = %bb.dc
  %i.wl = shl nuw nsw i64 %.pre-phi2973, 1
  %i.wm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.wl
  %i.wn = load i16, ptr %i.wm, align 2
  store i16 %i.wn, ptr %.8258.i.i, align 1
  %i.wo = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 2
  %i.wp = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.dn, %bb.do, %bb.dx, %bb.dy, %bb.df, %.critedge.i.i, %.critedge321.i.i, %bb.dq, %.critedge326.i.i, %.critedge330.i.i
  %.8258.i.i.be = phi ptr [ %i.aaq, %bb.dx ], [ %i.vo, %bb.df ], [ %i.wa, %.critedge.i.i ], [ %i.wk, %.critedge321.i.i ], [ %i.wo, %bb.dn ], [ %i.ww, %bb.do ], [ %i.xs, %bb.dq ], [ %i.yp, %.critedge326.i.i ], [ %i.aal, %.critedge330.i.i ], [ %i.aas, %bb.dy ]
  %.8.i.i.be = phi ptr [ %i.aap, %bb.dx ], [ %i.vp, %bb.df ], [ %i.wb, %.critedge.i.i ], [ %i.uu, %.critedge321.i.i ], [ %i.wp, %bb.dn ], [ %i.wx, %bb.do ], [ %i.xt, %bb.dq ], [ %i.yq, %.critedge326.i.i ], [ %i.uu, %.critedge330.i.i ], [ %i.aat, %bb.dy ]
  br label %.preheader

bb.do:                                            ; preds = %bb.dc
  store i32 808482140, ptr %.8258.i.i, align 1
  %i.wq = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 4
  %i.wr = load i8, ptr %.8.i.i, align 1, !tbaa !99
  %i.ws = zext i8 %i.wr to i64
  %i.wt = shl nuw nsw i64 %i.ws, 1
  %i.wu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.wt
  %i.wv = load i16, ptr %i.wu, align 2
  store i16 %i.wv, ptr %i.wq, align 1
  %i.ww = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 6
  %i.wx = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  br label %.preheader.backedge

bb.dp:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i103.i = load i16, ptr %.8.i.i, align 1 ; 3 uses
  %i.wy = zext i16 %.sroa.0.0.copyload.i103.i to i32 ; 2 uses
  %i.wz = and i32 %i.wy, 49376
  %i.xa = icmp ne i32 %i.wz, 32960
  %i.xb = and i32 %i.wy, 30
  %i.xc = icmp eq i32 %i.xb, 0
  %.not303.i.i = or i1 %i.xa, %i.xc
  br i1 %.not303.i.i, label %.thread819, label %bb.dq, !prof !44

bb.dq:                                            ; preds = %bb.dp
  %i.xd = lshr i16 %.sroa.0.0.copyload.i103.i, 8
  %i.xe = trunc nuw i16 %i.xd to i8
  %i.xf = trunc i16 %.sroa.0.0.copyload.i103.i to i8 ; 2 uses
  %.tr304.i.i = shl i8 %i.xf, 6
  %i.xg = and i8 %i.xe, 63
  store i16 30044, ptr %.8258.i.i, align 1
  %i.xh = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 2
  %i.xi = lshr i8 %i.xf, 1
  %i.xj = and i8 %i.xi, 14
  %i.xk = zext nneg i8 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.xk
  %i.xm = load i16, ptr %i.xl, align 2
  store i16 %i.xm, ptr %i.xh, align 1
  %i.xn = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 4
  %.narrow305.i.i = or disjoint i8 %i.xg, %.tr304.i.i
  %i.xo = zext i8 %.narrow305.i.i to i64
  %i.xp = shl nuw nsw i64 %i.xo, 1
  %i.xq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.xp
  %i.xr = load i16, ptr %i.xq, align 2
  store i16 %i.xr, ptr %i.xn, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 6
  %i.xt = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 2
  br label %.preheader.backedge

bb.dr:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i115.i = load i16, ptr %.8.i.i, align 1 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 2
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !99  ; 2 uses
  %.sroa.4.0.insert.ext.i116.i = zext i8 %i.xv to i32
  %.sroa.4.0.insert.shift.i117.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i116.i, 16
  %.sroa.0.0.insert.ext.i118.i = zext i16 %.sroa.0.0.copyload.i115.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i119.i = or disjoint i32 %.sroa.4.0.insert.shift.i117.i, %.sroa.0.0.insert.ext.i118.i
  %i.xw = and i32 %.sroa.0.0.insert.insert.i119.i, 12632304
  %i.xx = icmp eq i32 %i.xw, 8421600
  br i1 %i.xx, label %bb.ds, label %.thread819, !prof !61

bb.ds:                                            ; preds = %bb.dr
  %i.xy = and i32 %.sroa.0.0.insert.ext.i118.i, 8207
  switch i32 %i.xy, label %.critedge326.i.i [
    i32 8205, label %.thread819
    i32 0, label %.thread819
  ], !prof !150

.critedge326.i.i:                                 ; preds = %bb.ds
  %i.xz = zext i16 %.sroa.0.0.copyload.i115.i to i64
  %i.ya = shl nuw nsw i64 %i.xz, 12
  %i.yb = lshr i16 %.sroa.0.0.copyload.i115.i, 2
  %i.yc = and i16 %i.yb, 4032                     ; 2 uses
  %i.yd = zext nneg i16 %i.yc to i64
  %i.ye = and i8 %i.xv, 63
  store i16 30044, ptr %.8258.i.i, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 2
  %.masked.i.i = or disjoint i64 %i.ya, %i.yd
  %i.yg = lshr i64 %.masked.i.i, 7
  %i.yh = and i64 %i.yg, 510
  %i.yi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.yh
  %i.yj = load i16, ptr %i.yi, align 2
  store i16 %i.yj, ptr %i.yf, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 4
  %.tr299.i.i = trunc i16 %i.yc to i8
  %.narrow300.i.i = or disjoint i8 %i.ye, %.tr299.i.i
  %i.yl = zext i8 %.narrow300.i.i to i64
  %i.ym = shl nuw nsw i64 %i.yl, 1
  %i.yn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.ym
  %i.yo = load i16, ptr %i.yn, align 2
  store i16 %i.yo, ptr %i.yk, align 1
  %i.yp = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 6
  %i.yq = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 3
  br label %.preheader.backedge

bb.dt:                                            ; preds = %bb.dc
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %.8.i.i, align 1 ; 9 uses
  %i.yr = and i32 %.sroa.0.0.copyload.i.i.i, -1061109512
  %i.ys = icmp ne i32 %i.yr, -2139062032
  %i.yt = and i32 %.sroa.0.0.copyload.i.i.i, 12295
  %.not293.i.i = icmp eq i32 %i.yt, 0
  %or.cond328.i.i = or i1 %i.ys, %.not293.i.i
  %i.yu = lshr i32 %.sroa.0.0.copyload.i.i.i, 24
  br i1 %or.cond328.i.i, label %.thread819, label %bb.du, !prof !151

bb.du:                                            ; preds = %bb.dt
  %i.yv = and i32 %.sroa.0.0.copyload.i.i.i, 4
  %i.yw = icmp ne i32 %i.yv, 0
  %i.yx = and i32 %.sroa.0.0.copyload.i.i.i, 12291
  %i.yy = icmp ne i32 %i.yx, 0
  %.not296.i.i = and i1 %i.yw, %i.yy
  br i1 %.not296.i.i, label %.thread819, label %.critedge330.i.i, !prof !44

.critedge330.i.i:                                 ; preds = %bb.du
  %i.yz = shl i32 %.sroa.0.0.copyload.i.i.i, 18
  %i.za = and i32 %i.yz, 1835008
  %i.zb = shl i32 %.sroa.0.0.copyload.i.i.i, 4
  %i.zc = and i32 %i.zb, 258048
  %i.zd = lshr i32 %.sroa.0.0.copyload.i.i.i, 10  ; 2 uses
  %i.ze = and i32 %i.zd, 3072
  %i.zf = and i32 %i.yu, 63
  %i.zg = add nsw i32 %i.za, -65536
  %i.zh = add nsw i32 %i.zg, %i.zc                ; 2 uses
  %i.zi = or disjoint i32 %i.zh, %i.ze
  %i.zj = lshr exact i32 %i.zh, 10
  %i.zk = add nuw nsw i32 %i.zj, 55296
  store i16 30044, ptr %.8258.i.i, align 1
  %i.zl = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 2
  %i.zm = lshr i32 %i.zk, 7
  %i.zn = and i32 %i.zm, 65534
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.zo
  %i.zq = load i16, ptr %i.zp, align 2
  store i16 %i.zq, ptr %i.zl, align 1
  %i.zr = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 4
  %i.zs = lshr exact i32 %i.zi, 9
  %i.zt = and i32 %i.zs, 510
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.zu
  %i.zw = load i16, ptr %i.zv, align 2
  store i16 %i.zw, ptr %i.zr, align 1
  %i.zx = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 6
  store i16 30044, ptr %i.zx, align 1
  %i.zy = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 8
  %i.zz = lshr i32 %.sroa.0.0.copyload.i.i.i, 17
  %i.aaa = and i32 %i.zz, 6
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 440
  %i.aae = load i16, ptr %i.aad, align 2
  store i16 %i.aae, ptr %i.zy, align 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 10
  %.masked3150.a = and i32 %i.zd, 192
  %i.aag = or disjoint i32 %i.zf, %.masked3150.a
  %i.aah = shl nuw nsw i32 %i.aag, 1
  %i.aai = zext nneg i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.aai
  %i.aak = load i16, ptr %i.aaj, align 2
  store i16 %i.aak, ptr %i.aaf, align 1
  %i.aal = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 12
  br label %.preheader.backedge

bb.dv:                                            ; preds = %bb.dc
  %i.aam = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 1
  store i8 34, ptr %.8258.i.i, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.dw:                                            ; preds = %bb.dc, %bb.db
  %i.aan = phi i8 [ %i.vg, %bb.dc ], [ %i.uy, %bb.db ]
  br i1 %.not990, label %.thread809, label %.thread819

.thread809:                                       ; preds = %bb.dl, %bb.dm, %bb.dj, %bb.dh, %bb.dk, %bb.dk, %bb.di, %bb.di, %bb.de, %bb.dw
  %i.aao = phi i8 [ %i.wf, %bb.dl ], [ %i.wf, %bb.dm ], [ %i.vy, %bb.dj ], [ %i.vs, %bb.dh ], [ %i.vy, %bb.dk ], [ %i.vy, %bb.dk ], [ %i.vs, %bb.di ], [ %i.vs, %bb.di ], [ %i.vn, %bb.de ], [ %i.aan, %bb.dw ]
  br i1 %.not993, label %.loopexit, label %bb.dx

bb.dx:                                            ; preds = %.thread809
  %i.aap = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 1
  store i8 %i.aao, ptr %.8258.i.i, align 1, !tbaa !99
  br label %.preheader.backedge

.thread819:                                       ; preds = %bb.dt, %bb.du, %bb.dr, %bb.ds, %bb.ds, %bb.dp, %bb.dw
  br i1 %.not993, label %.loopexit, label %bb.dy

bb.dy:                                            ; preds = %.thread819
  store i16 30044, ptr %.8258.i.i, align 1
  %i.aar = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 2
  store i32 1145456198, ptr %i.aar, align 1
  %i.aas = getelementptr inbounds nuw i8, ptr %.8258.i.i, i64 6
  %i.aat = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  br label %.preheader.backedge

bb.dz:                                            ; preds = %bb.br
  %i.aau = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.aav = icmp ugt i64 %i.c, 4095
  br i1 %i.aav, label %.lr.ph2345, label %.preheader1053

.preheader1053:                                   ; preds = %.lr.ph2345, %bb.dz
  %.021.i.i.lcssa = phi ptr [ %i.aau, %bb.dz ], [ %i.abk, %.lr.ph2345 ] ; 5 uses
  %.018.i.i.lcssa = phi ptr [ %i.v, %bb.dz ], [ %i.abl, %.lr.ph2345 ] ; 5 uses
  %.0.i4.i.lcssa = phi i64 [ %i.t, %bb.dz ], [ %i.abm, %.lr.ph2345 ] ; 5 uses
  %i.aaw = icmp samesign ugt i64 %.0.i4.i.lcssa, 3
  br i1 %i.aaw, label %.lr.ph2352.preheader, label %.preheader1052

.lr.ph2352.preheader:                             ; preds = %.preheader1053
  %.018.i.i.lcssa5218 = ptrtoaddr ptr %.018.i.i.lcssa to i64
  %.021.i.i.lcssa5217 = ptrtoaddr ptr %.021.i.i.lcssa to i64
  %i.aax = add nsw i64 %.0.i4.i.lcssa, -4         ; 2 uses
  %i.aay = lshr i64 %i.aax, 2
  %i.aaz = add nuw nsw i64 %i.aay, 1              ; 2 uses
  %min.iters.check5221 = icmp ult i64 %i.aax, 28
  %i.aba = sub i64 %.018.i.i.lcssa5218, %.021.i.i.lcssa5217
  %diff.check5219 = icmp ugt i64 %i.aba, -32
  %or.cond5276 = select i1 %min.iters.check5221, i1 true, i1 %diff.check5219
  br i1 %or.cond5276, label %.lr.ph2352.preheader5362, label %vector.ph5222

vector.ph5222:                                    ; preds = %.lr.ph2352.preheader
  %n.vec5223 = and i64 %i.aaz, 9223372036854775800 ; 4 uses
  %i.abb = shl i64 %n.vec5223, 2
  %i.abc = sub i64 %.0.i4.i.lcssa, %i.abb         ; 2 uses
  %i.abd = shl i64 %n.vec5223, 2                  ; 2 uses
  %i.abe = getelementptr i8, ptr %.018.i.i.lcssa, i64 %i.abd ; 2 uses
  %i.abf = getelementptr i8, ptr %.021.i.i.lcssa, i64 %i.abd ; 2 uses
  br label %vector.body5224

vector.body5224:                                  ; preds = %vector.body5224, %vector.ph5222
  %index5225 = phi i64 [ 0, %vector.ph5222 ], [ %index.next5230, %vector.body5224 ] ; 2 uses
  %i.abg = shl i64 %index5225, 2                  ; 2 uses
  %next.gep5226 = getelementptr i8, ptr %.018.i.i.lcssa, i64 %i.abg ; 2 uses
  %next.gep5227 = getelementptr i8, ptr %.021.i.i.lcssa, i64 %i.abg ; 2 uses
  %i.abh = getelementptr i8, ptr %next.gep5226, i64 16
  %wide.load5228 = load <4 x i32>, ptr %next.gep5226, align 1
  %wide.load5229 = load <4 x i32>, ptr %i.abh, align 1
  %i.abi = getelementptr i8, ptr %next.gep5227, i64 16
  store <4 x i32> %wide.load5228, ptr %next.gep5227, align 1
  store <4 x i32> %wide.load5229, ptr %i.abi, align 1
  %index.next5230 = add nuw i64 %index5225, 8     ; 2 uses
  %i.abj = icmp eq i64 %index.next5230, %n.vec5223
  br i1 %i.abj, label %middle.block5231, label %vector.body5224, !llvm.loop !332

middle.block5231:                                 ; preds = %vector.body5224
  %cmp.n5232 = icmp eq i64 %i.aaz, %n.vec5223
  br i1 %cmp.n5232, label %.preheader1052, label %.lr.ph2352.preheader5362

.lr.ph2352.preheader5362:                         ; preds = %.lr.ph2352.preheader, %middle.block5231
  %.1.i5.i2351.ph = phi i64 [ %.0.i4.i.lcssa, %.lr.ph2352.preheader ], [ %i.abc, %middle.block5231 ]
  %.119.i.i2350.ph = phi ptr [ %.018.i.i.lcssa, %.lr.ph2352.preheader ], [ %i.abe, %middle.block5231 ]
  %.122.i.i2349.ph = phi ptr [ %.021.i.i.lcssa, %.lr.ph2352.preheader ], [ %i.abf, %middle.block5231 ]
  br label %.lr.ph2352

.lr.ph2345:                                       ; preds = %bb.dz, %.lr.ph2345
  %.0.i4.i2343 = phi i64 [ %i.abm, %.lr.ph2345 ], [ %i.t, %bb.dz ]
  %.018.i.i2342 = phi ptr [ %i.abl, %.lr.ph2345 ], [ %i.v, %bb.dz ] ; 2 uses
  %.021.i.i2341 = phi ptr [ %i.abk, %.lr.ph2345 ], [ %i.aau, %bb.dz ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i2341, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i2342, i64 16, i1 false)
  %i.abk = getelementptr inbounds nuw i8, ptr %.021.i.i2341, i64 16 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.018.i.i2342, i64 16 ; 2 uses
  %i.abm = add nsw i64 %.0.i4.i2343, -16          ; 3 uses
  %i.abn = icmp ugt i64 %i.abm, 15
  br i1 %i.abn, label %.lr.ph2345, label %.preheader1053, !llvm.loop !34

.preheader1052:                                   ; preds = %.lr.ph2352, %middle.block5231, %.preheader1053
  %.122.i.i.lcssa = phi ptr [ %.021.i.i.lcssa, %.preheader1053 ], [ %i.abf, %middle.block5231 ], [ %i.ach, %.lr.ph2352 ] ; 7 uses
  %.119.i.i.lcssa = phi ptr [ %.018.i.i.lcssa, %.preheader1053 ], [ %i.abe, %middle.block5231 ], [ %i.aci, %.lr.ph2352 ] ; 6 uses
  %.1.i5.i.lcssa = phi i64 [ %.0.i4.i.lcssa, %.preheader1053 ], [ %i.abc, %middle.block5231 ], [ %i.acj, %.lr.ph2352 ] ; 11 uses
  %.not.i6.i2356 = icmp eq i64 %.1.i5.i.lcssa, 0
  br i1 %.not.i6.i2356, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %iter.check5259

iter.check5259:                                   ; preds = %.preheader1052
  %.119.i.i.lcssa5238 = ptrtoaddr ptr %.119.i.i.lcssa to i64
  %.122.i.i.lcssa5237 = ptrtoaddr ptr %.122.i.i.lcssa to i64
  %min.iters.check5241 = icmp ult i64 %.1.i5.i.lcssa, 4
  %i.abo = sub i64 %.119.i.i.lcssa5238, %.122.i.i.lcssa5237
  %diff.check5239 = icmp ugt i64 %i.abo, -32
  %or.cond5277 = select i1 %min.iters.check5241, i1 true, i1 %diff.check5239
  br i1 %or.cond5277, label %.lr.ph2360.preheader, label %vector.main.loop.iter.check5242

vector.main.loop.iter.check5242:                  ; preds = %iter.check5259
  %min.iters.check5243 = icmp ult i64 %.1.i5.i.lcssa, 32
  br i1 %min.iters.check5243, label %vec.epilog.ph5263, label %vector.ph5244

vector.ph5244:                                    ; preds = %vector.main.loop.iter.check5242
  %i.abp = and i64 %.1.i5.i.lcssa, 28
  %n.vec5245 = and i64 %.1.i5.i.lcssa, -32        ; 5 uses
  %i.abq = and i64 %.1.i5.i.lcssa, 31
  %i.abr = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec5245
  %i.abs = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec5245 ; 2 uses
  br label %vector.body5246

vector.body5246:                                  ; preds = %vector.body5246, %vector.ph5244
  %index5247 = phi i64 [ 0, %vector.ph5244 ], [ %index.next5252, %vector.body5246 ] ; 3 uses
  %next.gep5248 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index5247 ; 2 uses
  %next.gep5249 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index5247 ; 2 uses
  %i.abt = getelementptr i8, ptr %next.gep5248, i64 16
  %wide.load5250 = load <16 x i8>, ptr %next.gep5248, align 1, !tbaa !99
  %wide.load5251 = load <16 x i8>, ptr %i.abt, align 1, !tbaa !99
  %i.abu = getelementptr i8, ptr %next.gep5249, i64 16
  store <16 x i8> %wide.load5250, ptr %next.gep5249, align 1, !tbaa !99
  store <16 x i8> %wide.load5251, ptr %i.abu, align 1, !tbaa !99
  %index.next5252 = add nuw i64 %index5247, 32    ; 2 uses
  %i.abv = icmp eq i64 %index.next5252, %n.vec5245
  br i1 %i.abv, label %middle.block5253, label %vector.body5246, !llvm.loop !333

middle.block5253:                                 ; preds = %vector.body5246
  %cmp.n5254 = icmp eq i64 %.1.i5.i.lcssa, %n.vec5245
  br i1 %cmp.n5254, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %vec.epilog.iter.check5261

vec.epilog.iter.check5261:                        ; preds = %middle.block5253
  %min.epilog.iters.check5262 = icmp eq i64 %i.abp, 0
  br i1 %min.epilog.iters.check5262, label %.lr.ph2360.preheader, label %vec.epilog.ph5263, !prof !152

vec.epilog.ph5263:                                ; preds = %vector.main.loop.iter.check5242, %vec.epilog.iter.check5261
  %vec.epilog.resume.val5255 = phi i64 [ %n.vec5245, %vec.epilog.iter.check5261 ], [ 0, %vector.main.loop.iter.check5242 ]
  %n.vec5264 = and i64 %.1.i5.i.lcssa, -4         ; 4 uses
  %i.abw = and i64 %.1.i5.i.lcssa, 3
  %i.abx = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec5264
  %i.aby = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec5264 ; 2 uses
  br label %vec.epilog.vector.body5265

vec.epilog.vector.body5265:                       ; preds = %vec.epilog.vector.body5265, %vec.epilog.ph5263
  %index5266 = phi i64 [ %vec.epilog.resume.val5255, %vec.epilog.ph5263 ], [ %index.next5270, %vec.epilog.vector.body5265 ] ; 3 uses
  %next.gep5267 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index5266
  %next.gep5268 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index5266
  %wide.load5269 = load <4 x i8>, ptr %next.gep5267, align 1, !tbaa !99
  store <4 x i8> %wide.load5269, ptr %next.gep5268, align 1, !tbaa !99
  %index.next5270 = add nuw i64 %index5266, 4     ; 2 uses
  %i.abz = icmp eq i64 %index.next5270, %n.vec5264
  br i1 %i.abz, label %vec.epilog.middle.block5271, label %vec.epilog.vector.body5265, !llvm.loop !334

vec.epilog.middle.block5271:                      ; preds = %vec.epilog.vector.body5265
  %cmp.n5272 = icmp eq i64 %.1.i5.i.lcssa, %n.vec5264
  br i1 %cmp.n5272, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360.preheader

.lr.ph2360.preheader:                             ; preds = %iter.check5259, %vec.epilog.iter.check5261, %vec.epilog.middle.block5271
  %.2.i.i2359.ph = phi i64 [ %.1.i5.i.lcssa, %iter.check5259 ], [ %i.abq, %vec.epilog.iter.check5261 ], [ %i.abw, %vec.epilog.middle.block5271 ] ; 4 uses
  %.220.i.i2358.ph = phi ptr [ %.119.i.i.lcssa, %iter.check5259 ], [ %i.abr, %vec.epilog.iter.check5261 ], [ %i.abx, %vec.epilog.middle.block5271 ] ; 2 uses
  %.223.i.i2357.ph = phi ptr [ %.122.i.i.lcssa, %iter.check5259 ], [ %i.abs, %vec.epilog.iter.check5261 ], [ %i.aby, %vec.epilog.middle.block5271 ] ; 2 uses
  %i.aca = add nsw i64 %.2.i.i2359.ph, -1
  %xtraiter5974 = and i64 %.2.i.i2359.ph, 7       ; 2 uses
  %lcmp.mod5975.not = icmp eq i64 %xtraiter5974, 0
  br i1 %lcmp.mod5975.not, label %.lr.ph2360.prol.loopexit, label %.lr.ph2360.prol

.lr.ph2360.prol:                                  ; preds = %.lr.ph2360.preheader, %.lr.ph2360.prol
  %.2.i.i2359.prol = phi i64 [ %i.ace, %.lr.ph2360.prol ], [ %.2.i.i2359.ph, %.lr.ph2360.preheader ]
  %.220.i.i2358.prol = phi ptr [ %i.acb, %.lr.ph2360.prol ], [ %.220.i.i2358.ph, %.lr.ph2360.preheader ] ; 2 uses
  %.223.i.i2357.prol = phi ptr [ %i.acd, %.lr.ph2360.prol ], [ %.223.i.i2357.ph, %.lr.ph2360.preheader ] ; 2 uses
  %prol.iter5976 = phi i64 [ %prol.iter5976.next, %.lr.ph2360.prol ], [ 0, %.lr.ph2360.preheader ]
  %i.acb = getelementptr inbounds nuw i8, ptr %.220.i.i2358.prol, i64 1 ; 2 uses
  %i.acc = load i8, ptr %.220.i.i2358.prol, align 1, !tbaa !99
  %i.acd = getelementptr inbounds nuw i8, ptr %.223.i.i2357.prol, i64 1 ; 3 uses
  store i8 %i.acc, ptr %.223.i.i2357.prol, align 1, !tbaa !99
  %i.ace = add nsw i64 %.2.i.i2359.prol, -1       ; 2 uses
  %prol.iter5976.next = add i64 %prol.iter5976, 1 ; 2 uses
  %prol.iter5976.cmp.not = icmp eq i64 %prol.iter5976.next, %xtraiter5974
  br i1 %prol.iter5976.cmp.not, label %.lr.ph2360.prol.loopexit, label %.lr.ph2360.prol, !llvm.loop !335

.lr.ph2360.prol.loopexit:                         ; preds = %.lr.ph2360.prol, %.lr.ph2360.preheader
  %.lcssa5361.unr = phi ptr [ poison, %.lr.ph2360.preheader ], [ %i.acd, %.lr.ph2360.prol ]
  %.2.i.i2359.unr = phi i64 [ %.2.i.i2359.ph, %.lr.ph2360.preheader ], [ %i.ace, %.lr.ph2360.prol ]
  %.220.i.i2358.unr = phi ptr [ %.220.i.i2358.ph, %.lr.ph2360.preheader ], [ %i.acb, %.lr.ph2360.prol ]
  %.223.i.i2357.unr = phi ptr [ %.223.i.i2357.ph, %.lr.ph2360.preheader ], [ %i.acd, %.lr.ph2360.prol ]
  %i.acf = icmp ult i64 %i.aca, 7
  br i1 %i.acf, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360
end_hunk_13
begin_hunk_14_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %.not952 = icmp eq i32 %i.cgz, 0                ; 4 uses
  %i.cha = and i32 %2, 64
  %.not953 = icmp eq i32 %i.cha, 0
  %i.chb = select i1 %.not953, i64 4, i64 2, !prof !61 ; 63 uses
  %i.chc = and i32 %2, 128
  %.not954 = icmp eq i32 %i.chc, 0
  %i.chd = shl i64 %1, 5
  %i.che = add i64 %i.chd, 64                     ; 3 uses
  %i.chf = tail call noundef ptr %.sroa.0491.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.che), !inline_history !338 ; 6 uses
  %.not.i = icmp eq ptr %i.chf, null
  br i1 %.not.i, label %.loopexit1130, label %bb.im

bb.im:                                            ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i33
  %i.chg = getelementptr inbounds nuw i8, ptr %i.chf, i64 %i.che ; 2 uses
  %i.chh = load i64, ptr %0, align 8, !tbaa !98   ; 2 uses
  %i.chi = and i64 %i.chh, 7
  %i.chj = icmp eq i64 %i.chi, 7                  ; 4 uses
  %i.chk = zext i1 %i.chj to i8
  %i.chl = lshr i64 %i.chh, 8
  %i.chm = zext i1 %i.chj to i64
  %i.chn = shl nuw nsw i64 %i.chl, %i.chm
  %i.cho = select i1 %i.chj, i8 123, i8 91
  %i.chp = getelementptr inbounds nuw i8, ptr %i.chf, i64 1
  store i8 %i.cho, ptr %i.chf, align 1, !tbaa !99
  %i.chq = getelementptr inbounds nuw i8, ptr %i.chf, i64 2
  store i8 10, ptr %i.chp, align 1, !tbaa !99
  %i.chr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.chs = load ptr, ptr %i.chr, align 8, !tbaa !99 ; 2 uses
  br i1 %i.chj, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chs, i64 16
  %i.chu = load ptr, ptr %i.cht, align 8, !tbaa !103
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.pn.i = phi ptr [ %i.chu, %bb.in ], [ %i.chs, %bb.im ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.chv = load ptr, ptr %.in.i, align 8, !tbaa !103
  %i.chw = and i32 %2, 16
  %.not964 = icmp eq i32 %i.chw, 0
  %i.chx = and i32 %2, 8
  %.not965 = icmp eq i32 %i.chx, 0
  br label %.outer1135

.outer1135:                                       ; preds = %.outer1135.backedge, %bb.io
  %.0788.ph = phi ptr [ %0, %bb.io ], [ %.0788.ph.be, %.outer1135.backedge ] ; 2 uses
  %.0787.ph = phi i64 [ %i.chn, %bb.io ], [ %.0787.ph.be, %.outer1135.backedge ]
  %.0785.ph = phi i8 [ %i.chk, %bb.io ], [ %.0785.ph.be, %.outer1135.backedge ] ; 3 uses
  %.0503.i.ph = phi ptr [ %i.chv, %bb.io ], [ %.0503.i.ph.be, %.outer1135.backedge ]
  %.0489.i.ph = phi ptr [ %i.chf, %bb.io ], [ %.0489.i.ph.be, %.outer1135.backedge ]
  %.0478.i.ph = phi ptr [ %i.chq, %bb.io ], [ %.0478.i.ph.be, %.outer1135.backedge ]
  %.0467.i.ph = phi ptr [ %i.chg, %bb.io ], [ %.0467.i.ph.be, %.outer1135.backedge ]
  %.0456.i.ph = phi ptr [ %i.chg, %bb.io ], [ %.0456.i.ph.be, %.outer1135.backedge ]
  %.0454.i.ph = phi i64 [ %i.che, %bb.io ], [ %.0454.i.ph.be, %.outer1135.backedge ]
  %.0.i.ph = phi i64 [ 1, %bb.io ], [ %.0.i.ph.be, %.outer1135.backedge ] ; 29 uses
  %i.chy = zext nneg i8 %.0785.ph to i32          ; 6 uses
  %i.chz = shl i64 %.0.i.ph, 2                    ; 2 uses
  %i.cia = add i64 %i.chz, 32                     ; 2 uses
  %i.cib = add i64 %i.chz, 16                     ; 4 uses
  %.not.i851.i20943132 = icmp eq i64 %.0.i.ph, 0
  %.not.i855.i21013133 = icmp eq i64 %.0.i.ph, 0
  %.not.i835.i21883137 = icmp eq i64 %.0.i.ph, 0
  %.not.i839.i21943138 = icmp eq i64 %.0.i.ph, 0
  %.not.i847.i22003140 = icmp eq i64 %.0.i.ph, 0
  %i.cic = add i64 %.0.i.ph, -1                   ; 6 uses
  %xtraiter = and i64 %.0.i.ph, 7                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cid = icmp ult i64 %i.cic, 7
  %xtraiter5915 = and i64 %.0.i.ph, 7             ; 2 uses
  %lcmp.mod5916.not = icmp eq i64 %xtraiter5915, 0
  %i.cie = icmp ult i64 %i.cic, 7
  %xtraiter5935 = and i64 %.0.i.ph, 7             ; 2 uses
  %lcmp.mod5936.not = icmp eq i64 %xtraiter5935, 0
  %i.cif = icmp ult i64 %i.cic, 7
  %xtraiter5938 = and i64 %.0.i.ph, 7             ; 2 uses
  %lcmp.mod5939.not = icmp eq i64 %xtraiter5938, 0
  %i.cig = icmp ult i64 %i.cic, 7
  %xtraiter5941.a = and i64 %.0.i.ph, 7           ; 2 uses
  %lcmp.mod5942.not.a = icmp eq i64 %xtraiter5941.a, 0
  %i.cih = icmp ult i64 %i.cic, 7
  br label %bb.ip

bb.ip:                                            ; preds = %.outer1135, %bb.sh
  %.0787 = phi i64 [ %i.gaa, %bb.sh ], [ %.0787.ph, %.outer1135 ] ; 7 uses
  %.0503.i = phi ptr [ %i.gae, %bb.sh ], [ %.0503.i.ph, %.outer1135 ] ; 10 uses
  %.0489.i = phi ptr [ %.8497.i, %bb.sh ], [ %.0489.i.ph, %.outer1135 ] ; 29 uses
  %.0478.i = phi ptr [ %.9487.i, %bb.sh ], [ %.0478.i.ph, %.outer1135 ] ; 21 uses
  %.0467.i = phi ptr [ %.8475.i, %bb.sh ], [ %.0467.i.ph, %.outer1135 ] ; 14 uses
  %.0456.i = phi ptr [ %.8464.i, %bb.sh ], [ %.0456.i.ph, %.outer1135 ] ; 21 uses
  %.0454.i = phi i64 [ %.8.i, %bb.sh ], [ %.0454.i.ph, %.outer1135 ] ; 28 uses
  %i.cii = load i64, ptr %.0503.i, align 8, !tbaa !98 ; 5 uses
  %i.cij = trunc i64 %i.cii to i8                 ; 2 uses
  %i.cik = and i8 %i.cij, 7                       ; 3 uses
  switch i8 %i.cik, label %bb.rh [
    i8 5, label %bb.iq
    i8 4, label %bb.ni
  ]

bb.iq:                                            ; preds = %bb.ip
  %i.cil = trunc i64 %.0787 to i32                ; 2 uses
  %i.cim = xor i32 %i.cil, -1
  %i.cin = and i32 %i.chy, %i.cim
  %.not532.i = icmp eq i32 %i.cin, 0              ; 2 uses
  %i.cio = and i32 %i.chy, %i.cil
  %.not533.i = icmp ne i32 %i.cio, 0              ; 2 uses
  %i.cip = lshr i64 %i.cii, 8                     ; 9 uses
  %i.ciq = getelementptr inbounds nuw i8, ptr %.0503.i, i64 8
  %i.cir = load ptr, ptr %i.ciq, align 8, !tbaa !99 ; 7 uses
  %i.cis = ptrtoaddr ptr %i.cir to i64            ; 4 uses
  %i.cit = mul nuw nsw i64 %i.cip, 6
  %i.ciu = select i1 %.not533.i, i64 16, i64 %i.cib
  %i.civ = add i64 %i.ciu, %i.cit                 ; 2 uses
  %i.ciw = getelementptr inbounds nuw i8, ptr %.0478.i, i64 %i.civ
  %.not534.i = icmp ult ptr %i.ciw, %.0456.i
  br i1 %.not534.i, label %bb.it, label %bb.ir, !prof !61

bb.ir:                                            ; preds = %bb.iq
  %i.cix = lshr i64 %.0454.i, 1
  %i.ciy = tail call i64 @llvm.umax.i64(i64 %i.cix, i64 %i.civ)
  %i.ciz = add i64 %i.ciy, 15
  %i.cja = and i64 %i.ciz, -16
  %i.cjb = add i64 %i.cja, %.0454.i               ; 4 uses
  %i.cjc = tail call noundef ptr %.sroa.6494.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0489.i, i64 noundef %.0454.i, i64 noundef %i.cjb), !inline_history !338 ; 6 uses
  %.not535.i = icmp eq ptr %i.cjc, null
  br i1 %.not535.i, label %.loopexit1130, label %bb.is, !prof !44

bb.is:                                            ; preds = %bb.ir
  %i.cjd = ptrtoint ptr %.0467.i to i64
  %i.cje = ptrtoint ptr %.0456.i to i64           ; 2 uses
  %i.cjf = sub i64 %i.cjd, %i.cje                 ; 2 uses
  %i.cjg = sub i64 %i.cjb, %i.cjf
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjc, i64 %i.cjg ; 2 uses
  %i.cji = ptrtoint ptr %.0489.i to i64           ; 2 uses
  %i.cjj = sub i64 %i.cje, %i.cji
  %i.cjk = getelementptr inbounds i8, ptr %i.cjc, i64 %i.cjj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cjh, ptr nonnull align 1 %i.cjk, i64 %i.cjf, i1 false)
  %i.cjl = ptrtoint ptr %.0478.i to i64
  %i.cjm = sub i64 %i.cjl, %i.cji
  %i.cjn = getelementptr inbounds i8, ptr %i.cjc, i64 %i.cjm
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjc, i64 %i.cjb
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.iq
  %.1490.i = phi ptr [ %i.cjc, %bb.is ], [ %.0489.i, %bb.iq ] ; 2 uses
  %.1479.i = phi ptr [ %i.cjn, %bb.is ], [ %.0478.i, %bb.iq ] ; 3 uses
  %.1468.i = phi ptr [ %i.cjo, %bb.is ], [ %.0467.i, %bb.iq ]
  %.1457.i = phi ptr [ %i.cjh, %bb.is ], [ %.0456.i, %bb.iq ]
  %.1455.i = phi i64 [ %i.cjb, %bb.is ], [ %.0454.i, %bb.iq ]
  %.not.i855.i2101 = select i1 %.not533.i, i1 true, i1 %.not.i855.i21013133
  br i1 %.not.i855.i2101, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i, label %select.unfold836.preheader

select.unfold836.preheader:                       ; preds = %bb.it
  br i1 %lcmp.mod5916.not, label %select.unfold836.prol.loopexit, label %select.unfold836.prol

select.unfold836.prol:                            ; preds = %select.unfold836.preheader, %select.unfold836.prol
  %.0.i854.i2103.prol = phi ptr [ %i.cjq, %select.unfold836.prol ], [ %.1479.i, %select.unfold836.preheader ] ; 2 uses
  %.04.i853.i2102.prol = phi i64 [ %i.cjp, %select.unfold836.prol ], [ %.0.i.ph, %select.unfold836.preheader ]
  %prol.iter5917 = phi i64 [ %prol.iter5917.next, %select.unfold836.prol ], [ 0, %select.unfold836.preheader ]
  %i.cjp = add i64 %.04.i853.i2102.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i854.i2103.prol, align 1
  %i.cjq = getelementptr inbounds nuw i8, ptr %.0.i854.i2103.prol, i64 %i.chb ; 3 uses
  %prol.iter5917.next = add i64 %prol.iter5917, 1 ; 2 uses
  %prol.iter5917.cmp.not = icmp eq i64 %prol.iter5917.next, %xtraiter5915
  br i1 %prol.iter5917.cmp.not, label %select.unfold836.prol.loopexit, label %select.unfold836.prol, !llvm.loop !339

select.unfold836.prol.loopexit:                   ; preds = %select.unfold836.prol, %select.unfold836.preheader
  %.lcssa5687.unr = phi ptr [ poison, %select.unfold836.preheader ], [ %i.cjq, %select.unfold836.prol ]
  %.0.i854.i2103.unr = phi ptr [ %.1479.i, %select.unfold836.preheader ], [ %i.cjq, %select.unfold836.prol ]
  %.04.i853.i2102.unr = phi i64 [ %.0.i.ph, %select.unfold836.preheader ], [ %i.cjp, %select.unfold836.prol ]
  br i1 %i.cie, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i, label %select.unfold836

select.unfold836:                                 ; preds = %select.unfold836.prol.loopexit, %select.unfold836
  %.0.i854.i2103 = phi ptr [ %i.cjz, %select.unfold836 ], [ %.0.i854.i2103.unr, %select.unfold836.prol.loopexit ] ; 2 uses
  %.04.i853.i2102 = phi i64 [ %i.cjy, %select.unfold836 ], [ %.04.i853.i2102.unr, %select.unfold836.prol.loopexit ]
  store i32 538976288, ptr %.0.i854.i2103, align 1
  %i.cjr = getelementptr inbounds nuw i8, ptr %.0.i854.i2103, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.cjr, align 1
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjr, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.cjs, align 1
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.cjt, align 1
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjt, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.cju, align 1
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cju, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.cjv, align 1
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjv, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.cjw, align 1
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjw, i64 %i.chb ; 2 uses
  %i.cjy = add i64 %.04.i853.i2102, -8            ; 2 uses
  store i32 538976288, ptr %i.cjx, align 1
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjx, i64 %i.chb ; 2 uses
  %.not.i855.i.7 = icmp eq i64 %i.cjy, 0
  br i1 %.not.i855.i.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i, label %select.unfold836, !llvm.loop !36

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i: ; preds = %select.unfold836.prol.loopexit, %select.unfold836, %bb.it
  %.0.i854.i.lcssa = phi ptr [ %.1479.i, %bb.it ], [ %.lcssa5687.unr, %select.unfold836.prol.loopexit ], [ %i.cjz, %select.unfold836 ] ; 5 uses
  br i1 %i.cgy, label %bb.la, label %.split.i, !prof !61

.split.i:                                         ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cir, i64 %i.cip ; 3 uses
  store i8 34, ptr %.0.i854.i.lcssa, align 1, !tbaa !99
  %i.ckb = ptrtoint ptr %i.cka to i64             ; 4 uses
  %i.ckc = add i64 %i.cip, %i.cis
  br label %bb.iu

bb.iu:                                            ; preds = %bb.kf, %.split.i
  %.pn.i570.i = phi ptr [ %.0.i854.i.lcssa, %.split.i ], [ %.8258.i583.i, %bb.kf ]
  %.0243.i571.i = phi ptr [ %i.cir, %.split.i ], [ %i.crv, %bb.kf ] ; 3 uses
  %.0250.i572.i = getelementptr inbounds nuw i8, ptr %.pn.i570.i, i64 1 ; 2 uses
  %i.ckd = ptrtoint ptr %.0243.i571.i to i64
  %i.cke = sub i64 %i.ckb, %i.ckd                 ; 2 uses
  %i.ckf = icmp sgt i64 %i.cke, 15
  br i1 %i.ckf, label %.lr.ph2122, label %.preheader1120

.preheader1120:                                   ; preds = %bb.jk, %bb.iu
  %.pre-phi2987 = phi i64 [ %i.cke, %bb.iu ], [ %i.cnl, %bb.jk ]
  %.1251.i573.i.lcssa = phi ptr [ %.0250.i572.i, %bb.iu ], [ %i.cni, %bb.jk ] ; 2 uses
  %.1244.i574.i.lcssa = phi ptr [ %.0243.i571.i, %bb.iu ], [ %i.cnj, %bb.jk ] ; 2 uses
  %i.ckg = icmp sgt i64 %.pre-phi2987, 3
  br i1 %i.ckg, label %.lr.ph2128, label %.preheader1118

.lr.ph2122:                                       ; preds = %bb.iu, %bb.jk
  %.1244.i574.i2120 = phi ptr [ %i.cnj, %bb.jk ], [ %.0243.i571.i, %bb.iu ] ; 46 uses
  %.1251.i573.i2119 = phi ptr [ %i.cni, %bb.jk ], [ %.0250.i572.i, %bb.iu ] ; 30 uses
  %i.ckh = load i8, ptr %.1244.i574.i2120, align 1, !tbaa !99 ; 2 uses
  %i.cki = zext i8 %i.ckh to i64
  %i.ckj = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cki
  %i.ckk = load i8, ptr %i.ckj, align 1, !tbaa !99
  %.not277.i641.i = icmp eq i8 %i.ckk, 0
  br i1 %.not277.i641.i, label %bb.iv, label %.preheader1115.preheader, !prof !61

bb.iv:                                            ; preds = %.lr.ph2122
  %i.ckl = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 1
  %i.ckm = load i8, ptr %i.ckl, align 1, !tbaa !99
  %i.ckn = zext i8 %i.ckm to i64
  %i.cko = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.ckn
  %i.ckp = load i8, ptr %i.cko, align 1, !tbaa !99
  %.not278.i642.i = icmp eq i8 %i.ckp, 0
  br i1 %.not278.i642.i, label %bb.iw, label %.loopexit1122, !prof !61

bb.iw:                                            ; preds = %bb.iv
  %i.ckq = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 2
  %i.ckr = load i8, ptr %i.ckq, align 1, !tbaa !99
  %i.cks = zext i8 %i.ckr to i64
  %i.ckt = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cks
  %i.cku = load i8, ptr %i.ckt, align 1, !tbaa !99
  %.not279.i643.i = icmp eq i8 %i.cku, 0
  br i1 %.not279.i643.i, label %bb.ix, label %.loopexit1123, !prof !61

bb.ix:                                            ; preds = %bb.iw
  %i.ckv = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 3
  %i.ckw = load i8, ptr %i.ckv, align 1, !tbaa !99
  %i.ckx = zext i8 %i.ckw to i64
  %i.cky = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.ckx
  %i.ckz = load i8, ptr %i.cky, align 1, !tbaa !99
  %.not280.i644.i = icmp eq i8 %i.ckz, 0
  br i1 %.not280.i644.i, label %bb.iy, label %.loopexit1124, !prof !61

bb.iy:                                            ; preds = %bb.ix
  %i.cla = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 4
  %i.clb = load i8, ptr %i.cla, align 1, !tbaa !99
  %i.clc = zext i8 %i.clb to i64
  %i.cld = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.clc
  %i.cle = load i8, ptr %i.cld, align 1, !tbaa !99
  %.not281.i645.i = icmp eq i8 %i.cle, 0
  br i1 %.not281.i645.i, label %bb.iz, label %bb.jr, !prof !61

bb.iz:                                            ; preds = %bb.iy
  %i.clf = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 5
  %i.clg = load i8, ptr %i.clf, align 1, !tbaa !99
  %i.clh = zext i8 %i.clg to i64
  %i.cli = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.clh
  %i.clj = load i8, ptr %i.cli, align 1, !tbaa !99
  %.not282.i646.i = icmp eq i8 %i.clj, 0
  br i1 %.not282.i646.i, label %bb.ja, label %bb.js, !prof !61

bb.ja:                                            ; preds = %bb.iz
  %i.clk = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 6
  %i.cll = load i8, ptr %i.clk, align 1, !tbaa !99
  %i.clm = zext i8 %i.cll to i64
  %i.cln = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.clm
  %i.clo = load i8, ptr %i.cln, align 1, !tbaa !99
  %.not283.i647.i = icmp eq i8 %i.clo, 0
  br i1 %.not283.i647.i, label %bb.jb, label %bb.jt, !prof !61

bb.jb:                                            ; preds = %bb.ja
  %i.clp = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 7
  %i.clq = load i8, ptr %i.clp, align 1, !tbaa !99
  %i.clr = zext i8 %i.clq to i64
  %i.cls = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.clr
  %i.clt = load i8, ptr %i.cls, align 1, !tbaa !99
  %.not284.i648.i = icmp eq i8 %i.clt, 0
  br i1 %.not284.i648.i, label %bb.jc, label %bb.ju, !prof !61

bb.jc:                                            ; preds = %bb.jb
  %i.clu = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 8
  %i.clv = load i8, ptr %i.clu, align 1, !tbaa !99
  %i.clw = zext i8 %i.clv to i64
  %i.clx = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.clw
  %i.cly = load i8, ptr %i.clx, align 1, !tbaa !99
  %.not285.i649.i = icmp eq i8 %i.cly, 0
  br i1 %.not285.i649.i, label %bb.jd, label %bb.jv, !prof !61

bb.jd:                                            ; preds = %bb.jc
  %i.clz = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 9
  %i.cma = load i8, ptr %i.clz, align 1, !tbaa !99
  %i.cmb = zext i8 %i.cma to i64
  %i.cmc = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cmb
  %i.cmd = load i8, ptr %i.cmc, align 1, !tbaa !99
  %.not286.i650.i = icmp eq i8 %i.cmd, 0
  br i1 %.not286.i650.i, label %bb.je, label %bb.jw, !prof !61

bb.je:                                            ; preds = %bb.jd
  %i.cme = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 10
  %i.cmf = load i8, ptr %i.cme, align 1, !tbaa !99
  %i.cmg = zext i8 %i.cmf to i64
  %i.cmh = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cmg
  %i.cmi = load i8, ptr %i.cmh, align 1, !tbaa !99
  %.not287.i651.i = icmp eq i8 %i.cmi, 0
  br i1 %.not287.i651.i, label %bb.jf, label %bb.jx, !prof !61

bb.jf:                                            ; preds = %bb.je
  %i.cmj = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 11
  %i.cmk = load i8, ptr %i.cmj, align 1, !tbaa !99
  %i.cml = zext i8 %i.cmk to i64
  %i.cmm = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cml
  %i.cmn = load i8, ptr %i.cmm, align 1, !tbaa !99
  %.not288.i652.i = icmp eq i8 %i.cmn, 0
  br i1 %.not288.i652.i, label %bb.jg, label %bb.jy, !prof !61

bb.jg:                                            ; preds = %bb.jf
  %i.cmo = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 12
  %i.cmp = load i8, ptr %i.cmo, align 1, !tbaa !99
  %i.cmq = zext i8 %i.cmp to i64
  %i.cmr = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cmq
  %i.cms = load i8, ptr %i.cmr, align 1, !tbaa !99
  %.not289.i653.i = icmp eq i8 %i.cms, 0
  br i1 %.not289.i653.i, label %bb.jh, label %bb.jz, !prof !61

bb.jh:                                            ; preds = %bb.jg
  %i.cmt = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 13
  %i.cmu = load i8, ptr %i.cmt, align 1, !tbaa !99
  %i.cmv = zext i8 %i.cmu to i64
  %i.cmw = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cmv
  %i.cmx = load i8, ptr %i.cmw, align 1, !tbaa !99
  %.not290.i654.i = icmp eq i8 %i.cmx, 0
  br i1 %.not290.i654.i, label %bb.ji, label %bb.ka, !prof !61

bb.ji:                                            ; preds = %bb.jh
  %i.cmy = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 14
  %i.cmz = load i8, ptr %i.cmy, align 1, !tbaa !99
  %i.cna = zext i8 %i.cmz to i64
  %i.cnb = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cna
  %i.cnc = load i8, ptr %i.cnb, align 1, !tbaa !99
  %.not291.i655.i = icmp eq i8 %i.cnc, 0
  br i1 %.not291.i655.i, label %bb.jj, label %bb.kb, !prof !61

bb.jj:                                            ; preds = %bb.ji
  %i.cnd = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 15
  %i.cne = load i8, ptr %i.cnd, align 1, !tbaa !99
  %i.cnf = zext i8 %i.cne to i64
  %i.cng = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cnf
  %i.cnh = load i8, ptr %i.cng, align 1, !tbaa !99
  %.not292.i656.i = icmp eq i8 %i.cnh, 0
  br i1 %.not292.i656.i, label %bb.jk, label %bb.kc, !prof !61

bb.jk:                                            ; preds = %bb.jj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i574.i2120, i64 16, i1 false)
  %i.cni = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 16 ; 2 uses
  %i.cnj = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 16 ; 3 uses
  %i.cnk = ptrtoint ptr %i.cnj to i64
  %i.cnl = sub i64 %i.ckb, %i.cnk                 ; 2 uses
  %i.cnm = icmp sgt i64 %i.cnl, 15
  br i1 %i.cnm, label %.lr.ph2122, label %.preheader1120, !llvm.loop !31

.preheader1118:                                   ; preds = %bb.jp, %.preheader1120
  %.2252.i575.i.lcssa = phi ptr [ %.1251.i573.i.lcssa, %.preheader1120 ], [ %i.cou, %bb.jp ] ; 3 uses
  %.2245.i576.i.lcssa = phi ptr [ %.1244.i574.i.lcssa, %.preheader1120 ], [ %i.cov, %bb.jp ] ; 5 uses
  %i.cnn = icmp ugt ptr %i.cka, %.2245.i576.i.lcssa
  br i1 %i.cnn, label %.lr.ph2133.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i

.lr.ph2133.preheader:                             ; preds = %.preheader1118
  %.2245.i576.i.lcssa2882 = ptrtoaddr ptr %.2245.i576.i.lcssa to i64 ; 2 uses
  %i.cno = getelementptr i8, ptr %.2245.i576.i.lcssa, i64 %i.cip
  %scevgep2881 = getelementptr i8, ptr %i.cno, i64 %i.cis
  %i.cnp = sub i64 0, %.2245.i576.i.lcssa2882
  %scevgep2883 = getelementptr i8, ptr %scevgep2881, i64 %i.cnp
  %i.cnq = sub i64 %i.ckc, %.2245.i576.i.lcssa2882
  %i.cnr = freeze i64 %i.cnq                      ; 2 uses
  %i.cns = add i64 %i.cnr, -1
  %xtraiter5918 = and i64 %i.cnr, 3               ; 2 uses
  %lcmp.mod5919.not = icmp eq i64 %xtraiter5918, 0
  br i1 %lcmp.mod5919.not, label %.lr.ph2133.prol.loopexit, label %.lr.ph2133.prol

.lr.ph2133.prol:                                  ; preds = %.lr.ph2133.preheader, %bb.jl
  %.3246.i578.i2132.prol = phi ptr [ %i.cnx, %bb.jl ], [ %.2245.i576.i.lcssa, %.lr.ph2133.preheader ] ; 3 uses
  %.3253.i577.i2131.prol = phi ptr [ %i.cny, %bb.jl ], [ %.2252.i575.i.lcssa, %.lr.ph2133.preheader ] ; 3 uses
  %prol.iter5920 = phi i64 [ %prol.iter5920.next, %bb.jl ], [ 0, %.lr.ph2133.preheader ]
  %i.cnt = load i8, ptr %.3246.i578.i2132.prol, align 1, !tbaa !99 ; 2 uses
  %i.cnu = zext i8 %i.cnt to i64
end_hunk_14
begin_hunk_15_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.coi = load i8, ptr %i.coh, align 1, !tbaa !99
  %.not274.i632.i = icmp eq i8 %i.coi, 0
  br i1 %.not274.i632.i, label %bb.jn, label %.loopexit1122, !prof !61

bb.jn:                                            ; preds = %bb.jm
  %i.coj = getelementptr inbounds nuw i8, ptr %.2245.i576.i2127, i64 2
  %i.cok = load i8, ptr %i.coj, align 1, !tbaa !99
  %i.col = zext i8 %i.cok to i64
  %i.com = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.col
  %i.con = load i8, ptr %i.com, align 1, !tbaa !99
  %.not275.i635.i = icmp eq i8 %i.con, 0
  br i1 %.not275.i635.i, label %bb.jo, label %.loopexit1123, !prof !61

bb.jo:                                            ; preds = %bb.jn
  %i.coo = getelementptr inbounds nuw i8, ptr %.2245.i576.i2127, i64 3
  %i.cop = load i8, ptr %i.coo, align 1, !tbaa !99
  %i.coq = zext i8 %i.cop to i64
  %i.cor = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.coq
  %i.cos = load i8, ptr %i.cor, align 1, !tbaa !99
  %.not276.i638.i = icmp eq i8 %i.cos, 0
  br i1 %.not276.i638.i, label %bb.jp, label %.loopexit1124, !prof !61

bb.jp:                                            ; preds = %bb.jo
  %i.cot = load i32, ptr %.2245.i576.i2127, align 1
  store i32 %i.cot, ptr %.2252.i575.i2126, align 1
  %i.cou = getelementptr inbounds nuw i8, ptr %.2252.i575.i2126, i64 4 ; 2 uses
  %i.cov = getelementptr inbounds nuw i8, ptr %.2245.i576.i2127, i64 4 ; 3 uses
  %i.cow = ptrtoint ptr %i.cov to i64
  %i.cox = sub i64 %i.ckb, %i.cow
  %i.coy = icmp sgt i64 %i.cox, 3
  br i1 %i.coy, label %.lr.ph2128, label %.preheader1118, !llvm.loop !32

.lr.ph2133:                                       ; preds = %.lr.ph2133.prol.loopexit, %bb.jq
  %.3246.i578.i2132 = phi ptr [ %i.cpv, %bb.jq ], [ %.3246.i578.i2132.unr, %.lr.ph2133.prol.loopexit ] ; 9 uses
  %.3253.i577.i2131 = phi ptr [ %i.cpw, %bb.jq ], [ %.3253.i577.i2131.unr, %.lr.ph2133.prol.loopexit ] ; 6 uses
  %i.coz = load i8, ptr %.3246.i578.i2132, align 1, !tbaa !99 ; 2 uses
  %i.cpa = zext i8 %i.coz to i64
  %i.cpb = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cpa
  %i.cpc = load i8, ptr %i.cpb, align 1, !tbaa !99
  %.not.i580.i = icmp eq i8 %i.cpc, 0
  br i1 %.not.i580.i, label %.lr.ph2133.1, label %.preheader1115.preheader, !prof !61

.lr.ph2133.1:                                     ; preds = %.lr.ph2133
  %i.cpd = getelementptr inbounds nuw i8, ptr %.3246.i578.i2132, i64 1
  %i.cpe = getelementptr inbounds nuw i8, ptr %.3253.i577.i2131, i64 1 ; 2 uses
  store i8 %i.coz, ptr %.3253.i577.i2131, align 1, !tbaa !99
  %i.cpf = load i8, ptr %i.cpd, align 1, !tbaa !99 ; 2 uses
  %i.cpg = zext i8 %i.cpf to i64
  %i.cph = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cpg
  %i.cpi = load i8, ptr %i.cph, align 1, !tbaa !99
  %.not.i580.i.1 = icmp eq i8 %i.cpi, 0
  br i1 %.not.i580.i.1, label %.lr.ph2133.2, label %.preheader1115.preheader.loopexit.loopexit.split.loop.exit6647, !prof !61

.lr.ph2133.2:                                     ; preds = %.lr.ph2133.1
  %i.cpj = getelementptr inbounds nuw i8, ptr %.3246.i578.i2132, i64 2
  %i.cpk = getelementptr inbounds nuw i8, ptr %.3253.i577.i2131, i64 2 ; 2 uses
  store i8 %i.cpf, ptr %i.cpe, align 1, !tbaa !99
  %i.cpl = load i8, ptr %i.cpj, align 1, !tbaa !99 ; 2 uses
  %i.cpm = zext i8 %i.cpl to i64
  %i.cpn = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cpm
  %i.cpo = load i8, ptr %i.cpn, align 1, !tbaa !99
  %.not.i580.i.2 = icmp eq i8 %i.cpo, 0
  br i1 %.not.i580.i.2, label %.lr.ph2133.3, label %.preheader1115.preheader.loopexit.loopexit.split.loop.exit6644, !prof !61

.lr.ph2133.3:                                     ; preds = %.lr.ph2133.2
  %i.cpp = getelementptr inbounds nuw i8, ptr %.3246.i578.i2132, i64 3
  %i.cpq = getelementptr inbounds nuw i8, ptr %.3253.i577.i2131, i64 3 ; 2 uses
  store i8 %i.cpl, ptr %i.cpk, align 1, !tbaa !99
  %i.cpr = load i8, ptr %i.cpp, align 1, !tbaa !99 ; 2 uses
  %i.cps = zext i8 %i.cpr to i64
  %i.cpt = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cps
  %i.cpu = load i8, ptr %i.cpt, align 1, !tbaa !99
  %.not.i580.i.3 = icmp eq i8 %i.cpu, 0
  br i1 %.not.i580.i.3, label %bb.jq, label %.preheader1115.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.jq:                                            ; preds = %.lr.ph2133.3
  %i.cpv = getelementptr inbounds nuw i8, ptr %.3246.i578.i2132, i64 4 ; 2 uses
  %i.cpw = getelementptr inbounds nuw i8, ptr %.3253.i577.i2131, i64 4 ; 2 uses
  store i8 %i.cpr, ptr %i.cpq, align 1, !tbaa !99
  %exitcond.not.3 = icmp eq ptr %i.cpv, %scevgep2883
  br i1 %exitcond.not.3, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %.lr.ph2133, !llvm.loop !33

.loopexit1122:                                    ; preds = %bb.iv, %bb.jm
  %i.cpx = phi i8 [ %i.coa, %bb.jm ], [ %i.ckh, %bb.iv ]
  %.5255.i633.i = phi ptr [ %.2252.i575.i2126, %bb.jm ], [ %.1251.i573.i2119, %bb.iv ] ; 2 uses
  %.5248.i634.i = phi ptr [ %.2245.i576.i2127, %bb.jm ], [ %.1244.i574.i2120, %bb.iv ]
  store i8 %i.cpx, ptr %.5255.i633.i, align 1
  %i.cpy = getelementptr inbounds nuw i8, ptr %.5255.i633.i, i64 1
  %i.cpz = getelementptr inbounds nuw i8, ptr %.5248.i634.i, i64 1
  br label %.preheader1115.preheader

.loopexit1123:                                    ; preds = %bb.iw, %bb.jn
  %.6256.i636.i = phi ptr [ %.2252.i575.i2126, %bb.jn ], [ %.1251.i573.i2119, %bb.iw ] ; 2 uses
  %.6.i637.i = phi ptr [ %.2245.i576.i2127, %bb.jn ], [ %.1244.i574.i2120, %bb.iw ] ; 2 uses
  %i.cqa = load i16, ptr %.6.i637.i, align 1
  store i16 %i.cqa, ptr %.6256.i636.i, align 1
  %i.cqb = getelementptr inbounds nuw i8, ptr %.6256.i636.i, i64 2
  %i.cqc = getelementptr inbounds nuw i8, ptr %.6.i637.i, i64 2
  br label %.preheader1115.preheader

.loopexit1124:                                    ; preds = %bb.ix, %bb.jo
  %.7257.i639.i = phi ptr [ %.2252.i575.i2126, %bb.jo ], [ %.1251.i573.i2119, %bb.ix ] ; 2 uses
  %.7.i640.i = phi ptr [ %.2245.i576.i2127, %bb.jo ], [ %.1244.i574.i2120, %bb.ix ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i639.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i640.i, i64 3, i1 false)
  %i.cqd = getelementptr inbounds nuw i8, ptr %.7257.i639.i, i64 3
  %i.cqe = getelementptr inbounds nuw i8, ptr %.7.i640.i, i64 3
  br label %.preheader1115.preheader

bb.jr:                                            ; preds = %bb.iy
  %i.cqf = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 4
  %i.cqg = load i32, ptr %.1244.i574.i2120, align 1
  store i32 %i.cqg, ptr %.1251.i573.i2119, align 1
  %i.cqh = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 4
  br label %.preheader1115.preheader

bb.js:                                            ; preds = %bb.iz
  %i.cqi = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i574.i2120, i64 5, i1 false)
  %i.cqj = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 5
  br label %.preheader1115.preheader

bb.jt:                                            ; preds = %bb.ja
  %i.cqk = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i574.i2120, i64 6, i1 false)
  %i.cql = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 6
  br label %.preheader1115.preheader

bb.ju:                                            ; preds = %bb.jb
  %i.cqm = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i574.i2120, i64 7, i1 false)
  %i.cqn = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 7
  br label %.preheader1115.preheader

bb.jv:                                            ; preds = %bb.jc
  %i.cqo = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 8
  %i.cqp = load i64, ptr %.1244.i574.i2120, align 1
  store i64 %i.cqp, ptr %.1251.i573.i2119, align 1
  %i.cqq = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 8
  br label %.preheader1115.preheader

bb.jw:                                            ; preds = %bb.jd
  %i.cqr = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i574.i2120, i64 9, i1 false)
  %i.cqs = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 9
  br label %.preheader1115.preheader

bb.jx:                                            ; preds = %bb.je
  %i.cqt = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i574.i2120, i64 10, i1 false)
  %i.cqu = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 10
  br label %.preheader1115.preheader

bb.jy:                                            ; preds = %bb.jf
  %i.cqv = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i574.i2120, i64 11, i1 false)
  %i.cqw = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 11
  br label %.preheader1115.preheader

bb.jz:                                            ; preds = %bb.jg
  %i.cqx = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i574.i2120, i64 12, i1 false)
  %i.cqy = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 12
  br label %.preheader1115.preheader

bb.ka:                                            ; preds = %bb.jh
  %i.cqz = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i574.i2120, i64 13, i1 false)
  %i.cra = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 13
  br label %.preheader1115.preheader

bb.kb:                                            ; preds = %bb.ji
  %i.crb = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i574.i2120, i64 14, i1 false)
  %i.crc = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 14
  br label %.preheader1115.preheader

bb.kc:                                            ; preds = %bb.jj
  %i.crd = getelementptr inbounds nuw i8, ptr %.1244.i574.i2120, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i573.i2119, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i574.i2120, i64 15, i1 false)
  %i.cre = getelementptr inbounds nuw i8, ptr %.1251.i573.i2119, i64 15
  br label %.preheader1115.preheader

.preheader1115.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2133.3
  %i.crf = getelementptr inbounds nuw i8, ptr %.3246.i578.i2132, i64 3
  br label %.preheader1115.preheader

.preheader1115.preheader.loopexit.loopexit.split.loop.exit6644: ; preds = %.lr.ph2133.2
  %i.crg = getelementptr inbounds nuw i8, ptr %.3246.i578.i2132, i64 2
  br label %.preheader1115.preheader

.preheader1115.preheader.loopexit.loopexit.split.loop.exit6647: ; preds = %.lr.ph2133.1
  %i.crh = getelementptr inbounds nuw i8, ptr %.3246.i578.i2132, i64 1
  br label %.preheader1115.preheader

.preheader1115.preheader:                         ; preds = %.lr.ph2122, %.lr.ph2128, %.lr.ph2133, %.preheader1115.preheader.loopexit.loopexit.split.loop.exit6647, %.preheader1115.preheader.loopexit.loopexit.split.loop.exit6644, %.preheader1115.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2133.prol, %.loopexit1122, %.loopexit1123, %.loopexit1124, %bb.jr, %bb.js, %bb.jt, %bb.ju, %bb.jv, %bb.jw, %bb.jx, %bb.jy, %bb.jz, %bb.ka, %bb.kb, %bb.kc
  %.8258.i583.i.ph = phi ptr [ %.2252.i575.i2126, %.lr.ph2128 ], [ %.3253.i577.i2131.prol, %.lr.ph2133.prol ], [ %i.cpy, %.loopexit1122 ], [ %i.cqb, %.loopexit1123 ], [ %i.cqd, %.loopexit1124 ], [ %i.cqh, %bb.jr ], [ %i.cqj, %bb.js ], [ %i.cql, %bb.jt ], [ %i.cqn, %bb.ju ], [ %i.cqq, %bb.jv ], [ %i.cqs, %bb.jw ], [ %i.cqu, %bb.jx ], [ %i.cqw, %bb.jy ], [ %i.cqy, %bb.jz ], [ %i.cra, %bb.ka ], [ %i.crc, %bb.kb ], [ %i.cre, %bb.kc ], [ %.3253.i577.i2131, %.lr.ph2133 ], [ %i.cpe, %.preheader1115.preheader.loopexit.loopexit.split.loop.exit6647 ], [ %i.cpk, %.preheader1115.preheader.loopexit.loopexit.split.loop.exit6644 ], [ %i.cpq, %.preheader1115.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i573.i2119, %.lr.ph2122 ]
  %.8.i584.i.ph = phi ptr [ %.2245.i576.i2127, %.lr.ph2128 ], [ %.3246.i578.i2132.prol, %.lr.ph2133.prol ], [ %i.cpz, %.loopexit1122 ], [ %i.cqc, %.loopexit1123 ], [ %i.cqe, %.loopexit1124 ], [ %i.cqf, %bb.jr ], [ %i.cqi, %bb.js ], [ %i.cqk, %bb.jt ], [ %i.cqm, %bb.ju ], [ %i.cqo, %bb.jv ], [ %i.cqr, %bb.jw ], [ %i.cqt, %bb.jx ], [ %i.cqv, %bb.jy ], [ %i.cqx, %bb.jz ], [ %i.cqz, %bb.ka ], [ %i.crb, %bb.kb ], [ %i.crd, %bb.kc ], [ %.3246.i578.i2132, %.lr.ph2133 ], [ %i.crh, %.preheader1115.preheader.loopexit.loopexit.split.loop.exit6647 ], [ %i.crg, %.preheader1115.preheader.loopexit.loopexit.split.loop.exit6644 ], [ %i.crf, %.preheader1115.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i574.i2120, %.lr.ph2122 ]
  br label %.preheader1115

.preheader1115:                                   ; preds = %.preheader1115.backedge, %.preheader1115.preheader
  %.8258.i583.i = phi ptr [ %.8258.i583.i.ph, %.preheader1115.preheader ], [ %.8258.i583.i.be, %.preheader1115.backedge ] ; 34 uses
  %.8.i584.i = phi ptr [ %.8.i584.i.ph, %.preheader1115.preheader ], [ %.8.i584.i.be, %.preheader1115.backedge ] ; 23 uses
  %i.cri = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 4 ; 3 uses
  %i.crj = icmp ugt ptr %i.cri, %i.cka            ; 2 uses
  br i1 %i.crj, label %bb.kd, label %._crit_edge2942, !prof !44

._crit_edge2942:                                  ; preds = %.preheader1115
  %.pre = load i8, ptr %.8.i584.i, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64       ; 2 uses
  %.phi.trans.insert2943 = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %.phi.trans.insert
  %.pre2944 = load i8, ptr %.phi.trans.insert2943, align 1, !tbaa !99
  br label %bb.ke

bb.kd:                                            ; preds = %.preheader1115
  %i.crk = ptrtoint ptr %.8.i584.i to i64
  %i.crl = sub i64 %i.ckb, %i.crk
  %i.crm = load i8, ptr %.8.i584.i, align 1, !tbaa !99 ; 3 uses
  %i.crn = zext i8 %i.crm to i64                  ; 2 uses
  %i.cro = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.crn
  %i.crp = load i8, ptr %i.cro, align 1, !tbaa !99 ; 2 uses
  %i.crq = lshr i8 %i.crp, 1
  %i.crr = zext nneg i8 %i.crq to i64
  %i.crs = icmp slt i64 %i.crl, %i.crr
  br i1 %i.crs, label %bb.kx, label %bb.ke

bb.ke:                                            ; preds = %._crit_edge2942, %bb.kd
  %.pre-phi2988 = phi i64 [ %.phi.trans.insert, %._crit_edge2942 ], [ %i.crn, %bb.kd ]
  %i.crt = phi i8 [ %.pre2944, %._crit_edge2942 ], [ %i.crp, %bb.kd ]
  %i.cru = phi i8 [ %.pre, %._crit_edge2942 ], [ %i.crm, %bb.kd ] ; 2 uses
  switch i8 %i.crt, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i [
    i8 0, label %bb.kf
    i8 4, label %bb.kg
    i8 6, label %bb.ki
    i8 8, label %bb.kn
    i8 2, label %bb.kp
    i8 3, label %bb.kq
    i8 5, label %bb.kr
    i8 7, label %bb.kt
    i8 9, label %bb.kv
    i8 1, label %bb.kx
  ]

bb.kf:                                            ; preds = %bb.ke
  %i.crv = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 1
  store i8 %i.cru, ptr %.8258.i583.i, align 1, !tbaa !99
  br label %bb.iu

bb.kg:                                            ; preds = %bb.ke
  %.sroa.0.0.copyload.i.i99 = load i16, ptr %.8.i584.i, align 1 ; 3 uses
  %i.crw = zext i16 %.sroa.0.0.copyload.i.i99 to i32 ; 2 uses
  %i.crx = and i32 %i.crw, 49376
  %i.cry = icmp ne i32 %i.crx, 32960
  %i.crz = and i32 %i.crw, 30
  %i.csa = icmp eq i32 %i.crz, 0
  %.not315.i627.i = or i1 %i.cry, %i.csa
  %i.csb = trunc i16 %.sroa.0.0.copyload.i.i99 to i8
  br i1 %.not315.i627.i, label %.thread837, label %bb.kh, !prof !44

bb.kh:                                            ; preds = %bb.kg
  store i16 %.sroa.0.0.copyload.i.i99, ptr %.8258.i583.i, align 1
  %i.csc = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 2
  %i.csd = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 2
  br label %.preheader1115.backedge

bb.ki:                                            ; preds = %bb.ke
  br i1 %i.crj, label %bb.kl, label %bb.kj, !prof !44

bb.kj:                                            ; preds = %bb.ki
  %.sroa.0.0.copyload.i333.i622.i = load i32, ptr %.8.i584.i, align 1 ; 4 uses
  %i.cse = and i32 %.sroa.0.0.copyload.i333.i622.i, 12632304
  %i.csf = icmp eq i32 %i.cse, 8421600
  %i.csg = trunc i32 %.sroa.0.0.copyload.i333.i622.i to i8 ; 3 uses
  br i1 %i.csf, label %bb.kk, label %.thread837, !prof !61

bb.kk:                                            ; preds = %bb.kj
  %i.csh = and i32 %.sroa.0.0.copyload.i333.i622.i, 8207
  switch i32 %i.csh, label %.critedge.i623.i [
    i32 8205, label %.thread837
    i32 0, label %.thread837
  ], !prof !150

bb.kl:                                            ; preds = %bb.ki
  %.sroa.0.0.copyload.i663.i = load i16, ptr %.8.i584.i, align 1 ; 2 uses
  %i.csi = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 2
  %i.csj = load i8, ptr %i.csi, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i.i95 = zext i8 %i.csj to i32
  %.sroa.4.0.insert.shift.i.i96 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i95, 16
  %.sroa.0.0.insert.ext.i.i97 = zext i16 %.sroa.0.0.copyload.i663.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i98 = or disjoint i32 %.sroa.4.0.insert.shift.i.i96, %.sroa.0.0.insert.ext.i.i97 ; 2 uses
  %i.csk = and i32 %.sroa.0.0.insert.insert.i.i98, 12632304
  %i.csl = icmp eq i32 %i.csk, 8421600
  %i.csm = trunc i16 %.sroa.0.0.copyload.i663.i to i8 ; 3 uses
  br i1 %i.csl, label %bb.km, label %.thread837, !prof !61

bb.km:                                            ; preds = %bb.kl
  %i.csn = and i32 %.sroa.0.0.insert.ext.i.i97, 8207
  switch i32 %i.csn, label %.critedge.i623.i [
    i32 8205, label %.thread837
    i32 0, label %.thread837
  ], !prof !150

.critedge.i623.i:                                 ; preds = %bb.km, %bb.kk
  %storemerge = phi i32 [ %.sroa.0.0.copyload.i333.i622.i, %bb.kk ], [ %.sroa.0.0.insert.insert.i.i98, %bb.km ]
  store i32 %storemerge, ptr %.8258.i583.i, align 1
  %i.cso = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 3
  %i.csp = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 3
  br label %.preheader1115.backedge

bb.kn:                                            ; preds = %bb.ke
  %.sroa.0.0.copyload.i332.i613.i = load i32, ptr %.8.i584.i, align 1 ; 6 uses
  %i.csq = and i32 %.sroa.0.0.copyload.i332.i613.i, -1061109512
  %i.csr = icmp ne i32 %i.csq, -2139062032
  %i.css = and i32 %.sroa.0.0.copyload.i332.i613.i, 12295
  %.not306.i614.i = icmp eq i32 %i.css, 0
  %or.cond.i615.i = or i1 %i.csr, %.not306.i614.i
  %i.cst = trunc i32 %.sroa.0.0.copyload.i332.i613.i to i8 ; 2 uses
  br i1 %or.cond.i615.i, label %.thread837, label %bb.ko, !prof !151

bb.ko:                                            ; preds = %bb.kn
  %i.csu = and i32 %.sroa.0.0.copyload.i332.i613.i, 4
  %i.csv = icmp ne i32 %i.csu, 0
  %i.csw = and i32 %.sroa.0.0.copyload.i332.i613.i, 12291
  %i.csx = icmp ne i32 %i.csw, 0
  %.not309.i616.i = and i1 %i.csv, %i.csx
  br i1 %.not309.i616.i, label %.thread837, label %.critedge321.i617.i, !prof !44

.critedge321.i617.i:                              ; preds = %bb.ko
  store i32 %.sroa.0.0.copyload.i332.i613.i, ptr %.8258.i583.i, align 1
  %i.csy = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 4
  br label %.preheader1115.backedge

bb.kp:                                            ; preds = %bb.ke
  %i.csz = shl nuw nsw i64 %.pre-phi2988, 1
  %i.cta = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.csz
  %i.ctb = load i16, ptr %i.cta, align 2
  store i16 %i.ctb, ptr %.8258.i583.i, align 1
  %i.ctc = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 2
  %i.ctd = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 1
  br label %.preheader1115.backedge

.preheader1115.backedge:                          ; preds = %bb.kp, %bb.kq, %bb.ky, %bb.kz, %bb.kh, %.critedge.i623.i, %.critedge321.i617.i, %bb.ks, %.critedge326.i599.i, %.critedge330.i595.i
  %.8258.i583.i.be = phi ptr [ %i.cxd, %bb.ky ], [ %i.csc, %bb.kh ], [ %i.cso, %.critedge.i623.i ], [ %i.csy, %.critedge321.i617.i ], [ %i.ctc, %bb.kp ], [ %i.ctk, %bb.kq ], [ %i.cug, %bb.ks ], [ %i.cvd, %.critedge326.i599.i ], [ %i.cwz, %.critedge330.i595.i ], [ %i.cxf, %bb.kz ]
  %.8.i584.i.be = phi ptr [ %i.cxc, %bb.ky ], [ %i.csd, %bb.kh ], [ %i.csp, %.critedge.i623.i ], [ %i.cri, %.critedge321.i617.i ], [ %i.ctd, %bb.kp ], [ %i.ctl, %bb.kq ], [ %i.cuh, %bb.ks ], [ %i.cve, %.critedge326.i599.i ], [ %i.cri, %.critedge330.i595.i ], [ %i.cxg, %bb.kz ]
  br label %.preheader1115

bb.kq:                                            ; preds = %bb.ke
  store i32 808482140, ptr %.8258.i583.i, align 1
  %i.cte = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 4
  %i.ctf = load i8, ptr %.8.i584.i, align 1, !tbaa !99
  %i.ctg = zext i8 %i.ctf to i64
  %i.cth = shl nuw nsw i64 %i.ctg, 1
  %i.cti = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cth
  %i.ctj = load i16, ptr %i.cti, align 2
  store i16 %i.ctj, ptr %i.cte, align 1
  %i.ctk = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 6
  %i.ctl = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 1
  br label %.preheader1115.backedge

bb.kr:                                            ; preds = %bb.ke
  %.sroa.0.0.copyload.i660.i = load i16, ptr %.8.i584.i, align 1 ; 3 uses
  %i.ctm = zext i16 %.sroa.0.0.copyload.i660.i to i32 ; 2 uses
  %i.ctn = and i32 %i.ctm, 49376
  %i.cto = icmp ne i32 %i.ctn, 32960
  %i.ctp = and i32 %i.ctm, 30
  %i.ctq = icmp eq i32 %i.ctp, 0
  %.not303.i607.i = or i1 %i.cto, %i.ctq
  br i1 %.not303.i607.i, label %.thread847, label %bb.ks, !prof !44

bb.ks:                                            ; preds = %bb.kr
  %i.ctr = lshr i16 %.sroa.0.0.copyload.i660.i, 8
  %i.cts = trunc nuw i16 %i.ctr to i8
  %i.ctt = trunc i16 %.sroa.0.0.copyload.i660.i to i8 ; 2 uses
  %.tr304.i608.i = shl i8 %i.ctt, 6
  %i.ctu = and i8 %i.cts, 63
  store i16 30044, ptr %.8258.i583.i, align 1
  %i.ctv = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 2
  %i.ctw = lshr i8 %i.ctt, 1
  %i.ctx = and i8 %i.ctw, 14
  %i.cty = zext nneg i8 %i.ctx to i64
  %i.ctz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cty
  %i.cua = load i16, ptr %i.ctz, align 2
  store i16 %i.cua, ptr %i.ctv, align 1
  %i.cub = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 4
  %.narrow305.i609.i = or disjoint i8 %i.ctu, %.tr304.i608.i
  %i.cuc = zext i8 %.narrow305.i609.i to i64
  %i.cud = shl nuw nsw i64 %i.cuc, 1
  %i.cue = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cud
  %i.cuf = load i16, ptr %i.cue, align 2
  store i16 %i.cuf, ptr %i.cub, align 1
  %i.cug = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 6
  %i.cuh = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 2
  br label %.preheader1115.backedge

bb.kt:                                            ; preds = %bb.ke
  %.sroa.0.0.copyload.i664.i = load i16, ptr %.8.i584.i, align 1 ; 3 uses
  %i.cui = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 2
  %i.cuj = load i8, ptr %i.cui, align 1, !tbaa !99 ; 2 uses
  %.sroa.4.0.insert.ext.i665.i = zext i8 %i.cuj to i32
  %.sroa.4.0.insert.shift.i666.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i665.i, 16
  %.sroa.0.0.insert.ext.i667.i = zext i16 %.sroa.0.0.copyload.i664.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i668.i = or disjoint i32 %.sroa.4.0.insert.shift.i666.i, %.sroa.0.0.insert.ext.i667.i
  %i.cuk = and i32 %.sroa.0.0.insert.insert.i668.i, 12632304
  %i.cul = icmp eq i32 %i.cuk, 8421600
  br i1 %i.cul, label %bb.ku, label %.thread847, !prof !61

bb.ku:                                            ; preds = %bb.kt
  %i.cum = and i32 %.sroa.0.0.insert.ext.i667.i, 8207
  switch i32 %i.cum, label %.critedge326.i599.i [
    i32 8205, label %.thread847
    i32 0, label %.thread847
  ], !prof !150

.critedge326.i599.i:                              ; preds = %bb.ku
  %i.cun = zext i16 %.sroa.0.0.copyload.i664.i to i64
  %i.cuo = shl nuw nsw i64 %i.cun, 12
  %i.cup = lshr i16 %.sroa.0.0.copyload.i664.i, 2
  %i.cuq = and i16 %i.cup, 4032                   ; 2 uses
  %i.cur = zext nneg i16 %i.cuq to i64
  %i.cus = and i8 %i.cuj, 63
  store i16 30044, ptr %.8258.i583.i, align 1
  %i.cut = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 2
  %.masked.i604.i = or disjoint i64 %i.cuo, %i.cur
  %i.cuu = lshr i64 %.masked.i604.i, 7
  %i.cuv = and i64 %i.cuu, 510
  %i.cuw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cuv
  %i.cux = load i16, ptr %i.cuw, align 2
  store i16 %i.cux, ptr %i.cut, align 1
  %i.cuy = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 4
  %.tr299.i605.i = trunc i16 %i.cuq to i8
  %.narrow300.i606.i = or disjoint i8 %i.cus, %.tr299.i605.i
  %i.cuz = zext i8 %.narrow300.i606.i to i64
  %i.cva = shl nuw nsw i64 %i.cuz, 1
  %i.cvb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cva
  %i.cvc = load i16, ptr %i.cvb, align 2
  store i16 %i.cvc, ptr %i.cuy, align 1
  %i.cvd = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 6
  %i.cve = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 3
  br label %.preheader1115.backedge

bb.kv:                                            ; preds = %bb.ke
  %.sroa.0.0.copyload.i.i589.i = load i32, ptr %.8.i584.i, align 1 ; 9 uses
  %i.cvf = and i32 %.sroa.0.0.copyload.i.i589.i, -1061109512
  %i.cvg = icmp ne i32 %i.cvf, -2139062032
  %i.cvh = and i32 %.sroa.0.0.copyload.i.i589.i, 12295
  %.not293.i590.i = icmp eq i32 %i.cvh, 0
  %or.cond328.i591.i = or i1 %i.cvg, %.not293.i590.i
  %i.cvi = lshr i32 %.sroa.0.0.copyload.i.i589.i, 24
  br i1 %or.cond328.i591.i, label %.thread847, label %bb.kw, !prof !151

bb.kw:                                            ; preds = %bb.kv
  %i.cvj = and i32 %.sroa.0.0.copyload.i.i589.i, 4
  %i.cvk = icmp ne i32 %i.cvj, 0
  %i.cvl = and i32 %.sroa.0.0.copyload.i.i589.i, 12291
  %i.cvm = icmp ne i32 %i.cvl, 0
  %.not296.i592.i = and i1 %i.cvk, %i.cvm
  br i1 %.not296.i592.i, label %.thread847, label %.critedge330.i595.i, !prof !44

.critedge330.i595.i:                              ; preds = %bb.kw
  %i.cvn = shl i32 %.sroa.0.0.copyload.i.i589.i, 18
  %i.cvo = and i32 %i.cvn, 1835008
  %i.cvp = shl i32 %.sroa.0.0.copyload.i.i589.i, 4
  %i.cvq = and i32 %i.cvp, 258048
  %i.cvr = lshr i32 %.sroa.0.0.copyload.i.i589.i, 10 ; 2 uses
  %i.cvs = and i32 %i.cvr, 3072
  %i.cvt = and i32 %i.cvi, 63
  %i.cvu = add nsw i32 %i.cvo, -65536
  %i.cvv = add nsw i32 %i.cvu, %i.cvq             ; 2 uses
  %i.cvw = or disjoint i32 %i.cvv, %i.cvs
  %i.cvx = lshr exact i32 %i.cvv, 10
  %i.cvy = add nuw nsw i32 %i.cvx, 55296
  store i16 30044, ptr %.8258.i583.i, align 1
  %i.cvz = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 2
  %i.cwa = lshr i32 %i.cvy, 7
  %i.cwb = and i32 %i.cwa, 65534
  %i.cwc = zext nneg i32 %i.cwb to i64
  %i.cwd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cwc
  %i.cwe = load i16, ptr %i.cwd, align 2
  store i16 %i.cwe, ptr %i.cvz, align 1
  %i.cwf = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 4
  %i.cwg = lshr exact i32 %i.cvw, 9
  %i.cwh = and i32 %i.cwg, 510
  %i.cwi = zext nneg i32 %i.cwh to i64
  %i.cwj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cwi
  %i.cwk = load i16, ptr %i.cwj, align 2
  store i16 %i.cwk, ptr %i.cwf, align 1
  %i.cwl = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 6
  store i16 30044, ptr %i.cwl, align 1
  %i.cwm = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 8
  %i.cwn = lshr i32 %.sroa.0.0.copyload.i.i589.i, 17
  %i.cwo = and i32 %i.cwn, 6
  %i.cwp = zext nneg i32 %i.cwo to i64
  %i.cwq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cwp
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwq, i64 440
  %i.cws = load i16, ptr %i.cwr, align 2
  store i16 %i.cws, ptr %i.cwm, align 1
  %i.cwt = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 10
  %.masked = and i32 %i.cvr, 192
  %i.cwu = or disjoint i32 %i.cvt, %.masked
  %i.cwv = shl nuw nsw i32 %i.cwu, 1
  %i.cww = zext nneg i32 %i.cwv to i64
  %i.cwx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.cww
  %i.cwy = load i16, ptr %i.cwx, align 2
  store i16 %i.cwy, ptr %i.cwt, align 1
  %i.cwz = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 12
  br label %.preheader1115.backedge

bb.kx:                                            ; preds = %bb.ke, %bb.kd
  %i.cxa = phi i8 [ %i.cru, %bb.ke ], [ %i.crm, %bb.kd ]
  br i1 %.not968, label %.thread837, label %.thread847

.thread837:                                       ; preds = %bb.kn, %bb.ko, %bb.kl, %bb.kj, %bb.km, %bb.km, %bb.kk, %bb.kk, %bb.kg, %bb.kx
  %i.cxb = phi i8 [ %i.cst, %bb.kn ], [ %i.cst, %bb.ko ], [ %i.csm, %bb.kl ], [ %i.csg, %bb.kj ], [ %i.csm, %bb.km ], [ %i.csm, %bb.km ], [ %i.csg, %bb.kk ], [ %i.csg, %bb.kk ], [ %i.csb, %bb.kg ], [ %i.cxa, %bb.kx ]
  br i1 %.not952, label %.loopexit1102, label %bb.ky

bb.ky:                                            ; preds = %.thread837
  %i.cxc = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 1
  %i.cxd = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 1
  store i8 %i.cxb, ptr %.8258.i583.i, align 1, !tbaa !99
  br label %.preheader1115.backedge

.thread847:                                       ; preds = %bb.kv, %bb.kw, %bb.kt, %bb.ku, %bb.ku, %bb.kr, %bb.kx
  br i1 %.not952, label %.loopexit1102, label %bb.kz

bb.kz:                                            ; preds = %.thread847
  store i16 30044, ptr %.8258.i583.i, align 1
  %i.cxe = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 2
  store i32 1145456198, ptr %i.cxe, align 1
  %i.cxf = getelementptr inbounds nuw i8, ptr %.8258.i583.i, i64 6
  %i.cxg = getelementptr inbounds nuw i8, ptr %.8.i584.i, i64 1
  br label %.preheader1115.backedge

bb.la:                                            ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i
  %i.cxh = load i64, ptr %.0503.i, align 8, !tbaa !98
  %i.cxi = and i64 %i.cxh, 24
  %.not536.i = icmp eq i64 %i.cxi, 0
  store i8 34, ptr %.0.i854.i.lcssa, align 1, !tbaa !99
  br i1 %.not536.i, label %.split505.i, label %bb.nh

.split505.i:                                      ; preds = %bb.la
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cir, i64 %i.cip ; 3 uses
  %i.cxk = ptrtoint ptr %i.cxj to i64             ; 4 uses
  %i.cxl = add i64 %i.cip, %i.cis
  br label %bb.lb

bb.lb:                                            ; preds = %bb.mm, %.split505.i
  %.pn.i.i110 = phi ptr [ %.0.i854.i.lcssa, %.split505.i ], [ %.8258.i.i123, %bb.mm ]
  %.0243.i.i111 = phi ptr [ %i.cir, %.split505.i ], [ %i.dfe, %bb.mm ] ; 3 uses
  %.0250.i.i112 = getelementptr inbounds nuw i8, ptr %.pn.i.i110, i64 1 ; 2 uses
  %i.cxm = ptrtoint ptr %.0243.i.i111 to i64
  %i.cxn = sub i64 %i.cxk, %i.cxm                 ; 2 uses
  %i.cxo = icmp sgt i64 %i.cxn, 15
  br i1 %i.cxo, label %.lr.ph2173, label %.preheader1106

.preheader1106:                                   ; preds = %bb.lr, %bb.lb
  %.pre-phi2984 = phi i64 [ %i.cxn, %bb.lb ], [ %i.dau, %bb.lr ]
  %.1251.i.i113.lcssa = phi ptr [ %.0250.i.i112, %bb.lb ], [ %i.dar, %bb.lr ] ; 2 uses
  %.1244.i.i114.lcssa = phi ptr [ %.0243.i.i111, %bb.lb ], [ %i.das, %bb.lr ] ; 2 uses
  %i.cxp = icmp sgt i64 %.pre-phi2984, 3
  br i1 %i.cxp, label %.lr.ph2179, label %.preheader1104

.lr.ph2173:                                       ; preds = %bb.lb, %bb.lr
  %.1244.i.i1142171 = phi ptr [ %i.das, %bb.lr ], [ %.0243.i.i111, %bb.lb ] ; 46 uses
  %.1251.i.i1132170 = phi ptr [ %i.dar, %bb.lr ], [ %.0250.i.i112, %bb.lb ] ; 30 uses
  %i.cxq = load i8, ptr %.1244.i.i1142171, align 1, !tbaa !99 ; 2 uses
  %i.cxr = zext i8 %i.cxq to i64
  %i.cxs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cxr
  %i.cxt = load i8, ptr %i.cxs, align 1, !tbaa !99
  %.not277.i.i178 = icmp eq i8 %i.cxt, 0
  br i1 %.not277.i.i178, label %bb.lc, label %.preheader1101.preheader, !prof !61

bb.lc:                                            ; preds = %.lr.ph2173
  %i.cxu = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 1
  %i.cxv = load i8, ptr %i.cxu, align 1, !tbaa !99
  %i.cxw = zext i8 %i.cxv to i64
  %i.cxx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cxw
  %i.cxy = load i8, ptr %i.cxx, align 1, !tbaa !99
  %.not278.i.i179 = icmp eq i8 %i.cxy, 0
  br i1 %.not278.i.i179, label %bb.ld, label %.loopexit1108, !prof !61

bb.ld:                                            ; preds = %bb.lc
  %i.cxz = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 2
  %i.cya = load i8, ptr %i.cxz, align 1, !tbaa !99
  %i.cyb = zext i8 %i.cya to i64
  %i.cyc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyb
  %i.cyd = load i8, ptr %i.cyc, align 1, !tbaa !99
  %.not279.i.i180 = icmp eq i8 %i.cyd, 0
  br i1 %.not279.i.i180, label %bb.le, label %.loopexit1109, !prof !61

bb.le:                                            ; preds = %bb.ld
  %i.cye = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 3
  %i.cyf = load i8, ptr %i.cye, align 1, !tbaa !99
  %i.cyg = zext i8 %i.cyf to i64
  %i.cyh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyg
  %i.cyi = load i8, ptr %i.cyh, align 1, !tbaa !99
  %.not280.i.i181 = icmp eq i8 %i.cyi, 0
  br i1 %.not280.i.i181, label %bb.lf, label %.loopexit1110, !prof !61

bb.lf:                                            ; preds = %bb.le
  %i.cyj = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 4
  %i.cyk = load i8, ptr %i.cyj, align 1, !tbaa !99
  %i.cyl = zext i8 %i.cyk to i64
  %i.cym = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyl
  %i.cyn = load i8, ptr %i.cym, align 1, !tbaa !99
  %.not281.i.i182 = icmp eq i8 %i.cyn, 0
  br i1 %.not281.i.i182, label %bb.lg, label %bb.ly, !prof !61

bb.lg:                                            ; preds = %bb.lf
  %i.cyo = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 5
  %i.cyp = load i8, ptr %i.cyo, align 1, !tbaa !99
  %i.cyq = zext i8 %i.cyp to i64
  %i.cyr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyq
  %i.cys = load i8, ptr %i.cyr, align 1, !tbaa !99
  %.not282.i.i183 = icmp eq i8 %i.cys, 0
  br i1 %.not282.i.i183, label %bb.lh, label %bb.lz, !prof !61

bb.lh:                                            ; preds = %bb.lg
  %i.cyt = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 6
  %i.cyu = load i8, ptr %i.cyt, align 1, !tbaa !99
  %i.cyv = zext i8 %i.cyu to i64
  %i.cyw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cyv
  %i.cyx = load i8, ptr %i.cyw, align 1, !tbaa !99
  %.not283.i.i184 = icmp eq i8 %i.cyx, 0
  br i1 %.not283.i.i184, label %bb.li, label %bb.ma, !prof !61

bb.li:                                            ; preds = %bb.lh
  %i.cyy = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 7
  %i.cyz = load i8, ptr %i.cyy, align 1, !tbaa !99
  %i.cza = zext i8 %i.cyz to i64
  %i.czb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.cza
  %i.czc = load i8, ptr %i.czb, align 1, !tbaa !99
  %.not284.i.i185 = icmp eq i8 %i.czc, 0
  br i1 %.not284.i.i185, label %bb.lj, label %bb.mb, !prof !61

bb.lj:                                            ; preds = %bb.li
  %i.czd = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 8
  %i.cze = load i8, ptr %i.czd, align 1, !tbaa !99
  %i.czf = zext i8 %i.cze to i64
  %i.czg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czf
  %i.czh = load i8, ptr %i.czg, align 1, !tbaa !99
  %.not285.i.i186 = icmp eq i8 %i.czh, 0
  br i1 %.not285.i.i186, label %bb.lk, label %bb.mc, !prof !61

bb.lk:                                            ; preds = %bb.lj
  %i.czi = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 9
  %i.czj = load i8, ptr %i.czi, align 1, !tbaa !99
  %i.czk = zext i8 %i.czj to i64
  %i.czl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czk
  %i.czm = load i8, ptr %i.czl, align 1, !tbaa !99
  %.not286.i.i187 = icmp eq i8 %i.czm, 0
  br i1 %.not286.i.i187, label %bb.ll, label %bb.md, !prof !61

bb.ll:                                            ; preds = %bb.lk
  %i.czn = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 10
  %i.czo = load i8, ptr %i.czn, align 1, !tbaa !99
  %i.czp = zext i8 %i.czo to i64
  %i.czq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czp
  %i.czr = load i8, ptr %i.czq, align 1, !tbaa !99
  %.not287.i.i188 = icmp eq i8 %i.czr, 0
  br i1 %.not287.i.i188, label %bb.lm, label %bb.me, !prof !61

bb.lm:                                            ; preds = %bb.ll
  %i.czs = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 11
  %i.czt = load i8, ptr %i.czs, align 1, !tbaa !99
  %i.czu = zext i8 %i.czt to i64
  %i.czv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czu
  %i.czw = load i8, ptr %i.czv, align 1, !tbaa !99
  %.not288.i.i189 = icmp eq i8 %i.czw, 0
  br i1 %.not288.i.i189, label %bb.ln, label %bb.mf, !prof !61

bb.ln:                                            ; preds = %bb.lm
  %i.czx = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 12
  %i.czy = load i8, ptr %i.czx, align 1, !tbaa !99
  %i.czz = zext i8 %i.czy to i64
  %i.daa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.czz
  %i.dab = load i8, ptr %i.daa, align 1, !tbaa !99
  %.not289.i.i190 = icmp eq i8 %i.dab, 0
  br i1 %.not289.i.i190, label %bb.lo, label %bb.mg, !prof !61

bb.lo:                                            ; preds = %bb.ln
  %i.dac = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 13
  %i.dad = load i8, ptr %i.dac, align 1, !tbaa !99
  %i.dae = zext i8 %i.dad to i64
  %i.daf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dae
  %i.dag = load i8, ptr %i.daf, align 1, !tbaa !99
  %.not290.i.i191 = icmp eq i8 %i.dag, 0
  br i1 %.not290.i.i191, label %bb.lp, label %bb.mh, !prof !61

bb.lp:                                            ; preds = %bb.lo
  %i.dah = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 14
  %i.dai = load i8, ptr %i.dah, align 1, !tbaa !99
  %i.daj = zext i8 %i.dai to i64
  %i.dak = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.daj
  %i.dal = load i8, ptr %i.dak, align 1, !tbaa !99
  %.not291.i.i192 = icmp eq i8 %i.dal, 0
  br i1 %.not291.i.i192, label %bb.lq, label %bb.mi, !prof !61

bb.lq:                                            ; preds = %bb.lp
  %i.dam = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 15
  %i.dan = load i8, ptr %i.dam, align 1, !tbaa !99
  %i.dao = zext i8 %i.dan to i64
  %i.dap = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dao
  %i.daq = load i8, ptr %i.dap, align 1, !tbaa !99
  %.not292.i.i193 = icmp eq i8 %i.daq, 0
  br i1 %.not292.i.i193, label %bb.lr, label %bb.mj, !prof !61

bb.lr:                                            ; preds = %bb.lq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i.i1142171, i64 16, i1 false)
  %i.dar = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 16 ; 2 uses
  %i.das = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 16 ; 3 uses
  %i.dat = ptrtoint ptr %i.das to i64
  %i.dau = sub i64 %i.cxk, %i.dat                 ; 2 uses
  %i.dav = icmp sgt i64 %i.dau, 15
  br i1 %i.dav, label %.lr.ph2173, label %.preheader1106, !llvm.loop !31

.preheader1104:                                   ; preds = %bb.lw, %.preheader1106
  %.2252.i.i115.lcssa = phi ptr [ %.1251.i.i113.lcssa, %.preheader1106 ], [ %i.dcd, %bb.lw ] ; 3 uses
  %.2245.i.i116.lcssa = phi ptr [ %.1244.i.i114.lcssa, %.preheader1106 ], [ %i.dce, %bb.lw ] ; 5 uses
  %i.daw = icmp ugt ptr %i.cxj, %.2245.i.i116.lcssa
  br i1 %i.daw, label %.lr.ph2184.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i

.lr.ph2184.preheader:                             ; preds = %.preheader1104
  %.2245.i.i116.lcssa2885 = ptrtoaddr ptr %.2245.i.i116.lcssa to i64 ; 2 uses
  %i.dax = getelementptr i8, ptr %.2245.i.i116.lcssa, i64 %i.cip
  %scevgep2884 = getelementptr i8, ptr %i.dax, i64 %i.cis
  %i.day = sub i64 0, %.2245.i.i116.lcssa2885
  %scevgep2886 = getelementptr i8, ptr %scevgep2884, i64 %i.day
  %i.daz = sub i64 %i.cxl, %.2245.i.i116.lcssa2885
  %i.dba = freeze i64 %i.daz                      ; 2 uses
  %i.dbb = add i64 %i.dba, -1
  %xtraiter5928 = and i64 %i.dba, 3               ; 2 uses
  %lcmp.mod5929.not = icmp eq i64 %xtraiter5928, 0
  br i1 %lcmp.mod5929.not, label %.lr.ph2184.prol.loopexit, label %.lr.ph2184.prol

.lr.ph2184.prol:                                  ; preds = %.lr.ph2184.preheader, %bb.ls
  %.3246.i.i1182183.prol = phi ptr [ %i.dbg, %bb.ls ], [ %.2245.i.i116.lcssa, %.lr.ph2184.preheader ] ; 3 uses
  %.3253.i.i1172182.prol = phi ptr [ %i.dbh, %bb.ls ], [ %.2252.i.i115.lcssa, %.lr.ph2184.preheader ] ; 3 uses
  %prol.iter5930 = phi i64 [ %prol.iter5930.next, %bb.ls ], [ 0, %.lr.ph2184.preheader ]
  %i.dbc = load i8, ptr %.3246.i.i1182183.prol, align 1, !tbaa !99 ; 2 uses
  %i.dbd = zext i8 %i.dbc to i64
  %i.dbe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dbd
end_hunk_15
begin_hunk_16_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.dbr = load i8, ptr %i.dbq, align 1, !tbaa !99
  %.not274.i.i169 = icmp eq i8 %i.dbr, 0
  br i1 %.not274.i.i169, label %bb.lu, label %.loopexit1108, !prof !61

bb.lu:                                            ; preds = %bb.lt
  %i.dbs = getelementptr inbounds nuw i8, ptr %.2245.i.i1162178, i64 2
  %i.dbt = load i8, ptr %i.dbs, align 1, !tbaa !99
  %i.dbu = zext i8 %i.dbt to i64
  %i.dbv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dbu
  %i.dbw = load i8, ptr %i.dbv, align 1, !tbaa !99
  %.not275.i.i172 = icmp eq i8 %i.dbw, 0
  br i1 %.not275.i.i172, label %bb.lv, label %.loopexit1109, !prof !61

bb.lv:                                            ; preds = %bb.lu
  %i.dbx = getelementptr inbounds nuw i8, ptr %.2245.i.i1162178, i64 3
  %i.dby = load i8, ptr %i.dbx, align 1, !tbaa !99
  %i.dbz = zext i8 %i.dby to i64
  %i.dca = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dbz
  %i.dcb = load i8, ptr %i.dca, align 1, !tbaa !99
  %.not276.i.i175 = icmp eq i8 %i.dcb, 0
  br i1 %.not276.i.i175, label %bb.lw, label %.loopexit1110, !prof !61

bb.lw:                                            ; preds = %bb.lv
  %i.dcc = load i32, ptr %.2245.i.i1162178, align 1
  store i32 %i.dcc, ptr %.2252.i.i1152177, align 1
  %i.dcd = getelementptr inbounds nuw i8, ptr %.2252.i.i1152177, i64 4 ; 2 uses
  %i.dce = getelementptr inbounds nuw i8, ptr %.2245.i.i1162178, i64 4 ; 3 uses
  %i.dcf = ptrtoint ptr %i.dce to i64
  %i.dcg = sub i64 %i.cxk, %i.dcf
  %i.dch = icmp sgt i64 %i.dcg, 3
  br i1 %i.dch, label %.lr.ph2179, label %.preheader1104, !llvm.loop !32

.lr.ph2184:                                       ; preds = %.lr.ph2184.prol.loopexit, %bb.lx
  %.3246.i.i1182183 = phi ptr [ %i.dde, %bb.lx ], [ %.3246.i.i1182183.unr, %.lr.ph2184.prol.loopexit ] ; 9 uses
  %.3253.i.i1172182 = phi ptr [ %i.ddf, %bb.lx ], [ %.3253.i.i1172182.unr, %.lr.ph2184.prol.loopexit ] ; 6 uses
  %i.dci = load i8, ptr %.3246.i.i1182183, align 1, !tbaa !99 ; 2 uses
  %i.dcj = zext i8 %i.dci to i64
  %i.dck = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dcj
  %i.dcl = load i8, ptr %i.dck, align 1, !tbaa !99
  %.not.i566.i = icmp eq i8 %i.dcl, 0
  br i1 %.not.i566.i, label %.lr.ph2184.1, label %.preheader1101.preheader, !prof !61

.lr.ph2184.1:                                     ; preds = %.lr.ph2184
  %i.dcm = getelementptr inbounds nuw i8, ptr %.3246.i.i1182183, i64 1
  %i.dcn = getelementptr inbounds nuw i8, ptr %.3253.i.i1172182, i64 1 ; 2 uses
  store i8 %i.dci, ptr %.3253.i.i1172182, align 1, !tbaa !99
  %i.dco = load i8, ptr %i.dcm, align 1, !tbaa !99 ; 2 uses
  %i.dcp = zext i8 %i.dco to i64
  %i.dcq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dcp
  %i.dcr = load i8, ptr %i.dcq, align 1, !tbaa !99
  %.not.i566.i.1 = icmp eq i8 %i.dcr, 0
  br i1 %.not.i566.i.1, label %.lr.ph2184.2, label %.preheader1101.preheader.loopexit.loopexit.split.loop.exit6659, !prof !61

.lr.ph2184.2:                                     ; preds = %.lr.ph2184.1
  %i.dcs = getelementptr inbounds nuw i8, ptr %.3246.i.i1182183, i64 2
  %i.dct = getelementptr inbounds nuw i8, ptr %.3253.i.i1172182, i64 2 ; 2 uses
  store i8 %i.dco, ptr %i.dcn, align 1, !tbaa !99
  %i.dcu = load i8, ptr %i.dcs, align 1, !tbaa !99 ; 2 uses
  %i.dcv = zext i8 %i.dcu to i64
  %i.dcw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dcv
  %i.dcx = load i8, ptr %i.dcw, align 1, !tbaa !99
  %.not.i566.i.2 = icmp eq i8 %i.dcx, 0
  br i1 %.not.i566.i.2, label %.lr.ph2184.3, label %.preheader1101.preheader.loopexit.loopexit.split.loop.exit6656, !prof !61

.lr.ph2184.3:                                     ; preds = %.lr.ph2184.2
  %i.dcy = getelementptr inbounds nuw i8, ptr %.3246.i.i1182183, i64 3
  %i.dcz = getelementptr inbounds nuw i8, ptr %.3253.i.i1172182, i64 3 ; 2 uses
  store i8 %i.dcu, ptr %i.dct, align 1, !tbaa !99
  %i.dda = load i8, ptr %i.dcy, align 1, !tbaa !99 ; 2 uses
  %i.ddb = zext i8 %i.dda to i64
  %i.ddc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.ddb
  %i.ddd = load i8, ptr %i.ddc, align 1, !tbaa !99
  %.not.i566.i.3 = icmp eq i8 %i.ddd, 0
  br i1 %.not.i566.i.3, label %bb.lx, label %.preheader1101.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.lx:                                            ; preds = %.lr.ph2184.3
  %i.dde = getelementptr inbounds nuw i8, ptr %.3246.i.i1182183, i64 4 ; 2 uses
  %i.ddf = getelementptr inbounds nuw i8, ptr %.3253.i.i1172182, i64 4 ; 2 uses
  store i8 %i.dda, ptr %i.dcz, align 1, !tbaa !99
  %exitcond2887.not.3 = icmp eq ptr %i.dde, %scevgep2886
  br i1 %exitcond2887.not.3, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %.lr.ph2184, !llvm.loop !33

.loopexit1108:                                    ; preds = %bb.lc, %bb.lt
  %i.ddg = phi i8 [ %i.dbj, %bb.lt ], [ %i.cxq, %bb.lc ]
  %.5255.i.i170 = phi ptr [ %.2252.i.i1152177, %bb.lt ], [ %.1251.i.i1132170, %bb.lc ] ; 2 uses
  %.5248.i.i171 = phi ptr [ %.2245.i.i1162178, %bb.lt ], [ %.1244.i.i1142171, %bb.lc ]
  store i8 %i.ddg, ptr %.5255.i.i170, align 1
  %i.ddh = getelementptr inbounds nuw i8, ptr %.5255.i.i170, i64 1
  %i.ddi = getelementptr inbounds nuw i8, ptr %.5248.i.i171, i64 1
  br label %.preheader1101.preheader

.loopexit1109:                                    ; preds = %bb.ld, %bb.lu
  %.6256.i.i173 = phi ptr [ %.2252.i.i1152177, %bb.lu ], [ %.1251.i.i1132170, %bb.ld ] ; 2 uses
  %.6.i.i174 = phi ptr [ %.2245.i.i1162178, %bb.lu ], [ %.1244.i.i1142171, %bb.ld ] ; 2 uses
  %i.ddj = load i16, ptr %.6.i.i174, align 1
  store i16 %i.ddj, ptr %.6256.i.i173, align 1
  %i.ddk = getelementptr inbounds nuw i8, ptr %.6256.i.i173, i64 2
  %i.ddl = getelementptr inbounds nuw i8, ptr %.6.i.i174, i64 2
  br label %.preheader1101.preheader

.loopexit1110:                                    ; preds = %bb.le, %bb.lv
  %.7257.i.i176 = phi ptr [ %.2252.i.i1152177, %bb.lv ], [ %.1251.i.i1132170, %bb.le ] ; 2 uses
  %.7.i.i177 = phi ptr [ %.2245.i.i1162178, %bb.lv ], [ %.1244.i.i1142171, %bb.le ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i.i176, ptr noundef nonnull align 1 dereferenceable(3) %.7.i.i177, i64 3, i1 false)
  %i.ddm = getelementptr inbounds nuw i8, ptr %.7257.i.i176, i64 3
  %i.ddn = getelementptr inbounds nuw i8, ptr %.7.i.i177, i64 3
  br label %.preheader1101.preheader

bb.ly:                                            ; preds = %bb.lf
  %i.ddo = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 4
  %i.ddp = load i32, ptr %.1244.i.i1142171, align 1
  store i32 %i.ddp, ptr %.1251.i.i1132170, align 1
  %i.ddq = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 4
  br label %.preheader1101.preheader

bb.lz:                                            ; preds = %bb.lg
  %i.ddr = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i.i1142171, i64 5, i1 false)
  %i.dds = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 5
  br label %.preheader1101.preheader

bb.ma:                                            ; preds = %bb.lh
  %i.ddt = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i.i1142171, i64 6, i1 false)
  %i.ddu = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 6
  br label %.preheader1101.preheader

bb.mb:                                            ; preds = %bb.li
  %i.ddv = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i.i1142171, i64 7, i1 false)
  %i.ddw = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 7
  br label %.preheader1101.preheader

bb.mc:                                            ; preds = %bb.lj
  %i.ddx = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 8
  %i.ddy = load i64, ptr %.1244.i.i1142171, align 1
  store i64 %i.ddy, ptr %.1251.i.i1132170, align 1
  %i.ddz = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 8
  br label %.preheader1101.preheader

bb.md:                                            ; preds = %bb.lk
  %i.dea = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i.i1142171, i64 9, i1 false)
  %i.deb = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 9
  br label %.preheader1101.preheader

bb.me:                                            ; preds = %bb.ll
  %i.dec = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i.i1142171, i64 10, i1 false)
  %i.ded = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 10
  br label %.preheader1101.preheader

bb.mf:                                            ; preds = %bb.lm
  %i.dee = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i.i1142171, i64 11, i1 false)
  %i.def = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 11
  br label %.preheader1101.preheader

bb.mg:                                            ; preds = %bb.ln
  %i.deg = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i.i1142171, i64 12, i1 false)
  %i.deh = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 12
  br label %.preheader1101.preheader

bb.mh:                                            ; preds = %bb.lo
  %i.dei = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i.i1142171, i64 13, i1 false)
  %i.dej = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 13
  br label %.preheader1101.preheader

bb.mi:                                            ; preds = %bb.lp
  %i.dek = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i.i1142171, i64 14, i1 false)
  %i.del = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 14
  br label %.preheader1101.preheader

bb.mj:                                            ; preds = %bb.lq
  %i.dem = getelementptr inbounds nuw i8, ptr %.1244.i.i1142171, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i.i1132170, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i.i1142171, i64 15, i1 false)
  %i.den = getelementptr inbounds nuw i8, ptr %.1251.i.i1132170, i64 15
  br label %.preheader1101.preheader

.preheader1101.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2184.3
  %i.deo = getelementptr inbounds nuw i8, ptr %.3246.i.i1182183, i64 3
  br label %.preheader1101.preheader

.preheader1101.preheader.loopexit.loopexit.split.loop.exit6656: ; preds = %.lr.ph2184.2
  %i.dep = getelementptr inbounds nuw i8, ptr %.3246.i.i1182183, i64 2
  br label %.preheader1101.preheader

.preheader1101.preheader.loopexit.loopexit.split.loop.exit6659: ; preds = %.lr.ph2184.1
  %i.deq = getelementptr inbounds nuw i8, ptr %.3246.i.i1182183, i64 1
  br label %.preheader1101.preheader

.preheader1101.preheader:                         ; preds = %.lr.ph2173, %.lr.ph2179, %.lr.ph2184, %.preheader1101.preheader.loopexit.loopexit.split.loop.exit6659, %.preheader1101.preheader.loopexit.loopexit.split.loop.exit6656, %.preheader1101.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2184.prol, %.loopexit1108, %.loopexit1109, %.loopexit1110, %bb.ly, %bb.lz, %bb.ma, %bb.mb, %bb.mc, %bb.md, %bb.me, %bb.mf, %bb.mg, %bb.mh, %bb.mi, %bb.mj
  %.8258.i.i123.ph = phi ptr [ %.2252.i.i1152177, %.lr.ph2179 ], [ %.3253.i.i1172182.prol, %.lr.ph2184.prol ], [ %i.ddh, %.loopexit1108 ], [ %i.ddk, %.loopexit1109 ], [ %i.ddm, %.loopexit1110 ], [ %i.ddq, %bb.ly ], [ %i.dds, %bb.lz ], [ %i.ddu, %bb.ma ], [ %i.ddw, %bb.mb ], [ %i.ddz, %bb.mc ], [ %i.deb, %bb.md ], [ %i.ded, %bb.me ], [ %i.def, %bb.mf ], [ %i.deh, %bb.mg ], [ %i.dej, %bb.mh ], [ %i.del, %bb.mi ], [ %i.den, %bb.mj ], [ %.3253.i.i1172182, %.lr.ph2184 ], [ %i.dcn, %.preheader1101.preheader.loopexit.loopexit.split.loop.exit6659 ], [ %i.dct, %.preheader1101.preheader.loopexit.loopexit.split.loop.exit6656 ], [ %i.dcz, %.preheader1101.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i.i1132170, %.lr.ph2173 ]
  %.8.i.i124.ph = phi ptr [ %.2245.i.i1162178, %.lr.ph2179 ], [ %.3246.i.i1182183.prol, %.lr.ph2184.prol ], [ %i.ddi, %.loopexit1108 ], [ %i.ddl, %.loopexit1109 ], [ %i.ddn, %.loopexit1110 ], [ %i.ddo, %bb.ly ], [ %i.ddr, %bb.lz ], [ %i.ddt, %bb.ma ], [ %i.ddv, %bb.mb ], [ %i.ddx, %bb.mc ], [ %i.dea, %bb.md ], [ %i.dec, %bb.me ], [ %i.dee, %bb.mf ], [ %i.deg, %bb.mg ], [ %i.dei, %bb.mh ], [ %i.dek, %bb.mi ], [ %i.dem, %bb.mj ], [ %.3246.i.i1182183, %.lr.ph2184 ], [ %i.deq, %.preheader1101.preheader.loopexit.loopexit.split.loop.exit6659 ], [ %i.dep, %.preheader1101.preheader.loopexit.loopexit.split.loop.exit6656 ], [ %i.deo, %.preheader1101.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i.i1142171, %.lr.ph2173 ]
  br label %.preheader1101

.preheader1101:                                   ; preds = %.preheader1101.backedge, %.preheader1101.preheader
  %.8258.i.i123 = phi ptr [ %.8258.i.i123.ph, %.preheader1101.preheader ], [ %.8258.i.i123.be, %.preheader1101.backedge ] ; 34 uses
  %.8.i.i124 = phi ptr [ %.8.i.i124.ph, %.preheader1101.preheader ], [ %.8.i.i124.be, %.preheader1101.backedge ] ; 23 uses
  %i.der = getelementptr inbounds nuw i8, ptr %.8.i.i124, i64 4 ; 3 uses
  %i.des = icmp ugt ptr %i.der, %i.cxj            ; 2 uses
  br i1 %i.des, label %bb.mk, label %._crit_edge2945, !prof !44

._crit_edge2945:                                  ; preds = %.preheader1101
  %.pre2946 = load i8, ptr %.8.i.i124, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert2947 = zext i8 %.pre2946 to i64 ; 2 uses
  %.phi.trans.insert2948 = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %.phi.trans.insert2947
  %.pre2949 = load i8, ptr %.phi.trans.insert2948, align 1, !tbaa !99
  br label %bb.ml

bb.mk:                                            ; preds = %.preheader1101
  %i.det = ptrtoint ptr %.8.i.i124 to i64
  %i.deu = sub i64 %i.cxk, %i.det
  %i.dev = load i8, ptr %.8.i.i124, align 1, !tbaa !99 ; 3 uses
  %i.dew = zext i8 %i.dev to i64                  ; 2 uses
  %i.dex = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.dew
  %i.dey = load i8, ptr %i.dex, align 1, !tbaa !99 ; 2 uses
  %i.dez = lshr i8 %i.dey, 1
  %i.dfa = zext nneg i8 %i.dez to i64
  %i.dfb = icmp slt i64 %i.deu, %i.dfa
  br i1 %i.dfb, label %bb.ne, label %bb.ml

bb.ml:                                            ; preds = %._crit_edge2945, %bb.mk
  %.pre-phi2985 = phi i64 [ %.phi.trans.insert2947, %._crit_edge2945 ], [ %i.dew, %bb.mk ]
  %i.dfc = phi i8 [ %.pre2949, %._crit_edge2945 ], [ %i.dey, %bb.mk ]
  %i.dfd = phi i8 [ %.pre2946, %._crit_edge2945 ], [ %i.dev, %bb.mk ] ; 2 uses
  switch i8 %i.dfc, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i [
    i8 0, label %bb.mm
    i8 4, label %bb.mn
    i8 6, label %bb.mp
    i8 8, label %bb.mu
    i8 2, label %bb.mw
    i8 3, label %bb.mx
    i8 5, label %bb.my
    i8 7, label %bb.na
    i8 9, label %bb.nc
    i8 1, label %bb.ne
  ]

bb.mm:                                            ; preds = %bb.ml
  %i.dfe = getelementptr inbounds nuw i8, ptr %.8.i.i124, i64 1
  store i8 %i.dfd, ptr %.8258.i.i123, align 1, !tbaa !99
  br label %bb.lb

bb.mn:                                            ; preds = %bb.ml
  %.sroa.0.0.copyload.i661.i = load i16, ptr %.8.i.i124, align 1 ; 3 uses
  %i.dff = zext i16 %.sroa.0.0.copyload.i661.i to i32 ; 2 uses
  %i.dfg = and i32 %i.dff, 49376
  %i.dfh = icmp ne i32 %i.dfg, 32960
  %i.dfi = and i32 %i.dff, 30
  %i.dfj = icmp eq i32 %i.dfi, 0
  %.not315.i.i165 = or i1 %i.dfh, %i.dfj
  %i.dfk = trunc i16 %.sroa.0.0.copyload.i661.i to i8
  br i1 %.not315.i.i165, label %.thread857, label %bb.mo, !prof !44

bb.mo:                                            ; preds = %bb.mn
  store i16 %.sroa.0.0.copyload.i661.i, ptr %.8258.i.i123, align 1
  %i.dfl = getelementptr inbounds nuw i8, ptr %.8258.i.i123, i64 2
  %i.dfm = getelementptr inbounds nuw i8, ptr %.8.i.i124, i64 2
  br label %.preheader1101.backedge

bb.mp:                                            ; preds = %bb.ml
  br i1 %i.des, label %bb.ms, label %bb.mq, !prof !44

bb.mq:                                            ; preds = %bb.mp
  %.sroa.0.0.copyload.i333.i.i161 = load i32, ptr %.8.i.i124, align 1 ; 4 uses
  %i.dfn = and i32 %.sroa.0.0.copyload.i333.i.i161, 12632304
  %i.dfo = icmp eq i32 %i.dfn, 8421600
  %i.dfp = trunc i32 %.sroa.0.0.copyload.i333.i.i161 to i8 ; 3 uses
  br i1 %i.dfo, label %bb.mr, label %.thread857, !prof !61

bb.mr:                                            ; preds = %bb.mq
  %i.dfq = and i32 %.sroa.0.0.copyload.i333.i.i161, 8207
  switch i32 %i.dfq, label %.critedge.i.i162 [
    i32 8205, label %.thread857
    i32 0, label %.thread857
  ], !prof !150

bb.ms:                                            ; preds = %bb.mp
  %.sroa.0.0.copyload.i669.i = load i16, ptr %.8.i.i124, align 1 ; 2 uses
  %i.dfr = getelementptr inbounds nuw i8, ptr %.8.i.i124, i64 2
  %i.dfs = load i8, ptr %i.dfr, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i670.i = zext i8 %i.dfs to i32
  %.sroa.4.0.insert.shift.i671.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i670.i, 16
  %.sroa.0.0.insert.ext.i672.i = zext i16 %.sroa.0.0.copyload.i669.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i673.i = or disjoint i32 %.sroa.4.0.insert.shift.i671.i, %.sroa.0.0.insert.ext.i672.i ; 2 uses
  %i.dft = and i32 %.sroa.0.0.insert.insert.i673.i, 12632304
  %i.dfu = icmp eq i32 %i.dft, 8421600
  %i.dfv = trunc i16 %.sroa.0.0.copyload.i669.i to i8 ; 3 uses
  br i1 %i.dfu, label %bb.mt, label %.thread857, !prof !61

bb.mt:                                            ; preds = %bb.ms
  %i.dfw = and i32 %.sroa.0.0.insert.ext.i672.i, 8207
  switch i32 %i.dfw, label %.critedge.i.i162 [
    i32 8205, label %.thread857
    i32 0, label %.thread857
  ], !prof !150

.critedge.i.i162:                                 ; preds = %bb.mt, %bb.mr
  %storemerge966 = phi i32 [ %.sroa.0.0.copyload.i333.i.i161, %bb.mr ], [ %.sroa.0.0.insert.insert.i673.i, %bb.mt ]
  store i32 %storemerge966, ptr %.8258.i.i123, align 1
  %i.dfx = getelementptr inbounds nuw i8, ptr %.8258.i.i123, i64 3
  %i.dfy = getelementptr inbounds nuw i8, ptr %.8.i.i124, i64 3
  br label %.preheader1101.backedge

bb.mu:                                            ; preds = %bb.ml
  %.sroa.0.0.copyload.i332.i.i153 = load i32, ptr %.8.i.i124, align 1 ; 6 uses
  %i.dfz = and i32 %.sroa.0.0.copyload.i332.i.i153, -1061109512
  %i.dga = icmp ne i32 %i.dfz, -2139062032
  %i.dgb = and i32 %.sroa.0.0.copyload.i332.i.i153, 12295
  %.not306.i.i154 = icmp eq i32 %i.dgb, 0
  %or.cond.i.i155 = or i1 %i.dga, %.not306.i.i154
  %i.dgc = trunc i32 %.sroa.0.0.copyload.i332.i.i153 to i8 ; 2 uses
  br i1 %or.cond.i.i155, label %.thread857, label %bb.mv, !prof !151

bb.mv:                                            ; preds = %bb.mu
  %i.dgd = and i32 %.sroa.0.0.copyload.i332.i.i153, 4
  %i.dge = icmp ne i32 %i.dgd, 0
  %i.dgf = and i32 %.sroa.0.0.copyload.i332.i.i153, 12291
  %i.dgg = icmp ne i32 %i.dgf, 0
  %.not309.i.i156 = and i1 %i.dge, %i.dgg
  br i1 %.not309.i.i156, label %.thread857, label %.critedge321.i.i157, !prof !44

.critedge321.i.i157:                              ; preds = %bb.mv
  store i32 %.sroa.0.0.copyload.i332.i.i153, ptr %.8258.i.i123, align 1
  %i.dgh = getelementptr inbounds nuw i8, ptr %.8258.i.i123, i64 4
  br label %.preheader1101.backedge

bb.mw:                                            ; preds = %bb.ml
  %i.dgi = shl nuw nsw i64 %.pre-phi2985, 1
  %i.dgj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.dgi
  %i.dgk = load i16, ptr %i.dgj, align 2
  store i16 %i.dgk, ptr %.8258.i.i123, align 1
  %i.dgl = getelementptr inbounds nuw i8, ptr %.8258.i.i123, i64 2
  %i.dgm = getelementptr inbounds nuw i8, ptr %.8.i.i124, i64 1
  br label %.preheader1101.backedge

.preheader1101.backedge:                          ; preds = %bb.mw, %bb.mx, %bb.nf, %bb.ng, %bb.mo, %.critedge.i.i162, %.critedge321.i.i157, %bb.mz, %.critedge326.i.i139, %.critedge330.i.i135
  %.8258.i.i123.be = phi ptr [ %i.dkm, %bb.nf ], [ %i.dfl, %bb.mo ], [ %i.dfx, %.critedge.i.i162 ], [ %i.dgh, %.critedge321.i.i157 ], [ %i.dgl, %bb.mw ], [ %i.dgt, %bb.mx ], [ %i.dhp, %bb.mz ], [ %i.dim, %.critedge326.i.i139 ], [ %i.dki, %.critedge330.i.i135 ], [ %i.dko, %bb.ng ]
  %.8.i.i124.be = phi ptr [ %i.dkl, %bb.nf ], [ %i.dfm, %bb.mo ], [ %i.dfy, %.critedge.i.i162 ], [ %i.der, %.critedge321.i.i157 ], [ %i.dgm, %bb.mw ], [ %i.dgu, %bb.mx ], [ %i.dhq, %bb.mz ], [ %i.din, %.critedge326.i.i139 ], [ %i.der, %.critedge330.i.i135 ], [ %i.dkp, %bb.ng ]
  br label %.preheader1101

bb.mx:                                            ; preds = %bb.ml
  store i32 808482140, ptr %.8258.i.i123, align 1
  %i.dgn = getelementptr inbounds nuw i8, ptr %.8258.i.i123, i64 4
  %i.dgo = load i8, ptr %.8.i.i124, align 1, !tbaa !99
  %i.dgp = zext i8 %i.dgo to i64
  %i.dgq = shl nuw nsw i64 %i.dgp, 1
  %i.dgr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.dgq
  %i.dgs = load i16, ptr %i.dgr, align 2
  store i16 %i.dgs, ptr %i.dgn, align 1
  %i.dgt = getelementptr inbounds nuw i8, ptr %.8258.i.i123, i64 6
  %i.dgu = getelementptr inbounds nuw i8, ptr %.8.i.i124, i64 1
  br label %.preheader1101.backedge

bb.my:                                            ; preds = %bb.ml
  %.sroa.0.0.copyload.i662.i = load i16, ptr %.8.i.i124, align 1 ; 3 uses
  %i.dgv = zext i16 %.sroa.0.0.copyload.i662.i to i32 ; 2 uses
  %i.dgw = and i32 %i.dgv, 49376
  %i.dgx = icmp ne i32 %i.dgw, 32960
  %i.dgy = and i32 %i.dgv, 30
  %i.dgz = icmp eq i32 %i.dgy, 0
  %.not303.i.i147 = or i1 %i.dgx, %i.dgz
  br i1 %.not303.i.i147, label %.thread867, label %bb.mz, !prof !44

bb.mz:                                            ; preds = %bb.my
  %i.dha = lshr i16 %.sroa.0.0.copyload.i662.i, 8
  %i.dhb = trunc nuw i16 %i.dha to i8
  %i.dhc = trunc i16 %.sroa.0.0.copyload.i662.i to i8 ; 2 uses
  %.tr304.i.i148 = shl i8 %i.dhc, 6
  %i.dhd = and i8 %i.dhb, 63
  store i16 30044, ptr %.8258.i.i123, align 1
  %i.dhe = getelementptr inbounds nuw i8, ptr %.8258.i.i123, i64 2
  %i.dhf = lshr i8 %i.dhc, 1
  %i.dhg = and i8 %i.dhf, 14
  %i.dhh = zext nneg i8 %i.dhg to i64
  %i.dhi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.dhh
  %i.dhj = load i16, ptr %i.dhi, align 2
  store i16 %i.dhj, ptr %i.dhe, align 1
  %i.dhk = getelementptr inbounds nuw i8, ptr %.8258.i.i123, i64 4
  %.narrow305.i.i149 = or disjoint i8 %i.dhd, %.tr304.i.i148
  %i.dhl = zext i8 %.narrow305.i.i149 to i64
  %i.dhm = shl nuw nsw i64 %i.dhl, 1
  %i.dhn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.dhm
  %i.dho = load i16, ptr %i.dhn, align 2
  store i16 %i.dho, ptr %i.dhk, align 1
  %i.dhp = getelementptr inbounds nuw i8, ptr %.8258.i.i123, i64 6
  %i.dhq = getelementptr inbounds nuw i8, ptr %.8.i.i124, i64 2
  br label %.preheader1101.backedge

bb.na:                                            ; preds = %bb.ml
  %.sroa.0.0.copyload.i674.i = load i16, ptr %.8.i.i124, align 1 ; 3 uses
  %i.dhr = getelementptr inbounds nuw i8, ptr %.8.i.i124, i64 2
  %i.dhs = load i8, ptr %i.dhr, align 1, !tbaa !99 ; 2 uses
  %.sroa.4.0.insert.ext.i675.i = zext i8 %i.dhs to i32
  %.sroa.4.0.insert.shift.i676.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i675.i, 16
  %.sroa.0.0.insert.ext.i677.i = zext i16 %.sroa.0.0.copyload.i674.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i678.i = or disjoint i32 %.sroa.4.0.insert.shift.i676.i, %.sroa.0.0.insert.ext.i677.i
  %i.dht = and i32 %.sroa.0.0.insert.insert.i678.i, 12632304
  %i.dhu = icmp eq i32 %i.dht, 8421600
  br i1 %i.dhu, label %bb.nb, label %.thread867, !prof !61

bb.nb:                                            ; preds = %bb.na
  %i.dhv = and i32 %.sroa.0.0.insert.ext.i677.i, 8207
  switch i32 %i.dhv, label %.critedge326.i.i139 [
    i32 8205, label %.thread867
    i32 0, label %.thread867
  ], !prof !150

.critedge326.i.i139:                              ; preds = %bb.nb
  %i.dhw = zext i16 %.sroa.0.0.copyload.i674.i to i64
end_hunk_16
begin_hunk_17_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
vector.ph5143:                                    ; preds = %.lr.ph2148.preheader
  %n.vec5144 = and i64 %i.dkv, 9223372036854775800 ; 4 uses
  %i.dkx = shl i64 %n.vec5144, 2
  %i.dky = sub i64 %.0.i565.i.lcssa, %i.dkx       ; 2 uses
  %i.dkz = shl i64 %n.vec5144, 2                  ; 2 uses
  %i.dla = getelementptr i8, ptr %.018.i.i101.lcssa, i64 %i.dkz ; 2 uses
  %i.dlb = getelementptr i8, ptr %.021.i.i100.lcssa, i64 %i.dkz ; 2 uses
  br label %vector.body5145

vector.body5145:                                  ; preds = %vector.body5145, %vector.ph5143
  %index5146.a = phi i64 [ 0, %vector.ph5143 ], [ %index.next5151, %vector.body5145 ] ; 2 uses
  %i.dlc = shl i64 %index5146.a, 2                ; 2 uses
  %next.gep5147.a = getelementptr i8, ptr %.018.i.i101.lcssa, i64 %i.dlc ; 2 uses
  %next.gep5148.a = getelementptr i8, ptr %.021.i.i100.lcssa, i64 %i.dlc ; 2 uses
  %i.dld = getelementptr i8, ptr %next.gep5147.a, i64 16
  %wide.load5149.a = load <4 x i32>, ptr %next.gep5147.a, align 1
  %wide.load5150 = load <4 x i32>, ptr %i.dld, align 1
  %i.dle = getelementptr i8, ptr %next.gep5148.a, i64 16
  store <4 x i32> %wide.load5149.a, ptr %next.gep5148.a, align 1
  store <4 x i32> %wide.load5150, ptr %i.dle, align 1
  %index.next5151 = add nuw i64 %index5146.a, 8   ; 2 uses
  %i.dlf = icmp eq i64 %index.next5151, %n.vec5144
  br i1 %i.dlf, label %middle.block5152, label %vector.body5145, !llvm.loop !342

middle.block5152:                                 ; preds = %vector.body5145
  %cmp.n5153 = icmp eq i64 %i.dkv, %n.vec5144
  br i1 %cmp.n5153, label %.preheader1132, label %.lr.ph2148.preheader5680

.lr.ph2148.preheader5680:                         ; preds = %.lr.ph2148.preheader, %middle.block5152
  %.1.i.i1042147.ph = phi i64 [ %.0.i565.i.lcssa, %.lr.ph2148.preheader ], [ %i.dky, %middle.block5152 ]
  %.119.i.i1032146.ph = phi ptr [ %.018.i.i101.lcssa, %.lr.ph2148.preheader ], [ %i.dla, %middle.block5152 ]
  %.122.i.i1022145.ph = phi ptr [ %.021.i.i100.lcssa, %.lr.ph2148.preheader ], [ %i.dlb, %middle.block5152 ]
  br label %.lr.ph2148

.lr.ph2141:                                       ; preds = %bb.nh, %.lr.ph2141
  %.0.i565.i2139 = phi i64 [ %i.dli, %.lr.ph2141 ], [ %i.cip, %bb.nh ]
  %.018.i.i1012138 = phi ptr [ %i.dlh, %.lr.ph2141 ], [ %i.cir, %bb.nh ] ; 2 uses
  %.021.i.i1002137 = phi ptr [ %i.dlg, %.lr.ph2141 ], [ %i.dkq, %bb.nh ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i1002137, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i1012138, i64 16, i1 false)
  %i.dlg = getelementptr inbounds nuw i8, ptr %.021.i.i1002137, i64 16 ; 2 uses
  %i.dlh = getelementptr inbounds nuw i8, ptr %.018.i.i1012138, i64 16 ; 2 uses
  %i.dli = add nsw i64 %.0.i565.i2139, -16        ; 3 uses
  %i.dlj = icmp ugt i64 %i.dli, 15
  br i1 %i.dlj, label %.lr.ph2141, label %.preheader1133, !llvm.loop !34

.preheader1132:                                   ; preds = %.lr.ph2148, %middle.block5152, %.preheader1133
  %.122.i.i102.lcssa = phi ptr [ %.021.i.i100.lcssa, %.preheader1133 ], [ %i.dlb, %middle.block5152 ], [ %i.dmd, %.lr.ph2148 ] ; 7 uses
  %.119.i.i103.lcssa = phi ptr [ %.018.i.i101.lcssa, %.preheader1133 ], [ %i.dla, %middle.block5152 ], [ %i.dme, %.lr.ph2148 ] ; 6 uses
  %.1.i.i104.lcssa = phi i64 [ %.0.i565.i.lcssa, %.preheader1133 ], [ %i.dky, %middle.block5152 ], [ %i.dmf, %.lr.ph2148 ] ; 11 uses
  %.not.i.i1082152 = icmp eq i64 %.1.i.i104.lcssa, 0
  br i1 %.not.i.i1082152, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %iter.check

iter.check:                                       ; preds = %.preheader1132
  %.119.i.i103.lcssa5122 = ptrtoaddr ptr %.119.i.i103.lcssa to i64
  %.122.i.i102.lcssa5121 = ptrtoaddr ptr %.122.i.i102.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i.i104.lcssa, 4
  %i.dlk = sub i64 %.119.i.i103.lcssa5122, %.122.i.i102.lcssa5121
  %diff.check = icmp ugt i64 %i.dlk, -32
  %or.cond5279 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond5279, label %.lr.ph2156.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5123 = icmp ult i64 %.1.i.i104.lcssa, 32
  br i1 %min.iters.check5123, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dll = and i64 %.1.i.i104.lcssa, 28
  %n.vec = and i64 %.1.i.i104.lcssa, -32          ; 5 uses
  %i.dlm = and i64 %.1.i.i104.lcssa, 31
  %i.dln = getelementptr i8, ptr %.119.i.i103.lcssa, i64 %n.vec
  %i.dlo = getelementptr i8, ptr %.122.i.i102.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i.i103.lcssa, i64 %index ; 2 uses
  %next.gep5124 = getelementptr i8, ptr %.122.i.i102.lcssa, i64 %index ; 2 uses
  %i.dlp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !99
  %wide.load5125 = load <16 x i8>, ptr %i.dlp, align 1, !tbaa !99
  %i.dlq = getelementptr i8, ptr %next.gep5124, i64 16
  store <16 x i8> %wide.load, ptr %next.gep5124, align 1, !tbaa !99
  store <16 x i8> %wide.load5125, ptr %i.dlq, align 1, !tbaa !99
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dlr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dlr, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i.i104.lcssa, %n.vec
  br i1 %cmp.n, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dll, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2156.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5128 = and i64 %.1.i.i104.lcssa, -4       ; 4 uses
  %i.dls = and i64 %.1.i.i104.lcssa, 3
  %i.dlt = getelementptr i8, ptr %.119.i.i103.lcssa, i64 %n.vec5128
  %i.dlu = getelementptr i8, ptr %.122.i.i102.lcssa, i64 %n.vec5128 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5133, %vec.epilog.vector.body ] ; 3 uses
  %next.gep5130 = getelementptr i8, ptr %.119.i.i103.lcssa, i64 %index5129
  %next.gep5131 = getelementptr i8, ptr %.122.i.i102.lcssa, i64 %index5129
  %wide.load5132 = load <4 x i8>, ptr %next.gep5130, align 1, !tbaa !99
  store <4 x i8> %wide.load5132, ptr %next.gep5131, align 1, !tbaa !99
  %index.next5133 = add nuw i64 %index5129, 4     ; 2 uses
  %i.dlv = icmp eq i64 %index.next5133, %n.vec5128
  br i1 %i.dlv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !344

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5134 = icmp eq i64 %.1.i.i104.lcssa, %n.vec5128
  br i1 %cmp.n5134, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %.lr.ph2156.preheader

.lr.ph2156.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i.i1072155.ph = phi i64 [ %.1.i.i104.lcssa, %iter.check ], [ %i.dlm, %vec.epilog.iter.check ], [ %i.dls, %vec.epilog.middle.block ] ; 4 uses
  %.220.i.i1062154.ph = phi ptr [ %.119.i.i103.lcssa, %iter.check ], [ %i.dln, %vec.epilog.iter.check ], [ %i.dlt, %vec.epilog.middle.block ] ; 2 uses
  %.223.i.i1052153.ph = phi ptr [ %.122.i.i102.lcssa, %iter.check ], [ %i.dlo, %vec.epilog.iter.check ], [ %i.dlu, %vec.epilog.middle.block ] ; 2 uses
  %i.dlw = add nsw i64 %.2.i.i1072155.ph, -1
  %xtraiter5925 = and i64 %.2.i.i1072155.ph, 7    ; 2 uses
  %lcmp.mod5926.not = icmp eq i64 %xtraiter5925, 0
  br i1 %lcmp.mod5926.not, label %.lr.ph2156.prol.loopexit, label %.lr.ph2156.prol

.lr.ph2156.prol:                                  ; preds = %.lr.ph2156.preheader, %.lr.ph2156.prol
  %.2.i.i1072155.prol = phi i64 [ %i.dma, %.lr.ph2156.prol ], [ %.2.i.i1072155.ph, %.lr.ph2156.preheader ]
  %.220.i.i1062154.prol = phi ptr [ %i.dlx, %.lr.ph2156.prol ], [ %.220.i.i1062154.ph, %.lr.ph2156.preheader ] ; 2 uses
  %.223.i.i1052153.prol = phi ptr [ %i.dlz, %.lr.ph2156.prol ], [ %.223.i.i1052153.ph, %.lr.ph2156.preheader ] ; 2 uses
  %prol.iter5927 = phi i64 [ %prol.iter5927.next, %.lr.ph2156.prol ], [ 0, %.lr.ph2156.preheader ]
  %i.dlx = getelementptr inbounds nuw i8, ptr %.220.i.i1062154.prol, i64 1 ; 2 uses
  %i.dly = load i8, ptr %.220.i.i1062154.prol, align 1, !tbaa !99
  %i.dlz = getelementptr inbounds nuw i8, ptr %.223.i.i1052153.prol, i64 1 ; 3 uses
  store i8 %i.dly, ptr %.223.i.i1052153.prol, align 1, !tbaa !99
  %i.dma = add nsw i64 %.2.i.i1072155.prol, -1    ; 2 uses
  %prol.iter5927.next = add i64 %prol.iter5927, 1 ; 2 uses
  %prol.iter5927.cmp.not = icmp eq i64 %prol.iter5927.next, %xtraiter5925
  br i1 %prol.iter5927.cmp.not, label %.lr.ph2156.prol.loopexit, label %.lr.ph2156.prol, !llvm.loop !345

.lr.ph2156.prol.loopexit:                         ; preds = %.lr.ph2156.prol, %.lr.ph2156.preheader
  %.lcssa5770.unr = phi ptr [ poison, %.lr.ph2156.preheader ], [ %i.dlz, %.lr.ph2156.prol ]
  %.2.i.i1072155.unr = phi i64 [ %.2.i.i1072155.ph, %.lr.ph2156.preheader ], [ %i.dma, %.lr.ph2156.prol ]
  %.220.i.i1062154.unr = phi ptr [ %.220.i.i1062154.ph, %.lr.ph2156.preheader ], [ %i.dlx, %.lr.ph2156.prol ]
  %.223.i.i1052153.unr = phi ptr [ %.223.i.i1052153.ph, %.lr.ph2156.preheader ], [ %i.dlz, %.lr.ph2156.prol ]
  %i.dmb = icmp ult i64 %i.dlw, 7
  br i1 %i.dmb, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %.lr.ph2156

.lr.ph2148:                                       ; preds = %.lr.ph2148.preheader5680, %.lr.ph2148
  %.1.i.i1042147 = phi i64 [ %i.dmf, %.lr.ph2148 ], [ %.1.i.i1042147.ph, %.lr.ph2148.preheader5680 ]
  %.119.i.i1032146 = phi ptr [ %i.dme, %.lr.ph2148 ], [ %.119.i.i1032146.ph, %.lr.ph2148.preheader5680 ] ; 2 uses
  %.122.i.i1022145 = phi ptr [ %i.dmd, %.lr.ph2148 ], [ %.122.i.i1022145.ph, %.lr.ph2148.preheader5680 ] ; 2 uses
  %i.dmc = load i32, ptr %.119.i.i1032146, align 1
  store i32 %i.dmc, ptr %.122.i.i1022145, align 1
  %i.dmd = getelementptr inbounds nuw i8, ptr %.122.i.i1022145, i64 4 ; 2 uses
  %i.dme = getelementptr inbounds nuw i8, ptr %.119.i.i1032146, i64 4 ; 2 uses
  %i.dmf = add nsw i64 %.1.i.i1042147, -4         ; 3 uses
  %i.dmg = icmp ugt i64 %i.dmf, 3
  br i1 %i.dmg, label %.lr.ph2148, label %.preheader1132, !llvm.loop !346

.lr.ph2156:                                       ; preds = %.lr.ph2156.prol.loopexit, %.lr.ph2156
  %.2.i.i1072155 = phi i64 [ %i.dnf, %.lr.ph2156 ], [ %.2.i.i1072155.unr, %.lr.ph2156.prol.loopexit ]
  %.220.i.i1062154 = phi ptr [ %i.dnc, %.lr.ph2156 ], [ %.220.i.i1062154.unr, %.lr.ph2156.prol.loopexit ] ; 9 uses
  %.223.i.i1052153 = phi ptr [ %i.dne, %.lr.ph2156 ], [ %.223.i.i1052153.unr, %.lr.ph2156.prol.loopexit ] ; 9 uses
  %i.dmh = getelementptr inbounds nuw i8, ptr %.220.i.i1062154, i64 1
  %i.dmi = load i8, ptr %.220.i.i1062154, align 1, !tbaa !99
  %i.dmj = getelementptr inbounds nuw i8, ptr %.223.i.i1052153, i64 1
  store i8 %i.dmi, ptr %.223.i.i1052153, align 1, !tbaa !99
  %i.dmk = getelementptr inbounds nuw i8, ptr %.220.i.i1062154, i64 2
  %i.dml = load i8, ptr %i.dmh, align 1, !tbaa !99
  %i.dmm = getelementptr inbounds nuw i8, ptr %.223.i.i1052153, i64 2
  store i8 %i.dml, ptr %i.dmj, align 1, !tbaa !99
  %i.dmn = getelementptr inbounds nuw i8, ptr %.220.i.i1062154, i64 3
  %i.dmo = load i8, ptr %i.dmk, align 1, !tbaa !99
  %i.dmp = getelementptr inbounds nuw i8, ptr %.223.i.i1052153, i64 3
  store i8 %i.dmo, ptr %i.dmm, align 1, !tbaa !99
  %i.dmq = getelementptr inbounds nuw i8, ptr %.220.i.i1062154, i64 4
  %i.dmr = load i8, ptr %i.dmn, align 1, !tbaa !99
  %i.dms = getelementptr inbounds nuw i8, ptr %.223.i.i1052153, i64 4
  store i8 %i.dmr, ptr %i.dmp, align 1, !tbaa !99
  %i.dmt = getelementptr inbounds nuw i8, ptr %.220.i.i1062154, i64 5
  %i.dmu = load i8, ptr %i.dmq, align 1, !tbaa !99
  %i.dmv = getelementptr inbounds nuw i8, ptr %.223.i.i1052153, i64 5
  store i8 %i.dmu, ptr %i.dms, align 1, !tbaa !99
  %i.dmw = getelementptr inbounds nuw i8, ptr %.220.i.i1062154, i64 6
  %i.dmx = load i8, ptr %i.dmt, align 1, !tbaa !99
  %i.dmy = getelementptr inbounds nuw i8, ptr %.223.i.i1052153, i64 6
  store i8 %i.dmx, ptr %i.dmv, align 1, !tbaa !99
  %i.dmz = getelementptr inbounds nuw i8, ptr %.220.i.i1062154, i64 7
  %i.dna = load i8, ptr %i.dmw, align 1, !tbaa !99
  %i.dnb = getelementptr inbounds nuw i8, ptr %.223.i.i1052153, i64 7
  store i8 %i.dna, ptr %i.dmy, align 1, !tbaa !99
  %i.dnc = getelementptr inbounds nuw i8, ptr %.220.i.i1062154, i64 8
  %i.dnd = load i8, ptr %i.dmz, align 1, !tbaa !99
  %i.dne = getelementptr inbounds nuw i8, ptr %.223.i.i1052153, i64 8 ; 2 uses
  store i8 %i.dnd, ptr %i.dnb, align 1, !tbaa !99
  %i.dnf = add nsw i64 %.2.i.i1072155, -8         ; 2 uses
  %.not.i.i108.7 = icmp eq i64 %i.dnf, 0
  br i1 %.not.i.i108.7, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %.lr.ph2156, !llvm.loop !347

_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i: ; preds = %.preheader1118, %.lr.ph2156.prol.loopexit, %.lr.ph2156, %.preheader1104, %bb.jq, %.lr.ph2133.prol.loopexit, %bb.ke, %bb.lx, %.lr.ph2184.prol.loopexit, %bb.ml, %middle.block, %vec.epilog.middle.block, %.preheader1132
  %.8258.i583.i.lcssa.sink4430 = phi ptr [ %.8258.i583.i, %bb.ke ], [ %.lcssa5840.unr, %.lr.ph2184.prol.loopexit ], [ %.8258.i.i123, %bb.ml ], [ %.2252.i.i115.lcssa, %.preheader1104 ], [ %i.dne, %.lr.ph2156 ], [ %.lcssa5757.unr, %.lr.ph2133.prol.loopexit ], [ %.122.i.i102.lcssa, %.preheader1132 ], [ %i.dlu, %vec.epilog.middle.block ], [ %i.dlo, %middle.block ], [ %i.ddf, %bb.lx ], [ %i.cpw, %bb.jq ], [ %.lcssa5770.unr, %.lr.ph2156.prol.loopexit ], [ %.2252.i575.i.lcssa, %.preheader1118 ] ; 4 uses
  %i.dng = getelementptr inbounds nuw i8, ptr %.8258.i583.i.lcssa.sink4430, i64 1
  store i8 34, ptr %.8258.i583.i.lcssa.sink4430, align 1, !tbaa !99
  %i.dnh = select i1 %.not532.i, i8 44, i8 58
  %i.dni = getelementptr inbounds nuw i8, ptr %.8258.i583.i.lcssa.sink4430, i64 2
  store i8 %i.dnh, ptr %i.dng, align 1, !tbaa !99
  %i.dnj = select i1 %.not532.i, i8 10, i8 32
  %i.dnk = getelementptr inbounds nuw i8, ptr %.8258.i583.i.lcssa.sink4430, i64 3
  store i8 %i.dnj, ptr %i.dni, align 1, !tbaa !99
  br label %bb.sg

bb.ni:                                            ; preds = %bb.ip
  %i.dnl = trunc i64 %.0787 to i32
  %i.dnm = and i32 %i.chy, %i.dnl
  %.not527.i = icmp ne i32 %i.dnm, 0              ; 2 uses
  %i.dnn = select i1 %.not527.i, i64 32, i64 %i.cia ; 2 uses
  %i.dno = getelementptr inbounds nuw i8, ptr %.0478.i, i64 %i.dnn
  %.not528.i = icmp ult ptr %i.dno, %.0456.i
  br i1 %.not528.i, label %bb.nl, label %bb.nj, !prof !61

bb.nj:                                            ; preds = %bb.ni
  %i.dnp = lshr i64 %.0454.i, 1
  %i.dnq = tail call i64 @llvm.umax.i64(i64 %i.dnp, i64 %i.dnn)
  %i.dnr = add i64 %i.dnq, 15
  %i.dns = and i64 %i.dnr, -16
  %i.dnt = add i64 %i.dns, %.0454.i               ; 4 uses
  %i.dnu = tail call noundef ptr %.sroa.6494.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0489.i, i64 noundef %.0454.i, i64 noundef %i.dnt), !inline_history !338 ; 6 uses
  %.not529.i = icmp eq ptr %i.dnu, null
  br i1 %.not529.i, label %.loopexit1130, label %bb.nk, !prof !44

bb.nk:                                            ; preds = %bb.nj
  %i.dnv = ptrtoint ptr %.0467.i to i64
  %i.dnw = ptrtoint ptr %.0456.i to i64           ; 2 uses
  %i.dnx = sub i64 %i.dnv, %i.dnw                 ; 2 uses
  %i.dny = sub i64 %i.dnt, %i.dnx
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.dnu, i64 %i.dny ; 2 uses
  %i.doa = ptrtoint ptr %.0489.i to i64           ; 2 uses
  %i.dob = sub i64 %i.dnw, %i.doa
  %i.doc = getelementptr inbounds i8, ptr %i.dnu, i64 %i.dob
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dnz, ptr nonnull align 1 %i.doc, i64 %i.dnx, i1 false)
  %i.dod = ptrtoint ptr %.0478.i to i64
  %i.doe = sub i64 %i.dod, %i.doa
  %i.dof = getelementptr inbounds i8, ptr %i.dnu, i64 %i.doe
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dnu, i64 %i.dnt
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.ni
  %.2491.i = phi ptr [ %i.dnu, %bb.nk ], [ %.0489.i, %bb.ni ] ; 2 uses
  %.3481.i = phi ptr [ %i.dof, %bb.nk ], [ %.0478.i, %bb.ni ] ; 3 uses
  %.2469.i = phi ptr [ %i.dog, %bb.nk ], [ %.0467.i, %bb.ni ]
  %.2458.i = phi ptr [ %i.dnz, %bb.nk ], [ %.0456.i, %bb.ni ]
  %.2.i = phi i64 [ %i.dnt, %bb.nk ], [ %.0454.i, %bb.ni ]
  %.not.i851.i2094 = select i1 %.not527.i, i1 true, i1 %.not.i851.i20943132
  br i1 %.not.i851.i2094, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i, label %select.unfold879.preheader

select.unfold879.preheader:                       ; preds = %bb.nl
  br i1 %lcmp.mod.not, label %select.unfold879.prol.loopexit, label %select.unfold879.prol

select.unfold879.prol:                            ; preds = %select.unfold879.preheader, %select.unfold879.prol
  %.0.i850.i2096.prol = phi ptr [ %i.doi, %select.unfold879.prol ], [ %.3481.i, %select.unfold879.preheader ] ; 2 uses
  %.04.i849.i2095.prol = phi i64 [ %i.doh, %select.unfold879.prol ], [ %.0.i.ph, %select.unfold879.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold879.prol ], [ 0, %select.unfold879.preheader ]
  %i.doh = add i64 %.04.i849.i2095.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i850.i2096.prol, align 1
  %i.doi = getelementptr inbounds nuw i8, ptr %.0.i850.i2096.prol, i64 %i.chb ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold879.prol.loopexit, label %select.unfold879.prol, !llvm.loop !348

select.unfold879.prol.loopexit:                   ; preds = %select.unfold879.prol, %select.unfold879.preheader
  %.lcssa5684.unr = phi ptr [ poison, %select.unfold879.preheader ], [ %i.doi, %select.unfold879.prol ]
  %.0.i850.i2096.unr = phi ptr [ %.3481.i, %select.unfold879.preheader ], [ %i.doi, %select.unfold879.prol ]
  %.04.i849.i2095.unr = phi i64 [ %.0.i.ph, %select.unfold879.preheader ], [ %i.doh, %select.unfold879.prol ]
  br i1 %i.cid, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i, label %select.unfold879

select.unfold879:                                 ; preds = %select.unfold879.prol.loopexit, %select.unfold879
  %.0.i850.i2096 = phi ptr [ %i.dor, %select.unfold879 ], [ %.0.i850.i2096.unr, %select.unfold879.prol.loopexit ] ; 2 uses
  %.04.i849.i2095 = phi i64 [ %i.doq, %select.unfold879 ], [ %.04.i849.i2095.unr, %select.unfold879.prol.loopexit ]
  store i32 538976288, ptr %.0.i850.i2096, align 1
  %i.doj = getelementptr inbounds nuw i8, ptr %.0.i850.i2096, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.doj, align 1
  %i.dok = getelementptr inbounds nuw i8, ptr %i.doj, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.dok, align 1
  %i.dol = getelementptr inbounds nuw i8, ptr %i.dok, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.dol, align 1
  %i.dom = getelementptr inbounds nuw i8, ptr %i.dol, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.dom, align 1
  %i.don = getelementptr inbounds nuw i8, ptr %i.dom, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.don, align 1
  %i.doo = getelementptr inbounds nuw i8, ptr %i.don, i64 %i.chb ; 2 uses
  store i32 538976288, ptr %i.doo, align 1
  %i.dop = getelementptr inbounds nuw i8, ptr %i.doo, i64 %i.chb ; 2 uses
  %i.doq = add i64 %.04.i849.i2095, -8            ; 2 uses
  store i32 538976288, ptr %i.dop, align 1
  %i.dor = getelementptr inbounds nuw i8, ptr %i.dop, i64 %i.chb ; 2 uses
  %.not.i851.i.7 = icmp eq i64 %i.doq, 0
  br i1 %.not.i851.i.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i, label %select.unfold879, !llvm.loop !36

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i: ; preds = %select.unfold879.prol.loopexit, %select.unfold879, %bb.nl
  %.0.i850.i.lcssa = phi ptr [ %.3481.i, %bb.nl ], [ %.lcssa5684.unr, %select.unfold879.prol.loopexit ], [ %i.dor, %select.unfold879 ] ; 11 uses
  %i.dos = load i64, ptr %.0503.i, align 8, !tbaa !98 ; 2 uses
  %i.dot = and i64 %i.dos, 16
  %.not.i658.i = icmp eq i64 %i.dot, 0
  %i.dou = getelementptr inbounds nuw i8, ptr %.0503.i, i64 8
  %i.dov = load i64, ptr %i.dou, align 8, !tbaa !99 ; 10 uses
  br i1 %.not.i658.i, label %bb.qo, label %bb.nm

bb.nm:                                            ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i
  %i.dow = and i64 %i.dov, 4503599627370495       ; 4 uses
  %i.dox = lshr i64 %i.dov, 52
  %i.doy = trunc nuw nsw i64 %i.dox to i32
  %i.doz = and i32 %i.doy, 2047                   ; 7 uses
  %i.dpa = icmp eq i32 %i.doz, 2047
  br i1 %i.dpa, label %bb.nn, label %bb.nt, !prof !44

bb.nn:                                            ; preds = %bb.nm
  br i1 %.not964, label %bb.np, label %bb.no, !prof !61

bb.no:                                            ; preds = %bb.nn
  store i32 1819047278, ptr %.0.i850.i.lcssa, align 1
  %i.dpb = getelementptr inbounds nuw i8, ptr %.0.i850.i.lcssa, i64 4
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.np:                                            ; preds = %bb.nn
  br i1 %.not965, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread884, label %bb.nq, !prof !61

bb.nq:                                            ; preds = %bb.np
  %i.dpc = icmp eq i64 %i.dow, 0
  br i1 %i.dpc, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %bb.nq
  store i8 45, ptr %.0.i850.i.lcssa, align 1, !tbaa !99
  %.lobit131.i.i82 = lshr i64 %i.dov, 63
  %i.dpd = getelementptr inbounds nuw i8, ptr %.0.i850.i.lcssa, i64 %.lobit131.i.i82 ; 2 uses
  store i64 8751735898823355977, ptr %i.dpd, align 1
  %i.dpe = getelementptr inbounds nuw i8, ptr %i.dpd, i64 8
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.ns:                                            ; preds = %bb.nq
  store i32 5136718, ptr %.0.i850.i.lcssa, align 1
  %i.dpf = getelementptr inbounds nuw i8, ptr %.0.i850.i.lcssa, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.nt:                                            ; preds = %bb.nm
  store i8 45, ptr %.0.i850.i.lcssa, align 1, !tbaa !99
  %.lobit.i679.i = lshr i64 %i.dov, 63            ; 2 uses
  %i.dpg = getelementptr i8, ptr %.0.i850.i.lcssa, i64 %.lobit.i679.i ; 38 uses
  %.mask.i.i34 = and i64 %i.dov, 9223372036854775807
  %i.dph = icmp eq i64 %.mask.i.i34, 0
  br i1 %i.dph, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  store i32 3157552, ptr %i.dpg, align 1
  %i.dpi = getelementptr inbounds nuw i8, ptr %i.dpg, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.nv:                                            ; preds = %bb.nt
  %.not.i680.i = icmp eq i32 %i.doz, 0
  br i1 %.not.i680.i, label %bb.pr, label %bb.nw, !prof !44

bb.nw:                                            ; preds = %bb.nv
  %i.dpj = or disjoint i64 %i.dow, 4503599627370496 ; 3 uses
  %i.dpk = add nsw i32 %i.doz, -1023
  %or.cond.i681.i = icmp ult i32 %i.dpk, 53
  br i1 %or.cond.i681.i, label %bb.nx, label %bb.on

bb.nx:                                            ; preds = %bb.nw
  %i.dpl = tail call range(i64 0, 53) i64 @llvm.cttz.i64(i64 range(i64 4503599627370496, 9007199254740992) %i.dpj, i1 true)
  %i.dpm = trunc nuw nsw i64 %i.dpl to i32
  %i.dpn = sub nuw nsw i32 1075, %i.doz           ; 2 uses
  %.not127.i.i61 = icmp samesign ugt i32 %i.dpn, %i.dpm
  br i1 %.not127.i.i61, label %bb.on, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.dpo = zext nneg i32 %i.dpn to i64
  %i.dpp = lshr i64 %i.dpj, %i.dpo                ; 21 uses
  %i.dpq = icmp samesign ult i64 %i.dpp, 100000000
  br i1 %i.dpq, label %bb.nz, label %bb.og

bb.nz:                                            ; preds = %bb.ny
  %i.dpr = trunc nuw nsw i64 %i.dpp to i32        ; 4 uses
  %i.dps = icmp samesign ult i64 %i.dpp, 100
  br i1 %i.dps, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  %i.dpt = icmp samesign ult i64 %i.dpp, 10       ; 2 uses
  %i.dpu = shl nuw nsw i64 %i.dpp, 1
  %i.dpv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dpu
  %.neg70.i774.i = sext i1 %i.dpt to i64
  %i.dpw = zext i1 %i.dpt to i64
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dpv, i64 %i.dpw
  %i.dpy = load i16, ptr %i.dpx, align 1
  store i16 %i.dpy, ptr %i.dpg, align 1
  %i.dpz = getelementptr inbounds i8, ptr %i.dpg, i64 %.neg70.i774.i
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.dpz, i64 2
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i62

bb.ob:                                            ; preds = %bb.nz
  %i.dqb = icmp samesign ult i64 %i.dpp, 10000
  br i1 %i.dqb, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  %i.dqc = mul nuw nsw i32 %i.dpr, 5243
  %i.dqd = lshr i32 %i.dqc, 19                    ; 2 uses
  %.neg68.i772.i = mul nsw i32 %i.dqd, -100
  %i.dqe = add nsw i32 %.neg68.i772.i, %i.dpr
  %i.dqf = icmp samesign ult i64 %i.dpp, 1000     ; 2 uses
  %i.dqg = shl nuw nsw i32 %i.dqd, 1
end_hunk_17
begin_hunk_18_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
.loopexit1130:                                    ; preds = %bb.ro, %bb.sd, %bb.rz, %bb.rv, %bb.rk, %bb.nj, %bb.ir, %bb.si, %bb.so, %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i33
  %.13502.i = phi ptr [ %.9498.i, %bb.si ], [ null, %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i33 ], [ %.10499.i, %bb.so ], [ %.0489.i, %bb.sd ], [ %.0489.i, %bb.ir ], [ %.0489.i, %bb.nj ], [ %.0489.i, %bb.rk ], [ %.0489.i, %bb.rv ], [ %.0489.i, %bb.rz ], [ %.0489.i, %bb.ro ] ; 2 uses
  br i1 %.not29, label %.cont401, label %.else403

.else403:                                         ; preds = %.loopexit1130
  store i64 0, ptr %4, align 8, !tbaa !105
  br label %.cont401

.cont401:                                         ; preds = %.loopexit1130, %.else403
  store i32 2, ptr %i.b, align 8, !tbaa !149
  %.sroa.sel443.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %.sroa.sel443.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel443.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.28, ptr %.sroa.sel443.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  %.not545.i = icmp eq ptr %.13502.i, null
  br i1 %.not545.i, label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit, label %bb.ss

bb.ss:                                            ; preds = %.cont401
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %.13502.i), !inline_history !338
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.st:                                            ; preds = %bb.rt
  br i1 %.not29, label %bb.su, label %.else394

.else394:                                         ; preds = %bb.st
  store i64 0, ptr %4, align 8, !tbaa !105
  br label %bb.su

bb.su:                                            ; preds = %.else394, %bb.st
  store i32 3, ptr %i.b, align 8, !tbaa !149
  %.sroa.sel452.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %.sroa.sel452.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel452.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.86, ptr %.sroa.sel452.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %.0489.i), !inline_history !338
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread884: ; preds = %bb.np
  br i1 %.not29, label %bb.sv, label %.else400

.else400:                                         ; preds = %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread884
  store i64 0, ptr %4, align 8, !tbaa !105
  br label %bb.sv

bb.sv:                                            ; preds = %.else400, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread884
  store i32 4, ptr %i.b, align 8, !tbaa !149
  %.sroa.sel446.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %.sroa.sel446.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel446.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.87, ptr %.sroa.sel446.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %.2491.i), !inline_history !338
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

.loopexit1102:                                    ; preds = %.thread847, %.thread837, %.thread857, %.thread867
  br i1 %.not29, label %bb.sw, label %.else397

.else397:                                         ; preds = %.loopexit1102
  store i64 0, ptr %4, align 8, !tbaa !105
  br label %bb.sw

bb.sw:                                            ; preds = %.else397, %.loopexit1102
  store i32 7, ptr %i.b, align 8, !tbaa !149
  %.sroa.sel449.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %.sroa.sel449.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel449.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.88, ptr %.sroa.sel449.v.sroa.sel.v.sroa.sel, align 8, !tbaa !148
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %.1490.i), !inline_history !338
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.sx:                                            ; preds = %bb.ii
  br i1 %.not968, label %bb.sz, label %bb.sy, !prof !61

bb.sy:                                            ; preds = %bb.sx
  %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i.i379 = select i1 %.not969, ptr @_ZN13duckdb_yyjsonL13enc_table_escE, ptr @_ZN13duckdb_yyjsonL19enc_table_esc_slashE, !prof !61
  br label %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i198

bb.sz:                                            ; preds = %bb.sx
  %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i.i197 = select i1 %.not969, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, ptr @_ZN13duckdb_yyjsonL19enc_table_cpy_slashE, !prof !61
  br label %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i198

_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i198: ; preds = %bb.sz, %bb.sy
  %.0.i424.i = phi ptr [ %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i.i379, %bb.sy ], [ %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i.i197, %bb.sz ] ; 28 uses
  %i.gda = icmp eq ptr %.0.i424.i, @_ZN13duckdb_yyjsonL13enc_table_cpyE
  %i.gdb = and i32 %2, 32
  %.not971 = icmp eq i32 %i.gdb, 0                ; 4 uses
  %i.gdc = and i32 %2, 128
  %.not972 = icmp eq i32 %i.gdc, 0
  %i.gdd = mul i64 %1, 18
  %i.gde = add i64 %i.gdd, 78
  %i.gdf = and i64 %i.gde, -16                    ; 3 uses
  %i.gdg = tail call noundef ptr %.sroa.0491.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.gdf), !inline_history !354 ; 5 uses
  %.not.i199 = icmp eq ptr %i.gdg, null
  br i1 %.not.i199, label %.loopexit1100, label %bb.ta

bb.ta:                                            ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i198
  %i.gdh = getelementptr inbounds nuw i8, ptr %i.gdg, i64 %i.gdf ; 2 uses
  %i.gdi = load i64, ptr %0, align 8, !tbaa !98   ; 2 uses
  %i.gdj = and i64 %i.gdi, 7
  %i.gdk = icmp eq i64 %i.gdj, 7                  ; 4 uses
  %i.gdl = zext i1 %i.gdk to i8
  %i.gdm = lshr i64 %i.gdi, 8
  %i.gdn = zext i1 %i.gdk to i64
  %i.gdo = shl nuw nsw i64 %i.gdm, %i.gdn
  %i.gdp = select i1 %i.gdk, i8 123, i8 91
  %i.gdq = getelementptr inbounds nuw i8, ptr %i.gdg, i64 1
  store i8 %i.gdp, ptr %i.gdg, align 1, !tbaa !99
  %i.gdr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gds = load ptr, ptr %i.gdr, align 8, !tbaa !99 ; 2 uses
  br i1 %i.gdk, label %bb.tb, label %bb.tc

bb.tb:                                            ; preds = %bb.ta
  %i.gdt = getelementptr inbounds nuw i8, ptr %i.gds, i64 16
  %i.gdu = load ptr, ptr %i.gdt, align 8, !tbaa !103
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %.pn.i200 = phi ptr [ %i.gdu, %bb.tb ], [ %i.gds, %bb.ta ]
  %i.gdv = and i32 %2, 16
  %.not985 = icmp eq i32 %i.gdv, 0
  %i.gdw = and i32 %2, 8
  %.not986 = icmp eq i32 %i.gdw, 0
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.tc
  %.0780.ph = phi i8 [ %i.gdl, %bb.tc ], [ %.0780.ph.be, %.outer.backedge ] ; 3 uses
  %.0779.ph = phi i64 [ %i.gdo, %bb.tc ], [ %.0779.ph.be, %.outer.backedge ]
  %.0777.ph = phi ptr [ %0, %bb.tc ], [ %.0777.ph.be, %.outer.backedge ] ; 2 uses
  %.pn.i200.pn = phi ptr [ %.pn.i200, %bb.tc ], [ %.pn.i200.pn.be, %.outer.backedge ]
  %.0365.i.ph = phi ptr [ %i.gdg, %bb.tc ], [ %.0365.i.ph.be, %.outer.backedge ]
  %.0356.i.ph = phi ptr [ %i.gdq, %bb.tc ], [ %.0356.i.ph.be, %.outer.backedge ]
  %.0348.i.ph = phi ptr [ %i.gdh, %bb.tc ], [ %.0348.i.ph.be, %.outer.backedge ]
  %.0340.i.ph = phi ptr [ %i.gdh, %bb.tc ], [ %.0340.i.ph.be, %.outer.backedge ]
  %.0.i202.ph = phi i64 [ %i.gdf, %bb.tc ], [ %.0.i202.ph.be, %.outer.backedge ]
  %i.gdx = zext nneg i8 %.0780.ph to i32
  br label %bb.td

bb.td:                                            ; preds = %bb.acp, %.outer
  %.0779 = phi i64 [ %.0779.ph, %.outer ], [ %i.jrk, %bb.acp ] ; 3 uses
  %.0376.i.pn = phi ptr [ %.pn.i200.pn, %.outer ], [ %.0376.i, %bb.acp ]
  %.0365.i = phi ptr [ %.0365.i.ph, %.outer ], [ %.7372.i, %bb.acp ] ; 25 uses
  %.0356.i = phi ptr [ %.0356.i.ph, %.outer ], [ %.8364.i, %bb.acp ] ; 18 uses
  %.0348.i = phi ptr [ %.0348.i.ph, %.outer ], [ %.7355.i, %bb.acp ] ; 12 uses
  %.0340.i = phi ptr [ %.0340.i.ph, %.outer ], [ %.7347.i, %bb.acp ] ; 18 uses
  %.0.i202 = phi i64 [ %.0.i202.ph, %.outer ], [ %.7.i211, %bb.acp ] ; 24 uses
  %.0376.i.in = getelementptr inbounds nuw i8, ptr %.0376.i.pn, i64 16
  %.0376.i = load ptr, ptr %.0376.i.in, align 8, !tbaa !103 ; 11 uses
  %i.gdy = load i64, ptr %.0376.i, align 8, !tbaa !98 ; 7 uses
  %i.gdz = trunc i64 %i.gdy to i8                 ; 2 uses
  %i.gea = and i8 %i.gdz, 7                       ; 3 uses
  switch i8 %i.gea, label %bb.abv [
    i8 5, label %bb.te
    i8 4, label %bb.xw
  ]

bb.te:                                            ; preds = %bb.td
  %i.geb = trunc i64 %.0779 to i32
  %i.gec = xor i32 %i.geb, -1
  %i.ged = and i32 %i.gec, %i.gdx
  %.not399.i = icmp eq i32 %i.ged, 0
  %i.gee = lshr i64 %i.gdy, 8                     ; 9 uses
  %i.gef = getelementptr inbounds nuw i8, ptr %.0376.i, i64 8
  %i.geg = load ptr, ptr %i.gef, align 8, !tbaa !99 ; 7 uses
  %i.geh = ptrtoaddr ptr %i.geg to i64            ; 4 uses
  %i.gei = mul nuw nsw i64 %i.gee, 6
  %i.gej = add nuw nsw i64 %i.gei, 16             ; 2 uses
  %i.gek = getelementptr inbounds nuw i8, ptr %.0356.i, i64 %i.gej
  %.not400.i = icmp ult ptr %i.gek, %.0340.i
  br i1 %.not400.i, label %bb.th, label %bb.tf, !prof !61

bb.tf:                                            ; preds = %bb.te
  %i.gel = lshr i64 %.0.i202, 1
  %i.gem = tail call i64 @llvm.umax.i64(i64 %i.gel, i64 %i.gej)
  %i.gen = add nuw i64 %i.gem, 15
  %i.geo = and i64 %i.gen, -16
  %i.gep = add i64 %i.geo, %.0.i202               ; 4 uses
  %i.geq = tail call noundef ptr %.sroa.6494.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0365.i, i64 noundef %.0.i202, i64 noundef %i.gep), !inline_history !354 ; 6 uses
  %.not401.i = icmp eq ptr %i.geq, null
  br i1 %.not401.i, label %.loopexit1100, label %bb.tg, !prof !44

bb.tg:                                            ; preds = %bb.tf
  %i.ger = ptrtoint ptr %.0348.i to i64
  %i.ges = ptrtoint ptr %.0340.i to i64           ; 2 uses
  %i.get = sub i64 %i.ger, %i.ges                 ; 2 uses
  %i.geu = sub i64 %i.gep, %i.get
  %i.gev = getelementptr inbounds nuw i8, ptr %i.geq, i64 %i.geu ; 2 uses
  %i.gew = ptrtoint ptr %.0365.i to i64           ; 2 uses
  %i.gex = sub i64 %i.ges, %i.gew
  %i.gey = getelementptr inbounds i8, ptr %i.geq, i64 %i.gex
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gev, ptr nonnull align 1 %i.gey, i64 %i.get, i1 false)
  %i.gez = ptrtoint ptr %.0356.i to i64
  %i.gfa = sub i64 %i.gez, %i.gew
  %i.gfb = getelementptr inbounds i8, ptr %i.geq, i64 %i.gfa
  %i.gfc = getelementptr inbounds nuw i8, ptr %i.geq, i64 %i.gep
  br label %bb.th

bb.th:                                            ; preds = %bb.tg, %bb.te
  %.1366.i = phi ptr [ %i.geq, %bb.tg ], [ %.0365.i, %bb.te ] ; 2 uses
  %.1357.i = phi ptr [ %i.gfb, %bb.tg ], [ %.0356.i, %bb.te ] ; 5 uses
  %.1349.i = phi ptr [ %i.gfc, %bb.tg ], [ %.0348.i, %bb.te ]
  %.1341.i = phi ptr [ %i.gev, %bb.tg ], [ %.0340.i, %bb.te ]
  %.1.i271 = phi i64 [ %i.gep, %bb.tg ], [ %.0.i202, %bb.te ]
  br i1 %i.gda, label %bb.vo, label %.split.i272, !prof !61

.split.i272:                                      ; preds = %bb.th
  %i.gfd = getelementptr inbounds nuw i8, ptr %i.geg, i64 %i.gee ; 3 uses
  store i8 34, ptr %.1357.i, align 1, !tbaa !99
  %i.gfe = ptrtoint ptr %i.gfd to i64             ; 4 uses
  %i.gff = add i64 %i.gee, %i.geh
  br label %bb.ti

bb.ti:                                            ; preds = %bb.ut, %.split.i272
  %.pn.i430.i = phi ptr [ %.1357.i, %.split.i272 ], [ %.8258.i443.i, %bb.ut ]
  %.0243.i431.i = phi ptr [ %i.geg, %.split.i272 ], [ %i.gmy, %bb.ut ] ; 3 uses
  %.0250.i432.i = getelementptr inbounds nuw i8, ptr %.pn.i430.i, i64 1 ; 2 uses
  %i.gfg = ptrtoint ptr %.0243.i431.i to i64
  %i.gfh = sub i64 %i.gfe, %i.gfg                 ; 2 uses
  %i.gfi = icmp sgt i64 %i.gfh, 15
  br i1 %i.gfi, label %.lr.ph2239, label %.preheader1087

.preheader1087:                                   ; preds = %bb.ty, %bb.ti
  %.pre-phi2981 = phi i64 [ %i.gfh, %bb.ti ], [ %i.gio, %bb.ty ]
  %.1251.i433.i.lcssa = phi ptr [ %.0250.i432.i, %bb.ti ], [ %i.gil, %bb.ty ] ; 2 uses
  %.1244.i434.i.lcssa = phi ptr [ %.0243.i431.i, %bb.ti ], [ %i.gim, %bb.ty ] ; 2 uses
  %i.gfj = icmp sgt i64 %.pre-phi2981, 3
  br i1 %i.gfj, label %.lr.ph2245, label %.preheader1085

.lr.ph2239:                                       ; preds = %bb.ti, %bb.ty
  %.1244.i434.i2237 = phi ptr [ %i.gim, %bb.ty ], [ %.0243.i431.i, %bb.ti ] ; 46 uses
  %.1251.i433.i2236 = phi ptr [ %i.gil, %bb.ty ], [ %.0250.i432.i, %bb.ti ] ; 30 uses
  %i.gfk = load i8, ptr %.1244.i434.i2237, align 1, !tbaa !99 ; 2 uses
  %i.gfl = zext i8 %i.gfk to i64
  %i.gfm = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gfl
  %i.gfn = load i8, ptr %i.gfm, align 1, !tbaa !99
  %.not277.i501.i = icmp eq i8 %i.gfn, 0
  br i1 %.not277.i501.i, label %bb.tj, label %.preheader1082.preheader, !prof !61

bb.tj:                                            ; preds = %.lr.ph2239
  %i.gfo = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 1
  %i.gfp = load i8, ptr %i.gfo, align 1, !tbaa !99
  %i.gfq = zext i8 %i.gfp to i64
  %i.gfr = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gfq
  %i.gfs = load i8, ptr %i.gfr, align 1, !tbaa !99
  %.not278.i502.i = icmp eq i8 %i.gfs, 0
  br i1 %.not278.i502.i, label %bb.tk, label %.loopexit1089, !prof !61

bb.tk:                                            ; preds = %bb.tj
  %i.gft = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 2
  %i.gfu = load i8, ptr %i.gft, align 1, !tbaa !99
  %i.gfv = zext i8 %i.gfu to i64
  %i.gfw = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gfv
  %i.gfx = load i8, ptr %i.gfw, align 1, !tbaa !99
  %.not279.i503.i = icmp eq i8 %i.gfx, 0
  br i1 %.not279.i503.i, label %bb.tl, label %.loopexit1090, !prof !61

bb.tl:                                            ; preds = %bb.tk
  %i.gfy = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 3
  %i.gfz = load i8, ptr %i.gfy, align 1, !tbaa !99
  %i.gga = zext i8 %i.gfz to i64
  %i.ggb = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gga
  %i.ggc = load i8, ptr %i.ggb, align 1, !tbaa !99
  %.not280.i504.i = icmp eq i8 %i.ggc, 0
  br i1 %.not280.i504.i, label %bb.tm, label %.loopexit1091, !prof !61

bb.tm:                                            ; preds = %bb.tl
  %i.ggd = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 4
  %i.gge = load i8, ptr %i.ggd, align 1, !tbaa !99
  %i.ggf = zext i8 %i.gge to i64
  %i.ggg = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.ggf
  %i.ggh = load i8, ptr %i.ggg, align 1, !tbaa !99
  %.not281.i505.i = icmp eq i8 %i.ggh, 0
  br i1 %.not281.i505.i, label %bb.tn, label %bb.uf, !prof !61

bb.tn:                                            ; preds = %bb.tm
  %i.ggi = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 5
  %i.ggj = load i8, ptr %i.ggi, align 1, !tbaa !99
  %i.ggk = zext i8 %i.ggj to i64
  %i.ggl = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.ggk
  %i.ggm = load i8, ptr %i.ggl, align 1, !tbaa !99
  %.not282.i506.i = icmp eq i8 %i.ggm, 0
  br i1 %.not282.i506.i, label %bb.to, label %bb.ug, !prof !61

bb.to:                                            ; preds = %bb.tn
  %i.ggn = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 6
  %i.ggo = load i8, ptr %i.ggn, align 1, !tbaa !99
  %i.ggp = zext i8 %i.ggo to i64
  %i.ggq = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.ggp
  %i.ggr = load i8, ptr %i.ggq, align 1, !tbaa !99
  %.not283.i507.i = icmp eq i8 %i.ggr, 0
  br i1 %.not283.i507.i, label %bb.tp, label %bb.uh, !prof !61

bb.tp:                                            ; preds = %bb.to
  %i.ggs = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 7
  %i.ggt = load i8, ptr %i.ggs, align 1, !tbaa !99
  %i.ggu = zext i8 %i.ggt to i64
  %i.ggv = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.ggu
  %i.ggw = load i8, ptr %i.ggv, align 1, !tbaa !99
  %.not284.i508.i = icmp eq i8 %i.ggw, 0
  br i1 %.not284.i508.i, label %bb.tq, label %bb.ui, !prof !61

bb.tq:                                            ; preds = %bb.tp
  %i.ggx = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 8
  %i.ggy = load i8, ptr %i.ggx, align 1, !tbaa !99
  %i.ggz = zext i8 %i.ggy to i64
  %i.gha = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.ggz
  %i.ghb = load i8, ptr %i.gha, align 1, !tbaa !99
  %.not285.i509.i = icmp eq i8 %i.ghb, 0
  br i1 %.not285.i509.i, label %bb.tr, label %bb.uj, !prof !61

bb.tr:                                            ; preds = %bb.tq
  %i.ghc = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 9
  %i.ghd = load i8, ptr %i.ghc, align 1, !tbaa !99
  %i.ghe = zext i8 %i.ghd to i64
  %i.ghf = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.ghe
  %i.ghg = load i8, ptr %i.ghf, align 1, !tbaa !99
  %.not286.i510.i = icmp eq i8 %i.ghg, 0
  br i1 %.not286.i510.i, label %bb.ts, label %bb.uk, !prof !61

bb.ts:                                            ; preds = %bb.tr
  %i.ghh = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 10
  %i.ghi = load i8, ptr %i.ghh, align 1, !tbaa !99
  %i.ghj = zext i8 %i.ghi to i64
  %i.ghk = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.ghj
  %i.ghl = load i8, ptr %i.ghk, align 1, !tbaa !99
  %.not287.i511.i = icmp eq i8 %i.ghl, 0
  br i1 %.not287.i511.i, label %bb.tt, label %bb.ul, !prof !61

bb.tt:                                            ; preds = %bb.ts
  %i.ghm = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 11
  %i.ghn = load i8, ptr %i.ghm, align 1, !tbaa !99
  %i.gho = zext i8 %i.ghn to i64
  %i.ghp = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gho
  %i.ghq = load i8, ptr %i.ghp, align 1, !tbaa !99
  %.not288.i512.i = icmp eq i8 %i.ghq, 0
  br i1 %.not288.i512.i, label %bb.tu, label %bb.um, !prof !61

bb.tu:                                            ; preds = %bb.tt
  %i.ghr = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 12
  %i.ghs = load i8, ptr %i.ghr, align 1, !tbaa !99
  %i.ght = zext i8 %i.ghs to i64
  %i.ghu = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.ght
  %i.ghv = load i8, ptr %i.ghu, align 1, !tbaa !99
  %.not289.i513.i = icmp eq i8 %i.ghv, 0
  br i1 %.not289.i513.i, label %bb.tv, label %bb.un, !prof !61

bb.tv:                                            ; preds = %bb.tu
  %i.ghw = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 13
  %i.ghx = load i8, ptr %i.ghw, align 1, !tbaa !99
  %i.ghy = zext i8 %i.ghx to i64
  %i.ghz = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.ghy
  %i.gia = load i8, ptr %i.ghz, align 1, !tbaa !99
  %.not290.i514.i = icmp eq i8 %i.gia, 0
  br i1 %.not290.i514.i, label %bb.tw, label %bb.uo, !prof !61

bb.tw:                                            ; preds = %bb.tv
  %i.gib = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 14
  %i.gic = load i8, ptr %i.gib, align 1, !tbaa !99
  %i.gid = zext i8 %i.gic to i64
  %i.gie = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gid
  %i.gif = load i8, ptr %i.gie, align 1, !tbaa !99
  %.not291.i515.i = icmp eq i8 %i.gif, 0
  br i1 %.not291.i515.i, label %bb.tx, label %bb.up, !prof !61

bb.tx:                                            ; preds = %bb.tw
  %i.gig = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 15
  %i.gih = load i8, ptr %i.gig, align 1, !tbaa !99
  %i.gii = zext i8 %i.gih to i64
  %i.gij = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gii
  %i.gik = load i8, ptr %i.gij, align 1, !tbaa !99
  %.not292.i516.i = icmp eq i8 %i.gik, 0
  br i1 %.not292.i516.i, label %bb.ty, label %bb.uq, !prof !61

bb.ty:                                            ; preds = %bb.tx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i434.i2237, i64 16, i1 false)
  %i.gil = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 16 ; 2 uses
  %i.gim = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 16 ; 3 uses
  %i.gin = ptrtoint ptr %i.gim to i64
  %i.gio = sub i64 %i.gfe, %i.gin                 ; 2 uses
  %i.gip = icmp sgt i64 %i.gio, 15
  br i1 %i.gip, label %.lr.ph2239, label %.preheader1087, !llvm.loop !31

.preheader1085:                                   ; preds = %bb.ud, %.preheader1087
  %.2252.i435.i.lcssa = phi ptr [ %.1251.i433.i.lcssa, %.preheader1087 ], [ %i.gjx, %bb.ud ] ; 3 uses
  %.2245.i436.i.lcssa = phi ptr [ %.1244.i434.i.lcssa, %.preheader1087 ], [ %i.gjy, %bb.ud ] ; 5 uses
  %i.giq = icmp ugt ptr %i.gfd, %.2245.i436.i.lcssa
  br i1 %i.giq, label %.lr.ph2250.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i

.lr.ph2250.preheader:                             ; preds = %.preheader1085
  %.2245.i436.i.lcssa2894 = ptrtoaddr ptr %.2245.i436.i.lcssa to i64 ; 2 uses
  %i.gir = getelementptr i8, ptr %.2245.i436.i.lcssa, i64 %i.gee
  %scevgep2893 = getelementptr i8, ptr %i.gir, i64 %i.geh
  %i.gis = sub i64 0, %.2245.i436.i.lcssa2894
  %scevgep2895 = getelementptr i8, ptr %scevgep2893, i64 %i.gis
  %i.git = sub i64 %i.gff, %.2245.i436.i.lcssa2894
  %i.giu = freeze i64 %i.git                      ; 2 uses
  %i.giv = add i64 %i.giu, -1
  %xtraiter5950 = and i64 %i.giu, 3               ; 2 uses
  %lcmp.mod5951.not = icmp eq i64 %xtraiter5950, 0
  br i1 %lcmp.mod5951.not, label %.lr.ph2250.prol.loopexit, label %.lr.ph2250.prol

.lr.ph2250.prol:                                  ; preds = %.lr.ph2250.preheader, %bb.tz
  %.3246.i438.i2249.prol = phi ptr [ %i.gja, %bb.tz ], [ %.2245.i436.i.lcssa, %.lr.ph2250.preheader ] ; 3 uses
  %.3253.i437.i2248.prol = phi ptr [ %i.gjb, %bb.tz ], [ %.2252.i435.i.lcssa, %.lr.ph2250.preheader ] ; 3 uses
  %prol.iter5952 = phi i64 [ %prol.iter5952.next, %bb.tz ], [ 0, %.lr.ph2250.preheader ]
  %i.giw = load i8, ptr %.3246.i438.i2249.prol, align 1, !tbaa !99 ; 2 uses
  %i.gix = zext i8 %i.giw to i64
end_hunk_18
begin_hunk_19_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.gjl = load i8, ptr %i.gjk, align 1, !tbaa !99
  %.not274.i492.i = icmp eq i8 %i.gjl, 0
  br i1 %.not274.i492.i, label %bb.ub, label %.loopexit1089, !prof !61

bb.ub:                                            ; preds = %bb.ua
  %i.gjm = getelementptr inbounds nuw i8, ptr %.2245.i436.i2244, i64 2
  %i.gjn = load i8, ptr %i.gjm, align 1, !tbaa !99
  %i.gjo = zext i8 %i.gjn to i64
  %i.gjp = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gjo
  %i.gjq = load i8, ptr %i.gjp, align 1, !tbaa !99
  %.not275.i495.i = icmp eq i8 %i.gjq, 0
  br i1 %.not275.i495.i, label %bb.uc, label %.loopexit1090, !prof !61

bb.uc:                                            ; preds = %bb.ub
  %i.gjr = getelementptr inbounds nuw i8, ptr %.2245.i436.i2244, i64 3
  %i.gjs = load i8, ptr %i.gjr, align 1, !tbaa !99
  %i.gjt = zext i8 %i.gjs to i64
  %i.gju = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gjt
  %i.gjv = load i8, ptr %i.gju, align 1, !tbaa !99
  %.not276.i498.i = icmp eq i8 %i.gjv, 0
  br i1 %.not276.i498.i, label %bb.ud, label %.loopexit1091, !prof !61

bb.ud:                                            ; preds = %bb.uc
  %i.gjw = load i32, ptr %.2245.i436.i2244, align 1
  store i32 %i.gjw, ptr %.2252.i435.i2243, align 1
  %i.gjx = getelementptr inbounds nuw i8, ptr %.2252.i435.i2243, i64 4 ; 2 uses
  %i.gjy = getelementptr inbounds nuw i8, ptr %.2245.i436.i2244, i64 4 ; 3 uses
  %i.gjz = ptrtoint ptr %i.gjy to i64
  %i.gka = sub i64 %i.gfe, %i.gjz
  %i.gkb = icmp sgt i64 %i.gka, 3
  br i1 %i.gkb, label %.lr.ph2245, label %.preheader1085, !llvm.loop !32

.lr.ph2250:                                       ; preds = %.lr.ph2250.prol.loopexit, %bb.ue
  %.3246.i438.i2249 = phi ptr [ %i.gky, %bb.ue ], [ %.3246.i438.i2249.unr, %.lr.ph2250.prol.loopexit ] ; 9 uses
  %.3253.i437.i2248 = phi ptr [ %i.gkz, %bb.ue ], [ %.3253.i437.i2248.unr, %.lr.ph2250.prol.loopexit ] ; 6 uses
  %i.gkc = load i8, ptr %.3246.i438.i2249, align 1, !tbaa !99 ; 2 uses
  %i.gkd = zext i8 %i.gkc to i64
  %i.gke = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gkd
  %i.gkf = load i8, ptr %i.gke, align 1, !tbaa !99
  %.not.i440.i = icmp eq i8 %i.gkf, 0
  br i1 %.not.i440.i, label %.lr.ph2250.1, label %.preheader1082.preheader, !prof !61

.lr.ph2250.1:                                     ; preds = %.lr.ph2250
  %i.gkg = getelementptr inbounds nuw i8, ptr %.3246.i438.i2249, i64 1
  %i.gkh = getelementptr inbounds nuw i8, ptr %.3253.i437.i2248, i64 1 ; 2 uses
  store i8 %i.gkc, ptr %.3253.i437.i2248, align 1, !tbaa !99
  %i.gki = load i8, ptr %i.gkg, align 1, !tbaa !99 ; 2 uses
  %i.gkj = zext i8 %i.gki to i64
  %i.gkk = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gkj
  %i.gkl = load i8, ptr %i.gkk, align 1, !tbaa !99
  %.not.i440.i.1 = icmp eq i8 %i.gkl, 0
  br i1 %.not.i440.i.1, label %.lr.ph2250.2, label %.preheader1082.preheader.loopexit.loopexit.split.loop.exit6671, !prof !61

.lr.ph2250.2:                                     ; preds = %.lr.ph2250.1
  %i.gkm = getelementptr inbounds nuw i8, ptr %.3246.i438.i2249, i64 2
  %i.gkn = getelementptr inbounds nuw i8, ptr %.3253.i437.i2248, i64 2 ; 2 uses
  store i8 %i.gki, ptr %i.gkh, align 1, !tbaa !99
  %i.gko = load i8, ptr %i.gkm, align 1, !tbaa !99 ; 2 uses
  %i.gkp = zext i8 %i.gko to i64
  %i.gkq = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gkp
  %i.gkr = load i8, ptr %i.gkq, align 1, !tbaa !99
  %.not.i440.i.2 = icmp eq i8 %i.gkr, 0
  br i1 %.not.i440.i.2, label %.lr.ph2250.3, label %.preheader1082.preheader.loopexit.loopexit.split.loop.exit6668, !prof !61

.lr.ph2250.3:                                     ; preds = %.lr.ph2250.2
  %i.gks = getelementptr inbounds nuw i8, ptr %.3246.i438.i2249, i64 3
  %i.gkt = getelementptr inbounds nuw i8, ptr %.3253.i437.i2248, i64 3 ; 2 uses
  store i8 %i.gko, ptr %i.gkn, align 1, !tbaa !99
  %i.gku = load i8, ptr %i.gks, align 1, !tbaa !99 ; 2 uses
  %i.gkv = zext i8 %i.gku to i64
  %i.gkw = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gkv
  %i.gkx = load i8, ptr %i.gkw, align 1, !tbaa !99
  %.not.i440.i.3 = icmp eq i8 %i.gkx, 0
  br i1 %.not.i440.i.3, label %bb.ue, label %.preheader1082.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.ue:                                            ; preds = %.lr.ph2250.3
  %i.gky = getelementptr inbounds nuw i8, ptr %.3246.i438.i2249, i64 4 ; 2 uses
  %i.gkz = getelementptr inbounds nuw i8, ptr %.3253.i437.i2248, i64 4 ; 2 uses
  store i8 %i.gku, ptr %i.gkt, align 1, !tbaa !99
  %exitcond2896.not.3 = icmp eq ptr %i.gky, %scevgep2895
  br i1 %exitcond2896.not.3, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i, label %.lr.ph2250, !llvm.loop !33

.loopexit1089:                                    ; preds = %bb.tj, %bb.ua
  %i.gla = phi i8 [ %i.gjd, %bb.ua ], [ %i.gfk, %bb.tj ]
  %.5255.i493.i = phi ptr [ %.2252.i435.i2243, %bb.ua ], [ %.1251.i433.i2236, %bb.tj ] ; 2 uses
  %.5248.i494.i = phi ptr [ %.2245.i436.i2244, %bb.ua ], [ %.1244.i434.i2237, %bb.tj ]
  store i8 %i.gla, ptr %.5255.i493.i, align 1
  %i.glb = getelementptr inbounds nuw i8, ptr %.5255.i493.i, i64 1
  %i.glc = getelementptr inbounds nuw i8, ptr %.5248.i494.i, i64 1
  br label %.preheader1082.preheader

.loopexit1090:                                    ; preds = %bb.tk, %bb.ub
  %.6256.i496.i = phi ptr [ %.2252.i435.i2243, %bb.ub ], [ %.1251.i433.i2236, %bb.tk ] ; 2 uses
  %.6.i497.i = phi ptr [ %.2245.i436.i2244, %bb.ub ], [ %.1244.i434.i2237, %bb.tk ] ; 2 uses
  %i.gld = load i16, ptr %.6.i497.i, align 1
  store i16 %i.gld, ptr %.6256.i496.i, align 1
  %i.gle = getelementptr inbounds nuw i8, ptr %.6256.i496.i, i64 2
  %i.glf = getelementptr inbounds nuw i8, ptr %.6.i497.i, i64 2
  br label %.preheader1082.preheader

.loopexit1091:                                    ; preds = %bb.tl, %bb.uc
  %.7257.i499.i = phi ptr [ %.2252.i435.i2243, %bb.uc ], [ %.1251.i433.i2236, %bb.tl ] ; 2 uses
  %.7.i500.i = phi ptr [ %.2245.i436.i2244, %bb.uc ], [ %.1244.i434.i2237, %bb.tl ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i499.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i500.i, i64 3, i1 false)
  %i.glg = getelementptr inbounds nuw i8, ptr %.7257.i499.i, i64 3
  %i.glh = getelementptr inbounds nuw i8, ptr %.7.i500.i, i64 3
  br label %.preheader1082.preheader

bb.uf:                                            ; preds = %bb.tm
  %i.gli = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 4
  %i.glj = load i32, ptr %.1244.i434.i2237, align 1
  store i32 %i.glj, ptr %.1251.i433.i2236, align 1
  %i.glk = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 4
  br label %.preheader1082.preheader

bb.ug:                                            ; preds = %bb.tn
  %i.gll = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i434.i2237, i64 5, i1 false)
  %i.glm = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 5
  br label %.preheader1082.preheader

bb.uh:                                            ; preds = %bb.to
  %i.gln = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i434.i2237, i64 6, i1 false)
  %i.glo = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 6
  br label %.preheader1082.preheader

bb.ui:                                            ; preds = %bb.tp
  %i.glp = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i434.i2237, i64 7, i1 false)
  %i.glq = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 7
  br label %.preheader1082.preheader

bb.uj:                                            ; preds = %bb.tq
  %i.glr = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 8
  %i.gls = load i64, ptr %.1244.i434.i2237, align 1
  store i64 %i.gls, ptr %.1251.i433.i2236, align 1
  %i.glt = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 8
  br label %.preheader1082.preheader

bb.uk:                                            ; preds = %bb.tr
  %i.glu = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i434.i2237, i64 9, i1 false)
  %i.glv = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 9
  br label %.preheader1082.preheader

bb.ul:                                            ; preds = %bb.ts
  %i.glw = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i434.i2237, i64 10, i1 false)
  %i.glx = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 10
  br label %.preheader1082.preheader

bb.um:                                            ; preds = %bb.tt
  %i.gly = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i434.i2237, i64 11, i1 false)
  %i.glz = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 11
  br label %.preheader1082.preheader

bb.un:                                            ; preds = %bb.tu
  %i.gma = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i434.i2237, i64 12, i1 false)
  %i.gmb = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 12
  br label %.preheader1082.preheader

bb.uo:                                            ; preds = %bb.tv
  %i.gmc = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i434.i2237, i64 13, i1 false)
  %i.gmd = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 13
  br label %.preheader1082.preheader

bb.up:                                            ; preds = %bb.tw
  %i.gme = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i434.i2237, i64 14, i1 false)
  %i.gmf = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 14
  br label %.preheader1082.preheader

bb.uq:                                            ; preds = %bb.tx
  %i.gmg = getelementptr inbounds nuw i8, ptr %.1244.i434.i2237, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i433.i2236, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i434.i2237, i64 15, i1 false)
  %i.gmh = getelementptr inbounds nuw i8, ptr %.1251.i433.i2236, i64 15
  br label %.preheader1082.preheader

.preheader1082.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2250.3
  %i.gmi = getelementptr inbounds nuw i8, ptr %.3246.i438.i2249, i64 3
  br label %.preheader1082.preheader

.preheader1082.preheader.loopexit.loopexit.split.loop.exit6668: ; preds = %.lr.ph2250.2
  %i.gmj = getelementptr inbounds nuw i8, ptr %.3246.i438.i2249, i64 2
  br label %.preheader1082.preheader

.preheader1082.preheader.loopexit.loopexit.split.loop.exit6671: ; preds = %.lr.ph2250.1
  %i.gmk = getelementptr inbounds nuw i8, ptr %.3246.i438.i2249, i64 1
  br label %.preheader1082.preheader

.preheader1082.preheader:                         ; preds = %.lr.ph2239, %.lr.ph2245, %.lr.ph2250, %.preheader1082.preheader.loopexit.loopexit.split.loop.exit6671, %.preheader1082.preheader.loopexit.loopexit.split.loop.exit6668, %.preheader1082.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2250.prol, %.loopexit1089, %.loopexit1090, %.loopexit1091, %bb.uf, %bb.ug, %bb.uh, %bb.ui, %bb.uj, %bb.uk, %bb.ul, %bb.um, %bb.un, %bb.uo, %bb.up, %bb.uq
  %.8258.i443.i.ph = phi ptr [ %.2252.i435.i2243, %.lr.ph2245 ], [ %.3253.i437.i2248.prol, %.lr.ph2250.prol ], [ %i.glb, %.loopexit1089 ], [ %i.gle, %.loopexit1090 ], [ %i.glg, %.loopexit1091 ], [ %i.glk, %bb.uf ], [ %i.glm, %bb.ug ], [ %i.glo, %bb.uh ], [ %i.glq, %bb.ui ], [ %i.glt, %bb.uj ], [ %i.glv, %bb.uk ], [ %i.glx, %bb.ul ], [ %i.glz, %bb.um ], [ %i.gmb, %bb.un ], [ %i.gmd, %bb.uo ], [ %i.gmf, %bb.up ], [ %i.gmh, %bb.uq ], [ %.3253.i437.i2248, %.lr.ph2250 ], [ %i.gkh, %.preheader1082.preheader.loopexit.loopexit.split.loop.exit6671 ], [ %i.gkn, %.preheader1082.preheader.loopexit.loopexit.split.loop.exit6668 ], [ %i.gkt, %.preheader1082.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i433.i2236, %.lr.ph2239 ]
  %.8.i444.i.ph = phi ptr [ %.2245.i436.i2244, %.lr.ph2245 ], [ %.3246.i438.i2249.prol, %.lr.ph2250.prol ], [ %i.glc, %.loopexit1089 ], [ %i.glf, %.loopexit1090 ], [ %i.glh, %.loopexit1091 ], [ %i.gli, %bb.uf ], [ %i.gll, %bb.ug ], [ %i.gln, %bb.uh ], [ %i.glp, %bb.ui ], [ %i.glr, %bb.uj ], [ %i.glu, %bb.uk ], [ %i.glw, %bb.ul ], [ %i.gly, %bb.um ], [ %i.gma, %bb.un ], [ %i.gmc, %bb.uo ], [ %i.gme, %bb.up ], [ %i.gmg, %bb.uq ], [ %.3246.i438.i2249, %.lr.ph2250 ], [ %i.gmk, %.preheader1082.preheader.loopexit.loopexit.split.loop.exit6671 ], [ %i.gmj, %.preheader1082.preheader.loopexit.loopexit.split.loop.exit6668 ], [ %i.gmi, %.preheader1082.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i434.i2237, %.lr.ph2239 ]
  br label %.preheader1082

.preheader1082:                                   ; preds = %.preheader1082.backedge, %.preheader1082.preheader
  %.8258.i443.i = phi ptr [ %.8258.i443.i.ph, %.preheader1082.preheader ], [ %.8258.i443.i.be, %.preheader1082.backedge ] ; 34 uses
  %.8.i444.i = phi ptr [ %.8.i444.i.ph, %.preheader1082.preheader ], [ %.8.i444.i.be, %.preheader1082.backedge ] ; 23 uses
  %i.gml = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 4 ; 3 uses
  %i.gmm = icmp ugt ptr %i.gml, %i.gfd            ; 2 uses
  br i1 %i.gmm, label %bb.ur, label %._crit_edge2951, !prof !44

._crit_edge2951:                                  ; preds = %.preheader1082
  %.pre2952 = load i8, ptr %.8.i444.i, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert2953 = zext i8 %.pre2952 to i64 ; 2 uses
  %.phi.trans.insert2954 = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %.phi.trans.insert2953
  %.pre2955 = load i8, ptr %.phi.trans.insert2954, align 1, !tbaa !99
  br label %bb.us

bb.ur:                                            ; preds = %.preheader1082
  %i.gmn = ptrtoint ptr %.8.i444.i to i64
  %i.gmo = sub i64 %i.gfe, %i.gmn
  %i.gmp = load i8, ptr %.8.i444.i, align 1, !tbaa !99 ; 3 uses
  %i.gmq = zext i8 %i.gmp to i64                  ; 2 uses
  %i.gmr = getelementptr inbounds nuw i8, ptr %.0.i424.i, i64 %i.gmq
  %i.gms = load i8, ptr %i.gmr, align 1, !tbaa !99 ; 2 uses
  %i.gmt = lshr i8 %i.gms, 1
  %i.gmu = zext nneg i8 %i.gmt to i64
  %i.gmv = icmp slt i64 %i.gmo, %i.gmu
  br i1 %i.gmv, label %bb.vl, label %bb.us

bb.us:                                            ; preds = %._crit_edge2951, %bb.ur
  %.pre-phi2982 = phi i64 [ %.phi.trans.insert2953, %._crit_edge2951 ], [ %i.gmq, %bb.ur ]
  %i.gmw = phi i8 [ %.pre2955, %._crit_edge2951 ], [ %i.gms, %bb.ur ]
  %i.gmx = phi i8 [ %.pre2952, %._crit_edge2951 ], [ %i.gmp, %bb.ur ] ; 2 uses
  switch i8 %i.gmw, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i [
    i8 0, label %bb.ut
    i8 4, label %bb.uu
    i8 6, label %bb.uw
    i8 8, label %bb.vb
    i8 2, label %bb.vd
    i8 3, label %bb.ve
    i8 5, label %bb.vf
    i8 7, label %bb.vh
    i8 9, label %bb.vj
    i8 1, label %bb.vl
  ]

bb.ut:                                            ; preds = %bb.us
  %i.gmy = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 1
  store i8 %i.gmx, ptr %.8258.i443.i, align 1, !tbaa !99
  br label %bb.ti

bb.uu:                                            ; preds = %bb.us
  %.sroa.0.0.copyload.i.i278 = load i16, ptr %.8.i444.i, align 1 ; 3 uses
  %i.gmz = zext i16 %.sroa.0.0.copyload.i.i278 to i32 ; 2 uses
  %i.gna = and i32 %i.gmz, 49376
  %i.gnb = icmp ne i32 %i.gna, 32960
  %i.gnc = and i32 %i.gmz, 30
  %i.gnd = icmp eq i32 %i.gnc, 0
  %.not315.i487.i = or i1 %i.gnb, %i.gnd
  %i.gne = trunc i16 %.sroa.0.0.copyload.i.i278 to i8
  br i1 %.not315.i487.i, label %.thread891, label %bb.uv, !prof !44

bb.uv:                                            ; preds = %bb.uu
  store i16 %.sroa.0.0.copyload.i.i278, ptr %.8258.i443.i, align 1
  %i.gnf = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 2
  %i.gng = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 2
  br label %.preheader1082.backedge

bb.uw:                                            ; preds = %bb.us
  br i1 %i.gmm, label %bb.uz, label %bb.ux, !prof !44

bb.ux:                                            ; preds = %bb.uw
  %.sroa.0.0.copyload.i333.i482.i = load i32, ptr %.8.i444.i, align 1 ; 4 uses
  %i.gnh = and i32 %.sroa.0.0.copyload.i333.i482.i, 12632304
  %i.gni = icmp eq i32 %i.gnh, 8421600
  %i.gnj = trunc i32 %.sroa.0.0.copyload.i333.i482.i to i8 ; 3 uses
  br i1 %i.gni, label %bb.uy, label %.thread891, !prof !61

bb.uy:                                            ; preds = %bb.ux
  %i.gnk = and i32 %.sroa.0.0.copyload.i333.i482.i, 8207
  switch i32 %i.gnk, label %.critedge.i483.i [
    i32 8205, label %.thread891
    i32 0, label %.thread891
  ], !prof !150

bb.uz:                                            ; preds = %bb.uw
  %.sroa.0.0.copyload.i523.i = load i16, ptr %.8.i444.i, align 1 ; 2 uses
  %i.gnl = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 2
  %i.gnm = load i8, ptr %i.gnl, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i.i274 = zext i8 %i.gnm to i32
  %.sroa.4.0.insert.shift.i.i275 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i274, 16
  %.sroa.0.0.insert.ext.i.i276 = zext i16 %.sroa.0.0.copyload.i523.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i277 = or disjoint i32 %.sroa.4.0.insert.shift.i.i275, %.sroa.0.0.insert.ext.i.i276 ; 2 uses
  %i.gnn = and i32 %.sroa.0.0.insert.insert.i.i277, 12632304
  %i.gno = icmp eq i32 %i.gnn, 8421600
  %i.gnp = trunc i16 %.sroa.0.0.copyload.i523.i to i8 ; 3 uses
  br i1 %i.gno, label %bb.va, label %.thread891, !prof !61

bb.va:                                            ; preds = %bb.uz
  %i.gnq = and i32 %.sroa.0.0.insert.ext.i.i276, 8207
  switch i32 %i.gnq, label %.critedge.i483.i [
    i32 8205, label %.thread891
    i32 0, label %.thread891
  ], !prof !150

.critedge.i483.i:                                 ; preds = %bb.va, %bb.uy
  %storemerge987 = phi i32 [ %.sroa.0.0.copyload.i333.i482.i, %bb.uy ], [ %.sroa.0.0.insert.insert.i.i277, %bb.va ]
  store i32 %storemerge987, ptr %.8258.i443.i, align 1
  %i.gnr = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 3
  %i.gns = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 3
  br label %.preheader1082.backedge

bb.vb:                                            ; preds = %bb.us
  %.sroa.0.0.copyload.i332.i473.i = load i32, ptr %.8.i444.i, align 1 ; 6 uses
  %i.gnt = and i32 %.sroa.0.0.copyload.i332.i473.i, -1061109512
  %i.gnu = icmp ne i32 %i.gnt, -2139062032
  %i.gnv = and i32 %.sroa.0.0.copyload.i332.i473.i, 12295
  %.not306.i474.i = icmp eq i32 %i.gnv, 0
  %or.cond.i475.i = or i1 %i.gnu, %.not306.i474.i
  %i.gnw = trunc i32 %.sroa.0.0.copyload.i332.i473.i to i8 ; 2 uses
  br i1 %or.cond.i475.i, label %.thread891, label %bb.vc, !prof !151

bb.vc:                                            ; preds = %bb.vb
  %i.gnx = and i32 %.sroa.0.0.copyload.i332.i473.i, 4
  %i.gny = icmp ne i32 %i.gnx, 0
  %i.gnz = and i32 %.sroa.0.0.copyload.i332.i473.i, 12291
  %i.goa = icmp ne i32 %i.gnz, 0
  %.not309.i476.i = and i1 %i.gny, %i.goa
  br i1 %.not309.i476.i, label %.thread891, label %.critedge321.i477.i, !prof !44

.critedge321.i477.i:                              ; preds = %bb.vc
  store i32 %.sroa.0.0.copyload.i332.i473.i, ptr %.8258.i443.i, align 1
  %i.gob = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 4
  br label %.preheader1082.backedge

bb.vd:                                            ; preds = %bb.us
  %i.goc = shl nuw nsw i64 %.pre-phi2982, 1
  %i.god = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.goc
  %i.goe = load i16, ptr %i.god, align 2
  store i16 %i.goe, ptr %.8258.i443.i, align 1
  %i.gof = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 2
  %i.gog = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 1
  br label %.preheader1082.backedge

.preheader1082.backedge:                          ; preds = %bb.vd, %bb.ve, %bb.vm, %bb.vn, %bb.uv, %.critedge.i483.i, %.critedge321.i477.i, %bb.vg, %.critedge326.i459.i, %.critedge330.i455.i
  %.8258.i443.i.be = phi ptr [ %i.gsg, %bb.vm ], [ %i.gnf, %bb.uv ], [ %i.gnr, %.critedge.i483.i ], [ %i.gob, %.critedge321.i477.i ], [ %i.gof, %bb.vd ], [ %i.gon, %bb.ve ], [ %i.gpj, %bb.vg ], [ %i.gqg, %.critedge326.i459.i ], [ %i.gsc, %.critedge330.i455.i ], [ %i.gsi, %bb.vn ]
  %.8.i444.i.be = phi ptr [ %i.gsf, %bb.vm ], [ %i.gng, %bb.uv ], [ %i.gns, %.critedge.i483.i ], [ %i.gml, %.critedge321.i477.i ], [ %i.gog, %bb.vd ], [ %i.goo, %bb.ve ], [ %i.gpk, %bb.vg ], [ %i.gqh, %.critedge326.i459.i ], [ %i.gml, %.critedge330.i455.i ], [ %i.gsj, %bb.vn ]
  br label %.preheader1082

bb.ve:                                            ; preds = %bb.us
  store i32 808482140, ptr %.8258.i443.i, align 1
  %i.goh = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 4
  %i.goi = load i8, ptr %.8.i444.i, align 1, !tbaa !99
  %i.goj = zext i8 %i.goi to i64
  %i.gok = shl nuw nsw i64 %i.goj, 1
  %i.gol = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gok
  %i.gom = load i16, ptr %i.gol, align 2
  store i16 %i.gom, ptr %i.goh, align 1
  %i.gon = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 6
  %i.goo = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 1
  br label %.preheader1082.backedge

bb.vf:                                            ; preds = %bb.us
  %.sroa.0.0.copyload.i520.i = load i16, ptr %.8.i444.i, align 1 ; 3 uses
  %i.gop = zext i16 %.sroa.0.0.copyload.i520.i to i32 ; 2 uses
  %i.goq = and i32 %i.gop, 49376
  %i.gor = icmp ne i32 %i.goq, 32960
  %i.gos = and i32 %i.gop, 30
  %i.got = icmp eq i32 %i.gos, 0
  %.not303.i467.i = or i1 %i.gor, %i.got
  br i1 %.not303.i467.i, label %.thread901, label %bb.vg, !prof !44

bb.vg:                                            ; preds = %bb.vf
  %i.gou = lshr i16 %.sroa.0.0.copyload.i520.i, 8
  %i.gov = trunc nuw i16 %i.gou to i8
  %i.gow = trunc i16 %.sroa.0.0.copyload.i520.i to i8 ; 2 uses
  %.tr304.i468.i = shl i8 %i.gow, 6
  %i.gox = and i8 %i.gov, 63
  store i16 30044, ptr %.8258.i443.i, align 1
  %i.goy = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 2
  %i.goz = lshr i8 %i.gow, 1
  %i.gpa = and i8 %i.goz, 14
  %i.gpb = zext nneg i8 %i.gpa to i64
  %i.gpc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gpb
  %i.gpd = load i16, ptr %i.gpc, align 2
  store i16 %i.gpd, ptr %i.goy, align 1
  %i.gpe = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 4
  %.narrow305.i469.i = or disjoint i8 %i.gox, %.tr304.i468.i
  %i.gpf = zext i8 %.narrow305.i469.i to i64
  %i.gpg = shl nuw nsw i64 %i.gpf, 1
  %i.gph = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gpg
  %i.gpi = load i16, ptr %i.gph, align 2
  store i16 %i.gpi, ptr %i.gpe, align 1
  %i.gpj = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 6
  %i.gpk = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 2
  br label %.preheader1082.backedge

bb.vh:                                            ; preds = %bb.us
  %.sroa.0.0.copyload.i524.i = load i16, ptr %.8.i444.i, align 1 ; 3 uses
  %i.gpl = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 2
  %i.gpm = load i8, ptr %i.gpl, align 1, !tbaa !99 ; 2 uses
  %.sroa.4.0.insert.ext.i525.i = zext i8 %i.gpm to i32
  %.sroa.4.0.insert.shift.i526.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i525.i, 16
  %.sroa.0.0.insert.ext.i527.i = zext i16 %.sroa.0.0.copyload.i524.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i528.i = or disjoint i32 %.sroa.4.0.insert.shift.i526.i, %.sroa.0.0.insert.ext.i527.i
  %i.gpn = and i32 %.sroa.0.0.insert.insert.i528.i, 12632304
  %i.gpo = icmp eq i32 %i.gpn, 8421600
  br i1 %i.gpo, label %bb.vi, label %.thread901, !prof !61

bb.vi:                                            ; preds = %bb.vh
  %i.gpp = and i32 %.sroa.0.0.insert.ext.i527.i, 8207
  switch i32 %i.gpp, label %.critedge326.i459.i [
    i32 8205, label %.thread901
    i32 0, label %.thread901
  ], !prof !150

.critedge326.i459.i:                              ; preds = %bb.vi
  %i.gpq = zext i16 %.sroa.0.0.copyload.i524.i to i64
  %i.gpr = shl nuw nsw i64 %i.gpq, 12
  %i.gps = lshr i16 %.sroa.0.0.copyload.i524.i, 2
  %i.gpt = and i16 %i.gps, 4032                   ; 2 uses
  %i.gpu = zext nneg i16 %i.gpt to i64
  %i.gpv = and i8 %i.gpm, 63
  store i16 30044, ptr %.8258.i443.i, align 1
  %i.gpw = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 2
  %.masked.i464.i = or disjoint i64 %i.gpr, %i.gpu
  %i.gpx = lshr i64 %.masked.i464.i, 7
  %i.gpy = and i64 %i.gpx, 510
  %i.gpz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gpy
  %i.gqa = load i16, ptr %i.gpz, align 2
  store i16 %i.gqa, ptr %i.gpw, align 1
  %i.gqb = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 4
  %.tr299.i465.i = trunc i16 %i.gpt to i8
  %.narrow300.i466.i = or disjoint i8 %i.gpv, %.tr299.i465.i
  %i.gqc = zext i8 %.narrow300.i466.i to i64
  %i.gqd = shl nuw nsw i64 %i.gqc, 1
  %i.gqe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.gqd
  %i.gqf = load i16, ptr %i.gqe, align 2
  store i16 %i.gqf, ptr %i.gqb, align 1
  %i.gqg = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 6
  %i.gqh = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 3
  br label %.preheader1082.backedge

bb.vj:                                            ; preds = %bb.us
  %.sroa.0.0.copyload.i.i449.i = load i32, ptr %.8.i444.i, align 1 ; 9 uses
  %i.gqi = and i32 %.sroa.0.0.copyload.i.i449.i, -1061109512
  %i.gqj = icmp ne i32 %i.gqi, -2139062032
  %i.gqk = and i32 %.sroa.0.0.copyload.i.i449.i, 12295
  %.not293.i450.i = icmp eq i32 %i.gqk, 0
  %or.cond328.i451.i = or i1 %i.gqj, %.not293.i450.i
  %i.gql = lshr i32 %.sroa.0.0.copyload.i.i449.i, 24
  br i1 %or.cond328.i451.i, label %.thread901, label %bb.vk, !prof !151

bb.vk:                                            ; preds = %bb.vj
  %i.gqm = and i32 %.sroa.0.0.copyload.i.i449.i, 4
  %i.gqn = icmp ne i32 %i.gqm, 0
  %i.gqo = and i32 %.sroa.0.0.copyload.i.i449.i, 12291
  %i.gqp = icmp ne i32 %i.gqo, 0
  %.not296.i452.i = and i1 %i.gqn, %i.gqp
  br i1 %.not296.i452.i, label %.thread901, label %.critedge330.i455.i, !prof !44

.critedge330.i455.i:                              ; preds = %bb.vk
  %i.gqq = shl i32 %.sroa.0.0.copyload.i.i449.i, 18
  %i.gqr = and i32 %i.gqq, 1835008
  %i.gqs = shl i32 %.sroa.0.0.copyload.i.i449.i, 4
  %i.gqt = and i32 %i.gqs, 258048
  %i.gqu = lshr i32 %.sroa.0.0.copyload.i.i449.i, 10 ; 2 uses
  %i.gqv = and i32 %i.gqu, 3072
  %i.gqw = and i32 %i.gql, 63
  %i.gqx = add nsw i32 %i.gqr, -65536
  %i.gqy = add nsw i32 %i.gqx, %i.gqt             ; 2 uses
  %i.gqz = or disjoint i32 %i.gqy, %i.gqv
  %i.gra = lshr exact i32 %i.gqy, 10
  %i.grb = add nuw nsw i32 %i.gra, 55296
  store i16 30044, ptr %.8258.i443.i, align 1
  %i.grc = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 2
  %i.grd = lshr i32 %i.grb, 7
  %i.gre = and i32 %i.grd, 65534
  %i.grf = zext nneg i32 %i.gre to i64
  %i.grg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.grf
  %i.grh = load i16, ptr %i.grg, align 2
  store i16 %i.grh, ptr %i.grc, align 1
  %i.gri = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 4
  %i.grj = lshr exact i32 %i.gqz, 9
  %i.grk = and i32 %i.grj, 510
  %i.grl = zext nneg i32 %i.grk to i64
  %i.grm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.grl
  %i.grn = load i16, ptr %i.grm, align 2
  store i16 %i.grn, ptr %i.gri, align 1
  %i.gro = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 6
  store i16 30044, ptr %i.gro, align 1
  %i.grp = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 8
  %i.grq = lshr i32 %.sroa.0.0.copyload.i.i449.i, 17
  %i.grr = and i32 %i.grq, 6
  %i.grs = zext nneg i32 %i.grr to i64
  %i.grt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.grs
  %i.gru = getelementptr inbounds nuw i8, ptr %i.grt, i64 440
  %i.grv = load i16, ptr %i.gru, align 2
  store i16 %i.grv, ptr %i.grp, align 1
  %i.grw = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 10
  %.masked3143 = and i32 %i.gqu, 192
  %i.grx = or disjoint i32 %i.gqw, %.masked3143
  %i.gry = shl nuw nsw i32 %i.grx, 1
  %i.grz = zext nneg i32 %i.gry to i64
  %i.gsa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.grz
  %i.gsb = load i16, ptr %i.gsa, align 2
  store i16 %i.gsb, ptr %i.grw, align 1
  %i.gsc = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 12
  br label %.preheader1082.backedge

bb.vl:                                            ; preds = %bb.us, %bb.ur
  %i.gsd = phi i8 [ %i.gmx, %bb.us ], [ %i.gmp, %bb.ur ]
  br i1 %.not968, label %.thread891, label %.thread901

.thread891:                                       ; preds = %bb.vb, %bb.vc, %bb.uz, %bb.ux, %bb.va, %bb.va, %bb.uy, %bb.uy, %bb.uu, %bb.vl
  %i.gse = phi i8 [ %i.gnw, %bb.vb ], [ %i.gnw, %bb.vc ], [ %i.gnp, %bb.uz ], [ %i.gnj, %bb.ux ], [ %i.gnp, %bb.va ], [ %i.gnp, %bb.va ], [ %i.gnj, %bb.uy ], [ %i.gnj, %bb.uy ], [ %i.gne, %bb.uu ], [ %i.gsd, %bb.vl ]
  br i1 %.not971, label %.loopexit1069, label %bb.vm

bb.vm:                                            ; preds = %.thread891
  %i.gsf = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 1
  %i.gsg = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 1
  store i8 %i.gse, ptr %.8258.i443.i, align 1, !tbaa !99
  br label %.preheader1082.backedge

.thread901:                                       ; preds = %bb.vj, %bb.vk, %bb.vh, %bb.vi, %bb.vi, %bb.vf, %bb.vl
  br i1 %.not971, label %.loopexit1069, label %bb.vn

bb.vn:                                            ; preds = %.thread901
  store i16 30044, ptr %.8258.i443.i, align 1
  %i.gsh = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 2
  store i32 1145456198, ptr %i.gsh, align 1
  %i.gsi = getelementptr inbounds nuw i8, ptr %.8258.i443.i, i64 6
  %i.gsj = getelementptr inbounds nuw i8, ptr %.8.i444.i, i64 1
  br label %.preheader1082.backedge

bb.vo:                                            ; preds = %bb.th
  %i.gsk = load i64, ptr %.0376.i, align 8, !tbaa !98
  %i.gsl = and i64 %i.gsk, 24
  %.not402.i = icmp eq i64 %i.gsl, 0
  store i8 34, ptr %.1357.i, align 1, !tbaa !99
  br i1 %.not402.i, label %.split378.i, label %bb.xv

.split378.i:                                      ; preds = %bb.vo
  %i.gsm = getelementptr inbounds nuw i8, ptr %i.geg, i64 %i.gee ; 3 uses
  %i.gsn = ptrtoint ptr %i.gsm to i64             ; 4 uses
  %i.gso = add i64 %i.gee, %i.geh
  br label %bb.vp

bb.vp:                                            ; preds = %bb.xa, %.split378.i
  %.pn.i.i289 = phi ptr [ %.1357.i, %.split378.i ], [ %.8258.i.i302, %bb.xa ]
  %.0243.i.i290 = phi ptr [ %i.geg, %.split378.i ], [ %i.hah, %bb.xa ] ; 3 uses
  %.0250.i.i291 = getelementptr inbounds nuw i8, ptr %.pn.i.i289, i64 1 ; 2 uses
  %i.gsp = ptrtoint ptr %.0243.i.i290 to i64
  %i.gsq = sub i64 %i.gsn, %i.gsp                 ; 2 uses
  %i.gsr = icmp sgt i64 %i.gsq, 15
  br i1 %i.gsr, label %.lr.ph2290, label %.preheader1073

.preheader1073:                                   ; preds = %bb.wf, %bb.vp
  %.pre-phi2978 = phi i64 [ %i.gsq, %bb.vp ], [ %i.gvx, %bb.wf ]
  %.1251.i.i292.lcssa = phi ptr [ %.0250.i.i291, %bb.vp ], [ %i.gvu, %bb.wf ] ; 2 uses
  %.1244.i.i293.lcssa = phi ptr [ %.0243.i.i290, %bb.vp ], [ %i.gvv, %bb.wf ] ; 2 uses
  %i.gss = icmp sgt i64 %.pre-phi2978, 3
  br i1 %i.gss, label %.lr.ph2296, label %.preheader1071

.lr.ph2290:                                       ; preds = %bb.vp, %bb.wf
  %.1244.i.i2932288 = phi ptr [ %i.gvv, %bb.wf ], [ %.0243.i.i290, %bb.vp ] ; 46 uses
  %.1251.i.i2922287 = phi ptr [ %i.gvu, %bb.wf ], [ %.0250.i.i291, %bb.vp ] ; 30 uses
  %i.gst = load i8, ptr %.1244.i.i2932288, align 1, !tbaa !99 ; 2 uses
  %i.gsu = zext i8 %i.gst to i64
  %i.gsv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gsu
  %i.gsw = load i8, ptr %i.gsv, align 1, !tbaa !99
  %.not277.i.i357 = icmp eq i8 %i.gsw, 0
  br i1 %.not277.i.i357, label %bb.vq, label %.preheader1068.preheader, !prof !61

bb.vq:                                            ; preds = %.lr.ph2290
  %i.gsx = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 1
  %i.gsy = load i8, ptr %i.gsx, align 1, !tbaa !99
  %i.gsz = zext i8 %i.gsy to i64
  %i.gta = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gsz
  %i.gtb = load i8, ptr %i.gta, align 1, !tbaa !99
  %.not278.i.i358 = icmp eq i8 %i.gtb, 0
  br i1 %.not278.i.i358, label %bb.vr, label %.loopexit1075, !prof !61

bb.vr:                                            ; preds = %bb.vq
  %i.gtc = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 2
  %i.gtd = load i8, ptr %i.gtc, align 1, !tbaa !99
  %i.gte = zext i8 %i.gtd to i64
  %i.gtf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gte
  %i.gtg = load i8, ptr %i.gtf, align 1, !tbaa !99
  %.not279.i.i359 = icmp eq i8 %i.gtg, 0
  br i1 %.not279.i.i359, label %bb.vs, label %.loopexit1076, !prof !61

bb.vs:                                            ; preds = %bb.vr
  %i.gth = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 3
  %i.gti = load i8, ptr %i.gth, align 1, !tbaa !99
  %i.gtj = zext i8 %i.gti to i64
  %i.gtk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gtj
  %i.gtl = load i8, ptr %i.gtk, align 1, !tbaa !99
  %.not280.i.i360 = icmp eq i8 %i.gtl, 0
  br i1 %.not280.i.i360, label %bb.vt, label %.loopexit1077, !prof !61

bb.vt:                                            ; preds = %bb.vs
  %i.gtm = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 4
  %i.gtn = load i8, ptr %i.gtm, align 1, !tbaa !99
  %i.gto = zext i8 %i.gtn to i64
  %i.gtp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gto
  %i.gtq = load i8, ptr %i.gtp, align 1, !tbaa !99
  %.not281.i.i361 = icmp eq i8 %i.gtq, 0
  br i1 %.not281.i.i361, label %bb.vu, label %bb.wm, !prof !61

bb.vu:                                            ; preds = %bb.vt
  %i.gtr = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 5
  %i.gts = load i8, ptr %i.gtr, align 1, !tbaa !99
  %i.gtt = zext i8 %i.gts to i64
  %i.gtu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gtt
  %i.gtv = load i8, ptr %i.gtu, align 1, !tbaa !99
  %.not282.i.i362 = icmp eq i8 %i.gtv, 0
  br i1 %.not282.i.i362, label %bb.vv, label %bb.wn, !prof !61

bb.vv:                                            ; preds = %bb.vu
  %i.gtw = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 6
  %i.gtx = load i8, ptr %i.gtw, align 1, !tbaa !99
  %i.gty = zext i8 %i.gtx to i64
  %i.gtz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gty
  %i.gua = load i8, ptr %i.gtz, align 1, !tbaa !99
  %.not283.i.i363 = icmp eq i8 %i.gua, 0
  br i1 %.not283.i.i363, label %bb.vw, label %bb.wo, !prof !61

bb.vw:                                            ; preds = %bb.vv
  %i.gub = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 7
  %i.guc = load i8, ptr %i.gub, align 1, !tbaa !99
  %i.gud = zext i8 %i.guc to i64
  %i.gue = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gud
  %i.guf = load i8, ptr %i.gue, align 1, !tbaa !99
  %.not284.i.i364 = icmp eq i8 %i.guf, 0
  br i1 %.not284.i.i364, label %bb.vx, label %bb.wp, !prof !61

bb.vx:                                            ; preds = %bb.vw
  %i.gug = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 8
  %i.guh = load i8, ptr %i.gug, align 1, !tbaa !99
  %i.gui = zext i8 %i.guh to i64
  %i.guj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gui
  %i.guk = load i8, ptr %i.guj, align 1, !tbaa !99
  %.not285.i.i365 = icmp eq i8 %i.guk, 0
  br i1 %.not285.i.i365, label %bb.vy, label %bb.wq, !prof !61

bb.vy:                                            ; preds = %bb.vx
  %i.gul = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 9
  %i.gum = load i8, ptr %i.gul, align 1, !tbaa !99
  %i.gun = zext i8 %i.gum to i64
  %i.guo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gun
  %i.gup = load i8, ptr %i.guo, align 1, !tbaa !99
  %.not286.i.i366 = icmp eq i8 %i.gup, 0
  br i1 %.not286.i.i366, label %bb.vz, label %bb.wr, !prof !61

bb.vz:                                            ; preds = %bb.vy
  %i.guq = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 10
  %i.gur = load i8, ptr %i.guq, align 1, !tbaa !99
  %i.gus = zext i8 %i.gur to i64
  %i.gut = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gus
  %i.guu = load i8, ptr %i.gut, align 1, !tbaa !99
  %.not287.i.i367 = icmp eq i8 %i.guu, 0
  br i1 %.not287.i.i367, label %bb.wa, label %bb.ws, !prof !61

bb.wa:                                            ; preds = %bb.vz
  %i.guv = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 11
  %i.guw = load i8, ptr %i.guv, align 1, !tbaa !99
  %i.gux = zext i8 %i.guw to i64
  %i.guy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gux
  %i.guz = load i8, ptr %i.guy, align 1, !tbaa !99
  %.not288.i.i368 = icmp eq i8 %i.guz, 0
  br i1 %.not288.i.i368, label %bb.wb, label %bb.wt, !prof !61

bb.wb:                                            ; preds = %bb.wa
  %i.gva = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 12
  %i.gvb = load i8, ptr %i.gva, align 1, !tbaa !99
  %i.gvc = zext i8 %i.gvb to i64
  %i.gvd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gvc
  %i.gve = load i8, ptr %i.gvd, align 1, !tbaa !99
  %.not289.i.i369 = icmp eq i8 %i.gve, 0
  br i1 %.not289.i.i369, label %bb.wc, label %bb.wu, !prof !61

bb.wc:                                            ; preds = %bb.wb
  %i.gvf = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 13
  %i.gvg = load i8, ptr %i.gvf, align 1, !tbaa !99
  %i.gvh = zext i8 %i.gvg to i64
  %i.gvi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gvh
  %i.gvj = load i8, ptr %i.gvi, align 1, !tbaa !99
  %.not290.i.i370 = icmp eq i8 %i.gvj, 0
  br i1 %.not290.i.i370, label %bb.wd, label %bb.wv, !prof !61

bb.wd:                                            ; preds = %bb.wc
  %i.gvk = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 14
  %i.gvl = load i8, ptr %i.gvk, align 1, !tbaa !99
  %i.gvm = zext i8 %i.gvl to i64
  %i.gvn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gvm
  %i.gvo = load i8, ptr %i.gvn, align 1, !tbaa !99
  %.not291.i.i371 = icmp eq i8 %i.gvo, 0
  br i1 %.not291.i.i371, label %bb.we, label %bb.ww, !prof !61

bb.we:                                            ; preds = %bb.wd
  %i.gvp = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 15
  %i.gvq = load i8, ptr %i.gvp, align 1, !tbaa !99
  %i.gvr = zext i8 %i.gvq to i64
  %i.gvs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gvr
  %i.gvt = load i8, ptr %i.gvs, align 1, !tbaa !99
  %.not292.i.i372 = icmp eq i8 %i.gvt, 0
  br i1 %.not292.i.i372, label %bb.wf, label %bb.wx, !prof !61

bb.wf:                                            ; preds = %bb.we
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(16) %.1244.i.i2932288, i64 16, i1 false)
  %i.gvu = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 16 ; 2 uses
  %i.gvv = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 16 ; 3 uses
  %i.gvw = ptrtoint ptr %i.gvv to i64
  %i.gvx = sub i64 %i.gsn, %i.gvw                 ; 2 uses
  %i.gvy = icmp sgt i64 %i.gvx, 15
  br i1 %i.gvy, label %.lr.ph2290, label %.preheader1073, !llvm.loop !31

.preheader1071:                                   ; preds = %bb.wk, %.preheader1073
  %.2252.i.i294.lcssa = phi ptr [ %.1251.i.i292.lcssa, %.preheader1073 ], [ %i.gxg, %bb.wk ] ; 3 uses
  %.2245.i.i295.lcssa = phi ptr [ %.1244.i.i293.lcssa, %.preheader1073 ], [ %i.gxh, %bb.wk ] ; 5 uses
  %i.gvz = icmp ugt ptr %i.gsm, %.2245.i.i295.lcssa
  br i1 %i.gvz, label %.lr.ph2301.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i

.lr.ph2301.preheader:                             ; preds = %.preheader1071
  %.2245.i.i295.lcssa2898 = ptrtoaddr ptr %.2245.i.i295.lcssa to i64 ; 2 uses
  %i.gwa = getelementptr i8, ptr %.2245.i.i295.lcssa, i64 %i.gee
  %scevgep2897 = getelementptr i8, ptr %i.gwa, i64 %i.geh
  %i.gwb = sub i64 0, %.2245.i.i295.lcssa2898
  %scevgep2899 = getelementptr i8, ptr %scevgep2897, i64 %i.gwb
  %i.gwc = sub i64 %i.gso, %.2245.i.i295.lcssa2898
  %i.gwd = freeze i64 %i.gwc                      ; 2 uses
  %i.gwe = add i64 %i.gwd, -1
  %xtraiter5960 = and i64 %i.gwd, 3               ; 2 uses
  %lcmp.mod5961.not = icmp eq i64 %xtraiter5960, 0
  br i1 %lcmp.mod5961.not, label %.lr.ph2301.prol.loopexit, label %.lr.ph2301.prol

.lr.ph2301.prol:                                  ; preds = %.lr.ph2301.preheader, %bb.wg
  %.3246.i.i2972300.prol = phi ptr [ %i.gwj, %bb.wg ], [ %.2245.i.i295.lcssa, %.lr.ph2301.preheader ] ; 3 uses
  %.3253.i.i2962299.prol = phi ptr [ %i.gwk, %bb.wg ], [ %.2252.i.i294.lcssa, %.lr.ph2301.preheader ] ; 3 uses
  %prol.iter5962 = phi i64 [ %prol.iter5962.next, %bb.wg ], [ 0, %.lr.ph2301.preheader ]
  %i.gwf = load i8, ptr %.3246.i.i2972300.prol, align 1, !tbaa !99 ; 2 uses
  %i.gwg = zext i8 %i.gwf to i64
  %i.gwh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gwg
end_hunk_19
begin_hunk_20_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.gwu = load i8, ptr %i.gwt, align 1, !tbaa !99
  %.not274.i.i348 = icmp eq i8 %i.gwu, 0
  br i1 %.not274.i.i348, label %bb.wi, label %.loopexit1075, !prof !61

bb.wi:                                            ; preds = %bb.wh
  %i.gwv = getelementptr inbounds nuw i8, ptr %.2245.i.i2952295, i64 2
  %i.gww = load i8, ptr %i.gwv, align 1, !tbaa !99
  %i.gwx = zext i8 %i.gww to i64
  %i.gwy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gwx
  %i.gwz = load i8, ptr %i.gwy, align 1, !tbaa !99
  %.not275.i.i351 = icmp eq i8 %i.gwz, 0
  br i1 %.not275.i.i351, label %bb.wj, label %.loopexit1076, !prof !61

bb.wj:                                            ; preds = %bb.wi
  %i.gxa = getelementptr inbounds nuw i8, ptr %.2245.i.i2952295, i64 3
  %i.gxb = load i8, ptr %i.gxa, align 1, !tbaa !99
  %i.gxc = zext i8 %i.gxb to i64
  %i.gxd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gxc
  %i.gxe = load i8, ptr %i.gxd, align 1, !tbaa !99
  %.not276.i.i354 = icmp eq i8 %i.gxe, 0
  br i1 %.not276.i.i354, label %bb.wk, label %.loopexit1077, !prof !61

bb.wk:                                            ; preds = %bb.wj
  %i.gxf = load i32, ptr %.2245.i.i2952295, align 1
  store i32 %i.gxf, ptr %.2252.i.i2942294, align 1
  %i.gxg = getelementptr inbounds nuw i8, ptr %.2252.i.i2942294, i64 4 ; 2 uses
  %i.gxh = getelementptr inbounds nuw i8, ptr %.2245.i.i2952295, i64 4 ; 3 uses
  %i.gxi = ptrtoint ptr %i.gxh to i64
  %i.gxj = sub i64 %i.gsn, %i.gxi
  %i.gxk = icmp sgt i64 %i.gxj, 3
  br i1 %i.gxk, label %.lr.ph2296, label %.preheader1071, !llvm.loop !32

.lr.ph2301:                                       ; preds = %.lr.ph2301.prol.loopexit, %bb.wl
  %.3246.i.i2972300 = phi ptr [ %i.gyh, %bb.wl ], [ %.3246.i.i2972300.unr, %.lr.ph2301.prol.loopexit ] ; 9 uses
  %.3253.i.i2962299 = phi ptr [ %i.gyi, %bb.wl ], [ %.3253.i.i2962299.unr, %.lr.ph2301.prol.loopexit ] ; 6 uses
  %i.gxl = load i8, ptr %.3246.i.i2972300, align 1, !tbaa !99 ; 2 uses
  %i.gxm = zext i8 %i.gxl to i64
  %i.gxn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gxm
  %i.gxo = load i8, ptr %i.gxn, align 1, !tbaa !99
  %.not.i426.i = icmp eq i8 %i.gxo, 0
  br i1 %.not.i426.i, label %.lr.ph2301.1, label %.preheader1068.preheader, !prof !61

.lr.ph2301.1:                                     ; preds = %.lr.ph2301
  %i.gxp = getelementptr inbounds nuw i8, ptr %.3246.i.i2972300, i64 1
  %i.gxq = getelementptr inbounds nuw i8, ptr %.3253.i.i2962299, i64 1 ; 2 uses
  store i8 %i.gxl, ptr %.3253.i.i2962299, align 1, !tbaa !99
  %i.gxr = load i8, ptr %i.gxp, align 1, !tbaa !99 ; 2 uses
  %i.gxs = zext i8 %i.gxr to i64
  %i.gxt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gxs
  %i.gxu = load i8, ptr %i.gxt, align 1, !tbaa !99
  %.not.i426.i.1 = icmp eq i8 %i.gxu, 0
  br i1 %.not.i426.i.1, label %.lr.ph2301.2, label %.preheader1068.preheader.loopexit.loopexit.split.loop.exit6683, !prof !61

.lr.ph2301.2:                                     ; preds = %.lr.ph2301.1
  %i.gxv = getelementptr inbounds nuw i8, ptr %.3246.i.i2972300, i64 2
  %i.gxw = getelementptr inbounds nuw i8, ptr %.3253.i.i2962299, i64 2 ; 2 uses
  store i8 %i.gxr, ptr %i.gxq, align 1, !tbaa !99
  %i.gxx = load i8, ptr %i.gxv, align 1, !tbaa !99 ; 2 uses
  %i.gxy = zext i8 %i.gxx to i64
  %i.gxz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gxy
  %i.gya = load i8, ptr %i.gxz, align 1, !tbaa !99
  %.not.i426.i.2 = icmp eq i8 %i.gya, 0
  br i1 %.not.i426.i.2, label %.lr.ph2301.3, label %.preheader1068.preheader.loopexit.loopexit.split.loop.exit6680, !prof !61

.lr.ph2301.3:                                     ; preds = %.lr.ph2301.2
  %i.gyb = getelementptr inbounds nuw i8, ptr %.3246.i.i2972300, i64 3
  %i.gyc = getelementptr inbounds nuw i8, ptr %.3253.i.i2962299, i64 3 ; 2 uses
  store i8 %i.gxx, ptr %i.gxw, align 1, !tbaa !99
  %i.gyd = load i8, ptr %i.gyb, align 1, !tbaa !99 ; 2 uses
  %i.gye = zext i8 %i.gyd to i64
  %i.gyf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gye
  %i.gyg = load i8, ptr %i.gyf, align 1, !tbaa !99
  %.not.i426.i.3 = icmp eq i8 %i.gyg, 0
  br i1 %.not.i426.i.3, label %bb.wl, label %.preheader1068.preheader.loopexit.loopexit.split.loop.exit, !prof !61

bb.wl:                                            ; preds = %.lr.ph2301.3
  %i.gyh = getelementptr inbounds nuw i8, ptr %.3246.i.i2972300, i64 4 ; 2 uses
  %i.gyi = getelementptr inbounds nuw i8, ptr %.3253.i.i2962299, i64 4 ; 2 uses
  store i8 %i.gyd, ptr %i.gyc, align 1, !tbaa !99
  %exitcond2900.not.3 = icmp eq ptr %i.gyh, %scevgep2899
  br i1 %exitcond2900.not.3, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i, label %.lr.ph2301, !llvm.loop !33

.loopexit1075:                                    ; preds = %bb.vq, %bb.wh
  %i.gyj = phi i8 [ %i.gwm, %bb.wh ], [ %i.gst, %bb.vq ]
  %.5255.i.i349 = phi ptr [ %.2252.i.i2942294, %bb.wh ], [ %.1251.i.i2922287, %bb.vq ] ; 2 uses
  %.5248.i.i350 = phi ptr [ %.2245.i.i2952295, %bb.wh ], [ %.1244.i.i2932288, %bb.vq ]
  store i8 %i.gyj, ptr %.5255.i.i349, align 1
  %i.gyk = getelementptr inbounds nuw i8, ptr %.5255.i.i349, i64 1
  %i.gyl = getelementptr inbounds nuw i8, ptr %.5248.i.i350, i64 1
  br label %.preheader1068.preheader

.loopexit1076:                                    ; preds = %bb.vr, %bb.wi
  %.6256.i.i352 = phi ptr [ %.2252.i.i2942294, %bb.wi ], [ %.1251.i.i2922287, %bb.vr ] ; 2 uses
  %.6.i.i353 = phi ptr [ %.2245.i.i2952295, %bb.wi ], [ %.1244.i.i2932288, %bb.vr ] ; 2 uses
  %i.gym = load i16, ptr %.6.i.i353, align 1
  store i16 %i.gym, ptr %.6256.i.i352, align 1
  %i.gyn = getelementptr inbounds nuw i8, ptr %.6256.i.i352, i64 2
  %i.gyo = getelementptr inbounds nuw i8, ptr %.6.i.i353, i64 2
  br label %.preheader1068.preheader

.loopexit1077:                                    ; preds = %bb.vs, %bb.wj
  %.7257.i.i355 = phi ptr [ %.2252.i.i2942294, %bb.wj ], [ %.1251.i.i2922287, %bb.vs ] ; 2 uses
  %.7.i.i356 = phi ptr [ %.2245.i.i2952295, %bb.wj ], [ %.1244.i.i2932288, %bb.vs ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7257.i.i355, ptr noundef nonnull align 1 dereferenceable(3) %.7.i.i356, i64 3, i1 false)
  %i.gyp = getelementptr inbounds nuw i8, ptr %.7257.i.i355, i64 3
  %i.gyq = getelementptr inbounds nuw i8, ptr %.7.i.i356, i64 3
  br label %.preheader1068.preheader

bb.wm:                                            ; preds = %bb.vt
  %i.gyr = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 4
  %i.gys = load i32, ptr %.1244.i.i2932288, align 1
  store i32 %i.gys, ptr %.1251.i.i2922287, align 1
  %i.gyt = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 4
  br label %.preheader1068.preheader

bb.wn:                                            ; preds = %bb.vu
  %i.gyu = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(5) %.1244.i.i2932288, i64 5, i1 false)
  %i.gyv = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 5
  br label %.preheader1068.preheader

bb.wo:                                            ; preds = %bb.vv
  %i.gyw = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(6) %.1244.i.i2932288, i64 6, i1 false)
  %i.gyx = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 6
  br label %.preheader1068.preheader

bb.wp:                                            ; preds = %bb.vw
  %i.gyy = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(7) %.1244.i.i2932288, i64 7, i1 false)
  %i.gyz = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 7
  br label %.preheader1068.preheader

bb.wq:                                            ; preds = %bb.vx
  %i.gza = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 8
  %i.gzb = load i64, ptr %.1244.i.i2932288, align 1
  store i64 %i.gzb, ptr %.1251.i.i2922287, align 1
  %i.gzc = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 8
  br label %.preheader1068.preheader

bb.wr:                                            ; preds = %bb.vy
  %i.gzd = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(9) %.1244.i.i2932288, i64 9, i1 false)
  %i.gze = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 9
  br label %.preheader1068.preheader

bb.ws:                                            ; preds = %bb.vz
  %i.gzf = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(10) %.1244.i.i2932288, i64 10, i1 false)
  %i.gzg = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 10
  br label %.preheader1068.preheader

bb.wt:                                            ; preds = %bb.wa
  %i.gzh = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(11) %.1244.i.i2932288, i64 11, i1 false)
  %i.gzi = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 11
  br label %.preheader1068.preheader

bb.wu:                                            ; preds = %bb.wb
  %i.gzj = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(12) %.1244.i.i2932288, i64 12, i1 false)
  %i.gzk = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 12
  br label %.preheader1068.preheader

bb.wv:                                            ; preds = %bb.wc
  %i.gzl = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(13) %.1244.i.i2932288, i64 13, i1 false)
  %i.gzm = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 13
  br label %.preheader1068.preheader

bb.ww:                                            ; preds = %bb.wd
  %i.gzn = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(14) %.1244.i.i2932288, i64 14, i1 false)
  %i.gzo = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 14
  br label %.preheader1068.preheader

bb.wx:                                            ; preds = %bb.we
  %i.gzp = getelementptr inbounds nuw i8, ptr %.1244.i.i2932288, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1251.i.i2922287, ptr noundef nonnull align 1 dereferenceable(15) %.1244.i.i2932288, i64 15, i1 false)
  %i.gzq = getelementptr inbounds nuw i8, ptr %.1251.i.i2922287, i64 15
  br label %.preheader1068.preheader

.preheader1068.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2301.3
  %i.gzr = getelementptr inbounds nuw i8, ptr %.3246.i.i2972300, i64 3
  br label %.preheader1068.preheader

.preheader1068.preheader.loopexit.loopexit.split.loop.exit6680: ; preds = %.lr.ph2301.2
  %i.gzs = getelementptr inbounds nuw i8, ptr %.3246.i.i2972300, i64 2
  br label %.preheader1068.preheader

.preheader1068.preheader.loopexit.loopexit.split.loop.exit6683: ; preds = %.lr.ph2301.1
  %i.gzt = getelementptr inbounds nuw i8, ptr %.3246.i.i2972300, i64 1
  br label %.preheader1068.preheader

.preheader1068.preheader:                         ; preds = %.lr.ph2290, %.lr.ph2296, %.lr.ph2301, %.preheader1068.preheader.loopexit.loopexit.split.loop.exit6683, %.preheader1068.preheader.loopexit.loopexit.split.loop.exit6680, %.preheader1068.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2301.prol, %.loopexit1075, %.loopexit1076, %.loopexit1077, %bb.wm, %bb.wn, %bb.wo, %bb.wp, %bb.wq, %bb.wr, %bb.ws, %bb.wt, %bb.wu, %bb.wv, %bb.ww, %bb.wx
  %.8258.i.i302.ph = phi ptr [ %.2252.i.i2942294, %.lr.ph2296 ], [ %.3253.i.i2962299.prol, %.lr.ph2301.prol ], [ %i.gyk, %.loopexit1075 ], [ %i.gyn, %.loopexit1076 ], [ %i.gyp, %.loopexit1077 ], [ %i.gyt, %bb.wm ], [ %i.gyv, %bb.wn ], [ %i.gyx, %bb.wo ], [ %i.gyz, %bb.wp ], [ %i.gzc, %bb.wq ], [ %i.gze, %bb.wr ], [ %i.gzg, %bb.ws ], [ %i.gzi, %bb.wt ], [ %i.gzk, %bb.wu ], [ %i.gzm, %bb.wv ], [ %i.gzo, %bb.ww ], [ %i.gzq, %bb.wx ], [ %.3253.i.i2962299, %.lr.ph2301 ], [ %i.gxq, %.preheader1068.preheader.loopexit.loopexit.split.loop.exit6683 ], [ %i.gxw, %.preheader1068.preheader.loopexit.loopexit.split.loop.exit6680 ], [ %i.gyc, %.preheader1068.preheader.loopexit.loopexit.split.loop.exit ], [ %.1251.i.i2922287, %.lr.ph2290 ]
  %.8.i.i303.ph = phi ptr [ %.2245.i.i2952295, %.lr.ph2296 ], [ %.3246.i.i2972300.prol, %.lr.ph2301.prol ], [ %i.gyl, %.loopexit1075 ], [ %i.gyo, %.loopexit1076 ], [ %i.gyq, %.loopexit1077 ], [ %i.gyr, %bb.wm ], [ %i.gyu, %bb.wn ], [ %i.gyw, %bb.wo ], [ %i.gyy, %bb.wp ], [ %i.gza, %bb.wq ], [ %i.gzd, %bb.wr ], [ %i.gzf, %bb.ws ], [ %i.gzh, %bb.wt ], [ %i.gzj, %bb.wu ], [ %i.gzl, %bb.wv ], [ %i.gzn, %bb.ww ], [ %i.gzp, %bb.wx ], [ %.3246.i.i2972300, %.lr.ph2301 ], [ %i.gzt, %.preheader1068.preheader.loopexit.loopexit.split.loop.exit6683 ], [ %i.gzs, %.preheader1068.preheader.loopexit.loopexit.split.loop.exit6680 ], [ %i.gzr, %.preheader1068.preheader.loopexit.loopexit.split.loop.exit ], [ %.1244.i.i2932288, %.lr.ph2290 ]
  br label %.preheader1068

.preheader1068:                                   ; preds = %.preheader1068.backedge, %.preheader1068.preheader
  %.8258.i.i302 = phi ptr [ %.8258.i.i302.ph, %.preheader1068.preheader ], [ %.8258.i.i302.be, %.preheader1068.backedge ] ; 34 uses
  %.8.i.i303 = phi ptr [ %.8.i.i303.ph, %.preheader1068.preheader ], [ %.8.i.i303.be, %.preheader1068.backedge ] ; 23 uses
  %i.gzu = getelementptr inbounds nuw i8, ptr %.8.i.i303, i64 4 ; 3 uses
  %i.gzv = icmp ugt ptr %i.gzu, %i.gsm            ; 2 uses
  br i1 %i.gzv, label %bb.wy, label %._crit_edge2956, !prof !44

._crit_edge2956:                                  ; preds = %.preheader1068
  %.pre2957 = load i8, ptr %.8.i.i303, align 1, !tbaa !99 ; 2 uses
  %.phi.trans.insert2958 = zext i8 %.pre2957 to i64 ; 2 uses
  %.phi.trans.insert2959 = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %.phi.trans.insert2958
  %.pre2960 = load i8, ptr %.phi.trans.insert2959, align 1, !tbaa !99
  br label %bb.wz

bb.wy:                                            ; preds = %.preheader1068
  %i.gzw = ptrtoint ptr %.8.i.i303 to i64
  %i.gzx = sub i64 %i.gsn, %i.gzw
  %i.gzy = load i8, ptr %.8.i.i303, align 1, !tbaa !99 ; 3 uses
  %i.gzz = zext i8 %i.gzy to i64                  ; 2 uses
  %i.haa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, i64 %i.gzz
  %i.hab = load i8, ptr %i.haa, align 1, !tbaa !99 ; 2 uses
  %i.hac = lshr i8 %i.hab, 1
  %i.had = zext nneg i8 %i.hac to i64
  %i.hae = icmp slt i64 %i.gzx, %i.had
  br i1 %i.hae, label %bb.xs, label %bb.wz

bb.wz:                                            ; preds = %._crit_edge2956, %bb.wy
  %.pre-phi2979 = phi i64 [ %.phi.trans.insert2958, %._crit_edge2956 ], [ %i.gzz, %bb.wy ]
  %i.haf = phi i8 [ %.pre2960, %._crit_edge2956 ], [ %i.hab, %bb.wy ]
  %i.hag = phi i8 [ %.pre2957, %._crit_edge2956 ], [ %i.gzy, %bb.wy ] ; 2 uses
  switch i8 %i.haf, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i [
    i8 0, label %bb.xa
    i8 4, label %bb.xb
    i8 6, label %bb.xd
    i8 8, label %bb.xi
    i8 2, label %bb.xk
    i8 3, label %bb.xl
    i8 5, label %bb.xm
    i8 7, label %bb.xo
    i8 9, label %bb.xq
    i8 1, label %bb.xs
  ]

bb.xa:                                            ; preds = %bb.wz
  %i.hah = getelementptr inbounds nuw i8, ptr %.8.i.i303, i64 1
  store i8 %i.hag, ptr %.8258.i.i302, align 1, !tbaa !99
  br label %bb.vp

bb.xb:                                            ; preds = %bb.wz
  %.sroa.0.0.copyload.i521.i = load i16, ptr %.8.i.i303, align 1 ; 3 uses
  %i.hai = zext i16 %.sroa.0.0.copyload.i521.i to i32 ; 2 uses
  %i.haj = and i32 %i.hai, 49376
  %i.hak = icmp ne i32 %i.haj, 32960
  %i.hal = and i32 %i.hai, 30
  %i.ham = icmp eq i32 %i.hal, 0
  %.not315.i.i344 = or i1 %i.hak, %i.ham
  %i.han = trunc i16 %.sroa.0.0.copyload.i521.i to i8
  br i1 %.not315.i.i344, label %.thread911, label %bb.xc, !prof !44

bb.xc:                                            ; preds = %bb.xb
  store i16 %.sroa.0.0.copyload.i521.i, ptr %.8258.i.i302, align 1
  %i.hao = getelementptr inbounds nuw i8, ptr %.8258.i.i302, i64 2
  %i.hap = getelementptr inbounds nuw i8, ptr %.8.i.i303, i64 2
  br label %.preheader1068.backedge

bb.xd:                                            ; preds = %bb.wz
  br i1 %i.gzv, label %bb.xg, label %bb.xe, !prof !44

bb.xe:                                            ; preds = %bb.xd
  %.sroa.0.0.copyload.i333.i.i340 = load i32, ptr %.8.i.i303, align 1 ; 4 uses
  %i.haq = and i32 %.sroa.0.0.copyload.i333.i.i340, 12632304
  %i.har = icmp eq i32 %i.haq, 8421600
  %i.has = trunc i32 %.sroa.0.0.copyload.i333.i.i340 to i8 ; 3 uses
  br i1 %i.har, label %bb.xf, label %.thread911, !prof !61

bb.xf:                                            ; preds = %bb.xe
  %i.hat = and i32 %.sroa.0.0.copyload.i333.i.i340, 8207
  switch i32 %i.hat, label %.critedge.i.i341 [
    i32 8205, label %.thread911
    i32 0, label %.thread911
  ], !prof !150

bb.xg:                                            ; preds = %bb.xd
  %.sroa.0.0.copyload.i529.i = load i16, ptr %.8.i.i303, align 1 ; 2 uses
  %i.hau = getelementptr inbounds nuw i8, ptr %.8.i.i303, i64 2
  %i.hav = load i8, ptr %i.hau, align 1, !tbaa !99
  %.sroa.4.0.insert.ext.i530.i = zext i8 %i.hav to i32
  %.sroa.4.0.insert.shift.i531.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i530.i, 16
  %.sroa.0.0.insert.ext.i532.i = zext i16 %.sroa.0.0.copyload.i529.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i533.i = or disjoint i32 %.sroa.4.0.insert.shift.i531.i, %.sroa.0.0.insert.ext.i532.i ; 2 uses
  %i.haw = and i32 %.sroa.0.0.insert.insert.i533.i, 12632304
  %i.hax = icmp eq i32 %i.haw, 8421600
  %i.hay = trunc i16 %.sroa.0.0.copyload.i529.i to i8 ; 3 uses
  br i1 %i.hax, label %bb.xh, label %.thread911, !prof !61

bb.xh:                                            ; preds = %bb.xg
  %i.haz = and i32 %.sroa.0.0.insert.ext.i532.i, 8207
  switch i32 %i.haz, label %.critedge.i.i341 [
    i32 8205, label %.thread911
    i32 0, label %.thread911
  ], !prof !150

.critedge.i.i341:                                 ; preds = %bb.xh, %bb.xf
  %storemerge988 = phi i32 [ %.sroa.0.0.copyload.i333.i.i340, %bb.xf ], [ %.sroa.0.0.insert.insert.i533.i, %bb.xh ]
  store i32 %storemerge988, ptr %.8258.i.i302, align 1
  %i.hba = getelementptr inbounds nuw i8, ptr %.8258.i.i302, i64 3
  %i.hbb = getelementptr inbounds nuw i8, ptr %.8.i.i303, i64 3
  br label %.preheader1068.backedge

bb.xi:                                            ; preds = %bb.wz
  %.sroa.0.0.copyload.i332.i.i332 = load i32, ptr %.8.i.i303, align 1 ; 6 uses
  %i.hbc = and i32 %.sroa.0.0.copyload.i332.i.i332, -1061109512
  %i.hbd = icmp ne i32 %i.hbc, -2139062032
  %i.hbe = and i32 %.sroa.0.0.copyload.i332.i.i332, 12295
  %.not306.i.i333 = icmp eq i32 %i.hbe, 0
  %or.cond.i.i334 = or i1 %i.hbd, %.not306.i.i333
  %i.hbf = trunc i32 %.sroa.0.0.copyload.i332.i.i332 to i8 ; 2 uses
  br i1 %or.cond.i.i334, label %.thread911, label %bb.xj, !prof !151

bb.xj:                                            ; preds = %bb.xi
  %i.hbg = and i32 %.sroa.0.0.copyload.i332.i.i332, 4
  %i.hbh = icmp ne i32 %i.hbg, 0
  %i.hbi = and i32 %.sroa.0.0.copyload.i332.i.i332, 12291
  %i.hbj = icmp ne i32 %i.hbi, 0
  %.not309.i.i335 = and i1 %i.hbh, %i.hbj
  br i1 %.not309.i.i335, label %.thread911, label %.critedge321.i.i336, !prof !44

.critedge321.i.i336:                              ; preds = %bb.xj
  store i32 %.sroa.0.0.copyload.i332.i.i332, ptr %.8258.i.i302, align 1
  %i.hbk = getelementptr inbounds nuw i8, ptr %.8258.i.i302, i64 4
  br label %.preheader1068.backedge

bb.xk:                                            ; preds = %bb.wz
  %i.hbl = shl nuw nsw i64 %.pre-phi2979, 1
  %i.hbm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL21esc_single_char_tableE, i64 %i.hbl
  %i.hbn = load i16, ptr %i.hbm, align 2
  store i16 %i.hbn, ptr %.8258.i.i302, align 1
  %i.hbo = getelementptr inbounds nuw i8, ptr %.8258.i.i302, i64 2
  %i.hbp = getelementptr inbounds nuw i8, ptr %.8.i.i303, i64 1
  br label %.preheader1068.backedge

.preheader1068.backedge:                          ; preds = %bb.xk, %bb.xl, %bb.xt, %bb.xu, %bb.xc, %.critedge.i.i341, %.critedge321.i.i336, %bb.xn, %.critedge326.i.i318, %.critedge330.i.i314
  %.8258.i.i302.be = phi ptr [ %i.hfp, %bb.xt ], [ %i.hao, %bb.xc ], [ %i.hba, %.critedge.i.i341 ], [ %i.hbk, %.critedge321.i.i336 ], [ %i.hbo, %bb.xk ], [ %i.hbw, %bb.xl ], [ %i.hcs, %bb.xn ], [ %i.hdp, %.critedge326.i.i318 ], [ %i.hfl, %.critedge330.i.i314 ], [ %i.hfr, %bb.xu ]
  %.8.i.i303.be = phi ptr [ %i.hfo, %bb.xt ], [ %i.hap, %bb.xc ], [ %i.hbb, %.critedge.i.i341 ], [ %i.gzu, %.critedge321.i.i336 ], [ %i.hbp, %bb.xk ], [ %i.hbx, %bb.xl ], [ %i.hct, %bb.xn ], [ %i.hdq, %.critedge326.i.i318 ], [ %i.gzu, %.critedge330.i.i314 ], [ %i.hfs, %bb.xu ]
  br label %.preheader1068

bb.xl:                                            ; preds = %bb.wz
  store i32 808482140, ptr %.8258.i.i302, align 1
  %i.hbq = getelementptr inbounds nuw i8, ptr %.8258.i.i302, i64 4
  %i.hbr = load i8, ptr %.8.i.i303, align 1, !tbaa !99
  %i.hbs = zext i8 %i.hbr to i64
  %i.hbt = shl nuw nsw i64 %i.hbs, 1
  %i.hbu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.hbt
  %i.hbv = load i16, ptr %i.hbu, align 2
  store i16 %i.hbv, ptr %i.hbq, align 1
  %i.hbw = getelementptr inbounds nuw i8, ptr %.8258.i.i302, i64 6
  %i.hbx = getelementptr inbounds nuw i8, ptr %.8.i.i303, i64 1
  br label %.preheader1068.backedge

bb.xm:                                            ; preds = %bb.wz
  %.sroa.0.0.copyload.i522.i = load i16, ptr %.8.i.i303, align 1 ; 3 uses
  %i.hby = zext i16 %.sroa.0.0.copyload.i522.i to i32 ; 2 uses
  %i.hbz = and i32 %i.hby, 49376
  %i.hca = icmp ne i32 %i.hbz, 32960
  %i.hcb = and i32 %i.hby, 30
  %i.hcc = icmp eq i32 %i.hcb, 0
  %.not303.i.i326 = or i1 %i.hca, %i.hcc
  br i1 %.not303.i.i326, label %.thread921, label %bb.xn, !prof !44

bb.xn:                                            ; preds = %bb.xm
  %i.hcd = lshr i16 %.sroa.0.0.copyload.i522.i, 8
  %i.hce = trunc nuw i16 %i.hcd to i8
  %i.hcf = trunc i16 %.sroa.0.0.copyload.i522.i to i8 ; 2 uses
  %.tr304.i.i327 = shl i8 %i.hcf, 6
  %i.hcg = and i8 %i.hce, 63
  store i16 30044, ptr %.8258.i.i302, align 1
  %i.hch = getelementptr inbounds nuw i8, ptr %.8258.i.i302, i64 2
  %i.hci = lshr i8 %i.hcf, 1
  %i.hcj = and i8 %i.hci, 14
  %i.hck = zext nneg i8 %i.hcj to i64
  %i.hcl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.hck
  %i.hcm = load i16, ptr %i.hcl, align 2
  store i16 %i.hcm, ptr %i.hch, align 1
  %i.hcn = getelementptr inbounds nuw i8, ptr %.8258.i.i302, i64 4
  %.narrow305.i.i328 = or disjoint i8 %i.hcg, %.tr304.i.i327
  %i.hco = zext i8 %.narrow305.i.i328 to i64
  %i.hcp = shl nuw nsw i64 %i.hco, 1
  %i.hcq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL18esc_hex_char_tableE, i64 %i.hcp
  %i.hcr = load i16, ptr %i.hcq, align 2
  store i16 %i.hcr, ptr %i.hcn, align 1
  %i.hcs = getelementptr inbounds nuw i8, ptr %.8258.i.i302, i64 6
  %i.hct = getelementptr inbounds nuw i8, ptr %.8.i.i303, i64 2
  br label %.preheader1068.backedge

bb.xo:                                            ; preds = %bb.wz
  %.sroa.0.0.copyload.i534.i = load i16, ptr %.8.i.i303, align 1 ; 3 uses
  %i.hcu = getelementptr inbounds nuw i8, ptr %.8.i.i303, i64 2
  %i.hcv = load i8, ptr %i.hcu, align 1, !tbaa !99 ; 2 uses
  %.sroa.4.0.insert.ext.i535.i = zext i8 %i.hcv to i32
  %.sroa.4.0.insert.shift.i536.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i535.i, 16
  %.sroa.0.0.insert.ext.i537.i = zext i16 %.sroa.0.0.copyload.i534.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i538.i = or disjoint i32 %.sroa.4.0.insert.shift.i536.i, %.sroa.0.0.insert.ext.i537.i
  %i.hcw = and i32 %.sroa.0.0.insert.insert.i538.i, 12632304
  %i.hcx = icmp eq i32 %i.hcw, 8421600
  br i1 %i.hcx, label %bb.xp, label %.thread921, !prof !61

bb.xp:                                            ; preds = %bb.xo
  %i.hcy = and i32 %.sroa.0.0.insert.ext.i537.i, 8207
  switch i32 %i.hcy, label %.critedge326.i.i318 [
    i32 8205, label %.thread921
    i32 0, label %.thread921
  ], !prof !150

.critedge326.i.i318:                              ; preds = %bb.xp
  %i.hcz = zext i16 %.sroa.0.0.copyload.i534.i to i64
end_hunk_20
begin_hunk_21_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
vector.ph5202:                                    ; preds = %.lr.ph2265.preheader
  %n.vec5203 = and i64 %i.hfy, 9223372036854775800 ; 4 uses
  %i.hga = shl i64 %n.vec5203, 2
  %i.hgb = sub i64 %.0.i425.i.lcssa, %i.hga       ; 2 uses
  %i.hgc = shl i64 %n.vec5203, 2                  ; 2 uses
  %i.hgd = getelementptr i8, ptr %.018.i.i280.lcssa, i64 %i.hgc ; 2 uses
  %i.hge = getelementptr i8, ptr %.021.i.i279.lcssa, i64 %i.hgc ; 2 uses
  br label %vector.body5204

vector.body5204:                                  ; preds = %vector.body5204, %vector.ph5202
  %index5205 = phi i64 [ 0, %vector.ph5202 ], [ %index.next5210, %vector.body5204 ] ; 2 uses
  %i.hgf = shl i64 %index5205, 2                  ; 2 uses
  %next.gep5206 = getelementptr i8, ptr %.018.i.i280.lcssa, i64 %i.hgf ; 2 uses
  %next.gep5207 = getelementptr i8, ptr %.021.i.i279.lcssa, i64 %i.hgf ; 2 uses
  %i.hgg = getelementptr i8, ptr %next.gep5206, i64 16
  %wide.load5208 = load <4 x i32>, ptr %next.gep5206, align 1
  %wide.load5209 = load <4 x i32>, ptr %i.hgg, align 1
  %i.hgh = getelementptr i8, ptr %next.gep5207, i64 16
  store <4 x i32> %wide.load5208, ptr %next.gep5207, align 1
  store <4 x i32> %wide.load5209, ptr %i.hgh, align 1
  %index.next5210 = add nuw i64 %index5205, 8     ; 2 uses
  %i.hgi = icmp eq i64 %index.next5210, %n.vec5203
  br i1 %i.hgi, label %middle.block5211, label %vector.body5204, !llvm.loop !357

middle.block5211:                                 ; preds = %vector.body5204
  %cmp.n5212 = icmp eq i64 %i.hfy, %n.vec5203
  br i1 %cmp.n5212, label %.preheader1098, label %.lr.ph2265.preheader5470

.lr.ph2265.preheader5470:                         ; preds = %.lr.ph2265.preheader, %middle.block5211
  %.1.i.i2832264.ph = phi i64 [ %.0.i425.i.lcssa, %.lr.ph2265.preheader ], [ %i.hgb, %middle.block5211 ]
  %.119.i.i2822263.ph = phi ptr [ %.018.i.i280.lcssa, %.lr.ph2265.preheader ], [ %i.hgd, %middle.block5211 ]
  %.122.i.i2812262.ph = phi ptr [ %.021.i.i279.lcssa, %.lr.ph2265.preheader ], [ %i.hge, %middle.block5211 ]
  br label %.lr.ph2265

.lr.ph2258:                                       ; preds = %bb.xv, %.lr.ph2258
  %.0.i425.i2256 = phi i64 [ %i.hgl, %.lr.ph2258 ], [ %i.gee, %bb.xv ]
  %.018.i.i2802255 = phi ptr [ %i.hgk, %.lr.ph2258 ], [ %i.geg, %bb.xv ] ; 2 uses
  %.021.i.i2792254 = phi ptr [ %i.hgj, %.lr.ph2258 ], [ %i.hft, %bb.xv ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i2792254, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i2802255, i64 16, i1 false)
  %i.hgj = getelementptr inbounds nuw i8, ptr %.021.i.i2792254, i64 16 ; 2 uses
  %i.hgk = getelementptr inbounds nuw i8, ptr %.018.i.i2802255, i64 16 ; 2 uses
  %i.hgl = add nsw i64 %.0.i425.i2256, -16        ; 3 uses
  %i.hgm = icmp ugt i64 %i.hgl, 15
  br i1 %i.hgm, label %.lr.ph2258, label %.preheader1099, !llvm.loop !34

.preheader1098:                                   ; preds = %.lr.ph2265, %middle.block5211, %.preheader1099
  %.122.i.i281.lcssa = phi ptr [ %.021.i.i279.lcssa, %.preheader1099 ], [ %i.hge, %middle.block5211 ], [ %i.hhg, %.lr.ph2265 ] ; 7 uses
  %.119.i.i282.lcssa = phi ptr [ %.018.i.i280.lcssa, %.preheader1099 ], [ %i.hgd, %middle.block5211 ], [ %i.hhh, %.lr.ph2265 ] ; 6 uses
  %.1.i.i283.lcssa = phi i64 [ %.0.i425.i.lcssa, %.preheader1099 ], [ %i.hgb, %middle.block5211 ], [ %i.hhi, %.lr.ph2265 ] ; 11 uses
  %.not.i.i2872269 = icmp eq i64 %.1.i.i283.lcssa, 0
  br i1 %.not.i.i2872269, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i, label %iter.check5179

iter.check5179:                                   ; preds = %.preheader1098
  %.119.i.i282.lcssa5158 = ptrtoaddr ptr %.119.i.i282.lcssa to i64
  %.122.i.i281.lcssa5157 = ptrtoaddr ptr %.122.i.i281.lcssa to i64
  %min.iters.check5161 = icmp ult i64 %.1.i.i283.lcssa, 4
  %i.hgn = sub i64 %.119.i.i282.lcssa5158, %.122.i.i281.lcssa5157
  %diff.check5159 = icmp ugt i64 %i.hgn, -32
  %or.cond5281 = select i1 %min.iters.check5161, i1 true, i1 %diff.check5159
  br i1 %or.cond5281, label %.lr.ph2273.preheader, label %vector.main.loop.iter.check5162

vector.main.loop.iter.check5162:                  ; preds = %iter.check5179
  %min.iters.check5163 = icmp ult i64 %.1.i.i283.lcssa, 32
  br i1 %min.iters.check5163, label %vec.epilog.ph5183, label %vector.ph5164

vector.ph5164:                                    ; preds = %vector.main.loop.iter.check5162
  %i.hgo = and i64 %.1.i.i283.lcssa, 28
  %n.vec5165 = and i64 %.1.i.i283.lcssa, -32      ; 5 uses
  %i.hgp = and i64 %.1.i.i283.lcssa, 31
  %i.hgq = getelementptr i8, ptr %.119.i.i282.lcssa, i64 %n.vec5165
  %i.hgr = getelementptr i8, ptr %.122.i.i281.lcssa, i64 %n.vec5165 ; 2 uses
  br label %vector.body5166

vector.body5166:                                  ; preds = %vector.body5166, %vector.ph5164
  %index5167 = phi i64 [ 0, %vector.ph5164 ], [ %index.next5172, %vector.body5166 ] ; 3 uses
  %next.gep5168 = getelementptr i8, ptr %.119.i.i282.lcssa, i64 %index5167 ; 2 uses
  %next.gep5169 = getelementptr i8, ptr %.122.i.i281.lcssa, i64 %index5167 ; 2 uses
  %i.hgs = getelementptr i8, ptr %next.gep5168, i64 16
  %wide.load5170 = load <16 x i8>, ptr %next.gep5168, align 1, !tbaa !99
  %wide.load5171 = load <16 x i8>, ptr %i.hgs, align 1, !tbaa !99
  %i.hgt = getelementptr i8, ptr %next.gep5169, i64 16
  store <16 x i8> %wide.load5170, ptr %next.gep5169, align 1, !tbaa !99
  store <16 x i8> %wide.load5171, ptr %i.hgt, align 1, !tbaa !99
  %index.next5172 = add nuw i64 %index5167, 32    ; 2 uses
  %i.hgu = icmp eq i64 %index.next5172, %n.vec5165
  br i1 %i.hgu, label %middle.block5173, label %vector.body5166, !llvm.loop !358

middle.block5173:                                 ; preds = %vector.body5166
  %cmp.n5174 = icmp eq i64 %.1.i.i283.lcssa, %n.vec5165
  br i1 %cmp.n5174, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i, label %vec.epilog.iter.check5181

vec.epilog.iter.check5181:                        ; preds = %middle.block5173
  %min.epilog.iters.check5182 = icmp eq i64 %i.hgo, 0
  br i1 %min.epilog.iters.check5182, label %.lr.ph2273.preheader, label %vec.epilog.ph5183, !prof !152

vec.epilog.ph5183:                                ; preds = %vector.main.loop.iter.check5162, %vec.epilog.iter.check5181
  %vec.epilog.resume.val5175 = phi i64 [ %n.vec5165, %vec.epilog.iter.check5181 ], [ 0, %vector.main.loop.iter.check5162 ]
  %n.vec5184 = and i64 %.1.i.i283.lcssa, -4       ; 4 uses
  %i.hgv = and i64 %.1.i.i283.lcssa, 3
  %i.hgw = getelementptr i8, ptr %.119.i.i282.lcssa, i64 %n.vec5184
  %i.hgx = getelementptr i8, ptr %.122.i.i281.lcssa, i64 %n.vec5184 ; 2 uses
  br label %vec.epilog.vector.body5185

vec.epilog.vector.body5185:                       ; preds = %vec.epilog.vector.body5185, %vec.epilog.ph5183
  %index5186 = phi i64 [ %vec.epilog.resume.val5175, %vec.epilog.ph5183 ], [ %index.next5190, %vec.epilog.vector.body5185 ] ; 3 uses
  %next.gep5187 = getelementptr i8, ptr %.119.i.i282.lcssa, i64 %index5186
  %next.gep5188 = getelementptr i8, ptr %.122.i.i281.lcssa, i64 %index5186
  %wide.load5189 = load <4 x i8>, ptr %next.gep5187, align 1, !tbaa !99
  store <4 x i8> %wide.load5189, ptr %next.gep5188, align 1, !tbaa !99
  %index.next5190 = add nuw i64 %index5186, 4     ; 2 uses
  %i.hgy = icmp eq i64 %index.next5190, %n.vec5184
  br i1 %i.hgy, label %vec.epilog.middle.block5191, label %vec.epilog.vector.body5185, !llvm.loop !359

vec.epilog.middle.block5191:                      ; preds = %vec.epilog.vector.body5185
  %cmp.n5192 = icmp eq i64 %.1.i.i283.lcssa, %n.vec5184
  br i1 %cmp.n5192, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i, label %.lr.ph2273.preheader

.lr.ph2273.preheader:                             ; preds = %iter.check5179, %vec.epilog.iter.check5181, %vec.epilog.middle.block5191
  %.2.i.i2862272.ph = phi i64 [ %.1.i.i283.lcssa, %iter.check5179 ], [ %i.hgp, %vec.epilog.iter.check5181 ], [ %i.hgv, %vec.epilog.middle.block5191 ] ; 4 uses
  %.220.i.i2852271.ph = phi ptr [ %.119.i.i282.lcssa, %iter.check5179 ], [ %i.hgq, %vec.epilog.iter.check5181 ], [ %i.hgw, %vec.epilog.middle.block5191 ] ; 2 uses
  %.223.i.i2842270.ph = phi ptr [ %.122.i.i281.lcssa, %iter.check5179 ], [ %i.hgr, %vec.epilog.iter.check5181 ], [ %i.hgx, %vec.epilog.middle.block5191 ] ; 2 uses
  %i.hgz = add nsw i64 %.2.i.i2862272.ph, -1
  %xtraiter5957 = and i64 %.2.i.i2862272.ph, 7    ; 2 uses
  %lcmp.mod5958.not = icmp eq i64 %xtraiter5957, 0
  br i1 %lcmp.mod5958.not, label %.lr.ph2273.prol.loopexit, label %.lr.ph2273.prol

.lr.ph2273.prol:                                  ; preds = %.lr.ph2273.preheader, %.lr.ph2273.prol
  %.2.i.i2862272.prol = phi i64 [ %i.hhd, %.lr.ph2273.prol ], [ %.2.i.i2862272.ph, %.lr.ph2273.preheader ]
  %.220.i.i2852271.prol = phi ptr [ %i.hha, %.lr.ph2273.prol ], [ %.220.i.i2852271.ph, %.lr.ph2273.preheader ] ; 2 uses
  %.223.i.i2842270.prol = phi ptr [ %i.hhc, %.lr.ph2273.prol ], [ %.223.i.i2842270.ph, %.lr.ph2273.preheader ] ; 2 uses
  %prol.iter5959 = phi i64 [ %prol.iter5959.next, %.lr.ph2273.prol ], [ 0, %.lr.ph2273.preheader ]
  %i.hha = getelementptr inbounds nuw i8, ptr %.220.i.i2852271.prol, i64 1 ; 2 uses
  %i.hhb = load i8, ptr %.220.i.i2852271.prol, align 1, !tbaa !99
  %i.hhc = getelementptr inbounds nuw i8, ptr %.223.i.i2842270.prol, i64 1 ; 3 uses
  store i8 %i.hhb, ptr %.223.i.i2842270.prol, align 1, !tbaa !99
  %i.hhd = add nsw i64 %.2.i.i2862272.prol, -1    ; 2 uses
  %prol.iter5959.next = add i64 %prol.iter5959, 1 ; 2 uses
  %prol.iter5959.cmp.not = icmp eq i64 %prol.iter5959.next, %xtraiter5957
  br i1 %prol.iter5959.cmp.not, label %.lr.ph2273.prol.loopexit, label %.lr.ph2273.prol, !llvm.loop !360

.lr.ph2273.prol.loopexit:                         ; preds = %.lr.ph2273.prol, %.lr.ph2273.preheader
  %.lcssa5556.unr = phi ptr [ poison, %.lr.ph2273.preheader ], [ %i.hhc, %.lr.ph2273.prol ]
  %.2.i.i2862272.unr = phi i64 [ %.2.i.i2862272.ph, %.lr.ph2273.preheader ], [ %i.hhd, %.lr.ph2273.prol ]
  %.220.i.i2852271.unr = phi ptr [ %.220.i.i2852271.ph, %.lr.ph2273.preheader ], [ %i.hha, %.lr.ph2273.prol ]
  %.223.i.i2842270.unr = phi ptr [ %.223.i.i2842270.ph, %.lr.ph2273.preheader ], [ %i.hhc, %.lr.ph2273.prol ]
  %i.hhe = icmp ult i64 %i.hgz, 7
  br i1 %i.hhe, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i, label %.lr.ph2273

.lr.ph2265:                                       ; preds = %.lr.ph2265.preheader5470, %.lr.ph2265
  %.1.i.i2832264 = phi i64 [ %i.hhi, %.lr.ph2265 ], [ %.1.i.i2832264.ph, %.lr.ph2265.preheader5470 ]
  %.119.i.i2822263 = phi ptr [ %i.hhh, %.lr.ph2265 ], [ %.119.i.i2822263.ph, %.lr.ph2265.preheader5470 ] ; 2 uses
  %.122.i.i2812262 = phi ptr [ %i.hhg, %.lr.ph2265 ], [ %.122.i.i2812262.ph, %.lr.ph2265.preheader5470 ] ; 2 uses
  %i.hhf = load i32, ptr %.119.i.i2822263, align 1
  store i32 %i.hhf, ptr %.122.i.i2812262, align 1
  %i.hhg = getelementptr inbounds nuw i8, ptr %.122.i.i2812262, i64 4 ; 2 uses
  %i.hhh = getelementptr inbounds nuw i8, ptr %.119.i.i2822263, i64 4 ; 2 uses
  %i.hhi = add nsw i64 %.1.i.i2832264, -4         ; 3 uses
  %i.hhj = icmp ugt i64 %i.hhi, 3
  br i1 %i.hhj, label %.lr.ph2265, label %.preheader1098, !llvm.loop !361

.lr.ph2273:                                       ; preds = %.lr.ph2273.prol.loopexit, %.lr.ph2273
  %.2.i.i2862272 = phi i64 [ %i.hii, %.lr.ph2273 ], [ %.2.i.i2862272.unr, %.lr.ph2273.prol.loopexit ]
  %.220.i.i2852271 = phi ptr [ %i.hif, %.lr.ph2273 ], [ %.220.i.i2852271.unr, %.lr.ph2273.prol.loopexit ] ; 9 uses
  %.223.i.i2842270 = phi ptr [ %i.hih, %.lr.ph2273 ], [ %.223.i.i2842270.unr, %.lr.ph2273.prol.loopexit ] ; 9 uses
  %i.hhk = getelementptr inbounds nuw i8, ptr %.220.i.i2852271, i64 1
  %i.hhl = load i8, ptr %.220.i.i2852271, align 1, !tbaa !99
  %i.hhm = getelementptr inbounds nuw i8, ptr %.223.i.i2842270, i64 1
  store i8 %i.hhl, ptr %.223.i.i2842270, align 1, !tbaa !99
  %i.hhn = getelementptr inbounds nuw i8, ptr %.220.i.i2852271, i64 2
  %i.hho = load i8, ptr %i.hhk, align 1, !tbaa !99
  %i.hhp = getelementptr inbounds nuw i8, ptr %.223.i.i2842270, i64 2
  store i8 %i.hho, ptr %i.hhm, align 1, !tbaa !99
  %i.hhq = getelementptr inbounds nuw i8, ptr %.220.i.i2852271, i64 3
  %i.hhr = load i8, ptr %i.hhn, align 1, !tbaa !99
  %i.hhs = getelementptr inbounds nuw i8, ptr %.223.i.i2842270, i64 3
  store i8 %i.hhr, ptr %i.hhp, align 1, !tbaa !99
  %i.hht = getelementptr inbounds nuw i8, ptr %.220.i.i2852271, i64 4
  %i.hhu = load i8, ptr %i.hhq, align 1, !tbaa !99
  %i.hhv = getelementptr inbounds nuw i8, ptr %.223.i.i2842270, i64 4
  store i8 %i.hhu, ptr %i.hhs, align 1, !tbaa !99
  %i.hhw = getelementptr inbounds nuw i8, ptr %.220.i.i2852271, i64 5
  %i.hhx = load i8, ptr %i.hht, align 1, !tbaa !99
  %i.hhy = getelementptr inbounds nuw i8, ptr %.223.i.i2842270, i64 5
  store i8 %i.hhx, ptr %i.hhv, align 1, !tbaa !99
  %i.hhz = getelementptr inbounds nuw i8, ptr %.220.i.i2852271, i64 6
  %i.hia = load i8, ptr %i.hhw, align 1, !tbaa !99
  %i.hib = getelementptr inbounds nuw i8, ptr %.223.i.i2842270, i64 6
  store i8 %i.hia, ptr %i.hhy, align 1, !tbaa !99
  %i.hic = getelementptr inbounds nuw i8, ptr %.220.i.i2852271, i64 7
  %i.hid = load i8, ptr %i.hhz, align 1, !tbaa !99
  %i.hie = getelementptr inbounds nuw i8, ptr %.223.i.i2842270, i64 7
  store i8 %i.hid, ptr %i.hib, align 1, !tbaa !99
  %i.hif = getelementptr inbounds nuw i8, ptr %.220.i.i2852271, i64 8
  %i.hig = load i8, ptr %i.hic, align 1, !tbaa !99
  %i.hih = getelementptr inbounds nuw i8, ptr %.223.i.i2842270, i64 8 ; 2 uses
  store i8 %i.hig, ptr %i.hie, align 1, !tbaa !99
  %i.hii = add nsw i64 %.2.i.i2862272, -8         ; 2 uses
  %.not.i.i287.7 = icmp eq i64 %i.hii, 0
  br i1 %.not.i.i287.7, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i, label %.lr.ph2273, !llvm.loop !362

_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit517.i: ; preds = %.preheader1085, %.lr.ph2273.prol.loopexit, %.lr.ph2273, %.preheader1071, %bb.ue, %.lr.ph2250.prol.loopexit, %bb.us, %bb.wl, %.lr.ph2301.prol.loopexit, %bb.wz, %middle.block5173, %vec.epilog.middle.block5191, %.preheader1098
  %.8258.i443.i.lcssa.sink4466 = phi ptr [ %.8258.i443.i, %bb.us ], [ %.lcssa5626.unr, %.lr.ph2301.prol.loopexit ], [ %.8258.i.i302, %bb.wz ], [ %.2252.i.i294.lcssa, %.preheader1071 ], [ %i.hih, %.lr.ph2273 ], [ %.lcssa5543.unr, %.lr.ph2250.prol.loopexit ], [ %.122.i.i281.lcssa, %.preheader1098 ], [ %i.hgx, %vec.epilog.middle.block5191 ], [ %i.hgr, %middle.block5173 ], [ %i.gyi, %bb.wl ], [ %i.gkz, %bb.ue ], [ %.lcssa5556.unr, %.lr.ph2273.prol.loopexit ], [ %.2252.i435.i.lcssa, %.preheader1085 ] ; 3 uses
  %i.hij = getelementptr inbounds nuw i8, ptr %.8258.i443.i.lcssa.sink4466, i64 1
  store i8 34, ptr %.8258.i443.i.lcssa.sink4466, align 1, !tbaa !99
  %i.hik = select i1 %.not399.i, i8 44, i8 58
  %i.hil = getelementptr inbounds nuw i8, ptr %.8258.i443.i.lcssa.sink4466, i64 2
  store i8 %i.hik, ptr %i.hij, align 1, !tbaa !99
  br label %bb.acp

bb.xw:                                            ; preds = %bb.td
  %i.him = getelementptr inbounds nuw i8, ptr %.0356.i, i64 32
  %.not395.i = icmp ult ptr %i.him, %.0340.i
  br i1 %.not395.i, label %bb.xz, label %bb.xx, !prof !61

bb.xx:                                            ; preds = %bb.xw
  %i.hin = lshr i64 %.0.i202, 1
  %i.hio = tail call i64 @llvm.umax.i64(i64 %i.hin, i64 32)
  %i.hip = add nuw i64 %i.hio, 15
  %i.hiq = and i64 %i.hip, -16
  %i.hir = add i64 %i.hiq, %.0.i202               ; 4 uses
  %i.his = tail call noundef ptr %.sroa.6494.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0365.i, i64 noundef %.0.i202, i64 noundef %i.hir), !inline_history !354 ; 6 uses
  %.not396.i = icmp eq ptr %i.his, null
  br i1 %.not396.i, label %.loopexit1100, label %bb.xy, !prof !44

bb.xy:                                            ; preds = %bb.xx
  %i.hit = ptrtoint ptr %.0348.i to i64
  %i.hiu = ptrtoint ptr %.0340.i to i64           ; 2 uses
  %i.hiv = sub i64 %i.hit, %i.hiu                 ; 2 uses
  %i.hiw = sub i64 %i.hir, %i.hiv
  %i.hix = getelementptr inbounds nuw i8, ptr %i.his, i64 %i.hiw ; 2 uses
  %i.hiy = ptrtoint ptr %.0365.i to i64           ; 2 uses
  %i.hiz = sub i64 %i.hiu, %i.hiy
  %i.hja = getelementptr inbounds i8, ptr %i.his, i64 %i.hiz
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hix, ptr nonnull align 1 %i.hja, i64 %i.hiv, i1 false)
  %i.hjb = ptrtoint ptr %.0356.i to i64
  %i.hjc = sub i64 %i.hjb, %i.hiy
  %i.hjd = getelementptr inbounds i8, ptr %i.his, i64 %i.hjc
  %i.hje = getelementptr inbounds nuw i8, ptr %i.his, i64 %i.hir
  %.pre2950 = load i64, ptr %.0376.i, align 8, !tbaa !98
  br label %bb.xz

bb.xz:                                            ; preds = %bb.xy, %bb.xw
  %i.hjf = phi i64 [ %.pre2950, %bb.xy ], [ %i.gdy, %bb.xw ] ; 2 uses
  %.2367.i = phi ptr [ %i.his, %bb.xy ], [ %.0365.i, %bb.xw ] ; 2 uses
  %.3359.i = phi ptr [ %i.hjd, %bb.xy ], [ %.0356.i, %bb.xw ] ; 11 uses
  %.2350.i = phi ptr [ %i.hje, %bb.xy ], [ %.0348.i, %bb.xw ]
  %.2342.i = phi ptr [ %i.hix, %bb.xy ], [ %.0340.i, %bb.xw ]
  %.2.i203 = phi i64 [ %i.hir, %bb.xy ], [ %.0.i202, %bb.xw ]
  %i.hjg = and i64 %i.hjf, 16
  %.not.i518.i = icmp eq i64 %i.hjg, 0
  %i.hjh = getelementptr inbounds nuw i8, ptr %.0376.i, i64 8
  %i.hji = load i64, ptr %i.hjh, align 8, !tbaa !99 ; 10 uses
  br i1 %.not.i518.i, label %bb.abc, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.hjj = and i64 %i.hji, 4503599627370495       ; 4 uses
  %i.hjk = lshr i64 %i.hji, 52
  %i.hjl = trunc nuw nsw i64 %i.hjk to i32
  %i.hjm = and i32 %i.hjl, 2047                   ; 7 uses
  %i.hjn = icmp eq i32 %i.hjm, 2047
  br i1 %i.hjn, label %bb.yb, label %bb.yh, !prof !44

bb.yb:                                            ; preds = %bb.ya
  br i1 %.not985, label %bb.yd, label %bb.yc, !prof !61

bb.yc:                                            ; preds = %bb.yb
  store i32 1819047278, ptr %.3359.i, align 1
  %i.hjo = getelementptr inbounds nuw i8, ptr %.3359.i, i64 4
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.yd:                                            ; preds = %bb.yb
  br i1 %.not986, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread937, label %bb.ye, !prof !61

bb.ye:                                            ; preds = %bb.yd
  %i.hjp = icmp eq i64 %i.hjj, 0
  br i1 %i.hjp, label %bb.yf, label %bb.yg

bb.yf:                                            ; preds = %bb.ye
  store i8 45, ptr %.3359.i, align 1, !tbaa !99
  %.lobit131.i.i257 = lshr i64 %i.hji, 63
  %i.hjq = getelementptr inbounds nuw i8, ptr %.3359.i, i64 %.lobit131.i.i257 ; 2 uses
  store i64 8751735898823355977, ptr %i.hjq, align 1
  %i.hjr = getelementptr inbounds nuw i8, ptr %i.hjq, i64 8
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.yg:                                            ; preds = %bb.ye
  store i32 5136718, ptr %.3359.i, align 1
  %i.hjs = getelementptr inbounds nuw i8, ptr %.3359.i, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.yh:                                            ; preds = %bb.ya
  store i8 45, ptr %.3359.i, align 1, !tbaa !99
  %.lobit.i539.i = lshr i64 %i.hji, 63            ; 2 uses
  %i.hjt = getelementptr i8, ptr %.3359.i, i64 %.lobit.i539.i ; 38 uses
  %.mask.i.i204 = and i64 %i.hji, 9223372036854775807
  %i.hju = icmp eq i64 %.mask.i.i204, 0
  br i1 %i.hju, label %bb.yi, label %bb.yj

bb.yi:                                            ; preds = %bb.yh
  store i32 3157552, ptr %i.hjt, align 1
  %i.hjv = getelementptr inbounds nuw i8, ptr %i.hjt, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.yj:                                            ; preds = %bb.yh
  %.not.i540.i = icmp eq i32 %i.hjm, 0
  br i1 %.not.i540.i, label %bb.aaf, label %bb.yk, !prof !44

bb.yk:                                            ; preds = %bb.yj
  %i.hjw = or disjoint i64 %i.hjj, 4503599627370496 ; 3 uses
  %i.hjx = add nsw i32 %i.hjm, -1023
  %or.cond.i541.i = icmp ult i32 %i.hjx, 53
  br i1 %or.cond.i541.i, label %bb.yl, label %bb.zb

bb.yl:                                            ; preds = %bb.yk
  %i.hjy = tail call range(i64 0, 53) i64 @llvm.cttz.i64(i64 range(i64 4503599627370496, 9007199254740992) %i.hjw, i1 true)
  %i.hjz = trunc nuw nsw i64 %i.hjy to i32
  %i.hka = sub nuw nsw i32 1075, %i.hjm           ; 2 uses
  %.not127.i.i236 = icmp samesign ugt i32 %i.hka, %i.hjz
  br i1 %.not127.i.i236, label %bb.zb, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.hkb = zext nneg i32 %i.hka to i64
  %i.hkc = lshr i64 %i.hjw, %i.hkb                ; 21 uses
  %i.hkd = icmp samesign ult i64 %i.hkc, 100000000
  br i1 %i.hkd, label %bb.yn, label %bb.yu

bb.yn:                                            ; preds = %bb.ym
  %i.hke = trunc nuw nsw i64 %i.hkc to i32        ; 4 uses
  %i.hkf = icmp samesign ult i64 %i.hkc, 100
  br i1 %i.hkf, label %bb.yo, label %bb.yp

bb.yo:                                            ; preds = %bb.yn
  %i.hkg = icmp samesign ult i64 %i.hkc, 10       ; 2 uses
  %i.hkh = shl nuw nsw i64 %i.hkc, 1
  %i.hki = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hkh
  %.neg70.i634.i = sext i1 %i.hkg to i64
  %i.hkj = zext i1 %i.hkg to i64
  %i.hkk = getelementptr inbounds nuw i8, ptr %i.hki, i64 %i.hkj
  %i.hkl = load i16, ptr %i.hkk, align 1
  store i16 %i.hkl, ptr %i.hjt, align 1
  %i.hkm = getelementptr inbounds i8, ptr %i.hjt, i64 %.neg70.i634.i
  %i.hkn = getelementptr inbounds nuw i8, ptr %i.hkm, i64 2
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i237

bb.yp:                                            ; preds = %bb.yn
  %i.hko = icmp samesign ult i64 %i.hkc, 10000
  br i1 %i.hko, label %bb.yq, label %bb.yr

bb.yq:                                            ; preds = %bb.yp
  %i.hkp = mul nuw nsw i32 %i.hke, 5243
  %i.hkq = lshr i32 %i.hkp, 19                    ; 2 uses
  %.neg68.i632.i = mul nsw i32 %i.hkq, -100
  %i.hkr = add nsw i32 %.neg68.i632.i, %i.hke
  %i.hks = icmp samesign ult i64 %i.hkc, 1000     ; 2 uses
  %i.hkt = shl nuw nsw i32 %i.hkq, 1
  %i.hku = zext nneg i32 %i.hkt to i64
  %i.hkv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hku
  %.neg69.i633.i = sext i1 %i.hks to i64
  %i.hkw = zext i1 %i.hks to i64
  %i.hkx = getelementptr inbounds nuw i8, ptr %i.hkv, i64 %i.hkw
  %i.hky = load i16, ptr %i.hkx, align 1
  store i16 %i.hky, ptr %i.hjt, align 1
  %i.hkz = getelementptr inbounds i8, ptr %i.hjt, i64 %.neg69.i633.i ; 2 uses
  %i.hla = getelementptr inbounds nuw i8, ptr %i.hkz, i64 2
  %i.hlb = shl nsw i32 %i.hkr, 1
  %i.hlc = zext i32 %i.hlb to i64
  %i.hld = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hlc
  %i.hle = load i16, ptr %i.hld, align 2
  store i16 %i.hle, ptr %i.hla, align 1
  %i.hlf = getelementptr inbounds nuw i8, ptr %i.hkz, i64 4
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i237

bb.yr:                                            ; preds = %bb.yp
  %i.hlg = icmp samesign ult i64 %i.hkc, 1000000
  br i1 %i.hlg, label %bb.ys, label %bb.yt

bb.ys:                                            ; preds = %bb.yr
  %i.hlh = mul nuw nsw i64 %i.hkc, 429497
  %i.hli = lshr i64 %i.hlh, 32                    ; 2 uses
  %i.hlj = trunc nuw nsw i64 %i.hli to i32
  %.neg65.i629.i = mul nsw i32 %i.hlj, -10000
  %i.hlk = add nsw i32 %.neg65.i629.i, %i.hke     ; 2 uses
  %i.hll = mul i32 %i.hlk, 5243
  %i.hlm = lshr i32 %i.hll, 19                    ; 2 uses
  %.neg66.i630.i = mul nsw i32 %i.hlm, -100
  %i.hln = add nsw i32 %.neg66.i630.i, %i.hlk
  %i.hlo = icmp samesign ult i64 %i.hkc, 100000   ; 2 uses
  %i.hlp = shl nuw nsw i64 %i.hli, 1
  %i.hlq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hlp
  %.neg67.i631.i = sext i1 %i.hlo to i64
  %i.hlr = zext i1 %i.hlo to i64
  %i.hls = getelementptr inbounds nuw i8, ptr %i.hlq, i64 %i.hlr
  %i.hlt = load i16, ptr %i.hls, align 1
  store i16 %i.hlt, ptr %i.hjt, align 1
  %i.hlu = getelementptr inbounds i8, ptr %i.hjt, i64 %.neg67.i631.i ; 3 uses
  %i.hlv = getelementptr inbounds nuw i8, ptr %i.hlu, i64 2
  %i.hlw = shl nuw nsw i32 %i.hlm, 1
  %i.hlx = zext nneg i32 %i.hlw to i64
  %i.hly = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hlx
  %i.hlz = load i16, ptr %i.hly, align 2
  store i16 %i.hlz, ptr %i.hlv, align 1
  %i.hma = getelementptr inbounds nuw i8, ptr %i.hlu, i64 4
  %i.hmb = shl nsw i32 %i.hln, 1
  %i.hmc = zext i32 %i.hmb to i64
  %i.hmd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hmc
  %i.hme = load i16, ptr %i.hmd, align 2
end_hunk_21
