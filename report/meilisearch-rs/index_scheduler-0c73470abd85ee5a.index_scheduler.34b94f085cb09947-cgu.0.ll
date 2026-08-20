inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN4core5slice4sort8unstable9quicksort9quicksort17h26727edc73c6595aE:bb.a
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp eq i32 %i.fl, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i = select i1 %i.fn, i64 %i.fk, i64 %i.fm
  %i.fo = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i.i.i, -1
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.sroa.27.169.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.043.171.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 16, i1 false), !alias.scope !134668, !noalias !134671
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.170.i.i, i64 16, i1 false), !alias.scope !134668, !noalias !134671
  %i.fq = zext i1 %i.fo to i64
  %i.fr = add i64 %.sroa.27.169.i.i, %i.fq        ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.15.170.i.i, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fe
  br i1 %i.ft, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h0c9d17f0efb53ee8E.exit.i, label %.lr.ph72.i.i

.lr.ph.i.i47:                                     ; preds = %bb.t, %.lr.ph.i.i47
  %.sroa.15.066.i.i48 = phi ptr [ %.sroa.15.0.i.i49, %.lr.ph.i.i47 ], [ %.sroa.15.063.i.i, %bb.t ] ; 3 uses
  %.sroa.043.065.i.i = phi ptr [ %i.gd, %.lr.ph.i.i47 ], [ %i.fb, %bb.t ] ; 3 uses
  %.sroa.27.064.i.i = phi i64 [ %i.gm, %.lr.ph.i.i47 ], [ 0, %bb.t ] ; 2 uses
  %.val.i27.i.i = load ptr, ptr %.sroa.15.066.i.i48, align 8, !alias.scope !134668, !noalias !134682, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i.i.i31.i.i = load ptr, ptr %.val.i27.i.i, align 8, !noalias !134685, !nonnull !14, !align !584, !noundef !14
  %i.fu = getelementptr i8, ptr %.val.i27.i.i, i64 8
  %.val3.i.i.i.i32.i.i = load i64, ptr %i.fu, align 8, !noalias !134685, !noundef !14 ; 2 uses
  %i.fv = sub i64 %.val1.i.i.i.i30.i.i, %.val3.i.i.i.i32.i.i
  %..i.i.i.i.i.i.i33.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i30.i.i, i64 %.val3.i.i.i.i32.i.i)
  %i.fw = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i21.i.pre8.pre.i, ptr nonnull readonly align 1 %.val2.i.i.i.i31.i.i, i64 %..i.i.i.i.i.i.i33.i.i), !alias.scope !134686, !noalias !134685 ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp eq i32 %i.fw, 0
  %spec.store.select.i.i.i.i.i.i.i34.i.i = select i1 %i.fy, i64 %i.fv, i64 %i.fx
  %i.fz = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i34.i.i, -1
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.sroa.27.064.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.043.065.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false), !alias.scope !134668, !noalias !134682
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.066.i.i48, i64 16, i1 false), !alias.scope !134668, !noalias !134682
  %i.gb = zext i1 %i.fz to i64
  %i.gc = add i64 %.sroa.27.064.i.i, %i.gb        ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.043.065.i.i, i64 32 ; 4 uses
  %.val.i35.i.i = load ptr, ptr %i.gd, align 8, !alias.scope !134668, !noalias !134693, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i.i.i39.i.i = load ptr, ptr %.val.i35.i.i, align 8, !noalias !134696, !nonnull !14, !align !584, !noundef !14
  %i.ge = getelementptr i8, ptr %.val.i35.i.i, i64 8
  %.val3.i.i.i.i40.i.i = load i64, ptr %i.ge, align 8, !noalias !134696, !noundef !14 ; 2 uses
  %i.gf = sub i64 %.val1.i.i.i.i30.i.i, %.val3.i.i.i.i40.i.i
  %..i.i.i.i.i.i.i41.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i30.i.i, i64 %.val3.i.i.i.i40.i.i)
  %i.gg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i21.i.pre8.pre.i, ptr nonnull readonly align 1 %.val2.i.i.i.i39.i.i, i64 %..i.i.i.i.i.i.i41.i.i), !alias.scope !134697, !noalias !134696 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp eq i32 %i.gg, 0
  %spec.store.select.i.i.i.i.i.i.i42.i.i = select i1 %i.gi, i64 %i.gf, i64 %i.gh
  %i.gj = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i42.i.i, -1
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.gc ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.066.i.i48, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !alias.scope !134668, !noalias !134693
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false), !alias.scope !134668, !noalias !134693
  %i.gl = zext i1 %i.gj to i64
  %i.gm = add i64 %i.gc, %i.gl                    ; 2 uses
  %.sroa.15.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.043.065.i.i, i64 48 ; 3 uses
  %i.gn = icmp ult ptr %.sroa.15.0.i.i49, %i.ff
  br i1 %i.gn, label %.lr.ph.i.i47, label %.preheader.i.i39

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h0c9d17f0efb53ee8E.exit.i: ; preds = %.lr.ph72.i.i, %.preheader.i.i39
  %.sroa.27.1.lcssa.i.i44 = phi i64 [ %.sroa.27.0.lcssa.i.i40, %.preheader.i.i39 ], [ %i.fr, %.lr.ph72.i.i ] ; 2 uses
  %.sroa.043.1.lcssa.i.i = phi ptr [ %.sroa.043.0.lcssa.i.i, %.preheader.i.i39 ], [ %.sroa.15.170.i.i, %.lr.ph72.i.i ]
  %.val2.i.i.i.i23.i.i = load ptr, ptr %i.fd, align 8, !noalias !134704, !nonnull !14, !align !584, !noundef !14
  %i.go = getelementptr i8, ptr %i.fd, i64 8
  %.val3.i.i.i.i24.i.i = load i64, ptr %i.go, align 8, !noalias !134704, !noundef !14 ; 2 uses
  %i.gp = sub i64 %.val1.i.i.i.i30.i.i, %.val3.i.i.i.i24.i.i
  %..i.i.i.i.i.i.i25.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i30.i.i, i64 %.val3.i.i.i.i24.i.i)
  %i.gq = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i21.i.pre8.pre.i, ptr nonnull readonly align 1 %.val2.i.i.i.i23.i.i, i64 %..i.i.i.i.i.i.i25.i.i), !alias.scope !134707, !noalias !134704 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp eq i32 %i.gq, 0
  %spec.store.select.i.i.i.i.i.i.i26.i.i = select i1 %i.gs, i64 %i.gp, i64 %i.gr
  %i.gt = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i26.i.i, -1
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.sroa.27.1.lcssa.i.i44 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.043.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false), !alias.scope !134668, !noalias !134714
  store <2 x ptr> %i.fc, ptr %i.gu, align 8, !alias.scope !134668, !noalias !134714
  %i.gv = zext i1 %i.gt to i64
  %i.gw = add i64 %.sroa.27.1.lcssa.i.i44, %i.gv  ; 3 uses
  %.not5.i46 = icmp ult i64 %i.gw, %.sroa.14.068119
  br i1 %.not5.i46, label %_ZN4core5slice4sort8unstable9quicksort9partition17h149ef640f6aaf3c8E.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h0c9d17f0efb53ee8E.exit.i
  tail call void @llvm.trap()
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17h149ef640f6aaf3c8E.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h0c9d17f0efb53ee8E.exit.i
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.069118, i64 %i.gw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !alias.scope !134715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gy = add nuw i64 %i.gw, 1                    ; 2 uses
  %i.gz = sub nuw i64 %.sroa.14.068119, %i.gy
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.069118, i64 %i.gy
  br label %.backedge

.backedge:                                        ; preds = %_ZN4core5slice4sort8unstable9quicksort9partition17h149ef640f6aaf3c8E.exit, %_ZN4core5slice4sort8unstable9quicksort9partition17h699b45aaaa6c3d0fE.exit
  %.sroa.021.0.be = phi ptr [ %i.ep, %_ZN4core5slice4sort8unstable9quicksort9partition17h699b45aaaa6c3d0fE.exit ], [ null, %_ZN4core5slice4sort8unstable9quicksort9partition17h149ef640f6aaf3c8E.exit ]
  %.sroa.14.0.be = phi i64 [ %i.es, %_ZN4core5slice4sort8unstable9quicksort9partition17h699b45aaaa6c3d0fE.exit ], [ %i.gz, %_ZN4core5slice4sort8unstable9quicksort9partition17h149ef640f6aaf3c8E.exit ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.eq, %_ZN4core5slice4sort8unstable9quicksort9partition17h699b45aaaa6c3d0fE.exit ], [ %i.ha, %_ZN4core5slice4sort8unstable9quicksort9partition17h149ef640f6aaf3c8E.exit ] ; 3 uses
  %i.hb = icmp ult i64 %.sroa.14.0.be, 33
  br i1 %i.hb, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h57da417663df52e3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.i.i31 = alloca [16 x i8], align 8      ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = icmp ult i64 %1, 33
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph109

.lr.ph:                                           ; preds = %.backedge
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph109

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.14.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.14.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort18small_sort_general17h10b4c526cb4144fcE(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.14.0.lcssa)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.070.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.14.069.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.14.0.be, %.lr.ph ]
  tail call void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h07b8a33522e2f5eeE(ptr noalias noundef nonnull align 8 %.sroa.0.070.lcssa, i64 noundef %.sroa.14.069.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.c

.lr.ph109:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.024.067108 = phi i32 [ %i.h, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.021.068107 = phi ptr [ %.sroa.021.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.14.069106 = phi i64 [ %.sroa.14.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.070105 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 30 uses
  %i.h = add nsw i32 %.sroa.024.067108, -1        ; 3 uses
  %i.i = lshr i64 %.sroa.14.069106, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.i, 96
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.i, 168
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 %.idx2.i ; 3 uses
  %i.l = icmp ult i64 %.sroa.14.069106, 64
  br i1 %i.l, label %_ZN4core5slice4sort6shared5pivot7median317h1aef4d073f49f9f8E.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph109
  %i.m = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h8128b4ab30f65057E(ptr noundef nonnull readonly align 8 %.sroa.0.070105, ptr noundef readonly %i.j, ptr noundef readonly %i.k, i64 noundef %i.i)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb730f7b179efe6d8E.exit

_ZN4core5slice4sort6shared5pivot7median317h1aef4d073f49f9f8E.exit.i: ; preds = %.lr.ph109
  %i.n = getelementptr i8, ptr %.sroa.0.070105, i64 16
  %.val6.i = load i64, ptr %i.n, align 8, !alias.scope !134718, !noundef !14 ; 3 uses
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %.val7.i = load i64, ptr %i.o, align 8, !alias.scope !134718, !noundef !14 ; 3 uses
  %i.p = icmp ult i64 %.val6.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i64 %.val7.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp samesign ult i64 %.val7.i, %.val6.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %.val5.i = load i64, ptr %i.s, align 8, !alias.scope !134718, !noundef !14 ; 3 uses
  %i.t = icmp ult i64 %.val5.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ult i64 %.val5.i, %.val6.i
  %i.v = xor i1 %i.r, %i.u
  %i.w = icmp samesign ult i64 %.val5.i, %.val7.i
  %i.x = xor i1 %i.r, %i.w
  %..i.i = select i1 %i.x, ptr %i.k, ptr %i.j
  %.sroa.0.0.i.i = select i1 %i.v, ptr %.sroa.0.070105, ptr %..i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb730f7b179efe6d8E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hb730f7b179efe6d8E.exit: ; preds = %bb.b, %_ZN4core5slice4sort6shared5pivot7median317h1aef4d073f49f9f8E.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317h1aef4d073f49f9f8E.exit.i ], [ %i.m, %bb.b ]
  %i.y = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.z = ptrtoint ptr %.sroa.0.070105 to i64
  %i.aa = sub nuw i64 %i.y, %i.z                  ; 3 uses
  %.sroa.0.0.i = udiv exact i64 %i.aa, 24
  %i.ab = icmp ult i64 %.sroa.0.0.i, %.sroa.14.069106
  tail call void @llvm.assume(i1 %i.ab)
  %.not = icmp eq ptr %.sroa.021.068107, null
  br i1 %.not, label %.lr.ph.i.i, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

.lr.ph.i.i:                                       ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb730f7b179efe6d8E.exit, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 %i.aa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !alias.scope !134721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134729)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !noalias !134729
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 40
  %.sroa.434.0.copyload.i.i = load i64, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !alias.scope !134731, !noalias !134729 ; 3 uses
  %i.ae = mul i64 %.sroa.14.069106, 24
  %i.af = getelementptr i8, ptr %.sroa.0.070105, i64 %i.ae ; 3 uses
  %.sroa.13.041.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 16
  %.val1.i20.i.i = load i64, ptr %i.ag, align 8, !alias.scope !134732, !noalias !134733, !noundef !14 ; 4 uses
  %i.ah = icmp ult i64 %.val1.i20.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah)
  br label %bb.d

.preheader.i.i:                                   ; preds = %bb.d
  %i.ai = icmp eq ptr %.sroa.13.0.i.i, %i.af
  br i1 %i.ai, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h3b7605001ea7f980E.exit.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph50.i.i
  %.sroa.021.149.i.i = phi ptr [ %.sroa.13.148.i.i, %.lr.ph50.i.i ], [ %.sroa.13.044.i.i, %.preheader.i.i ]
  %.sroa.13.148.i.i = phi ptr [ %i.ap, %.lr.ph50.i.i ], [ %.sroa.13.0.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.23.147.i.i = phi i64 [ %i.ao, %.lr.ph50.i.i ], [ %i.av, %.preheader.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.sroa.13.148.i.i, i64 16
  %.val.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !134731, !noalias !134736, !noundef !14 ; 2 uses
  %i.ak = icmp ult i64 %.val.i.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ult i64 %.val1.i20.i.i, %.val.i.i.i
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.23.147.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.149.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !alias.scope !134731, !noalias !134736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.148.i.i, i64 24, i1 false), !alias.scope !134731, !noalias !134736
  %i.an = zext i1 %i.al to i64
  %i.ao = add i64 %.sroa.23.147.i.i, %i.an        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.13.148.i.i, i64 24 ; 2 uses
  %5 = icmp eq ptr %i.ap, %i.af
  br i1 %5, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h3b7605001ea7f980E.exit.i, label %.lr.ph50.i.i

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.044.i.i = phi ptr [ %.sroa.13.041.i.i, %.lr.ph.i.i ], [ %.sroa.13.0.i.i, %bb.d ] ; 5 uses
  %.sroa.021.043.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.sroa.13.044.i.i, %bb.d ] ; 2 uses
  %.sroa.23.042.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.av, %bb.d ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.021.043.i.i, i64 40
  %.val.i19.i.i = load i64, ptr %i.aq, align 8, !alias.scope !134731, !noalias !134739, !noundef !14 ; 2 uses
  %i.ar = icmp ult i64 %.val.i19.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ult i64 %.val1.i20.i.i, %.val.i19.i.i
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.23.042.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.043.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !alias.scope !134731, !noalias !134739
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.044.i.i, i64 24, i1 false), !alias.scope !134731, !noalias !134739
  %i.au = zext i1 %i.as to i64
  %i.av = add i64 %.sroa.23.042.i.i, %i.au        ; 3 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.044.i.i, i64 24 ; 4 uses
  %i.aw = icmp ult ptr %.sroa.13.0.i.i, %i.af
  br i1 %i.aw, label %bb.d, label %.preheader.i.i

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h3b7605001ea7f980E.exit.i: ; preds = %.lr.ph50.i.i, %.preheader.i.i
  %.sroa.23.1.lcssa.i.i = phi i64 [ %i.av, %.preheader.i.i ], [ %i.ao, %.lr.ph50.i.i ] ; 2 uses
  %.sroa.021.1.lcssa.i.i = phi ptr [ %.sroa.13.044.i.i, %.preheader.i.i ], [ %.sroa.13.148.i.i, %.lr.ph50.i.i ]
  %i.ax = icmp ult i64 %.sroa.434.0.copyload.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ult i64 %.val1.i20.i.i, %.sroa.434.0.copyload.i.i
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.23.1.lcssa.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !alias.scope !134731, !noalias !134740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !noalias !134740
  %.sroa.4.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.434.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx31.i.i, align 8, !alias.scope !134731, !noalias !134740
  %i.ba = zext i1 %i.ay to i64
  %i.bb = add i64 %.sroa.23.1.lcssa.i.i, %i.ba    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.not5.i = icmp ult i64 %i.bb, %.sroa.14.069106
  br i1 %.not5.i, label %_ZN4core5slice4sort8unstable9quicksort9partition17hd06849a0d8c0183cE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h3b7605001ea7f980E.exit.i
  tail call void @llvm.trap()
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17hd06849a0d8c0183cE.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h3b7605001ea7f980E.exit.i
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.070105, i64 %i.bb ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !alias.scope !134743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = xor i64 %i.bb, -1
  %i.bf = add i64 %.sroa.14.069106, %i.be
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h57da417663df52e3E(ptr noalias noundef nonnull align 8 %.sroa.0.070105, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.021.068107, i32 noundef %i.h, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb730f7b179efe6d8E.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 %i.aa ; 3 uses
  %i.bh = getelementptr i8, ptr %.sroa.021.068107, i64 16
  %.sroa.021.0.val = load i64, ptr %i.bh, align 8, !noundef !14 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 16
  %.val = load i64, ptr %i.bi, align 8, !noundef !14 ; 2 uses
  %i.bj = icmp ult i64 %.sroa.021.0.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp samesign ult i64 %.val, %.sroa.021.0.val
  br i1 %i.bl, label %.lr.ph.i.i, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !alias.scope !134746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134754)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i31)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i31, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !noalias !134754
  %.sroa.434.0..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 40
  %.sroa.434.0.copyload.i.i35 = load i64, ptr %.sroa.434.0..sroa_idx.i.i34, align 8, !alias.scope !134756, !noalias !134754 ; 3 uses
  %i.bn = mul i64 %.sroa.14.069106, 24
  %i.bo = getelementptr i8, ptr %.sroa.0.070105, i64 %i.bn ; 3 uses
  %.sroa.13.041.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 16
  %.val1.i20.i.i37 = load i64, ptr %i.bp, align 8, !alias.scope !134757, !noalias !134758, !noundef !14 ; 4 uses
  %i.bq = icmp ult i64 %.val1.i20.i.i37, 288230376151711744
  tail call void @llvm.assume(i1 %i.bq)
  br label %bb.g

.preheader.i.i43:                                 ; preds = %bb.g
  %i.br = icmp eq ptr %.sroa.13.0.i.i42, %i.bo
  br i1 %i.br, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h705dc5fa8e745b5cE.exit.i, label %.lr.ph50.i.i44

.lr.ph50.i.i44:                                   ; preds = %.preheader.i.i43, %.lr.ph50.i.i44
  %.sroa.021.149.i.i45 = phi ptr [ %.sroa.13.148.i.i46, %.lr.ph50.i.i44 ], [ %.sroa.13.044.i.i38, %.preheader.i.i43 ]
  %.sroa.13.148.i.i46 = phi ptr [ %i.by, %.lr.ph50.i.i44 ], [ %.sroa.13.0.i.i42, %.preheader.i.i43 ] ; 5 uses
  %.sroa.23.147.i.i47 = phi i64 [ %i.bx, %.lr.ph50.i.i44 ], [ %i.ce, %.preheader.i.i43 ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.sroa.13.148.i.i46, i64 16
  %.val.i.i.i48 = load i64, ptr %i.bs, align 8, !alias.scope !134756, !noalias !134761, !noundef !14 ; 2 uses
  %i.bt = icmp ult i64 %.val.i.i.i48, 288230376151711744
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp samesign uge i64 %.val.i.i.i48, %.val1.i20.i.i37
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.23.147.i.i47 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.149.i.i45, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !alias.scope !134756, !noalias !134761
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.148.i.i46, i64 24, i1 false), !alias.scope !134756, !noalias !134761
  %i.bw = zext i1 %i.bu to i64
  %i.bx = add i64 %.sroa.23.147.i.i47, %i.bw      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.13.148.i.i46, i64 24 ; 2 uses
  %6 = icmp eq ptr %i.by, %i.bo
  br i1 %6, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h705dc5fa8e745b5cE.exit.i, label %.lr.ph50.i.i44

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i33
  %.sroa.13.044.i.i38 = phi ptr [ %.sroa.13.041.i.i36, %.lr.ph.i.i33 ], [ %.sroa.13.0.i.i42, %bb.g ] ; 5 uses
  %.sroa.021.043.i.i39 = phi ptr [ %i.bm, %.lr.ph.i.i33 ], [ %.sroa.13.044.i.i38, %bb.g ] ; 2 uses
  %.sroa.23.042.i.i40 = phi i64 [ 0, %.lr.ph.i.i33 ], [ %i.ce, %bb.g ] ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.021.043.i.i39, i64 40
  %.val.i19.i.i41 = load i64, ptr %i.bz, align 8, !alias.scope !134756, !noalias !134764, !noundef !14 ; 2 uses
  %i.ca = icmp ult i64 %.val.i19.i.i41, 288230376151711744
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign uge i64 %.val.i19.i.i41, %.val1.i20.i.i37
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.23.042.i.i40 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.043.i.i39, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !alias.scope !134756, !noalias !134764
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.044.i.i38, i64 24, i1 false), !alias.scope !134756, !noalias !134764
  %i.cd = zext i1 %i.cb to i64
  %i.ce = add i64 %.sroa.23.042.i.i40, %i.cd      ; 3 uses
  %.sroa.13.0.i.i42 = getelementptr inbounds nuw i8, ptr %.sroa.13.044.i.i38, i64 24 ; 4 uses
  %i.cf = icmp ult ptr %.sroa.13.0.i.i42, %i.bo
  br i1 %i.cf, label %bb.g, label %.preheader.i.i43

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h705dc5fa8e745b5cE.exit.i: ; preds = %.lr.ph50.i.i44, %.preheader.i.i43
  %.sroa.23.1.lcssa.i.i49 = phi i64 [ %i.ce, %.preheader.i.i43 ], [ %i.bx, %.lr.ph50.i.i44 ] ; 2 uses
  %.sroa.021.1.lcssa.i.i50 = phi ptr [ %.sroa.13.044.i.i38, %.preheader.i.i43 ], [ %.sroa.13.148.i.i46, %.lr.ph50.i.i44 ]
  %i.cg = icmp ult i64 %.sroa.434.0.copyload.i.i35, 288230376151711744
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp samesign uge i64 %.sroa.434.0.copyload.i.i35, %.val1.i20.i.i37
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.23.1.lcssa.i.i49 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.1.lcssa.i.i50, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !alias.scope !134756, !noalias !134765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i31, i64 16, i1 false), !noalias !134765
  %.sroa.4.0..sroa_idx31.i.i51 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.434.0.copyload.i.i35, ptr %.sroa.4.0..sroa_idx31.i.i51, align 8, !alias.scope !134756, !noalias !134765
  %i.cj = zext i1 %i.ch to i64
  %i.ck = add i64 %.sroa.23.1.lcssa.i.i49, %i.cj  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i31)
  %.not5.i52 = icmp ult i64 %i.ck, %.sroa.14.069106
  br i1 %.not5.i52, label %_ZN4core5slice4sort8unstable9quicksort9partition17hf86a7e6444dd38f3E.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h705dc5fa8e745b5cE.exit.i
  tail call void @llvm.trap()
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17hf86a7e6444dd38f3E.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h705dc5fa8e745b5cE.exit.i
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.070105, i64 %i.ck ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !alias.scope !134768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = add nuw i64 %i.ck, 1                    ; 2 uses
  %i.cn = sub nuw i64 %.sroa.14.069106, %i.cm
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.070105, i64 %i.cm
  br label %.backedge

.backedge:                                        ; preds = %_ZN4core5slice4sort8unstable9quicksort9partition17hf86a7e6444dd38f3E.exit, %_ZN4core5slice4sort8unstable9quicksort9partition17hd06849a0d8c0183cE.exit
  %.sroa.021.0.be = phi ptr [ %i.bc, %_ZN4core5slice4sort8unstable9quicksort9partition17hd06849a0d8c0183cE.exit ], [ null, %_ZN4core5slice4sort8unstable9quicksort9partition17hf86a7e6444dd38f3E.exit ]
  %.sroa.14.0.be = phi i64 [ %i.bf, %_ZN4core5slice4sort8unstable9quicksort9partition17hd06849a0d8c0183cE.exit ], [ %i.cn, %_ZN4core5slice4sort8unstable9quicksort9partition17hf86a7e6444dd38f3E.exit ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bd, %_ZN4core5slice4sort8unstable9quicksort9partition17hd06849a0d8c0183cE.exit ], [ %i.co, %_ZN4core5slice4sort8unstable9quicksort9partition17hf86a7e6444dd38f3E.exit ] ; 3 uses
  %i.cp = icmp ult i64 %.sroa.14.0.be, 33
  br i1 %i.cp, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hbb1abb42f8f8ea8bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [768 x i8], align 8               ; 15 uses
  %i.f = icmp ult i64 %1, 33
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph122

.lr.ph:                                           ; preds = %.backedge
  %i.h = icmp eq i32 %i.bx, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph122

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.14.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.14.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !134771
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134777)
  %i.i = icmp samesign ult i64 %.sroa.14.0.lcssa, 2
  br i1 %i.i, label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17hff19179305e2ea22E.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = lshr i64 %.sroa.14.0.lcssa, 1            ; 9 uses
  %i.k = icmp samesign ugt i64 %.sroa.14.0.lcssa, 15
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i64 %.sroa.14.0.lcssa, 7
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.14.0.lcssa ; 5 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef nonnull readonly align 8 %.sroa.0.0.lcssa, ptr noundef nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef readonly %i.p, ptr noundef %i.q)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha6b960107027bf47E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef 8, ptr noundef nonnull align 8 %i.e), !noalias !134779
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef nonnull readonly %i.r, ptr noundef nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef readonly %i.u, ptr noundef %i.v)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha6b960107027bf47E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef 8, ptr noundef nonnull %i.s), !noalias !134779
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.e)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !134780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !alias.scope !134780
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.d ], [ 4, %bb.e ], [ 1, %bb.f ] ; 6 uses
  %i.w = sub nsw i64 %.sroa.14.0.lcssa, %i.j      ; 2 uses
  %i.x = icmp samesign ult i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i, %bb.g
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 4 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i.i, %i.w
  br i1 %i.aa, label %.lr.ph.preheader.1.i.i, label %.loopexit.1.i.i

.lr.ph.preheader.1.i.i:                           ; preds = %.loopexit.i.i
  %.sroa.08.14.1.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i, %.lr.ph.preheader.1.i.i
  %.sroa.08.16.1.i.i = phi i64 [ %.sroa.08.1.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i ], [ %.sroa.08.14.1.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %.sroa.08.05.1.i.i = phi i64 [ %.sroa.08.16.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.08.05.1.i.i
  %.idx138 = shl nuw nsw i64 %.sroa.08.05.1.i.i, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx138 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !134780
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %.val9.i.1.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  %.val10.i.1.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.1.i.i = load ptr, ptr %.val9.i.1.i.i, align 8, !noalias !134781, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val9.i.1.i.i, i64 8
  %.val1.i.i.i.1.i.i = load i64, ptr %i.ae, align 8, !noalias !134781, !noundef !14 ; 4 uses
  %.val2.i.i.i.1.i.i = load ptr, ptr %.val10.i.1.i.i, align 8, !noalias !134781, !nonnull !14, !align !584, !noundef !14
  %i.af = getelementptr i8, ptr %.val10.i.1.i.i, i64 8
  %.val3.i.i.i.1.i.i = load i64, ptr %i.af, align 8, !noalias !134781, !noundef !14 ; 2 uses
  %i.ag = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i.i.1.i.i
  %..i.i.i.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i.i.1.i.i)
  %i.ah = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.1.i.i, i64 %..i.i.i.i.i.i.1.i.i), !alias.scope !134782, !noalias !134781 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %spec.store.select.i.i.i.i.i.i.1.i.i = select i1 %i.aj, i64 %i.ag, i64 %i.ai
  %i.ak = icmp slt i64 %spec.store.select.i.i.i.i.i.i.1.i.i, 0
  br i1 %i.ak, label %bb.h, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i

bb.h:                                             ; preds = %.lr.ph.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !134777, !noalias !134779
  %i.an = icmp eq i64 %.sroa.08.05.1.i.i, 1
  br i1 %i.an, label %._crit_edge134, label %.lr.ph133

bb.i:                                             ; preds = %.lr.ph133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.1.i.i131, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !134777, !noalias !134779
  %i.ao = icmp eq ptr %i.ap, %i.z
  br i1 %i.ao, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.h, %bb.i
  %.sroa.0.0.i29.1.i.i131 = phi ptr [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.i29.1.i.i131, i64 -16 ; 4 uses
  %.val8.i.1.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i13.i.1.i.i = load ptr, ptr %.val8.i.1.i.i, align 8, !noalias !134781, !nonnull !14, !align !584, !noundef !14
  %i.aq = getelementptr i8, ptr %.val8.i.1.i.i, i64 8
  %.val3.i.i14.i.1.i.i = load i64, ptr %i.aq, align 8, !noalias !134781, !noundef !14 ; 2 uses
  %i.ar = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i14.i.1.i.i
  %..i.i.i.i.i15.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i14.i.1.i.i)
  %i.as = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i13.i.1.i.i, i64 %..i.i.i.i.i15.i.1.i.i), !alias.scope !134789, !noalias !134781 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %spec.store.select.i.i.i.i.i16.i.1.i.i = select i1 %i.au, i64 %i.ar, i64 %i.at
  %i.av = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i.i, 0
  br i1 %i.av, label %bb.i, label %._crit_edge134

._crit_edge134:                                   ; preds = %bb.i, %.lr.ph133, %bb.h
  %.sroa.0.0.i29.lcssa.1.i.i = phi ptr [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ %.sroa.0.0.i29.1.i.i131, %.lr.ph133 ] ; 2 uses
  store ptr %.val9.i.1.i.i, ptr %.sroa.0.0.i29.lcssa.1.i.i, align 8, !alias.scope !134777, !noalias !134796
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.1.i.i, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !134777, !noalias !134796
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i: ; preds = %._crit_edge134, %.lr.ph.1.i.i
  %i.aw = icmp ult i64 %.sroa.08.16.1.i.i, %i.w   ; 2 uses
  %i.ax = zext i1 %i.aw to i64
  %.sroa.08.1.1.i.i = add nuw i64 %.sroa.08.16.1.i.i, %i.ax
  br i1 %i.aw, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.loopexit.1.i.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha6b960107027bf47E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 33) %.sroa.14.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17hff19179305e2ea22E.exit unwind label %bb.j

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.sroa.08.14.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %.loopexit.1.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = shl nuw nsw i64 %.sroa.14.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.e, i64 %i.az, i1 false), !alias.scope !134780, !noalias !134801
  resume { ptr, i32 } %i.ay

.lr.ph.i.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.08.16.i.i = phi i64 [ %.sroa.08.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i ], [ %.sroa.08.14.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.08.05.i.i = phi i64 [ %.sroa.08.16.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.08.05.i.i
  %.idx = shl nuw nsw i64 %.sroa.08.05.i.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !134780
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16 ; 3 uses
  %.val9.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort8unstable9quicksort9quicksort17hdfd3a085865c7570E:bb.a
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp eq i32 %i.fl, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i = select i1 %i.fn, i64 %i.fk, i64 %i.fm
  %i.fo = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i.i.i, -1
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.sroa.27.169.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.043.171.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 16, i1 false), !alias.scope !135097, !noalias !135100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.170.i.i, i64 16, i1 false), !alias.scope !135097, !noalias !135100
  %i.fq = zext i1 %i.fo to i64
  %i.fr = add i64 %.sroa.27.169.i.i, %i.fq        ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.15.170.i.i, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fe
  br i1 %i.ft, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h0829051d30995f57E.exit.i, label %.lr.ph72.i.i

.lr.ph.i.i47:                                     ; preds = %bb.t, %.lr.ph.i.i47
  %.sroa.15.066.i.i48 = phi ptr [ %.sroa.15.0.i.i49, %.lr.ph.i.i47 ], [ %.sroa.15.063.i.i, %bb.t ] ; 3 uses
  %.sroa.043.065.i.i = phi ptr [ %i.gd, %.lr.ph.i.i47 ], [ %i.fb, %bb.t ] ; 3 uses
  %.sroa.27.064.i.i = phi i64 [ %i.gm, %.lr.ph.i.i47 ], [ 0, %bb.t ] ; 2 uses
  %.val.i27.i.i = load ptr, ptr %.sroa.15.066.i.i48, align 8, !alias.scope !135097, !noalias !135111, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i.i.i31.i.i = load ptr, ptr %.val.i27.i.i, align 8, !noalias !135114, !nonnull !14, !align !584, !noundef !14
  %i.fu = getelementptr i8, ptr %.val.i27.i.i, i64 8
  %.val3.i.i.i.i32.i.i = load i64, ptr %i.fu, align 8, !noalias !135114, !noundef !14 ; 2 uses
  %i.fv = sub i64 %.val1.i.i.i.i30.i.i, %.val3.i.i.i.i32.i.i
  %..i.i.i.i.i.i.i33.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i30.i.i, i64 %.val3.i.i.i.i32.i.i)
  %i.fw = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i21.i.pre8.pre.i, ptr nonnull readonly align 1 %.val2.i.i.i.i31.i.i, i64 %..i.i.i.i.i.i.i33.i.i), !alias.scope !135115, !noalias !135114 ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp eq i32 %i.fw, 0
  %spec.store.select.i.i.i.i.i.i.i34.i.i = select i1 %i.fy, i64 %i.fv, i64 %i.fx
  %i.fz = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i34.i.i, -1
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.sroa.27.064.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.043.065.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false), !alias.scope !135097, !noalias !135111
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.066.i.i48, i64 16, i1 false), !alias.scope !135097, !noalias !135111
  %i.gb = zext i1 %i.fz to i64
  %i.gc = add i64 %.sroa.27.064.i.i, %i.gb        ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.043.065.i.i, i64 32 ; 4 uses
  %.val.i35.i.i = load ptr, ptr %i.gd, align 8, !alias.scope !135097, !noalias !135122, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i.i.i39.i.i = load ptr, ptr %.val.i35.i.i, align 8, !noalias !135125, !nonnull !14, !align !584, !noundef !14
  %i.ge = getelementptr i8, ptr %.val.i35.i.i, i64 8
  %.val3.i.i.i.i40.i.i = load i64, ptr %i.ge, align 8, !noalias !135125, !noundef !14 ; 2 uses
  %i.gf = sub i64 %.val1.i.i.i.i30.i.i, %.val3.i.i.i.i40.i.i
  %..i.i.i.i.i.i.i41.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i30.i.i, i64 %.val3.i.i.i.i40.i.i)
  %i.gg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i21.i.pre8.pre.i, ptr nonnull readonly align 1 %.val2.i.i.i.i39.i.i, i64 %..i.i.i.i.i.i.i41.i.i), !alias.scope !135126, !noalias !135125 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp eq i32 %i.gg, 0
  %spec.store.select.i.i.i.i.i.i.i42.i.i = select i1 %i.gi, i64 %i.gf, i64 %i.gh
  %i.gj = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i42.i.i, -1
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.gc ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.066.i.i48, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !alias.scope !135097, !noalias !135122
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false), !alias.scope !135097, !noalias !135122
  %i.gl = zext i1 %i.gj to i64
  %i.gm = add i64 %i.gc, %i.gl                    ; 2 uses
  %.sroa.15.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.043.065.i.i, i64 48 ; 3 uses
  %i.gn = icmp ult ptr %.sroa.15.0.i.i49, %i.ff
  br i1 %i.gn, label %.lr.ph.i.i47, label %.preheader.i.i39

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h0829051d30995f57E.exit.i: ; preds = %.lr.ph72.i.i, %.preheader.i.i39
  %.sroa.27.1.lcssa.i.i44 = phi i64 [ %.sroa.27.0.lcssa.i.i40, %.preheader.i.i39 ], [ %i.fr, %.lr.ph72.i.i ] ; 2 uses
  %.sroa.043.1.lcssa.i.i = phi ptr [ %.sroa.043.0.lcssa.i.i, %.preheader.i.i39 ], [ %.sroa.15.170.i.i, %.lr.ph72.i.i ]
  %.val2.i.i.i.i23.i.i = load ptr, ptr %i.fd, align 8, !noalias !135133, !nonnull !14, !align !584, !noundef !14
  %i.go = getelementptr i8, ptr %i.fd, i64 8
  %.val3.i.i.i.i24.i.i = load i64, ptr %i.go, align 8, !noalias !135133, !noundef !14 ; 2 uses
  %i.gp = sub i64 %.val1.i.i.i.i30.i.i, %.val3.i.i.i.i24.i.i
  %..i.i.i.i.i.i.i25.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i30.i.i, i64 %.val3.i.i.i.i24.i.i)
  %i.gq = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i21.i.pre8.pre.i, ptr nonnull readonly align 1 %.val2.i.i.i.i23.i.i, i64 %..i.i.i.i.i.i.i25.i.i), !alias.scope !135136, !noalias !135133 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp eq i32 %i.gq, 0
  %spec.store.select.i.i.i.i.i.i.i26.i.i = select i1 %i.gs, i64 %i.gp, i64 %i.gr
  %i.gt = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i26.i.i, -1
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.sroa.27.1.lcssa.i.i44 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.043.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false), !alias.scope !135097, !noalias !135143
  store <2 x ptr> %i.fc, ptr %i.gu, align 8, !alias.scope !135097, !noalias !135143
  %i.gv = zext i1 %i.gt to i64
  %i.gw = add i64 %.sroa.27.1.lcssa.i.i44, %i.gv  ; 3 uses
  %.not5.i46 = icmp ult i64 %i.gw, %.sroa.14.068119
  br i1 %.not5.i46, label %_ZN4core5slice4sort8unstable9quicksort9partition17h5e864ef319b4e0faE.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h0829051d30995f57E.exit.i
  tail call void @llvm.trap()
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17h5e864ef319b4e0faE.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h0829051d30995f57E.exit.i
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.069118, i64 %i.gw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !alias.scope !135144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gy = add nuw i64 %i.gw, 1                    ; 2 uses
  %i.gz = sub nuw i64 %.sroa.14.068119, %i.gy
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.069118, i64 %i.gy
  br label %.backedge

.backedge:                                        ; preds = %_ZN4core5slice4sort8unstable9quicksort9partition17h5e864ef319b4e0faE.exit, %_ZN4core5slice4sort8unstable9quicksort9partition17h48c9a9af7f395095E.exit
  %.sroa.021.0.be = phi ptr [ %i.ep, %_ZN4core5slice4sort8unstable9quicksort9partition17h48c9a9af7f395095E.exit ], [ null, %_ZN4core5slice4sort8unstable9quicksort9partition17h5e864ef319b4e0faE.exit ]
  %.sroa.14.0.be = phi i64 [ %i.es, %_ZN4core5slice4sort8unstable9quicksort9partition17h48c9a9af7f395095E.exit ], [ %i.gz, %_ZN4core5slice4sort8unstable9quicksort9partition17h5e864ef319b4e0faE.exit ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.eq, %_ZN4core5slice4sort8unstable9quicksort9partition17h48c9a9af7f395095E.exit ], [ %i.ha, %_ZN4core5slice4sort8unstable9quicksort9partition17h5e864ef319b4e0faE.exit ] ; 3 uses
  %i.hb = icmp ult i64 %.sroa.14.0.be, 33
  br i1 %i.hb, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17he6a4d0510e560cbaE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.i.i31 = alloca [16 x i8], align 8      ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = icmp ult i64 %1, 33
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph109

.lr.ph:                                           ; preds = %.backedge
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph109

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.14.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.14.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort18small_sort_general17h352a1747a6df1ef0E(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.14.0.lcssa)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.070.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.14.069.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.14.0.be, %.lr.ph ]
  tail call void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h4a64d60491eedfcfE(ptr noalias noundef nonnull align 8 %.sroa.0.070.lcssa, i64 noundef %.sroa.14.069.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.c

.lr.ph109:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.024.067108 = phi i32 [ %i.h, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.021.068107 = phi ptr [ %.sroa.021.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.14.069106 = phi i64 [ %.sroa.14.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.070105 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 30 uses
  %i.h = add nsw i32 %.sroa.024.067108, -1        ; 3 uses
  %i.i = lshr i64 %.sroa.14.069106, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.i, 96
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.i, 168
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 %.idx2.i ; 3 uses
  %i.l = icmp ult i64 %.sroa.14.069106, 64
  br i1 %i.l, label %_ZN4core5slice4sort6shared5pivot7median317h76073b0c0e9029aaE.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph109
  %i.m = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h82fda932e1d33f2eE(ptr noundef nonnull readonly align 8 %.sroa.0.070105, ptr noundef readonly %i.j, ptr noundef readonly %i.k, i64 noundef %i.i)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h82d47ff8b6aa3173E.exit

_ZN4core5slice4sort6shared5pivot7median317h76073b0c0e9029aaE.exit.i: ; preds = %.lr.ph109
  %i.n = getelementptr i8, ptr %.sroa.0.070105, i64 16
  %.val6.i = load i64, ptr %i.n, align 8, !alias.scope !135147, !noundef !14 ; 3 uses
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %.val7.i = load i64, ptr %i.o, align 8, !alias.scope !135147, !noundef !14 ; 3 uses
  %i.p = icmp ult i64 %.val6.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i64 %.val7.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp samesign ult i64 %.val7.i, %.val6.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %.val5.i = load i64, ptr %i.s, align 8, !alias.scope !135147, !noundef !14 ; 3 uses
  %i.t = icmp ult i64 %.val5.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ult i64 %.val5.i, %.val6.i
  %i.v = xor i1 %i.r, %i.u
  %i.w = icmp samesign ult i64 %.val5.i, %.val7.i
  %i.x = xor i1 %i.r, %i.w
  %..i.i = select i1 %i.x, ptr %i.k, ptr %i.j
  %.sroa.0.0.i.i = select i1 %i.v, ptr %.sroa.0.070105, ptr %..i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h82d47ff8b6aa3173E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h82d47ff8b6aa3173E.exit: ; preds = %bb.b, %_ZN4core5slice4sort6shared5pivot7median317h76073b0c0e9029aaE.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317h76073b0c0e9029aaE.exit.i ], [ %i.m, %bb.b ]
  %i.y = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.z = ptrtoint ptr %.sroa.0.070105 to i64
  %i.aa = sub nuw i64 %i.y, %i.z                  ; 3 uses
  %.sroa.0.0.i = udiv exact i64 %i.aa, 24
  %i.ab = icmp ult i64 %.sroa.0.0.i, %.sroa.14.069106
  tail call void @llvm.assume(i1 %i.ab)
  %.not = icmp eq ptr %.sroa.021.068107, null
  br i1 %.not, label %.lr.ph.i.i, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

.lr.ph.i.i:                                       ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h82d47ff8b6aa3173E.exit, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 %i.aa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !alias.scope !135150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135158)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !noalias !135158
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 40
  %.sroa.434.0.copyload.i.i = load i64, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !alias.scope !135160, !noalias !135158 ; 3 uses
  %i.ae = mul i64 %.sroa.14.069106, 24
  %i.af = getelementptr i8, ptr %.sroa.0.070105, i64 %i.ae ; 3 uses
  %.sroa.13.041.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 16
  %.val1.i20.i.i = load i64, ptr %i.ag, align 8, !alias.scope !135161, !noalias !135162, !noundef !14 ; 4 uses
  %i.ah = icmp ult i64 %.val1.i20.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah)
  br label %bb.d

.preheader.i.i:                                   ; preds = %bb.d
  %i.ai = icmp eq ptr %.sroa.13.0.i.i, %i.af
  br i1 %i.ai, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h63491725dcbed6abE.exit.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph50.i.i
  %.sroa.021.149.i.i = phi ptr [ %.sroa.13.148.i.i, %.lr.ph50.i.i ], [ %.sroa.13.044.i.i, %.preheader.i.i ]
  %.sroa.13.148.i.i = phi ptr [ %i.ap, %.lr.ph50.i.i ], [ %.sroa.13.0.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.23.147.i.i = phi i64 [ %i.ao, %.lr.ph50.i.i ], [ %i.av, %.preheader.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.sroa.13.148.i.i, i64 16
  %.val.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !135160, !noalias !135165, !noundef !14 ; 2 uses
  %i.ak = icmp ult i64 %.val.i.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ult i64 %.val1.i20.i.i, %.val.i.i.i
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.23.147.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.149.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !alias.scope !135160, !noalias !135165
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.148.i.i, i64 24, i1 false), !alias.scope !135160, !noalias !135165
  %i.an = zext i1 %i.al to i64
  %i.ao = add i64 %.sroa.23.147.i.i, %i.an        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.13.148.i.i, i64 24 ; 2 uses
  %5 = icmp eq ptr %i.ap, %i.af
  br i1 %5, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h63491725dcbed6abE.exit.i, label %.lr.ph50.i.i

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.044.i.i = phi ptr [ %.sroa.13.041.i.i, %.lr.ph.i.i ], [ %.sroa.13.0.i.i, %bb.d ] ; 5 uses
  %.sroa.021.043.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.sroa.13.044.i.i, %bb.d ] ; 2 uses
  %.sroa.23.042.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.av, %bb.d ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.021.043.i.i, i64 40
  %.val.i19.i.i = load i64, ptr %i.aq, align 8, !alias.scope !135160, !noalias !135168, !noundef !14 ; 2 uses
  %i.ar = icmp ult i64 %.val.i19.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ult i64 %.val1.i20.i.i, %.val.i19.i.i
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.23.042.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.043.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !alias.scope !135160, !noalias !135168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.044.i.i, i64 24, i1 false), !alias.scope !135160, !noalias !135168
  %i.au = zext i1 %i.as to i64
  %i.av = add i64 %.sroa.23.042.i.i, %i.au        ; 3 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.044.i.i, i64 24 ; 4 uses
  %i.aw = icmp ult ptr %.sroa.13.0.i.i, %i.af
  br i1 %i.aw, label %bb.d, label %.preheader.i.i

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h63491725dcbed6abE.exit.i: ; preds = %.lr.ph50.i.i, %.preheader.i.i
  %.sroa.23.1.lcssa.i.i = phi i64 [ %i.av, %.preheader.i.i ], [ %i.ao, %.lr.ph50.i.i ] ; 2 uses
  %.sroa.021.1.lcssa.i.i = phi ptr [ %.sroa.13.044.i.i, %.preheader.i.i ], [ %.sroa.13.148.i.i, %.lr.ph50.i.i ]
  %i.ax = icmp ult i64 %.sroa.434.0.copyload.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ult i64 %.val1.i20.i.i, %.sroa.434.0.copyload.i.i
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.23.1.lcssa.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !alias.scope !135160, !noalias !135169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !noalias !135169
  %.sroa.4.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.434.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx31.i.i, align 8, !alias.scope !135160, !noalias !135169
  %i.ba = zext i1 %i.ay to i64
  %i.bb = add i64 %.sroa.23.1.lcssa.i.i, %i.ba    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.not5.i = icmp ult i64 %i.bb, %.sroa.14.069106
  br i1 %.not5.i, label %_ZN4core5slice4sort8unstable9quicksort9partition17h16f2a8b2abedfe3bE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h63491725dcbed6abE.exit.i
  tail call void @llvm.trap()
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17h16f2a8b2abedfe3bE.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h63491725dcbed6abE.exit.i
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.070105, i64 %i.bb ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !alias.scope !135172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = xor i64 %i.bb, -1
  %i.bf = add i64 %.sroa.14.069106, %i.be
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17he6a4d0510e560cbaE(ptr noalias noundef nonnull align 8 %.sroa.0.070105, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.021.068107, i32 noundef %i.h, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h82d47ff8b6aa3173E.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 %i.aa ; 3 uses
  %i.bh = getelementptr i8, ptr %.sroa.021.068107, i64 16
  %.sroa.021.0.val = load i64, ptr %i.bh, align 8, !noundef !14 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 16
  %.val = load i64, ptr %i.bi, align 8, !noundef !14 ; 2 uses
  %i.bj = icmp ult i64 %.sroa.021.0.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp samesign ult i64 %.val, %.sroa.021.0.val
  br i1 %i.bl, label %.lr.ph.i.i, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !alias.scope !135175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135183)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i31)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i31, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !noalias !135183
  %.sroa.434.0..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 40
  %.sroa.434.0.copyload.i.i35 = load i64, ptr %.sroa.434.0..sroa_idx.i.i34, align 8, !alias.scope !135185, !noalias !135183 ; 3 uses
  %i.bn = mul i64 %.sroa.14.069106, 24
  %i.bo = getelementptr i8, ptr %.sroa.0.070105, i64 %i.bn ; 3 uses
  %.sroa.13.041.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.070105, i64 16
  %.val1.i20.i.i37 = load i64, ptr %i.bp, align 8, !alias.scope !135186, !noalias !135187, !noundef !14 ; 4 uses
  %i.bq = icmp ult i64 %.val1.i20.i.i37, 288230376151711744
  tail call void @llvm.assume(i1 %i.bq)
  br label %bb.g

.preheader.i.i43:                                 ; preds = %bb.g
  %i.br = icmp eq ptr %.sroa.13.0.i.i42, %i.bo
  br i1 %i.br, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17hdc6cc39734ecf50dE.exit.i, label %.lr.ph50.i.i44

.lr.ph50.i.i44:                                   ; preds = %.preheader.i.i43, %.lr.ph50.i.i44
  %.sroa.021.149.i.i45 = phi ptr [ %.sroa.13.148.i.i46, %.lr.ph50.i.i44 ], [ %.sroa.13.044.i.i38, %.preheader.i.i43 ]
  %.sroa.13.148.i.i46 = phi ptr [ %i.by, %.lr.ph50.i.i44 ], [ %.sroa.13.0.i.i42, %.preheader.i.i43 ] ; 5 uses
  %.sroa.23.147.i.i47 = phi i64 [ %i.bx, %.lr.ph50.i.i44 ], [ %i.ce, %.preheader.i.i43 ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.sroa.13.148.i.i46, i64 16
  %.val.i.i.i48 = load i64, ptr %i.bs, align 8, !alias.scope !135185, !noalias !135190, !noundef !14 ; 2 uses
  %i.bt = icmp ult i64 %.val.i.i.i48, 288230376151711744
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp samesign uge i64 %.val.i.i.i48, %.val1.i20.i.i37
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.23.147.i.i47 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.149.i.i45, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !alias.scope !135185, !noalias !135190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.148.i.i46, i64 24, i1 false), !alias.scope !135185, !noalias !135190
  %i.bw = zext i1 %i.bu to i64
  %i.bx = add i64 %.sroa.23.147.i.i47, %i.bw      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.13.148.i.i46, i64 24 ; 2 uses
  %6 = icmp eq ptr %i.by, %i.bo
  br i1 %6, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17hdc6cc39734ecf50dE.exit.i, label %.lr.ph50.i.i44

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i33
  %.sroa.13.044.i.i38 = phi ptr [ %.sroa.13.041.i.i36, %.lr.ph.i.i33 ], [ %.sroa.13.0.i.i42, %bb.g ] ; 5 uses
  %.sroa.021.043.i.i39 = phi ptr [ %i.bm, %.lr.ph.i.i33 ], [ %.sroa.13.044.i.i38, %bb.g ] ; 2 uses
  %.sroa.23.042.i.i40 = phi i64 [ 0, %.lr.ph.i.i33 ], [ %i.ce, %bb.g ] ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.021.043.i.i39, i64 40
  %.val.i19.i.i41 = load i64, ptr %i.bz, align 8, !alias.scope !135185, !noalias !135193, !noundef !14 ; 2 uses
  %i.ca = icmp ult i64 %.val.i19.i.i41, 288230376151711744
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign uge i64 %.val.i19.i.i41, %.val1.i20.i.i37
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.23.042.i.i40 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.043.i.i39, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !alias.scope !135185, !noalias !135193
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.044.i.i38, i64 24, i1 false), !alias.scope !135185, !noalias !135193
  %i.cd = zext i1 %i.cb to i64
  %i.ce = add i64 %.sroa.23.042.i.i40, %i.cd      ; 3 uses
  %.sroa.13.0.i.i42 = getelementptr inbounds nuw i8, ptr %.sroa.13.044.i.i38, i64 24 ; 4 uses
  %i.cf = icmp ult ptr %.sroa.13.0.i.i42, %i.bo
  br i1 %i.cf, label %bb.g, label %.preheader.i.i43

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17hdc6cc39734ecf50dE.exit.i: ; preds = %.lr.ph50.i.i44, %.preheader.i.i43
  %.sroa.23.1.lcssa.i.i49 = phi i64 [ %i.ce, %.preheader.i.i43 ], [ %i.bx, %.lr.ph50.i.i44 ] ; 2 uses
  %.sroa.021.1.lcssa.i.i50 = phi ptr [ %.sroa.13.044.i.i38, %.preheader.i.i43 ], [ %.sroa.13.148.i.i46, %.lr.ph50.i.i44 ]
  %i.cg = icmp ult i64 %.sroa.434.0.copyload.i.i35, 288230376151711744
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp samesign uge i64 %.sroa.434.0.copyload.i.i35, %.val1.i20.i.i37
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.23.1.lcssa.i.i49 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.1.lcssa.i.i50, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !alias.scope !135185, !noalias !135194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i31, i64 16, i1 false), !noalias !135194
  %.sroa.4.0..sroa_idx31.i.i51 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.434.0.copyload.i.i35, ptr %.sroa.4.0..sroa_idx31.i.i51, align 8, !alias.scope !135185, !noalias !135194
  %i.cj = zext i1 %i.ch to i64
  %i.ck = add i64 %.sroa.23.1.lcssa.i.i49, %i.cj  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i31)
  %.not5.i52 = icmp ult i64 %i.ck, %.sroa.14.069106
  br i1 %.not5.i52, label %_ZN4core5slice4sort8unstable9quicksort9partition17haf72809c1c7f0728E.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17hdc6cc39734ecf50dE.exit.i
  tail call void @llvm.trap()
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17haf72809c1c7f0728E.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17hdc6cc39734ecf50dE.exit.i
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.070105, i64 %i.ck ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.070105, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !alias.scope !135197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = add nuw i64 %i.ck, 1                    ; 2 uses
  %i.cn = sub nuw i64 %.sroa.14.069106, %i.cm
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.070105, i64 %i.cm
  br label %.backedge

.backedge:                                        ; preds = %_ZN4core5slice4sort8unstable9quicksort9partition17haf72809c1c7f0728E.exit, %_ZN4core5slice4sort8unstable9quicksort9partition17h16f2a8b2abedfe3bE.exit
  %.sroa.021.0.be = phi ptr [ %i.bc, %_ZN4core5slice4sort8unstable9quicksort9partition17h16f2a8b2abedfe3bE.exit ], [ null, %_ZN4core5slice4sort8unstable9quicksort9partition17haf72809c1c7f0728E.exit ]
  %.sroa.14.0.be = phi i64 [ %i.bf, %_ZN4core5slice4sort8unstable9quicksort9partition17h16f2a8b2abedfe3bE.exit ], [ %i.cn, %_ZN4core5slice4sort8unstable9quicksort9partition17haf72809c1c7f0728E.exit ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bd, %_ZN4core5slice4sort8unstable9quicksort9partition17h16f2a8b2abedfe3bE.exit ], [ %i.co, %_ZN4core5slice4sort8unstable9quicksort9partition17haf72809c1c7f0728E.exit ] ; 3 uses
  %i.cp = icmp ult i64 %.sroa.14.0.be, 33
  br i1 %i.cp, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hed0a3bf753dbbd7dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = icmp ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph153

.lr.ph:                                           ; preds = %.backedge
  %i.d = icmp eq i32 %i.afd, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph153

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.14.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.14.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135200)
  %i.e = icmp samesign ult i64 %.sroa.14.0.lcssa, 2
  br i1 %i.e, label %_ZN4core5slice4sort6shared9smallsort18small_sort_network17hf352e7daac58cc36E.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !135200
  %i.f = lshr i64 %.sroa.14.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.14.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.14.0.lcssa, i64 %i.f
  %i.h = getelementptr [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.14.0.lcssa, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %.sroa.11.0.i = phi i64 [ %..i, %bb.b ], [ %i.i, %bb.j ] ; 5 uses
  %.sroa.01.0.i = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %i.h, %bb.j ] ; 46 uses
  %i.j = icmp ugt i64 %.sroa.11.0.i, 12
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %.sroa.11.0.i, 8
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 96 ; 7 uses
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %.sroa.01.0.i, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !14 ; 2 uses
  %i.o = icmp ult i64 %i.n, 288230376151711744
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !14 ; 2 uses
  %i.r = icmp ult i64 %i.q, 288230376151711744
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ult i64 %i.q, %i.n         ; 2 uses
  %i.t = select i1 %i.s, ptr %i.l, ptr %.sroa.01.0.i, !unpredictable !14
  %i.u = select i1 %i.s, ptr %.val1.i.i.i, ptr %.val.i.i.i ; 3 uses
  %i.v = load i64, ptr %i.t, align 8, !alias.scope !135203
  store i64 %i.v, ptr %.sroa.01.0.i, align 8, !alias.scope !135203
  store ptr %i.u, ptr %i.l, align 8, !alias.scope !135203
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 80 ; 15 uses
  %.val.i1.i.i = load ptr, ptr %i.x, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val1.i2.i.i = load ptr, ptr %i.w, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i1.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !14 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 288230376151711744
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i2.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !14 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 288230376151711744
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ult i64 %i.ac, %i.z       ; 2 uses
  %i.af = select i1 %i.ae, ptr %i.x, ptr %i.w, !unpredictable !14
  %i.ag = select i1 %i.ae, ptr %.val1.i2.i.i, ptr %.val.i1.i.i ; 3 uses
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !135203 ; 3 uses
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !135203
  store ptr %i.ag, ptr %i.x, align 8, !alias.scope !135203
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 16 ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 72 ; 17 uses
  %.val.i3.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val1.i4.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i3.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !14 ; 2 uses
  %i.am = icmp ult i64 %i.al, 288230376151711744
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %.val1.i4.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !14 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 288230376151711744
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp samesign ult i64 %i.ao, %i.al      ; 2 uses
  %i.ar = select i1 %i.aq, ptr %i.aj, ptr %i.ai, !unpredictable !14
  %i.as = select i1 %i.aq, ptr %.val1.i4.i.i, ptr %.val.i3.i.i ; 3 uses
  %i.at = load i64, ptr %i.ar, align 8, !alias.scope !135203 ; 3 uses
  store i64 %i.at, ptr %i.ai, align 8, !alias.scope !135203
  store ptr %i.as, ptr %i.aj, align 8, !alias.scope !135203
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 24 ; 18 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 56 ; 16 uses
  %.val.i5.i.i = load ptr, ptr %i.av, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val1.i6.i.i = load ptr, ptr %i.au, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i5.i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !14 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 288230376151711744
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i6.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !14 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 288230376151711744
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ult i64 %i.ba, %i.ax      ; 2 uses
  %i.bd = select i1 %i.bc, ptr %i.av, ptr %i.au, !unpredictable !14
  %i.be = select i1 %i.bc, ptr %.val1.i6.i.i, ptr %.val.i5.i.i ; 3 uses
  %i.bf = load i64, ptr %i.bd, align 8, !alias.scope !135203 ; 3 uses
  store i64 %i.bf, ptr %i.au, align 8, !alias.scope !135203
  store ptr %i.be, ptr %i.av, align 8, !alias.scope !135203
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 40 ; 18 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 88 ; 13 uses
  %.val.i7.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val1.i8.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i7.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !14 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 288230376151711744
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1.i8.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !14 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 288230376151711744
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp samesign ult i64 %i.bm, %i.bj      ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bh, ptr %i.bg, !unpredictable !14
  %i.bq = select i1 %i.bo, ptr %.val1.i8.i.i, ptr %.val.i7.i.i ; 3 uses
  %i.br = load i64, ptr %i.bp, align 8, !alias.scope !135203
  store i64 %i.br, ptr %i.bg, align 8, !alias.scope !135203
  store ptr %i.bq, ptr %i.bh, align 8, !alias.scope !135203
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 48 ; 19 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 64 ; 16 uses
  %.val.i9.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val1.i10.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !135203, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i9.i.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !14 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 288230376151711744
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i10.i.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noundef !14 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 288230376151711744
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp samesign ult i64 %i.by, %i.bv      ; 2 uses
  %i.cb = select i1 %i.ca, ptr %i.bt, ptr %i.bs, !unpredictable !14
  %i.cc = select i1 %i.ca, ptr %.val1.i10.i.i, ptr %.val.i9.i.i ; 3 uses
  %i.cd = load i64, ptr %i.cb, align 8, !alias.scope !135203 ; 3 uses
  store i64 %i.cd, ptr %i.bs, align 8, !alias.scope !135203
  store ptr %i.cc, ptr %i.bt, align 8, !alias.scope !135203
  %.val.i11.cast.i.i = inttoptr i64 %i.cd to ptr  ; 2 uses
  %i.ce = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i11.cast.i.i, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !14 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, 288230376151711744
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !14 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 288230376151711744
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ult i64 %i.cj, %i.cg      ; 2 uses
  %i.cm = select i1 %i.cl, ptr %i.ce, ptr %.val.i11.cast.i.i ; 3 uses
  %i.cn = select i1 %i.cl, i64 %i.cd, i64 %i.ah   ; 3 uses
  store i64 %i.cn, ptr %i.w, align 8, !alias.scope !135203
  store ptr %i.cm, ptr %i.bs, align 8, !alias.scope !135203
  %i.co = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.cp = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !14 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 288230376151711744
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !14 ; 2 uses
end_hunk_1
