Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/lratbuilder?download=true
inline.NumInlined: 1064
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL11LratBuilder10new_clauseEv:bb.a
  store i32 %i.de, ptr %.sroa.675.0..sroa_idx76, align 4, !tbaa !65
  %.sroa.778.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.l, ptr %.sroa.778.0..sroa_idx79, align 8, !tbaa !72
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dk, %i.dg
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dv, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dk, %.noexc47 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !84, !alias.scope !259
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dx, %i.dg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.noexc47 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.dk) #23
  br label %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.dv, ptr %i.db, align 8, !tbaa !83
  store ptr %i.dz, ptr %i.df, align 8, !tbaa !81
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.ea, ptr %i.dh, align 8, !tbaa !82
  %.pre = load ptr, ptr %i.cy, align 8, !tbaa !78
  br label %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.n
  %i.eb = phi ptr [ %.pre, %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.da, %bb.n ]
  %i.ec = load i32, ptr %i.dc, align 4, !tbaa !65 ; 2 uses
  %i.ed = tail call i32 @llvm.abs.i32(i32 %i.ec, i1 true)
  %i.ee = shl nuw i32 %i.ed, 1
  %.inv.i.i48 = icmp sgt i32 %i.ec, -1
  %spec.select.v.i.i49 = select i1 %.inv.i.i48, i32 -2, i32 -1
  %spec.select.i.i50 = add i32 %i.ee, %spec.select.v.i.i49
  %i.ef = zext i32 %spec.select.i.i50 to i64
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.ef ; 4 uses
  %i.eh = load i32, ptr %i.v, align 8, !tbaa !65  ; 2 uses
  %i.ei = load i32, ptr %i.r, align 4, !tbaa !31  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !81 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !82
  %.not.i.i51 = icmp eq ptr %i.ek, %i.em
  br i1 %.not.i.i51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE9push_backEOS1_.exit
  store i32 %i.eh, ptr %i.ek, align 8, !tbaa !65
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.ei, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !65
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.l, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !72
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !81
  br label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit

bb.s:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE9push_backEOS1_.exit
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !83 ; 5 uses
  %i.ep = ptrtoint ptr %i.ek to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775792
  br i1 %i.es, label %bb.t, label %_ZNKSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
          to label %.noexc64 unwind label %bb.w

.noexc64:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52: ; preds = %bb.s
  %i.et = ashr exact i64 %i.er, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i53 = tail call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i.i53, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 576460752303423487)
  %i.ex = select i1 %i.ev, i64 576460752303423487, i64 %i.ew ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.ey = shl nuw nsw i64 %i.ex, 4
  %i.ez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #21
          to label %.noexc65 unwind label %bb.w   ; 5 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er ; 3 uses
  store i32 %i.eh, ptr %i.fa, align 8, !tbaa !65
  %.sroa.6.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 %i.ei, ptr %.sroa.6.0..sroa_idx69, align 4, !tbaa !65
  %.sroa.7.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.l, ptr %.sroa.7.0..sroa_idx71, align 8, !tbaa !72
  %.not10.i.i.i.i.i.i.i55 = icmp eq ptr %i.eo, %i.ek
  br i1 %.not10.i.i.i.i.i.i.i55, label %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i.i56:                           ; preds = %.noexc65, %.lr.ph.i.i.i.i.i.i.i56
  %.012.i.i.i.i.i.i.i57 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i56 ], [ %i.ez, %.noexc65 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i58 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i56 ], [ %i.eo, %.noexc65 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i57, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i58, i64 16, i1 false), !tbaa.struct !84, !alias.scope !260
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i58, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i57, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.fb, %i.ek
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i56, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i56, %.noexc65
  %.0.lcssa.i.i.i.i.i.i.i61 = phi ptr [ %i.ez, %.noexc65 ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i56 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i61, i64 16
  %.not.i23.i.i.i62 = icmp eq ptr %i.eo, null
  br i1 %.not.i23.i.i.i62, label %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60
  tail call void @_ZdlPv(ptr noundef nonnull %i.eo) #23
  br label %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63

_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63: ; preds = %bb.u, %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60
  store ptr %i.ez, ptr %i.eg, align 8, !tbaa !83
  store ptr %i.fd, ptr %i.ej, align 8, !tbaa !81
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.ex
  store ptr %i.fe, ptr %i.el, align 8, !tbaa !82
  br label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit

bb.v:                                             ; preds = %_ZNKSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit67

bb.w:                                             ; preds = %_ZNKSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52, %bb.t
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit67

_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit:        ; preds = %._crit_edge, %_ZNSt6vectorIPN7CaDiCaL17LratBuilderClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d, %bb.r, %_ZNSt6vectorIN7CaDiCaL16LratBuilderWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63, %.loopexit.1
  ret ptr %i.l

_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit67:      ; preds = %bb.w, %bb.v, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.b ], [ %i.fg, %bb.w ], [ %i.ff, %bb.v ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11LratBuilder13delete_clauseEPNS_17LratBuilderClauseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  %. = select i1 %i.c, i64 320, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !30
  tail call void @_ZdaPv(ptr noundef nonnull %1) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratBuilder15enlarge_clausesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = shl i64 %i.b, 1
  %spec.select = select i1 %.not, i64 1, i64 %i.c
  %spec.select.fr = freeze i64 %spec.select       ; 6 uses
  %i.d = icmp ugt i64 %spec.select.fr, 2305843009213693951
  %i.e = shl i64 %spec.select.fr, 3               ; 2 uses
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.e, i1 false)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %.not29 = icmp eq i64 %i.h, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !86 ; 4 uses
  br i1 %.not29, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a
  %i.i = icmp ult i64 %spec.select.fr, 4294967296
  %i.j = add i64 %spec.select.fr, -1              ; 2 uses
  br i1 %i.i, label %.lr.ph27.split.us, label %.lr.ph27.split

.lr.ph27.split.us:                                ; preds = %.lr.ph27, %._crit_edge.split.us.us
  %.01925.us = phi i64 [ %1, %._crit_edge.split.us.us ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01925.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72   ; 2 uses
  %.not2223.us = icmp eq ptr %i.l, null
  br i1 %.not2223.us, label %._crit_edge.split.us.us, label %.lr.ph.i.preheader.us.us

._crit_edge.split.us.us:                          ; preds = %_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit.loopexit.us.us, %.lr.ph27.split.us
  %1 = add nuw i64 %.01925.us, 1                  ; 2 uses
  %exitcond31.not = icmp eq i64 %1, %i.h
  br i1 %exitcond31.not, label %._crit_edge28, label %.lr.ph27.split.us, !llvm.loop !261

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph27.split.us, %_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit.loopexit.us.us
  %.024.us.us = phi ptr [ %i.m, %_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit.loopexit.us.us ], [ %i.l, %.lr.ph27.split.us ] ; 4 uses
  %i.m = load ptr, ptr %.024.us.us, align 8, !tbaa !29 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.024.us.us, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !87
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.preheader.us.us
  %i.p = phi i64 [ %i.t, %.lr.ph.i.us.us ], [ 32, %.lr.ph.i.preheader.us.us ]
  %.014.i.us.us = phi i64 [ %i.r, %.lr.ph.i.us.us ], [ %i.o, %.lr.ph.i.preheader.us.us ] ; 2 uses
  %.01013.i.us.us = phi i32 [ %i.s, %.lr.ph.i.us.us ], [ 32, %.lr.ph.i.preheader.us.us ]
  %i.q = lshr i64 %.014.i.us.us, %i.p
  %i.r = xor i64 %i.q, %.014.i.us.us              ; 2 uses
  %i.s = lshr i32 %.01013.i.us.us, 1              ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %.highbits.i.us.us = lshr i64 %spec.select.fr, %i.t
  %i.u = icmp eq i64 %.highbits.i.us.us, 0
  br i1 %i.u, label %.lr.ph.i.us.us, label %_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit.loopexit.us.us, !llvm.loop !1

_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit.loopexit.us.us: ; preds = %.lr.ph.i.us.us
  %i.v = and i64 %i.r, %i.j
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  store ptr %i.x, ptr %.024.us.us, align 8, !tbaa !29
  store ptr %.024.us.us, ptr %i.w, align 8, !tbaa !72
  %.not22.us.us = icmp eq ptr %i.m, null
  br i1 %.not22.us.us, label %._crit_edge.split.us.us, label %.lr.ph.i.preheader.us.us, !llvm.loop !262

._crit_edge28:                                    ; preds = %._crit_edge.split.us.us, %bb.a
  %i.y = icmp eq ptr %.pre, null
  br i1 %i.y, label %bb.b, label %._crit_edge28.thread

.lr.ph27.split:                                   ; preds = %.lr.ph27, %._crit_edge.split
  %.01925 = phi i64 [ %i.ab, %._crit_edge.split ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01925
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72  ; 2 uses
  %.not2223 = icmp eq ptr %i.aa, null
  br i1 %.not2223, label %._crit_edge.split, label %_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit

._crit_edge.split:                                ; preds = %_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit, %.lr.ph27.split
  %i.ab = add nuw i64 %.01925, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %._crit_edge28.thread, label %.lr.ph27.split, !llvm.loop !261

_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit:    ; preds = %.lr.ph27.split, %_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit
  %.024 = phi ptr [ %i.ac, %_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit ], [ %i.aa, %.lr.ph27.split ] ; 4 uses
  %i.ac = load ptr, ptr %.024, align 8, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !87
  %i.af = and i64 %i.ae, %i.j
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !72
  store ptr %i.ah, ptr %.024, align 8, !tbaa !29
  store ptr %.024, ptr %i.ag, align 8, !tbaa !72
  %.not22 = icmp eq ptr %i.ac, null
  br i1 %.not22, label %._crit_edge.split, label %_ZN7CaDiCaL11LratBuilder11reduce_hashEmm.exit, !llvm.loop !262

._crit_edge28.thread:                             ; preds = %._crit_edge.split, %._crit_edge28
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #23
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge28.thread, %._crit_edge28
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.g, ptr %i.ai, align 8, !tbaa !86
  store i64 %spec.select.fr, ptr %i.a, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN7CaDiCaL11LratBuilder11reduce_hashEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 4294967296
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i64 [ %i.f, %.lr.ph ], [ 32, %bb.a ]
  %.014 = phi i64 [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01013 = phi i32 [ %i.e, %.lr.ph ], [ 32, %bb.a ]
  %i.c = lshr i64 %.014, %i.b
  %i.d = xor i64 %i.c, %.014                      ; 2 uses
  %i.e = lshr i32 %.01013, 1                      ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %.highbits = lshr i64 %1, %i.f
  %i.g = icmp eq i64 %.highbits, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %0, %bb.a ], [ %i.d, %.lr.ph ]
  %i.h = add i64 %1, -1
  %i.i = and i64 %.0.lcssa, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !65
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !69
  %i.k = icmp sgt i8 %i.j, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.k, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL11LratBuilder16clause_falsifiedEPNS_17LratBuilderClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !69
  %i.l = icmp slt i8 %i.k, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.l, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge, !llvm.loop !263

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratBuilder23collect_garbage_clausesEv(ptr noundef nonnull align 8 dereferenceable(616) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.f = shl i64 %i.e, 32
  %sext = sub i64 4294967296, %i.f
  %i.g = ashr exact i64 %sext, 32                 ; 2 uses
  %i.h = icmp sgt i64 %i.e, %i.g
  br i1 %i.h, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge50:                                    ; preds = %_ZN7CaDiCaL12erase_vectorINS_16LratBuilderWatchEEEvRSt6vectorIT_SaIS3_EE.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 5 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !89   ; 5 uses
  %.cast = ptrtoint ptr %i.m to i64               ; 2 uses
  %.not4251 = icmp eq ptr %i.m, %i.l
  br i1 %.not4251, label %._crit_edge56, label %.lr.ph55

bb.b:                                             ; preds = %.lr.ph49, %_ZN7CaDiCaL12erase_vectorINS_16LratBuilderWatchEEEvRSt6vectorIT_SaIS3_EE.exit
  %indvars.iv = phi i64 [ %i.g, %.lr.ph49 ], [ %indvars.iv.next, %_ZN7CaDiCaL12erase_vectorINS_16LratBuilderWatchEEEvRSt6vectorIT_SaIS3_EE.exit ] ; 4 uses
  %i.n = icmp eq i64 %indvars.iv, 0
  br i1 %i.n, label %_ZN7CaDiCaL12erase_vectorINS_16LratBuilderWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = trunc nsw i64 %indvars.iv to i32
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.q = shl nuw i32 %i.p, 1
  %.inv.i.i = icmp sgt i64 %indvars.iv, -1
  %spec.select.v.i.i = select i1 %.inv.i.i, i32 -2, i32 -1
  %spec.select.i.i = add i32 %i.q, %spec.select.v.i.i
  %i.r = zext i32 %spec.select.i.i to i64
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.r ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90   ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !90   ; 3 uses
  %.not4344 = icmp eq ptr %i.w, %i.v
  br i1 %.not4344, label %_ZN7CaDiCaL12erase_vectorINS_16LratBuilderWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.sroa.037.046 = phi ptr [ %.sroa.037.1, %bb.e ], [ %i.w, %bb.c ] ; 3 uses
  %.sroa.034.045 = phi ptr [ %i.ad, %bb.e ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.034.045, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !28, !range !76, !noundef !77
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.037.046, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.046, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.034.045, i64 16, i1 false), !tbaa.struct !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.sroa.037.1 = phi ptr [ %.sroa.037.046, %.lr.ph ], [ %i.ac, %bb.d ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.034.045, i64 16 ; 2 uses
  %.not43 = icmp eq ptr %i.ad, %i.v
  br i1 %.not43, label %._crit_edge, label %.lr.ph, !llvm.loop !264

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !90
  %i.ae = icmp eq ptr %.sroa.037.1, %.pre
  br i1 %i.ae, label %_ZN7CaDiCaL12erase_vectorINS_16LratBuilderWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !90  ; 3 uses
  %i.ag = icmp eq ptr %.sroa.037.1, %i.af
  br i1 %i.ag, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.ai, %.sroa.037.1
  br i1 %.not.i, label %_ZN7CaDiCaL12erase_vectorINS_16LratBuilderWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i = icmp eq ptr %.sroa.037.1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL12erase_vectorINS_16LratBuilderWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.af) #23
  br label %_ZN7CaDiCaL12erase_vectorINS_16LratBuilderWatchEEEvRSt6vectorIT_SaIS3_EE.exit

bb.j:                                             ; preds = %bb.f
  %i.aj = ptrtoint ptr %.sroa.037.1 to i64
end_hunk_0
