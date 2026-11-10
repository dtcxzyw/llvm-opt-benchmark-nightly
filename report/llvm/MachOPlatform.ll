Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOPlatform?download=true
inline.NumInlined: 9432
inline.NumDeleted: 4632
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt6vectorIN4llvm3orc12MachOBuilderINS1_9MachO64LEEE16StringTableEntryESaIS5_EE17_M_default_appendEm:bb.a
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm3orc12MachOBuilderINS1_9MachO64LEEE16StringTableEntryEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm3orc12MachOBuilderINS1_9MachO64LEEE16StringTableEntryESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc27MachOBuilderLoadCommandBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc23MachOBuilderLoadCommandILNS_5MachO15LoadCommandTypeE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm3orc31MachOBuilderLoadCommandImplBaseILNS_5MachO15LoadCommandTypeE2EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !704
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvm3orc31MachOBuilderLoadCommandImplBaseILNS_5MachO15LoadCommandTypeE2EE5writeENS_15MutableArrayRefIcEEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <4 x i32>, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !105 ; 2 uses
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.618.0.copyload = load i32, ptr %.sroa.618.0..sroa_idx, align 4, !tbaa !105 ; 2 uses
  br i1 %4, label %bb.b, label %_ZN4llvm3orc16writeMachOStructINS_5MachO14symtab_commandEEEmNS_15MutableArrayRefIcEEmT_b.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.b)
  %i.d = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.5.0.copyload)
  %i.e = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.618.0.copyload)
  br label %_ZN4llvm3orc16writeMachOStructINS_5MachO14symtab_commandEEEmNS_15MutableArrayRefIcEEmT_b.exit

_ZN4llvm3orc16writeMachOStructINS_5MachO14symtab_commandEEEmNS_15MutableArrayRefIcEEmT_b.exit: ; preds = %bb.a, %bb.b
  %.sroa.12.0 = phi i32 [ %i.d, %bb.b ], [ %.sroa.5.0.copyload, %bb.a ]
  %.sroa.14.0 = phi i32 [ %i.e, %bb.b ], [ %.sroa.618.0.copyload, %bb.a ]
  %i.f = phi <4 x i32> [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 3 uses
  store <4 x i32> %i.f, ptr %i.g, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 1
  %i.h = add i64 %3, 24
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvm3orc12MachOBuilderINS0_9MachO64LEEE12writeSymbolsENS_15MutableArrayRefIcEEm(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr %1, i64 %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !696  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !697  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.sroa.063.082 = load ptr, ptr %i.i, align 8, !tbaa !579 ; 2 uses
  %.not7083 = icmp eq ptr %.sroa.063.082, %i.i
  br i1 %.not7083, label %._crit_edge, label %.lr.ph86

.loopexit78:                                      ; preds = %.lr.ph, %.lr.ph86
  %.131.lcssa = phi i64 [ %.03084, %.lr.ph86 ], [ %i.ac, %.lr.ph ] ; 2 uses
  %.sroa.063.0 = load ptr, ptr %.sroa.063.085, align 8, !tbaa !579 ; 2 uses
  %.not70 = icmp eq ptr %.sroa.063.0, %i.i
  br i1 %.not70, label %._crit_edge, label %.lr.ph86

._crit_edge:                                      ; preds = %.loopexit78, %bb.a
  %.030.lcssa = phi i64 [ %i.h, %bb.a ], [ %.131.lcssa, %.loopexit78 ]
  %i.j = icmp eq i64 %.030.lcssa, 0
  br i1 %i.j, label %.loopexit76, label %.preheader77

.preheader77:                                     ; preds = %._crit_edge
  %i.k = and i64 %3, 15
  %.not88 = icmp eq i64 %i.k, 0
  br i1 %.not88, label %._crit_edge91, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %.preheader77
  %scevgep = getelementptr i8, ptr %1, i64 %3
  %i.l = and i64 %3, 15
  %i.m = sub nuw nsw i64 16, %i.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 17) %i.m, i1 false), !tbaa !93
  %i.n = or i64 %3, 15
  %i.o = add i64 %i.n, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !681
  %.pre121 = load ptr, ptr %i.b, align 8, !tbaa !681
  br label %._crit_edge91

.lr.ph86:                                         ; preds = %bb.a, %.loopexit78
  %.sroa.063.085 = phi ptr [ %.sroa.063.0, %.loopexit78 ], [ %.sroa.063.082, %bb.a ] ; 3 uses
  %.03084 = phi i64 [ %.131.lcssa, %.loopexit78 ], [ %i.h, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.063.085, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !682  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.063.085, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !682  ; 2 uses
  %.not7579 = icmp eq ptr %i.q, %i.s
  br i1 %.not7579, label %.loopexit78, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph86, %.lr.ph
  %.13181 = phi i64 [ %i.ac, %.lr.ph ], [ %.03084, %.lr.ph86 ]
  %.sroa.059.080 = phi ptr [ %i.ad, %.lr.ph ], [ %i.q, %.lr.ph86 ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.059.080, align 8, !tbaa !684 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !696
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !697
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add i64 %i.ab, %.13181                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.059.080, i64 8 ; 2 uses
  %.not75 = icmp eq ptr %i.ad, %i.s
  br i1 %.not75, label %.loopexit78, label %.lr.ph

._crit_edge91:                                    ; preds = %.lr.ph90.preheader, %.preheader77
  %i.ae = phi ptr [ %i.c, %.preheader77 ], [ %.pre121, %.lr.ph90.preheader ] ; 3 uses
  %i.af = phi ptr [ %i.d, %.preheader77 ], [ %.pre, %.lr.ph90.preheader ] ; 9 uses
  %.029.lcssa = phi i64 [ %3, %.preheader77 ], [ %i.o, %.lr.ph90.preheader ] ; 7 uses
  %.not7193 = icmp eq ptr %i.af, %i.ae
  br i1 %.not7193, label %.preheader, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %._crit_edge91
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ae to i64
  %i.ai = add i64 %i.ah, -16
  %i.aj = sub i64 %i.ai, %i.ag                    ; 3 uses
  %i.ak = lshr i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 240
  br i1 %min.iters.check, label %.lr.ph97.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph97.preheader
  %i.am = getelementptr i8, ptr %1, i64 %.029.lcssa
  %i.an = and i64 %i.aj, -16                      ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 %.029.lcssa
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.an
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = getelementptr i8, ptr %i.af, i64 %i.an
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %bound0 = icmp ult ptr %i.am, %i.as
  %bound1 = icmp ult ptr %i.af, %i.aq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph97.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 2305843009213693950     ; 3 uses
  %i.at = shl i64 %n.vec, 4                       ; 2 uses
  %i.au = add i64 %.029.lcssa, %i.at              ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 4                       ; 3 uses
  %i.ax = add i64 %.029.lcssa, %i.aw              ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.aw
  %next.gep139 = getelementptr i8, ptr %i.ay, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !3195
  %wide.load140 = load <2 x i64>, ptr %next.gep139, align 8, !alias.scope !3195
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.ba = getelementptr i8, ptr %1, i64 %i.ax
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store <2 x i64> %wide.load, ptr %i.az, align 1, !alias.scope !3196, !noalias !3195
  store <2 x i64> %wide.load140, ptr %i.bb, align 1, !alias.scope !3196, !noalias !3195
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !3188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph97.preheader171

.lr.ph97.preheader171:                            ; preds = %vector.memcheck, %.lr.ph97.preheader, %middle.block
  %.195.ph = phi i64 [ %.029.lcssa, %vector.memcheck ], [ %.029.lcssa, %.lr.ph97.preheader ], [ %i.au, %middle.block ]
  %.sroa.055.094.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph97.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph97

.preheader:                                       ; preds = %.lr.ph97, %middle.block, %._crit_edge91
  %.1.lcssa = phi i64 [ %.029.lcssa, %._crit_edge91 ], [ %i.au, %middle.block ], [ %i.bf, %.lr.ph97 ] ; 2 uses
  %.sroa.049.0112 = load ptr, ptr %i.i, align 8, !tbaa !579 ; 2 uses
  %.not72113 = icmp eq ptr %.sroa.049.0112, %i.i
  br i1 %.not72113, label %.loopexit76, label %.lr.ph116

.lr.ph97:                                         ; preds = %.lr.ph97.preheader171, %.lr.ph97
  %.195 = phi i64 [ %i.bf, %.lr.ph97 ], [ %.195.ph, %.lr.ph97.preheader171 ] ; 2 uses
  %.sroa.055.094 = phi ptr [ %i.bg, %.lr.ph97 ], [ %.sroa.055.094.ph, %.lr.ph97.preheader171 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %.195
  %i.be = load <2 x i64>, ptr %.sroa.055.094, align 8
  store <2 x i64> %i.be, ptr %i.bd, align 1
  %i.bf = add i64 %.195, 16                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.055.094, i64 16 ; 2 uses
  %.not71 = icmp eq ptr %i.bg, %i.ae
  br i1 %.not71, label %.preheader, label %.lr.ph97, !llvm.loop !3189

.loopexit:                                        ; preds = %._crit_edge104, %.lr.ph116
  %.3.lcssa = phi i64 [ %.2114, %.lr.ph116 ], [ %.4.lcssa, %._crit_edge104 ] ; 2 uses
  %.sroa.049.0 = load ptr, ptr %.sroa.049.0115, align 8, !tbaa !579 ; 2 uses
  %.not72 = icmp eq ptr %.sroa.049.0, %i.i
  br i1 %.not72, label %.loopexit76, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader, %.loopexit
  %.sroa.049.0115 = phi ptr [ %.sroa.049.0, %.loopexit ], [ %.sroa.049.0112, %.preheader ] ; 3 uses
  %.2114 = phi i64 [ %.3.lcssa, %.loopexit ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.049.0115, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !682 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.049.0115, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !682 ; 2 uses
  %.not73106 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not73106, label %.loopexit, label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph116, %._crit_edge104
  %.3108 = phi i64 [ %.4.lcssa, %._crit_edge104 ], [ %.2114, %.lr.ph116 ] ; 7 uses
  %.sroa.045.0107 = phi ptr [ %i.cm, %._crit_edge104 ], [ %i.bi, %.lr.ph116 ] ; 2 uses
  %i.bl = load ptr, ptr %.sroa.045.0107, align 8, !tbaa !684 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !681 ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !681 ; 3 uses
  %.not7499 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not7499, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %.lr.ph110
  %i.bq = ptrtoaddr ptr %i.bp to i64
  %i.br = ptrtoaddr ptr %i.bn to i64
  %i.bs = add i64 %i.bq, -16
  %i.bt = sub i64 %i.bs, %i.br                    ; 3 uses
  %i.bu = lshr i64 %i.bt, 4
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.bt, 80
  br i1 %min.iters.check152, label %.lr.ph103.preheader170, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph103.preheader
  %i.bw = getelementptr i8, ptr %1, i64 %.3108
  %i.bx = and i64 %i.bt, -16                      ; 2 uses
  %4 = getelementptr i8, ptr %1, i64 %.3108
  %i.by = getelementptr i8, ptr %4, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = getelementptr i8, ptr %i.bn, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %bound0154 = icmp ult ptr %i.bw, %i.cb
  %bound1155 = icmp ult ptr %i.bn, %i.bz
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph103.preheader170, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck153
  %n.vec158 = and i64 %i.bv, 2305843009213693950  ; 3 uses
  %i.cc = shl i64 %n.vec158, 4                    ; 2 uses
  %i.cd = add i64 %.3108, %i.cc                   ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bn, i64 %i.cc
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next165, %vector.body159 ] ; 2 uses
  %i.cf = shl i64 %index160, 4                    ; 3 uses
  %i.cg = add i64 %.3108, %i.cf                   ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.bn, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bn, i64 %i.cf
  %next.gep162 = getelementptr i8, ptr %i.ch, i64 16
  %wide.load163 = load <2 x i64>, ptr %next.gep161, align 8, !alias.scope !3197
  %wide.load164 = load <2 x i64>, ptr %next.gep162, align 8, !alias.scope !3197
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.cj = getelementptr i8, ptr %1, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store <2 x i64> %wide.load163, ptr %i.ci, align 1, !alias.scope !3198, !noalias !3197
  store <2 x i64> %wide.load164, ptr %i.ck, align 1, !alias.scope !3198, !noalias !3197
  %index.next165 = add nuw i64 %index160, 2       ; 2 uses
  %i.cl = icmp eq i64 %index.next165, %n.vec158
  br i1 %i.cl, label %middle.block166, label %vector.body159, !llvm.loop !3193

middle.block166:                                  ; preds = %vector.body159
  %cmp.n167 = icmp eq i64 %i.bv, %n.vec158
  br i1 %cmp.n167, label %._crit_edge104, label %.lr.ph103.preheader170

.lr.ph103.preheader170:                           ; preds = %vector.memcheck153, %.lr.ph103.preheader, %middle.block166
  %.4101.ph = phi i64 [ %.3108, %vector.memcheck153 ], [ %.3108, %.lr.ph103.preheader ], [ %i.cd, %middle.block166 ]
  %.sroa.041.0100.ph = phi ptr [ %i.bn, %vector.memcheck153 ], [ %i.bn, %.lr.ph103.preheader ], [ %i.ce, %middle.block166 ]
  br label %.lr.ph103

._crit_edge104:                                   ; preds = %.lr.ph103, %middle.block166, %.lr.ph110
  %.4.lcssa = phi i64 [ %.3108, %.lr.ph110 ], [ %i.cd, %middle.block166 ], [ %i.cp, %.lr.ph103 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.045.0107, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.cm, %i.bk
  br i1 %.not73, label %.loopexit, label %.lr.ph110

.lr.ph103:                                        ; preds = %.lr.ph103.preheader170, %.lr.ph103
  %.4101 = phi i64 [ %i.cp, %.lr.ph103 ], [ %.4101.ph, %.lr.ph103.preheader170 ] ; 2 uses
  %.sroa.041.0100 = phi ptr [ %i.cq, %.lr.ph103 ], [ %.sroa.041.0100.ph, %.lr.ph103.preheader170 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %.4101
  %i.co = load <2 x i64>, ptr %.sroa.041.0100, align 8
  store <2 x i64> %i.co, ptr %i.cn, align 1
  %i.cp = add i64 %.4101, 16                      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.041.0100, i64 16 ; 2 uses
  %.not74 = icmp eq ptr %i.cq, %i.bp
  br i1 %.not74, label %._crit_edge104, label %.lr.ph103, !llvm.loop !3194

.loopexit76:                                      ; preds = %.loopexit, %.preheader, %._crit_edge
  %.0 = phi i64 [ %3, %._crit_edge ], [ %.1.lcssa, %.preheader ], [ %.3.lcssa, %.loopexit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3200
  tail call void @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3201 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3199

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !303, !noalias !3206 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !304, !noalias !3206 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !302, !noalias !3206 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !105
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !234

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !235

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !105
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !236, !llvm.loop !40

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !305
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !124
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !235

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !305
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !304
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !303
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !105
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !105
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !124
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !114   ; 3 uses
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !114
  %i.bi = ptrtoint ptr %i.bh to i64
  %notsub.i.i.i = add i64 %i.bi, -1
  %i.bj = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.bj, label %bb.e, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i16 0, ptr %i.bm, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}
end_hunk_0
