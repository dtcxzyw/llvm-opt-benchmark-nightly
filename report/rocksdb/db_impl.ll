Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl?download=true
inline.NumInlined: 18355
inline.NumDeleted: 8074
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZSt13__adjust_heapIN7rocksdb10autovectorIPNS0_10KeyContextELm32EE13iterator_implIS4_S3_EElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_12_GLOBAL__N_117CompareKeyContextEEEEvT_T0_SE_T1_T2_:bb.a
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit: ; preds = %bb.b
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !1613
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !1613
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !243
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 232
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i1 noundef zeroext false), !inline_history !122
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread71

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread: ; preds = %.noexc, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread71

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread71: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit
  %i.ba = phi i64 [ %i.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread ], [ %i.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit ], [ %i.h, %bb.b ] ; 4 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !1611, !noalias !3864 ; 3 uses
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !1612, !noalias !3864 ; 3 uses
  %i.bd = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = icmp ult i64 %i.bd, 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 264
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 272
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bd
  %i.bl = getelementptr i8, ptr %i.bk, i64 -256
  %.0.i.i = select i1 %i.be, ptr %i.bh, ptr %i.bl
  %i.bm = load ptr, ptr %.0.i.i, align 8, !tbaa !1539
  %i.bn = add i64 %i.bc, %.02873                  ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 32
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bn
  %i.bq = getelementptr [8 x i8], ptr %i.bj, i64 %i.bn
  %i.br = getelementptr i8, ptr %i.bq, i64 -256
  %.0.i.i48 = select i1 %i.bo, ptr %i.bp, ptr %i.br
  store ptr %i.bm, ptr %.0.i.i48, align 8, !tbaa !1539
  %i.bs = icmp slt i64 %i.ba, %i.b
  br i1 %i.bs, label %.noexc, label %._crit_edge, !llvm.loop !3858

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread71, %bb.a
  %.028.lcssa = phi i64 [ %1, %bb.a ], [ %i.ba, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread71 ] ; 5 uses
  %i.bt = and i64 %2, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bv = add nsw i64 %2, -2
  %i.bw = ashr exact i64 %i.bv, 1
  %i.bx = icmp eq i64 %.028.lcssa, %i.bw
  br i1 %i.bx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.by = shl nsw i64 %.028.lcssa, 1
  %i.bz = or disjoint i64 %i.by, 1                ; 2 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !1611, !noalias !3865 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !1612, !noalias !3865 ; 2 uses
  %i.cd = add i64 %i.cc, %i.bz                    ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 264
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %i.cd
  %i.cl = getelementptr i8, ptr %i.ck, i64 -256
  %.0.i.i49 = select i1 %i.ce, ptr %i.ch, ptr %i.cl
  %i.cm = load ptr, ptr %.0.i.i49, align 8, !tbaa !1539
  %i.cn = add i64 %i.cc, %.028.lcssa              ; 3 uses
  %i.co = icmp ult i64 %i.cn, 32
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cn
  %i.cq = getelementptr [8 x i8], ptr %i.cj, i64 %i.cn
  %i.cr = getelementptr i8, ptr %i.cq, i64 -256
  %.0.i.i50 = select i1 %i.co, ptr %i.cp, ptr %i.cr
  store ptr %i.cm, ptr %.0.i.i50, align 8, !tbaa !1539
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.131 = phi i64 [ %i.bz, %bb.d ], [ %.028.lcssa, %bb.c ], [ %.028.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !1609 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !821 ; 3 uses
  %i.cs = icmp sgt i64 %.131, %1
  br i1 %i.cs, label %.noexc.lr.ph.i, label %.loopexit

.noexc.lr.ph.i:                                   ; preds = %bb.e
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cu = getelementptr i8, ptr %.sroa.0.0.copyload, i64 264 ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.0.0.copyload, i64 272 ; 2 uses
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.thread8.i, %.noexc.lr.ph.i
  %.01811.i = phi i64 [ %.131, %.noexc.lr.ph.i ], [ %.01712.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.thread8.i ] ; 4 uses
  %.01712.in.i = add nsw i64 %.01811.i, -1
  %.01712.i = sdiv i64 %.01712.in.i, 2            ; 4 uses
  %i.cw = add i64 %.01712.i, %.sroa.4.0.copyload  ; 5 uses
  %.val.val.i = load ptr, ptr %i.cu, align 8
  %.val.val24.i = load ptr, ptr %i.cv, align 8
  %i.cx = icmp ult i64 %i.cw, 32                  ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i, i64 %i.cw
  %i.cz = getelementptr [8 x i8], ptr %.val.val24.i, i64 %i.cw
  %i.da = getelementptr i8, ptr %i.cz, i64 -256
  %.0.i.i.i.i = select i1 %i.cx, ptr %i.cy, ptr %i.da
  %i.db = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !1539 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1567 ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !243
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = tail call noundef ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %i.dd), !inline_history !3861
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !1146 ; 2 uses
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !243
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call noundef ptr %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %i.dd), !inline_history !3861
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1418 ; 2 uses
  %i.dp = load ptr, ptr %i.ct, align 8, !tbaa !1567 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !243
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = tail call noundef ptr %i.ds(ptr noundef nonnull align 8 dereferenceable(32) %i.dp), !inline_history !3861
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !1146 ; 2 uses
  %i.dv = icmp ult i32 %i.di, %i.du
  br i1 %i.dv, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.thread8.i, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  %i.dw = icmp ugt i32 %i.di, %i.du
  br i1 %i.dw, label %.loopexit, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.i: ; preds = %bb.f
  %i.dx = load ptr, ptr %i.db, align 8, !tbaa !1613
  %i.dy = load ptr, ptr %3, align 8, !tbaa !1613
  %i.dz = load ptr, ptr %i.do, align 8, !tbaa !243
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 232
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call noundef i32 %i.eb(ptr noundef nonnull align 8 dereferenceable(48) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i1 noundef zeroext false), !inline_history !3861
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.thread8.i, label %.loopexit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.thread8.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.i, %.noexc.i
  %i.ee = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.cw
  %i.eg = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.eg, i64 %i.cw
  %i.ei = getelementptr i8, ptr %i.eh, i64 -256
  %.0.i.i.i51 = select i1 %i.cx, ptr %i.ef, ptr %i.ei
  %i.ej = load ptr, ptr %.0.i.i.i51, align 8, !tbaa !1539
  %i.ek = add i64 %.01811.i, %.sroa.4.0.copyload  ; 3 uses
  %i.el = icmp ult i64 %i.ek, 32
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ek
  %i.en = getelementptr [8 x i8], ptr %i.eg, i64 %i.ek
  %i.eo = getelementptr i8, ptr %i.en, i64 -256
  %.0.i.i28.i = select i1 %i.el, ptr %i.em, ptr %i.eo
  store ptr %i.ej, ptr %.0.i.i28.i, align 8, !tbaa !1539
  %i.ep = icmp sgt i64 %.01712.i, %1
  br i1 %i.ep, label %.noexc.i, label %.loopexit, !llvm.loop !3862

.loopexit:                                        ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.thread8.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.i, %bb.f, %bb.e
  %.018.lcssa.i = phi i64 [ %.131, %bb.e ], [ %.01811.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.i ], [ %.01712.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EES9_EEbT_RT0_.exit.thread8.i ], [ %.01811.i, %bb.f ]
  %i.eq = add i64 %.018.lcssa.i, %.sroa.4.0.copyload ; 3 uses
  %i.er = icmp ult i64 %i.eq, 32
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 264
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 272
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %i.eq
  %i.ey = getelementptr i8, ptr %i.ex, i64 -256
  %.0.i.i29.i = select i1 %i.er, ptr %i.eu, ptr %i.ey
  store ptr %3, ptr %.0.i.i29.i, align 8, !tbaa !1539
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #31

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__insertion_sortIN7rocksdb10autovectorIPNS0_10KeyContextELm32EE13iterator_implIS4_S3_EEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_12_GLOBAL__N_117CompareKeyContextEEEEvT_SD_T0_(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::autovector<rocksdb::KeyContext *, 32>::iterator_impl", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1612 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1612 ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %.loopexit37, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1611, !noalias !3881 ; 3 uses
  %.sroa.9.038 = add i64 %i.b, 1                  ; 2 uses
  %.not39 = icmp eq i64 %.sroa.9.038, %i.d
  br i1 %.not39, label %.loopexit37, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 264      ; 7 uses
  %i.h = getelementptr i8, ptr %i.f, i64 272      ; 7 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %.sroa.9.041.a = phi i64 [ %.sroa.9.038, %.noexc.lr.ph ], [ %.sroa.9.0, %bb.d ] ; 11 uses
  %.sroa.9.0.in40 = phi i64 [ %i.b, %.noexc.lr.ph ], [ %.sroa.9.041.a, %bb.d ] ; 2 uses
  %.sroa.023.0.copyload = load ptr, ptr %0, align 8, !tbaa !1609 ; 2 uses
  %.sroa.224.0.copyload = load i64, ptr %i.a, align 8, !tbaa !821 ; 3 uses
  %.val.val = load ptr, ptr %i.g, align 8
  %.val.val12 = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %.sroa.023.0.copyload, i64 264
  %.val10.val = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.sroa.023.0.copyload, i64 272
  %.val10.val13 = load ptr, ptr %i.j, align 8
  %i.k = icmp ult i64 %.sroa.9.041.a, 32          ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.val, i64 %.sroa.9.041.a
  %i.m = getelementptr [8 x i8], ptr %.val.val12, i64 %.sroa.9.041.a
  %i.n = getelementptr i8, ptr %i.m, i64 -256
  %.0.i.i.i = select i1 %i.k, ptr %i.l, ptr %i.n
  %i.o = load ptr, ptr %.0.i.i.i, align 8, !tbaa !1539 ; 2 uses
  %i.p = icmp ult i64 %.sroa.224.0.copyload, 32
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val10.val, i64 %.sroa.224.0.copyload
  %i.r = getelementptr [8 x i8], ptr %.val10.val13, i64 %.sroa.224.0.copyload
  %i.s = getelementptr i8, ptr %i.r, i64 -256
  %.0.i.i1.i = select i1 %i.p, ptr %i.q, ptr %i.s
  %i.t = load ptr, ptr %.0.i.i1.i, align 8, !tbaa !1539 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1567 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !243
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.v), !inline_history !122
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1146 ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !243
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.v), !inline_history !122
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1418 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1567 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !243
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.ai), !inline_history !122
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1146 ; 2 uses
  %i.ao = icmp ult i32 %i.aa, %i.an
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ap = icmp ugt i32 %i.aa, %i.an
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread35, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit: ; preds = %bb.c
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !1613
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !1613
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !243
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 232
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i1 noundef zeroext false), !inline_history !122
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread35

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread: ; preds = %.noexc, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit
  %i.ax = load ptr, ptr %i.g, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.9.041.a
  %i.az = load ptr, ptr %i.h, align 8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %.sroa.9.041.a
  %i.bb = getelementptr i8, ptr %i.ba, i64 -256
  %.0.i.i = select i1 %i.k, ptr %i.ay, ptr %i.bb
  %i.bc = load ptr, ptr %.0.i.i, align 8, !tbaa !1539
  %.sroa.1.0.copyload = load i64, ptr %i.a, align 8, !tbaa !821 ; 5 uses
  %i.bd = sub i64 %.sroa.9.041.a, %.sroa.1.0.copyload ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread
  %i.bf = add i64 %.sroa.9.0.in40, 2              ; 2 uses
  %i.bg = sub i64 %.sroa.9.0.in40, %.sroa.1.0.copyload
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.3.0.i.i.i.i.prol = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i.prol ], [ %i.bf, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.2.0.i.i.i.i.prol = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.9.041.a, %.lr.ph.i.i.i.i.i.preheader ]
  %.03.i.i.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.prol ], [ %i.bd, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.bh = add i64 %.sroa.2.0.i.i.i.i.prol, -1     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, 32
  %i.bj = load ptr, ptr %i.g, align 8, !noalias !3882 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  %i.bl = load ptr, ptr %i.h, align 8, !noalias !3882 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = getelementptr i8, ptr %i.bm, i64 -256
  %.0.i.i.i.i.i.i.i.prol = select i1 %i.bi, ptr %i.bk, ptr %i.bn
  %i.bo = load ptr, ptr %.0.i.i.i.i.i.i.i.prol, align 8, !tbaa !1539, !noalias !3882
  %i.bp = add i64 %.sroa.3.0.i.i.i.i.prol, -1     ; 5 uses
  %i.bq = icmp ult i64 %i.bp, 32
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bp
  %i.bs = getelementptr [8 x i8], ptr %i.bl, i64 %i.bp
  %i.bt = getelementptr i8, ptr %i.bs, i64 -256
  %.0.i.i2.i.i.i.i.i.prol = select i1 %i.bq, ptr %i.br, ptr %i.bt
  store ptr %i.bo, ptr %.0.i.i2.i.i.i.i.i.prol, align 8, !tbaa !1539, !noalias !3882
  %i.bu = add nsw i64 %.03.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3878

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.3.0.i.i.i.i.unr = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.2.0.i.i.i.i.unr = phi i64 [ %.sroa.9.041.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.i.i.i.prol ]
  %.03.i.i.i.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.i.i.prol ]
  %i.bv = icmp ult i64 %i.bg, 3
  br i1 %i.bv, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.2.0.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.sroa.2.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.03.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bw = add i64 %.sroa.2.0.i.i.i.i, -1          ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 32
  %i.by = load ptr, ptr %i.g, align 8, !noalias !3882 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  %i.ca = load ptr, ptr %i.h, align 8, !noalias !3882 ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.cb, i64 -256
  %.0.i.i.i.i.i.i.i = select i1 %i.bx, ptr %i.bz, ptr %i.cc
  %i.cd = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !1539, !noalias !3882
  %i.ce = add i64 %.sroa.3.0.i.i.i.i, -1          ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 32
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ce
  %i.ch = getelementptr [8 x i8], ptr %i.ca, i64 %i.ce
  %i.ci = getelementptr i8, ptr %i.ch, i64 -256
  %.0.i.i2.i.i.i.i.i = select i1 %i.cf, ptr %i.cg, ptr %i.ci
  store ptr %i.cd, ptr %.0.i.i2.i.i.i.i.i, align 8, !tbaa !1539, !noalias !3882
  %i.cj = add i64 %.sroa.2.0.i.i.i.i, -2          ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 32
  %i.cl = load ptr, ptr %i.g, align 8, !noalias !3882 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  %i.cn = load ptr, ptr %i.h, align 8, !noalias !3882 ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.cj
  %i.cp = getelementptr i8, ptr %i.co, i64 -256
  %.0.i.i.i.i.i.i.i.1 = select i1 %i.ck, ptr %i.cm, ptr %i.cp
  %i.cq = load ptr, ptr %.0.i.i.i.i.i.i.i.1, align 8, !tbaa !1539, !noalias !3882
  %i.cr = add i64 %.sroa.3.0.i.i.i.i, -2          ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 32
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cr
  %i.cu = getelementptr [8 x i8], ptr %i.cn, i64 %i.cr
  %i.cv = getelementptr i8, ptr %i.cu, i64 -256
  %.0.i.i2.i.i.i.i.i.1 = select i1 %i.cs, ptr %i.ct, ptr %i.cv
  store ptr %i.cq, ptr %.0.i.i2.i.i.i.i.i.1, align 8, !tbaa !1539, !noalias !3882
  %i.cw = add i64 %.sroa.2.0.i.i.i.i, -3          ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 32
  %i.cy = load ptr, ptr %i.g, align 8, !noalias !3882 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  %i.da = load ptr, ptr %i.h, align 8, !noalias !3882 ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %i.da, i64 %i.cw
  %i.dc = getelementptr i8, ptr %i.db, i64 -256
  %.0.i.i.i.i.i.i.i.2 = select i1 %i.cx, ptr %i.cz, ptr %i.dc
  %i.dd = load ptr, ptr %.0.i.i.i.i.i.i.i.2, align 8, !tbaa !1539, !noalias !3882
  %i.de = add i64 %.sroa.3.0.i.i.i.i, -3          ; 3 uses
  %i.df = icmp ult i64 %i.de, 32
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.de
  %i.dh = getelementptr [8 x i8], ptr %i.da, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 -256
  %.0.i.i2.i.i.i.i.i.2 = select i1 %i.df, ptr %i.dg, ptr %i.di
  store ptr %i.dd, ptr %.0.i.i2.i.i.i.i.i.2, align 8, !tbaa !1539, !noalias !3882
  %i.dj = add i64 %.sroa.2.0.i.i.i.i, -4          ; 4 uses
  %i.dk = icmp ult i64 %i.dj, 32
  %i.dl = load ptr, ptr %i.g, align 8, !noalias !3882 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  %i.dn = load ptr, ptr %i.h, align 8, !noalias !3882 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %i.dj
  %i.dp = getelementptr i8, ptr %i.do, i64 -256
  %.0.i.i.i.i.i.i.i.3 = select i1 %i.dk, ptr %i.dm, ptr %i.dp
  %i.dq = load ptr, ptr %.0.i.i.i.i.i.i.i.3, align 8, !tbaa !1539, !noalias !3882
  %i.dr = add i64 %.sroa.3.0.i.i.i.i, -4          ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 32
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dr
  %i.du = getelementptr [8 x i8], ptr %i.dn, i64 %i.dr
  %i.dv = getelementptr i8, ptr %i.du, i64 -256
  %.0.i.i2.i.i.i.i.i.3 = select i1 %i.ds, ptr %i.dt, ptr %i.dv
  store ptr %i.dq, ptr %.0.i.i2.i.i.i.i.i.3, align 8, !tbaa !1539, !noalias !3882
  %i.dw = add nsw i64 %.03.i.i.i.i.i, -4
  %i.dx = icmp sgt i64 %.03.i.i.i.i.i, 4
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !3879

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread
  %i.dy = load ptr, ptr %0, align 8, !tbaa !1611  ; 2 uses
  %i.dz = icmp ult i64 %.sroa.1.0.copyload, 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 264
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.1.0.copyload
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 272
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr [8 x i8], ptr %i.ee, i64 %.sroa.1.0.copyload
  %i.eg = getelementptr i8, ptr %i.ef, i64 -256
  %.0.i.i17 = select i1 %i.dz, ptr %i.ec, ptr %i.eg
  store ptr %i.bc, ptr %.0.i.i17, align 8, !tbaa !1539
  br label %bb.d

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread35: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit
  store ptr %i.f, ptr %2, align 8, !tbaa !1609
  store i64 %.sroa.9.041.a, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !821
  call fastcc void @_ZSt25__unguarded_linear_insertIN7rocksdb10autovectorIPNS0_10KeyContextELm32EE13iterator_implIS4_S3_EEN9__gnu_cxx5__ops14_Val_comp_iterINS0_12_GLOBAL__N_117CompareKeyContextEEEEvT_T0_(ptr noundef align 8 %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclINS2_10autovectorIPNS2_10KeyContextELm32EE13iterator_implISA_S9_EESC_EEbT_T0_.exit.thread35, %.loopexit
  %.sroa.9.0 = add i64 %.sroa.9.041.a, 1          ; 2 uses
  %i.eh = load i64, ptr %i.c, align 8, !tbaa !1612
  %.not = icmp eq i64 %.sroa.9.0, %i.eh
  br i1 %.not, label %.loopexit37, label %.noexc, !llvm.loop !3880

.loopexit37:                                      ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt25__unguarded_linear_insertIN7rocksdb10autovectorIPNS0_10KeyContextELm32EE13iterator_implIS4_S3_EEN9__gnu_cxx5__ops14_Val_comp_iterINS0_12_GLOBAL__N_117CompareKeyContextEEEEvT_T0_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1611   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1612 ; 4 uses
  %i.d = icmp ult i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.c
  %i.k = getelementptr i8, ptr %i.j, i64 -256
  %.0.i.i = select i1 %i.d, ptr %i.g, ptr %i.k
  %i.l = load ptr, ptr %.0.i.i, align 8, !tbaa !1539 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  br label %.noexc

.noexc:                                           ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread, %bb.a
  %.val3.val5 = phi ptr [ %i.i, %bb.a ], [ %.val3.val5.pre, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread ]
  %.val3.val = phi ptr [ %i.f, %bb.a ], [ %.val3.val.pre, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread ]
  %.sroa.7.0.in = phi i64 [ %i.c, %bb.a ], [ %.sroa.7.0, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread ]
  %.sroa.7.0 = add i64 %.sroa.7.0.in, -1          ; 7 uses
  %i.n = icmp ult i64 %.sroa.7.0, 32              ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val3.val, i64 %.sroa.7.0
  %i.p = getelementptr [8 x i8], ptr %.val3.val5, i64 %.sroa.7.0
  %i.q = getelementptr i8, ptr %i.p, i64 -256
  %.0.i.i.i = select i1 %i.n, ptr %i.o, ptr %i.q
  %i.r = load ptr, ptr %.0.i.i.i, align 8, !tbaa !1539 ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !1567 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !243
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.s), !inline_history !3883
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1146 ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !243
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.s), !inline_history !3883
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1418 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1567 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !243
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.af), !inline_history !3883
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1146 ; 2 uses
  %i.al = icmp ult i32 %i.x, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.am = icmp ugt i32 %i.x, %i.ak
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread20, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit: ; preds = %bb.b
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !1613
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !1613
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !243
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i1 noundef zeroext false), !inline_history !3883
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread20

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread: ; preds = %.noexc, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit
  %i.au = load ptr, ptr %i.e, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.7.0
  %i.aw = load ptr, ptr %i.h, align 8
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %.sroa.7.0
  %i.ay = getelementptr i8, ptr %i.ax, i64 -256
  %.0.i.i9 = select i1 %i.n, ptr %i.av, ptr %i.ay
  %i.az = load ptr, ptr %.0.i.i9, align 8, !tbaa !1539
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1611  ; 2 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !1612 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 264
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 272
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bb
  %i.bj = getelementptr i8, ptr %i.bi, i64 -256
  %.0.i.i10 = select i1 %i.bc, ptr %i.bf, ptr %i.bj
  store ptr %i.az, ptr %.0.i.i10, align 8, !tbaa !1539
  store ptr %i.a, ptr %0, align 8, !tbaa !1609
  store i64 %.sroa.7.0, ptr %i.b, align 8, !tbaa !821
  %.val3.val.pre = load ptr, ptr %i.e, align 8
  %.val3.val5.pre = load ptr, ptr %i.h, align 8
  br label %.noexc, !llvm.loop !3884

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread20: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit
  %i.bk = load ptr, ptr %0, align 8, !tbaa !1611  ; 2 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !1612 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 264
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 272
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bl
  %i.bt = getelementptr i8, ptr %i.bs, i64 -256
  %.0.i.i11 = select i1 %i.bm, ptr %i.bp, ptr %i.bt
  store ptr %i.l, ptr %.0.i.i11, align 8, !tbaa !1539
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb28GetWithTimestampReadCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb28GetWithTimestampReadCallback18IsVisibleFullCheckEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1592
  %i.c = icmp ule i64 %1, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2094
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2095 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !629  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !627
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !628
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !243
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #44, !inline_history !3885
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !243
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #44, !inline_history !3885
  br label %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !630
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !246

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #44
  br label %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
end_hunk_0
