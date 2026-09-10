Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.14?download=true
inline.NumInlined: 624
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha90cdf85efe92034E:bb.a
_ZN4core5slice4sort6shared9smallsort11insert_tail17h8e77dc4ba4afd257E.exit.1: ; preds = %._crit_edge82, %.lr.ph.1
  %i.cg = icmp ult i64 %.sroa.08.159.1, %i.bs     ; 2 uses
  %i.ch = zext i1 %i.cg to i64
  %.sroa.08.1.1 = add nuw i64 %.sroa.08.159.1, %i.ch
  br i1 %i.cg, label %.lr.ph.1, label %.loopexit.1

.loopexit.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8e77dc4ba4afd257E.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.ci = add i64 %1, -1                          ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.bv, i64 -4
  br label %.lr.ph.i

.lr.ph.preheader:                                 ; preds = %bb.i
  %.sroa.08.157 = add nuw nsw i64 %.sroa.0.0, 1
  br label %.lr.ph

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cm = getelementptr i8, ptr %i.dd, i64 4      ; 2 uses
  %i.cn = getelementptr i8, ptr %i.dc, i64 4
  %i.co = and i64 %1, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.014.i = phi ptr [ %i.cy, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.013.i = phi i64 [ %i.cq, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.012.i = phi ptr [ %i.cx, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 2 uses
  %.sroa.011.011.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.bv, %.loopexit.1 ] ; 2 uses
  %.sroa.015.010.i = phi ptr [ %i.dd, %.lr.ph.i ], [ %i.cl, %.loopexit.1 ] ; 2 uses
  %.sroa.017.09.i = phi ptr [ %i.dc, %.lr.ph.i ], [ %i.ck, %.loopexit.1 ] ; 2 uses
  %.sroa.019.08.i = phi ptr [ %i.de, %.lr.ph.i ], [ %i.cj, %.loopexit.1 ] ; 2 uses
  %i.cq = add nuw nsw i64 %.sroa.04.013.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load i32, ptr %.sroa.011.011.i, align 4, !alias.scope !1058, !noundef !5 ; 2 uses
  %.sroa.06.0.val.i = load i32, ptr %.sroa.06.012.i, align 4, !alias.scope !1058, !noundef !5 ; 2 uses
  %i.cr = icmp ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 2 uses
  %i.cs = xor i1 %i.cr, true
  %i.ct = tail call i32 @llvm.umin.i32(i32 %.sroa.011.0.val.i, i32 %.sroa.06.0.val.i)
  store i32 %i.ct, ptr %.sroa.0.014.i, align 4, !noalias !1059
  %i.cu = zext i1 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.011.i, i64 %i.cu ; 4 uses
  %i.cw = zext i1 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.012.i, i64 %i.cw ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 4 ; 2 uses
  %.sroa.017.0.val.i = load i32, ptr %.sroa.017.09.i, align 4, !alias.scope !1058, !noundef !5 ; 2 uses
  %.sroa.015.0.val.i = load i32, ptr %.sroa.015.010.i, align 4, !alias.scope !1058, !noundef !5 ; 2 uses
  %i.cz = icmp ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 2 uses
  %i.da = xor i1 %i.cz, true
  %i.db = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i, i32 %.sroa.015.0.val.i)
  store i32 %i.db, ptr %.sroa.019.08.i, align 4, !noalias !1060
  %.neg.i.i = sext i1 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %.sroa.017.09.i, i64 %.neg.i.i ; 2 uses
  %.neg15.i.i = sext i1 %i.cz to i64
  %i.dd = getelementptr [4 x i8], ptr %.sroa.015.010.i, i64 %.neg15.i.i ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.019.08.i, i64 -4
  %exitcond.not.i = icmp eq i64 %i.cq, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.df = icmp ult ptr %i.cx, %i.cm               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.df, ptr %i.cx, ptr %i.cv
  %i.dg = load i32, ptr %.sroa.06.0..sroa.011.0.i, align 4, !alias.scope !1058
  store i32 %i.dg, ptr %i.cy, align 4, !noalias !1058
  %i.dh = zext i1 %i.df to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.dh
  %i.dj = xor i1 %i.df, true
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dk
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.cv, %._crit_edge.i ], [ %i.dl, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.cx, %._crit_edge.i ], [ %i.di, %bb.j ]
  %i.dm = icmp ne ptr %.sroa.06.1.i, %i.cm
  %i.dn = icmp ne ptr %.sroa.011.1.i, %i.cn
  %or.cond.i = select i1 %i.dm, i1 true, i1 %i.dn, !prof !21
  br i1 %or.cond.i, label %bb.l, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h68dcc1ca09046b69E.exit, !prof !21

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #28
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = shl i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.dp, i1 false), !noalias !1061
  resume { ptr, i32 } %i.do

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h68dcc1ca09046b69E.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8e77dc4ba4afd257E.exit
  %.sroa.08.159 = phi i64 [ %.sroa.08.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8e77dc4ba4afd257E.exit ], [ %.sroa.08.157, %.lr.ph.preheader ] ; 3 uses
  %.sroa.08.058 = phi i64 [ %.sroa.08.159, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8e77dc4ba4afd257E.exit ], [ %.sroa.0.0, %.lr.ph.preheader ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.08.058
  %.idx = shl nuw nsw i64 %.sroa.08.058, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.ds = load i32, ptr %i.dq, align 4            ; 4 uses
  store i32 %i.ds, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -4 ; 2 uses
  %.val10.i47 = load i32, ptr %i.dt, align 4, !noundef !5 ; 2 uses
  %i.du = icmp ult i32 %i.ds, %.val10.i47
  br i1 %i.du, label %.preheader.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8e77dc4ba4afd257E.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i32 %.val10.i47, ptr %i.dr, align 4
  %i.dv = icmp eq i64 %.sroa.08.058, 1
  br i1 %i.dv, label %._crit_edge, label %.lr.ph78

.preheader:                                       ; preds = %.lr.ph78
  store i32 %.val8.i49, ptr %.sroa.0.0.i4877, align 4
  %i.dw = icmp eq ptr %i.dx, %2
  br i1 %i.dw, label %._crit_edge, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i4877 = phi ptr [ %i.dx, %.preheader ], [ %i.dt, %.preheader.preheader ] ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0.0.i4877, i64 -4 ; 3 uses
  %.val8.i49 = load i32, ptr %i.dx, align 4, !noundef !5 ; 2 uses
  %i.dy = icmp ult i32 %i.ds, %.val8.i49
  br i1 %i.dy, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.lr.ph78, %.preheader.preheader
  %.sroa.0.0.i48.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i4877, %.lr.ph78 ]
  store i32 %i.ds, ptr %.sroa.0.0.i48.lcssa, align 4, !noalias !1057
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8e77dc4ba4afd257E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8e77dc4ba4afd257E.exit: ; preds = %.lr.ph, %._crit_edge
  %i.dz = icmp ult i64 %.sroa.08.159, %i.d        ; 2 uses
  %i.ea = zext i1 %i.dz to i64
  %.sroa.08.1 = add nuw i64 %.sroa.08.159, %i.ea
  br i1 %i.dz, label %.lr.ph, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc2734c5ca1527a17E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.i = alloca [7 x i8], align 1           ; 9 uses
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb4cf4d4969f98adaE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, 16
  %i.c = icmp ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8831c74a49b9b14dE(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8831c74a49b9b14dE(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 6 uses
  %i.h = sub nuw i64 %1, %i.d                     ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.noexc38.preheader, label %.loopexit42

.loopexit42:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit, %bb.g
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [32 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.l = icmp ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.noexc38.preheader.1, label %.loopexit42.1

.noexc38.preheader.1:                             ; preds = %.loopexit42
  %.sroa.08.150.1 = add nuw nsw i64 %.sroa.0.0, 1
  br label %.noexc38.1

.noexc38.1:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit.1, %.noexc38.preheader.1
  %.sroa.08.152.1 = phi i64 [ %.sroa.08.1.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit.1 ], [ %.sroa.08.150.1, %.noexc38.preheader.1 ] ; 3 uses
  %.sroa.08.051.1 = phi i64 [ %.sroa.08.152.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit.1 ], [ %.sroa.0.0, %.noexc38.preheader.1 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.08.051.1
  %.idx131 = shl nuw nsw i64 %.sroa.08.051.1, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx131 ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i.i.i.i32.1 = load ptr, ptr %i.o, align 8, !alias.scope !1130, !noalias !1131, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val5.i.i.i.i33.1 = load i64, ptr %i.p, align 8, !alias.scope !1130, !noalias !1131, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -24
  %.val6.i.i.i.i34.1 = load ptr, ptr %i.q, align 8, !alias.scope !1131, !noalias !1130, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -16
  %.val7.i.i.i.i35.1 = load i64, ptr %i.r, align 8, !alias.scope !1131, !noalias !1130, !noundef !5
  %i.s = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i32.1, i64 noundef %.val5.i.i.i.i33.1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i.i34.1, i64 noundef %.val7.i.i.i.i35.1) ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load i8, ptr %i.u, align 8, !alias.scope !1130, !noalias !1131 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.x = load i8, ptr %i.w, align 8, !range !9, !alias.scope !1131, !noalias !1130
  %i.y = sub nsw i8 %i.v, %i.x
  %.sroa.0.0.i.i.i.i36.1 = select i1 %i.t, i8 %i.y, i8 %i.s
  %i.z = icmp slt i8 %.sroa.0.0.i.i.i.i36.1, 0
  br i1 %i.z, label %bb.h, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit.1

bb.h:                                             ; preds = %.noexc38.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %.sroa.015.0.copyload.i.1 = load i64, ptr %i.n, align 8 ; 2 uses
  %.sroa.718.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.718.0..sroa_idx.i.1, i64 7, i1 false)
  %.sroa.0.0.i37.1120 = getelementptr inbounds i8, ptr %i.n, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i37.1120, i64 32, i1 false)
  %i.aa = icmp eq i64 %.sroa.08.051.1, 1
  br i1 %i.aa, label %._crit_edge125, label %.lr.ph124

bb.i:                                             ; preds = %bb.j
  %.sroa.0.0.i37.1 = getelementptr inbounds i8, ptr %.sroa.0.0.i37.1122, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i37.1122, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i37.1, i64 32, i1 false)
  %i.ab = icmp eq ptr %.sroa.0.0.i37.1, %i.k
  br i1 %i.ab, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.h, %bb.i
  %.sroa.0.0.i37.1122 = phi ptr [ %.sroa.0.0.i37.1, %bb.i ], [ %.sroa.0.0.i37.1120, %bb.h ] ; 6 uses
  %.sroa.5.0.i.1121 = phi ptr [ %.sroa.0.0.i37.1122, %bb.i ], [ %i.n, %bb.h ] ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.5.0.i.1121, i64 -56
  %.val6.i.i.i10.i.1 = load ptr, ptr %i.ac, align 8, !alias.scope !1132, !noalias !1133, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds i8, ptr %.sroa.5.0.i.1121, i64 -48
  %.val7.i.i.i11.i.1 = load i64, ptr %i.ad, align 8, !alias.scope !1132, !noalias !1133, !noundef !5
  %i.ae = invoke noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i32.1, i64 noundef %.val5.i.i.i.i33.1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i10.i.1, i64 noundef %.val7.i.i.i11.i.1)
          to label %bb.j unwind label %.loopexit.split-lp66 ; 2 uses

bb.j:                                             ; preds = %.lr.ph124
  %i.af = icmp eq i8 %i.ae, 0
  %i.ag = getelementptr inbounds i8, ptr %.sroa.5.0.i.1121, i64 -40
  %i.ah = load i8, ptr %i.ag, align 8, !range !9, !alias.scope !1132, !noalias !1133
  %i.ai = sub nsw i8 %i.v, %i.ah
  %.sroa.0.0.i.i.i12.i.1 = select i1 %i.af, i8 %i.ai, i8 %i.ae
  %i.aj = icmp slt i8 %.sroa.0.0.i.i.i12.i.1, 0
  br i1 %i.aj, label %bb.i, label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.5.0.i.1.lcssa = phi ptr [ %i.n, %bb.h ], [ %.sroa.0.0.i37.1122, %bb.i ], [ %.sroa.5.0.i.1121, %bb.j ] ; 4 uses
  %.sroa.0.0.i37.lcssa.1 = phi ptr [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %.sroa.0.0.i37.1122, %bb.j ]
  store i64 %.sroa.015.0.copyload.i.1, ptr %.sroa.0.0.i37.lcssa.1, align 8, !noalias !1134
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -24
  store ptr %.val.i.i.i.i32.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1134
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -16
  store i64 %.val5.i.i.i.i33.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1134
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -8
  store i8 %i.v, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1134
  %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, i64 7, i1 false), !noalias !1134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit.1: ; preds = %._crit_edge125, %.noexc38.1
  %i.ak = icmp ult i64 %.sroa.08.152.1, %i.h      ; 2 uses
  %i.al = zext i1 %i.ak to i64
  %.sroa.08.1.1 = add nuw i64 %.sroa.08.152.1, %i.al
  br i1 %i.ak, label %.noexc38.1, label %.loopexit42.1

.loopexit42.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit.1, %.loopexit42
  %i.am = add i64 %1, -1                          ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.am
  %i.ap = getelementptr i8, ptr %i.k, i64 -32
  br label %.lr.ph.i

.noexc38.preheader:                               ; preds = %bb.g
  %.sroa.08.150 = add nuw nsw i64 %.sroa.0.0, 1
  br label %.noexc38

._crit_edge.i:                                    ; preds = %.noexc30
  %i.aq = getelementptr i8, ptr %i.bz, i64 32     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.by, i64 32
  %i.as = and i64 %1, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %.noexc30, %.loopexit42.1
  %.sroa.0.010.i = phi ptr [ %i.bm, %.noexc30 ], [ %0, %.loopexit42.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.au, %.noexc30 ], [ 0, %.loopexit42.1 ]
  %.sroa.06.08.i = phi ptr [ %i.bo, %.noexc30 ], [ %2, %.loopexit42.1 ] ; 5 uses
  %.sroa.011.07.i = phi ptr [ %i.bq, %.noexc30 ], [ %i.k, %.loopexit42.1 ] ; 5 uses
  %.sroa.015.06.i = phi ptr [ %i.bz, %.noexc30 ], [ %i.ap, %.loopexit42.1 ] ; 5 uses
  %.sroa.017.05.i = phi ptr [ %i.by, %.noexc30 ], [ %i.ao, %.loopexit42.1 ] ; 5 uses
  %.sroa.019.04.i = phi ptr [ %i.ca, %.noexc30 ], [ %i.an, %.loopexit42.1 ] ; 2 uses
  %i.au = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !1141, !noalias !1142, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 16
  %.val5.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !1141, !noalias !1142, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8
  %.val6.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !1143, !noalias !1144, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 16
  %.val7.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !1143, !noalias !1144, !noundef !5
  %i.az = invoke noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val5.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i.i, i64 noundef %.val7.i.i.i.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.ba = icmp eq i8 %i.az, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !range !9, !alias.scope !1141, !noalias !1142
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 24
  %i.be = load i8, ptr %i.bd, align 8, !range !9, !alias.scope !1143, !noalias !1144
  %i.bf = sub nsw i8 %i.bc, %i.be
  %.sroa.0.0.i.i.i.i = select i1 %i.ba, i8 %i.bf, i8 %i.az ; 2 uses
  %i.bg = icmp sgt i8 %.sroa.0.0.i.i.i.i, -1      ; 2 uses
  %..i23.i = select i1 %i.bg, ptr %.sroa.06.08.i, ptr %.sroa.011.07.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(32) %..i23.i, i64 32, i1 false), !noalias !1145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 8
  %.val.i.i.i24.i = load ptr, ptr %i.bh, align 8, !alias.scope !1152, !noalias !1153, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 16
  %.val5.i.i.i25.i = load i64, ptr %i.bi, align 8, !alias.scope !1152, !noalias !1153, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 8
  %.val6.i.i.i26.i = load ptr, ptr %i.bj, align 8, !alias.scope !1154, !noalias !1155, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 16
  %.val7.i.i.i27.i = load i64, ptr %i.bk, align 8, !alias.scope !1154, !noalias !1155, !noundef !5
  %i.bl = invoke noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i24.i, i64 noundef %.val5.i.i.i25.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i26.i, i64 noundef %.val7.i.i.i27.i)
          to label %.noexc30 unwind label %.loopexit ; 2 uses

.noexc30:                                         ; preds = %.noexc
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 32 ; 2 uses
  %i.bn = zext i1 %i.bg to i64
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.08.i, i64 %i.bn ; 5 uses
  %.sroa.0.0.i.i.i.lobit.i = lshr i8 %.sroa.0.0.i.i.i.i, 7
  %i.bp = zext nneg i8 %.sroa.0.0.i.i.i.lobit.i to i64
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.07.i, i64 %i.bp ; 4 uses
  %i.br = icmp eq i8 %i.bl, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 24
  %i.bt = load i8, ptr %i.bs, align 8, !range !9, !alias.scope !1152, !noalias !1153
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 24
  %i.bv = load i8, ptr %i.bu, align 8, !range !9, !alias.scope !1154, !noalias !1155
  %i.bw = sub nsw i8 %i.bt, %i.bv
  %.sroa.0.0.i.i.i28.i = select i1 %i.br, i8 %i.bw, i8 %i.bl ; 2 uses
  %i.bx = icmp sgt i8 %.sroa.0.0.i.i.i28.i, -1    ; 2 uses
  %..i.i = select i1 %i.bx, ptr %.sroa.017.05.i, ptr %.sroa.015.06.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !noalias !1156
  %.neg.i.i = sext i1 %i.bx to i64
  %i.by = getelementptr [32 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.sroa.0.0.i.i.i28.lobit.i = ashr i8 %.sroa.0.0.i.i.i28.i, 7
  %.neg15.i.i = sext i8 %.sroa.0.0.i.i.i28.lobit.i to i64
  %i.bz = getelementptr [32 x i8], ptr %.sroa.015.06.i, i64 %.neg15.i.i ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -32
  %exitcond.not.i = icmp eq i64 %i.au, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.cb = icmp ult ptr %i.bo, %i.aq               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cb, ptr %i.bo, ptr %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i, i64 32, i1 false)
  %i.cc = zext i1 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.cc
  %i.ce = xor i1 %i.cb, true
  %i.cf = zext i1 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.cf
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bq, %._crit_edge.i ], [ %i.cg, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.bo, %._crit_edge.i ], [ %i.cd, %bb.k ]
  %i.ch = icmp ne ptr %.sroa.06.1.i, %i.aq
  %i.ci = icmp ne ptr %.sroa.011.1.i, %i.ar
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.ci, !prof !21
  br i1 %or.cond.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb4cf4d4969f98adaE.exit, !prof !21

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #28
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cj = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.cj, i1 false), !noalias !1157
  br label %.body

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb4cf4d4969f98adaE.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.r, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %lpad.phi76, %bb.r ]
  resume { ptr, i32 } %.pn

.noexc38:                                         ; preds = %.noexc38.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit
  %.sroa.08.152 = phi i64 [ %.sroa.08.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit ], [ %.sroa.08.150, %.noexc38.preheader ] ; 3 uses
  %.sroa.08.051 = phi i64 [ %.sroa.08.152, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit ], [ %.sroa.0.0, %.noexc38.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.08.051
  %.idx = shl nuw nsw i64 %.sroa.08.051, 5
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.val.i.i.i.i32 = load ptr, ptr %i.cm, align 8, !alias.scope !1164, !noalias !1165, !nonnull !5, !noundef !5 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.val5.i.i.i.i33 = load i64, ptr %i.cn, align 8, !alias.scope !1164, !noalias !1165, !noundef !5 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 -24
  %.val6.i.i.i.i34 = load ptr, ptr %i.co, align 8, !alias.scope !1165, !noalias !1164, !nonnull !5, !noundef !5
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 -16
  %.val7.i.i.i.i35 = load i64, ptr %i.cp, align 8, !alias.scope !1165, !noalias !1164, !noundef !5
  %i.cq = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i32, i64 noundef %.val5.i.i.i.i33, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i.i34, i64 noundef %.val7.i.i.i.i35) ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !alias.scope !1164, !noalias !1165 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cl, i64 -8
  %i.cv = load i8, ptr %i.cu, align 8, !range !9, !alias.scope !1165, !noalias !1164
  %i.cw = sub nsw i8 %i.ct, %i.cv
  %.sroa.0.0.i.i.i.i36 = select i1 %i.cr, i8 %i.cw, i8 %i.cq
  %i.cx = icmp slt i8 %.sroa.0.0.i.i.i.i36, 0
  br i1 %i.cx, label %bb.o, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit

bb.o:                                             ; preds = %.noexc38
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %.sroa.015.0.copyload.i = load i64, ptr %i.cl, align 8 ; 2 uses
  %.sroa.718.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.718.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.0.0.i37113 = getelementptr inbounds i8, ptr %i.cl, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i37113, i64 32, i1 false)
  %i.cy = icmp eq i64 %.sroa.08.051, 1
  br i1 %i.cy, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %bb.q
  %.sroa.0.0.i37 = getelementptr inbounds i8, ptr %.sroa.0.0.i37115, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i37115, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i37, i64 32, i1 false)
  %i.cz = icmp eq ptr %.sroa.0.0.i37, %2
  br i1 %i.cz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.0.0.i37115 = phi ptr [ %.sroa.0.0.i37, %bb.p ], [ %.sroa.0.0.i37113, %bb.o ] ; 6 uses
  %.sroa.5.0.i114 = phi ptr [ %.sroa.0.0.i37115, %bb.p ], [ %i.cl, %bb.o ] ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.5.0.i114, i64 -56
  %.val6.i.i.i10.i = load ptr, ptr %i.da, align 8, !alias.scope !1132, !noalias !1133, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds i8, ptr %.sroa.5.0.i114, i64 -48
  %.val7.i.i.i11.i = load i64, ptr %i.db, align 8, !alias.scope !1132, !noalias !1133, !noundef !5
  %i.dc = invoke noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i32, i64 noundef %.val5.i.i.i.i33, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i10.i, i64 noundef %.val7.i.i.i11.i)
          to label %bb.q unwind label %.loopexit65 ; 2 uses

bb.q:                                             ; preds = %.lr.ph
  %i.dd = icmp eq i8 %i.dc, 0
  %i.de = getelementptr inbounds i8, ptr %.sroa.5.0.i114, i64 -40
  %i.df = load i8, ptr %i.de, align 8, !range !9, !alias.scope !1132, !noalias !1133
  %i.dg = sub nsw i8 %i.ct, %i.df
  %.sroa.0.0.i.i.i12.i = select i1 %i.dd, i8 %i.dg, i8 %i.dc
  %i.dh = icmp slt i8 %.sroa.0.0.i.i.i12.i, 0
  br i1 %i.dh, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.q, %bb.o
  %.sroa.5.0.i.lcssa = phi ptr [ %i.cl, %bb.o ], [ %.sroa.0.0.i37115, %bb.p ], [ %.sroa.5.0.i114, %bb.q ] ; 4 uses
  %.sroa.0.0.i37.lcssa = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i37115, %bb.q ]
  store i64 %.sroa.015.0.copyload.i, ptr %.sroa.0.0.i37.lcssa, align 8, !noalias !1134
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -24
  store ptr %.val.i.i.i.i32, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1134
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store i64 %.val5.i.i.i.i33, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1134
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i8 %i.ct, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1134
  %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, i64 7, i1 false), !noalias !1134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit

.loopexit65:                                      ; preds = %.lr.ph
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp66:                             ; preds = %.lr.ph124
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp66, %.loopexit65
  %.val.i.i.i.i32.lcssa = phi ptr [ %.val.i.i.i.i32, %.loopexit65 ], [ %.val.i.i.i.i32.1, %.loopexit.split-lp66 ]
  %.sroa.015.0.copyload.i.lcssa.a = phi i64 [ %.val5.i.i.i.i33, %.loopexit65 ], [ %.val5.i.i.i.i33.1, %.loopexit.split-lp66 ]
  %.lcssa61 = phi i8 [ %i.ct, %.loopexit65 ], [ %i.v, %.loopexit.split-lp66 ]
  %.sroa.516.0.copyload.i.lcssa = phi i64 [ %.sroa.015.0.copyload.i, %.loopexit65 ], [ %.sroa.015.0.copyload.i.1, %.loopexit.split-lp66 ]
  %.sroa.5.0.i.lcssa60 = phi ptr [ %.sroa.5.0.i114, %.loopexit65 ], [ %.sroa.5.0.i.1121, %.loopexit.split-lp66 ] ; 4 uses
  %.sroa.0.0.i37.lcssa59 = phi ptr [ %.sroa.0.0.i37115, %.loopexit65 ], [ %.sroa.0.0.i37.1122, %.loopexit.split-lp66 ]
  %lpad.phi76 = phi { ptr, i32 } [ %lpad.loopexit74, %.loopexit65 ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp66 ]
  store i64 %.sroa.516.0.copyload.i.lcssa, ptr %.sroa.0.0.i37.lcssa59, align 8, !noalias !1166
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa60, i64 -24
  store ptr %.val.i.i.i.i32.lcssa, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !1166
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa60, i64 -16
  store i64 %.sroa.015.0.copyload.i.lcssa.a, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !1166
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa60, i64 -8
  store i8 %.lcssa61, ptr %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !1166
  %.sroa.8.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa60, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa.0.0.lcssa6.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, i64 7, i1 false), !noalias !1166
  br label %.body

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5877ed0a80b01a0dE.exit: ; preds = %.noexc38, %._crit_edge
  %i.di = icmp ult i64 %.sroa.08.152, %i.d        ; 2 uses
  %i.dj = zext i1 %i.di to i64
  %.sroa.08.1 = add nuw i64 %.sroa.08.152, %i.dj
  br i1 %i.di, label %.noexc38, label %.loopexit42
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_ZN4core5slice4sort6stable5merge5merge17h13e7f218d54ff4c0E(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i64 %1, %4                       ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp ugt i64 %4, %i.c                   ; 2 uses
  %. = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl i64 %.sroa.0.0.i, 2                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %., i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %bb.c, %.preheader
  %i.i = phi ptr [ %i.t, %.preheader ], [ %i.h, %bb.c ]
  %i.j = phi ptr [ %i.r, %.preheader ], [ %i.e, %bb.c ]
  %.sroa.0.0.i26 = phi ptr [ %i.m, %.preheader ], [ %i.f, %bb.c ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i26, i64 -4 ; 2 uses
  %.val.i = load i32, ptr %i.l, align 4, !noalias !1175, !noundef !5 ; 2 uses
  %.val10.i = load i32, ptr %i.k, align 4, !noalias !1175, !noundef !5 ; 2 uses
  %i.n = icmp ult i32 %.val.i, %.val10.i          ; 2 uses
  %i.o = tail call i32 @llvm.umax.i32(i32 %.val.i, i32 %.val10.i)
  store i32 %i.o, ptr %i.m, align 4, !noalias !1175
  %i.p = xor i1 %i.n, true
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.q ; 3 uses
  %i.s = zext i1 %i.n to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s ; 3 uses
  %i.u = icmp eq ptr %i.r, %0
  %i.v = icmp eq ptr %i.t, %2
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdec7729b28d795a1E.exit", label %.preheader

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.w = phi ptr [ %i.af, %.lr.ph.i ], [ %0, %bb.c ] ; 2 uses
  %.sroa.0.04.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %i.ac, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %.sroa.0.0.val.i = load i32, ptr %.sroa.0.04.i, align 4, !noalias !1176, !noundef !5 ; 2 uses
  %.val.i28 = load i32, ptr %i.x, align 4, !noalias !1176, !noundef !5 ; 2 uses
  %i.y = icmp ult i32 %.sroa.0.0.val.i, %.val.i28 ; 2 uses
  %i.z = xor i1 %i.y, true
  %i.aa = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.val.i, i32 %.val.i28)
  store i32 %i.aa, ptr %i.w, align 4, !noalias !1176
  %i.ab = zext i1 %i.z to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ab ; 3 uses
  %i.ad = zext i1 %i.y to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.04.i, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.ag = icmp ne ptr %i.ac, %i.h
  %i.ah = icmp ne ptr %i.ae, %i.f
  %or.cond.i29 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i29, label %.lr.ph.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdec7729b28d795a1E.exit"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdec7729b28d795a1E.exit": ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.r, %.preheader ], [ %i.af, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.t, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.7.0 to i64
  %i.aj = ptrtoint ptr %.sroa.0.0 to i64
  %i.ak = sub nuw i64 %i.ai, %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.0, ptr align 4 %.sroa.0.0, i64 %i.ak, i1 false), !noalias !1177
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdec7729b28d795a1E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5merge5merge17h7966e1bc30eb7906E(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i64 %1, %4                       ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp ugt i64 %4, %i.c                   ; 2 uses
  %. = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl i64 %.sroa.0.0.i, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %., i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %bb.c, %.noexc
  %.sroa.13.2 = phi ptr [ %i.y, %.noexc ], [ %i.e, %bb.c ] ; 5 uses
  %.sroa.7.2 = phi ptr [ %i.aa, %.noexc ], [ %i.h, %bb.c ] ; 5 uses
  %.sroa.0.0.i26 = phi ptr [ %i.n, %.noexc ], [ %i.f, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %i.i = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -24
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1214, !noalias !1215, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -16
  %.val5.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1214, !noalias !1215, !noundef !5
  %i.k = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -24
  %.val6.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1216, !noalias !1217, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -16
  %.val7.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1216, !noalias !1217, !noundef !5
  %i.m = invoke noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val5.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i.i, i64 noundef %.val7.i.i.i.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i26, i64 -32 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -32 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -32 ; 2 uses
  %i.q = icmp eq i8 %i.m, 0
  %i.r = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -8
  %i.s = load i8, ptr %i.r, align 8, !range !9, !alias.scope !1214, !noalias !1215
  %i.t = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -8
  %i.u = load i8, ptr %i.t, align 8, !range !9, !alias.scope !1216, !noalias !1217
  %i.v = sub nsw i8 %i.s, %i.u
  %.sroa.0.0.i.i.i.i = select i1 %i.q, i8 %i.v, i8 %i.m ; 2 uses
  %i.w = icmp sgt i8 %.sroa.0.0.i.i.i.i, -1       ; 2 uses
  %..i = select i1 %i.w, ptr %i.o, ptr %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %..i, i64 32, i1 false), !noalias !1218
  %i.x = zext i1 %i.w to i64
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.x ; 3 uses
  %.sroa.0.0.i.i.i.lobit.i = lshr i8 %.sroa.0.0.i.i.i.i, 7
  %i.z = zext nneg i8 %.sroa.0.0.i.i.i.lobit.i to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z ; 3 uses
  %i.ab = icmp eq ptr %i.y, %0
  %i.ac = icmp eq ptr %i.aa, %2
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6095a6c542e24df6E.exit", label %.preheader

.lr.ph.i:                                         ; preds = %bb.c, %.noexc35
  %.sroa.13.3 = phi ptr [ %i.at, %.noexc35 ], [ %0, %bb.c ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.aq, %.noexc35 ], [ %2, %bb.c ] ; 6 uses
  %.sroa.0.02.i = phi ptr [ %i.as, %.noexc35 ], [ %i.e, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8
  %.val.i.i.i.i28 = load ptr, ptr %i.ad, align 8, !alias.scope !1225, !noalias !1226, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16
  %.val5.i.i.i.i29 = load i64, ptr %i.ae, align 8, !alias.scope !1225, !noalias !1226, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %.val6.i.i.i.i30 = load ptr, ptr %i.af, align 8, !alias.scope !1227, !noalias !1228, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %.val7.i.i.i.i31 = load i64, ptr %i.ag, align 8, !alias.scope !1227, !noalias !1228, !noundef !5
  %i.ah = invoke noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i28, i64 noundef %.val5.i.i.i.i29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i.i30, i64 noundef %.val7.i.i.i.i31)
          to label %.noexc35 unwind label %.loopexit.split-lp ; 2 uses

.noexc35:                                         ; preds = %.lr.ph.i
  %i.ai = icmp eq i8 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !range !9, !alias.scope !1225, !noalias !1226
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.am = load i8, ptr %i.al, align 8, !range !9, !alias.scope !1227, !noalias !1228
  %i.an = sub nsw i8 %i.ak, %i.am
  %.sroa.0.0.i.i.i.i32 = select i1 %i.ai, i8 %i.an, i8 %i.ah ; 2 uses
  %i.ao = icmp sgt i8 %.sroa.0.0.i.i.i.i32, -1    ; 2 uses
  %spec.select.i = select i1 %i.ao, ptr %.sroa.0.2, ptr %.sroa.0.02.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i, i64 32, i1 false), !noalias !1229
  %i.ap = zext i1 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.2, i64 %i.ap ; 3 uses
  %.sroa.0.0.i.i.i.lobit.i33 = lshr i8 %.sroa.0.0.i.i.i.i32, 7
  %i.ar = zext nneg i8 %.sroa.0.0.i.i.i.lobit.i33 to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 32 ; 2 uses
end_hunk_0
