Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_avx512?download=true
inline.NumInlined: 25
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local20avx512_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 4 uses
  %i.l = add nuw i32 %4, 31
  %i.m = and i32 %i.l, 16
  %lcmp.mod.not.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = load <16 x float>, ptr %i.i, align 64, !tbaa !13
  %i.o = load <16 x float>, ptr %i.g, align 64, !tbaa !13
  %i.p = load <16 x float>, ptr %i.k, align 64, !tbaa !13
  %i.q = fadd <16 x float> %i.n, %i.o
  %i.r = fmul <16 x float> %i.d, %i.q
  %i.s = fadd <16 x float> %i.p, %i.r
  store <16 x float> %i.s, ptr %i.k, align 64, !tbaa !13
  %i.t = add nsw i32 %4, -16
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.02128.unr = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.02227.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.02326.unr = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.02425.unr = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.x = icmp ult i32 %4, 17
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02128 = phi ptr [ %i.ao, %.lr.ph ], [ %.02128.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02227 = phi i32 [ %i.an, %.lr.ph ], [ %.02227.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.02326 = phi ptr [ %i.aq, %.lr.ph ], [ %.02326.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.02425 = phi ptr [ %i.ap, %.lr.ph ], [ %.02425.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.y = load <16 x float>, ptr %.02425, align 64, !tbaa !13
  %i.z = load <16 x float>, ptr %.02326, align 64, !tbaa !13
  %i.aa = load <16 x float>, ptr %.02128, align 64, !tbaa !13
  %i.ab = fadd <16 x float> %i.y, %i.z
  %i.ac = fmul <16 x float> %i.d, %i.ab
  %i.ad = fadd <16 x float> %i.aa, %i.ac
  store <16 x float> %i.ad, ptr %.02128, align 64, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.02128, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02425, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.02326, i64 64
  %i.ah = load <16 x float>, ptr %i.af, align 64, !tbaa !13
  %i.ai = load <16 x float>, ptr %i.ag, align 64, !tbaa !13
  %i.aj = load <16 x float>, ptr %i.ae, align 64, !tbaa !13
  %i.ak = fadd <16 x float> %i.ah, %i.ai
  %i.al = fmul <16 x float> %i.d, %i.ak
  %i.am = fadd <16 x float> %i.aj, %i.al
  store <16 x float> %i.am, ptr %i.ae, align 64, !tbaa !13
  %i.an = add nsw i32 %.02227, -32
  %i.ao = getelementptr inbounds nuw i8, ptr %.02128, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %.02425, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %.02326, i64 128
  %i.ar = icmp sgt i32 %.02227, 32
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local23avx512_irv_vert_times_KEfPKNS_8line_bufEj(float noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <16 x float> poison, float %0, i64 0
  %i.b = shufflevector <16 x float> %i.a, <16 x float> poison, <16 x i32> zeroinitializer ; 5 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.i.preheader, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = add nsw i32 %2, -1
  %i.g = lshr i32 %i.f, 4
  %i.h = add nuw nsw i32 %i.g, 1
  %xtraiter = and i32 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %.078.i.prol = phi i32 [ %i.k, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.i = load <16 x float>, ptr %.09.i.prol, align 64, !tbaa !13
  %i.j = fmul <16 x float> %i.b, %i.i
  store <16 x float> %i.j, ptr %.09.i.prol, align 64, !tbaa !13
  %i.k = add nsw i32 %.078.i.prol, -16            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 64 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !35

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.078.i.unr = phi i32 [ %2, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %i.m = icmp ult i32 %2, 49
  br i1 %i.m, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.078.i = phi i32 [ %i.y, %.lr.ph.i ], [ %.078.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.n = load <16 x float>, ptr %.09.i, align 64, !tbaa !13
  %i.o = fmul <16 x float> %i.b, %i.n
  store <16 x float> %i.o, ptr %.09.i, align 64, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i, i64 64 ; 2 uses
  %i.q = load <16 x float>, ptr %i.p, align 64, !tbaa !13
  %i.r = fmul <16 x float> %i.b, %i.q
  store <16 x float> %i.r, ptr %i.p, align 64, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 128 ; 2 uses
  %i.t = load <16 x float>, ptr %i.s, align 64, !tbaa !13
  %i.u = fmul <16 x float> %i.b, %i.t
  store <16 x float> %i.u, ptr %i.s, align 64, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i, i64 192 ; 2 uses
  %i.w = load <16 x float>, ptr %i.v, align 64, !tbaa !13
  %i.x = fmul <16 x float> %i.b, %i.w
  store <16 x float> %i.x, ptr %i.v, align 64, !tbaa !13
  %i.y = add nsw i32 %.078.i, -64
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i, i64 256
  %i.aa = icmp sgt i32 %.078.i, 64
  br i1 %i.aa, label %.lr.ph.i, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit, !llvm.loop !0

_ZN4ojph5localL21avx512_multiply_constEPffi.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local19avx512_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit99.sink.split

bb.b:                                             ; preds = %bb.a
  %. = select i1 %5, ptr %1, ptr %2
  %.in = getelementptr inbounds nuw i8, ptr %., i64 16
  %i.b = load ptr, ptr %.in, align 8, !tbaa !13   ; 4 uses
  %.pn94 = select i1 %5, ptr %2, ptr %1
  %.in93 = getelementptr inbounds nuw i8, ptr %.pn94, i64 16
  %i.c = load ptr, ptr %.in93, align 8, !tbaa !13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 5 uses
  %i.f = icmp sgt i32 %4, 16
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = add nsw i32 %4, -17                      ; 2 uses
  %i.h = and i32 %i.g, 32
  %lcmp.mod.not.not = icmp eq i32 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.i = load <16 x float>, ptr %i.e, align 64, !tbaa !13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.k = load <16 x float>, ptr %i.j, align 64, !tbaa !13 ; 2 uses
  %i.l = shufflevector <16 x float> %i.i, <16 x float> %i.k, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.m = shufflevector <16 x float> %i.i, <16 x float> %i.k, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x float> %i.l, ptr %i.b, align 64, !tbaa !13
  store <16 x float> %i.m, ptr %i.c, align 64, !tbaa !13
  %i.n = add nsw i32 %4, -32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.044.i.unr = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.03543.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %.03742.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.03941.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa147.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa146.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.lcssa145.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i32 %i.g, 32
  br i1 %i.r, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.039.lcssa.i = phi i32 [ %4, %bb.b ], [ %.lcssa147.unr, %.lr.ph.i.prol.loopexit ], [ %i.aq, %.lr.ph.i ] ; 5 uses
  %.037.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %.lcssa146.unr, %.lr.ph.i.prol.loopexit ], [ %i.ar, %.lr.ph.i ] ; 4 uses
  %.035.lcssa.i = phi ptr [ %i.c, %bb.b ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.at, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.b, %bb.b ], [ %.lcssa145.unr, %.lr.ph.i.prol.loopexit ], [ %i.as, %.lr.ph.i ] ; 3 uses
  %i.s = icmp sgt i32 %.039.lcssa.i, 0
  br i1 %i.s, label %.lr.ph52.i.preheader, label %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.t = add nuw i32 %.039.lcssa.i, 31
  %i.u = and i32 %i.t, 16
  %lcmp.mod149.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod149.not.not, label %.lr.ph52.i.prol, label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.v = load <8 x float>, ptr %.037.lcssa.i, align 32, !tbaa !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 32
  %i.x = load <8 x float>, ptr %i.w, align 32, !tbaa !13 ; 2 uses
  %6 = shufflevector <8 x float> %i.v, <8 x float> %i.x, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %7 = shufflevector <8 x float> %i.v, <8 x float> %i.x, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x float> %6, ptr %.0.lcssa.i, align 32, !tbaa !13
  store <8 x float> %7, ptr %.035.lcssa.i, align 32, !tbaa !13
  %i.y = add nsw i32 %.039.lcssa.i, -16
  %i.z = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.035.lcssa.i, i64 32
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.151.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph52.i.preheader ], [ %i.aa, %.lr.ph52.i.prol ]
  %.13650.i.unr = phi ptr [ %.035.lcssa.i, %.lr.ph52.i.preheader ], [ %i.ab, %.lr.ph52.i.prol ]
  %.13849.i.unr = phi ptr [ %.037.lcssa.i, %.lr.ph52.i.preheader ], [ %i.z, %.lr.ph52.i.prol ]
  %.14048.i.unr = phi i32 [ %.039.lcssa.i, %.lr.ph52.i.preheader ], [ %i.y, %.lr.ph52.i.prol ]
  %i.ac = icmp ult i32 %.039.lcssa.i, 17
  br i1 %i.ac, label %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit, label %.lr.ph52.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.044.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.044.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03543.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.03543.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03742.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.03742.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.03941.i = phi i32 [ %i.aq, %.lr.ph.i ], [ %.03941.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ad = load <16 x float>, ptr %.03742.i, align 64, !tbaa !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03742.i, i64 64
  %i.af = load <16 x float>, ptr %i.ae, align 64, !tbaa !13 ; 2 uses
  %i.ag = shufflevector <16 x float> %i.ad, <16 x float> %i.af, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ah = shufflevector <16 x float> %i.ad, <16 x float> %i.af, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x float> %i.ag, ptr %.044.i, align 64, !tbaa !13
  store <16 x float> %i.ah, ptr %.03543.i, align 64, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.03742.i, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %.044.i, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03543.i, i64 64
  %i.al = load <16 x float>, ptr %i.ai, align 64, !tbaa !13 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03742.i, i64 192
  %i.an = load <16 x float>, ptr %i.am, align 64, !tbaa !13 ; 2 uses
  %i.ao = shufflevector <16 x float> %i.al, <16 x float> %i.an, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ap = shufflevector <16 x float> %i.al, <16 x float> %i.an, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x float> %i.ao, ptr %i.aj, align 64, !tbaa !13
  store <16 x float> %i.ap, ptr %i.ak, align 64, !tbaa !13
  %i.aq = add nsw i32 %.03941.i, -64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03742.i, i64 256 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.044.i, i64 128 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03543.i, i64 128 ; 2 uses
  %i.au = icmp sgt i32 %.03941.i, 80
  br i1 %i.au, label %.lr.ph.i, label %.preheader.i, !llvm.loop !1

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.151.i = phi ptr [ %i.bg, %.lr.ph52.i ], [ %.151.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.13650.i = phi ptr [ %i.bh, %.lr.ph52.i ], [ %.13650.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.13849.i = phi ptr [ %i.bf, %.lr.ph52.i ], [ %.13849.i.unr, %.lr.ph52.i.prol.loopexit ] ; 5 uses
  %.14048.i = phi i32 [ %i.be, %.lr.ph52.i ], [ %.14048.i.unr, %.lr.ph52.i.prol.loopexit ] ; 2 uses
  %i.av = load <8 x float>, ptr %.13849.i, align 32, !tbaa !13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13849.i, i64 32
  %i.ax = load <8 x float>, ptr %i.aw, align 32, !tbaa !13 ; 2 uses
  %8 = shufflevector <8 x float> %i.av, <8 x float> %i.ax, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %9 = shufflevector <8 x float> %i.av, <8 x float> %i.ax, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x float> %8, ptr %.151.i, align 32, !tbaa !13
  store <8 x float> %9, ptr %.13650.i, align 32, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.13849.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %.151.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.13650.i, i64 32
  %i.bb = load <8 x float>, ptr %i.ay, align 32, !tbaa !13 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.13849.i, i64 96
  %i.bd = load <8 x float>, ptr %i.bc, align 32, !tbaa !13 ; 2 uses
  %10 = shufflevector <8 x float> %i.bb, <8 x float> %i.bd, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %11 = shufflevector <8 x float> %i.bb, <8 x float> %i.bd, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x float> %10, ptr %i.az, align 32, !tbaa !13
  store <8 x float> %11, ptr %i.ba, align 32, !tbaa !13
  %i.be = add nsw i32 %.14048.i, -32
  %i.bf = getelementptr inbounds nuw i8, ptr %.13849.i, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %.151.i, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %.13650.i, i64 64
  %i.bi = icmp sgt i32 %.14048.i, 32
  br i1 %i.bi, label %.lr.ph52.i, label %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit, !llvm.loop !2

_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit: ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %i.bn = zext i1 %5 to i32
  %i.bo = add i32 %4, %i.bn
  %i.bp = lshr i32 %i.bo, 1                       ; 2 uses
  %not. = xor i1 %5, true
  %i.bq = zext i1 %not. to i32
  %i.br = add i32 %4, %i.bq
  %i.bs = lshr i32 %i.br, 1                       ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !22  ; 2 uses
  %.not114 = icmp eq i8 %i.bu, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph121

.lr.ph121:                                        ; preds = %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = zext i8 %i.bu to i64
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit
  %.085.lcssa = phi i32 [ %i.bs, %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit ], [ %.084117, %.loopexit ] ; 5 uses
  %.084.lcssa = phi i32 [ %i.bp, %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit ], [ %.085116, %.loopexit ] ; 5 uses
  %.083.lcssa = phi ptr [ %i.bm, %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit ], [ %.082119, %.loopexit ] ; 2 uses
  %.082.lcssa = phi ptr [ %i.bk, %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit ], [ %.083118, %.loopexit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !23 ; 2 uses
  %i.bz = fdiv float 1.000000e+00, %i.by
  %i.ca = insertelement <16 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <16 x float> %i.ca, <16 x float> poison, <16 x i32> zeroinitializer ; 5 uses
  %.not100 = icmp eq i32 %.084.lcssa, 0
  br i1 %.not100, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit, label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %._crit_edge
  %i.cc = add nsw i32 %.084.lcssa, -1
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = add nuw nsw i32 %i.cd, 1
  %xtraiter150 = and i32 %i.ce, 3                 ; 2 uses
  %lcmp.mod151.not = icmp eq i32 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95.prol
  %.09.i.prol = phi ptr [ %i.ci, %.lr.ph.i95.prol ], [ %.083.lcssa, %.lr.ph.i95.preheader ] ; 3 uses
  %.078.i.prol = phi i32 [ %i.ch, %.lr.ph.i95.prol ], [ %.084.lcssa, %.lr.ph.i95.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.i95.preheader ]
  %i.cf = load <16 x float>, ptr %.09.i.prol, align 64, !tbaa !13
  %i.cg = fmul <16 x float> %i.cb, %i.cf
  store <16 x float> %i.cg, ptr %.09.i.prol, align 64, !tbaa !13
  %i.ch = add nsw i32 %.078.i.prol, -16           ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 64 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter150
  br i1 %prol.iter.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !36

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.i95.preheader
  %.09.i.unr = phi ptr [ %.083.lcssa, %.lr.ph.i95.preheader ], [ %i.ci, %.lr.ph.i95.prol ]
  %.078.i.unr = phi i32 [ %.084.lcssa, %.lr.ph.i95.preheader ], [ %i.ch, %.lr.ph.i95.prol ]
  %i.cj = icmp ult i32 %.084.lcssa, 49
  br i1 %i.cj, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.09.i = phi ptr [ %i.cw, %.lr.ph.i95 ], [ %.09.i.unr, %.lr.ph.i95.prol.loopexit ] ; 6 uses
  %.078.i = phi i32 [ %i.cv, %.lr.ph.i95 ], [ %.078.i.unr, %.lr.ph.i95.prol.loopexit ] ; 2 uses
  %i.ck = load <16 x float>, ptr %.09.i, align 64, !tbaa !13
  %i.cl = fmul <16 x float> %i.cb, %i.ck
  store <16 x float> %i.cl, ptr %.09.i, align 64, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.09.i, i64 64 ; 2 uses
  %i.cn = load <16 x float>, ptr %i.cm, align 64, !tbaa !13
  %i.co = fmul <16 x float> %i.cb, %i.cn
  store <16 x float> %i.co, ptr %i.cm, align 64, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i, i64 128 ; 2 uses
  %i.cq = load <16 x float>, ptr %i.cp, align 64, !tbaa !13
  %i.cr = fmul <16 x float> %i.cb, %i.cq
  store <16 x float> %i.cr, ptr %i.cp, align 64, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.09.i, i64 192 ; 2 uses
  %i.ct = load <16 x float>, ptr %i.cs, align 64, !tbaa !13
  %i.cu = fmul <16 x float> %i.cb, %i.ct
  store <16 x float> %i.cu, ptr %i.cs, align 64, !tbaa !13
  %i.cv = add nsw i32 %.078.i, -64
  %i.cw = getelementptr inbounds nuw i8, ptr %.09.i, i64 256
  %i.cx = icmp sgt i32 %.078.i, 64
  br i1 %i.cx, label %.lr.ph.i95, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit, !llvm.loop !0

_ZN4ojph5localL21avx512_multiply_constEPffi.exit: ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %._crit_edge
  %i.cy = insertelement <16 x float> poison, float %i.by, i64 0
  %i.cz = shufflevector <16 x float> %i.cy, <16 x float> poison, <16 x i32> zeroinitializer ; 5 uses
  %.not101 = icmp eq i32 %.085.lcssa, 0
  br i1 %.not101, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit99, label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %_ZN4ojph5localL21avx512_multiply_constEPffi.exit
  %i.da = add nsw i32 %.085.lcssa, -1
  %i.db = lshr i32 %i.da, 4
  %i.dc = add nuw nsw i32 %i.db, 1
  %xtraiter152 = and i32 %i.dc, 3                 ; 2 uses
  %lcmp.mod153.not = icmp eq i32 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol

.lr.ph.i96.prol:                                  ; preds = %.lr.ph.i96.preheader, %.lr.ph.i96.prol
  %.09.i97.prol = phi ptr [ %i.dg, %.lr.ph.i96.prol ], [ %.082.lcssa, %.lr.ph.i96.preheader ] ; 3 uses
  %.078.i98.prol = phi i32 [ %i.df, %.lr.ph.i96.prol ], [ %.085.lcssa, %.lr.ph.i96.preheader ]
  %prol.iter154 = phi i32 [ %prol.iter154.next, %.lr.ph.i96.prol ], [ 0, %.lr.ph.i96.preheader ]
  %i.dd = load <16 x float>, ptr %.09.i97.prol, align 64, !tbaa !13
  %i.de = fmul <16 x float> %i.cz, %i.dd
  store <16 x float> %i.de, ptr %.09.i97.prol, align 64, !tbaa !13
  %i.df = add nsw i32 %.078.i98.prol, -16         ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.09.i97.prol, i64 64 ; 2 uses
  %prol.iter154.next = add i32 %prol.iter154, 1   ; 2 uses
  %prol.iter154.cmp.not = icmp eq i32 %prol.iter154.next, %xtraiter152
  br i1 %prol.iter154.cmp.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol, !llvm.loop !37

.lr.ph.i96.prol.loopexit:                         ; preds = %.lr.ph.i96.prol, %.lr.ph.i96.preheader
  %.09.i97.unr = phi ptr [ %.082.lcssa, %.lr.ph.i96.preheader ], [ %i.dg, %.lr.ph.i96.prol ]
  %.078.i98.unr = phi i32 [ %.085.lcssa, %.lr.ph.i96.preheader ], [ %i.df, %.lr.ph.i96.prol ]
  %i.dh = icmp ult i32 %.085.lcssa, 49
  br i1 %i.dh, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit99, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96
  %.09.i97 = phi ptr [ %i.du, %.lr.ph.i96 ], [ %.09.i97.unr, %.lr.ph.i96.prol.loopexit ] ; 6 uses
  %.078.i98 = phi i32 [ %i.dt, %.lr.ph.i96 ], [ %.078.i98.unr, %.lr.ph.i96.prol.loopexit ] ; 2 uses
  %i.di = load <16 x float>, ptr %.09.i97, align 64, !tbaa !13
  %i.dj = fmul <16 x float> %i.cz, %i.di
  store <16 x float> %i.dj, ptr %.09.i97, align 64, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i97, i64 64 ; 2 uses
  %i.dl = load <16 x float>, ptr %i.dk, align 64, !tbaa !13
  %i.dm = fmul <16 x float> %i.cz, %i.dl
  store <16 x float> %i.dm, ptr %i.dk, align 64, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i97, i64 128 ; 2 uses
  %i.do = load <16 x float>, ptr %i.dn, align 64, !tbaa !13
  %i.dp = fmul <16 x float> %i.cz, %i.do
  store <16 x float> %i.dp, ptr %i.dn, align 64, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i97, i64 192 ; 2 uses
  %i.dr = load <16 x float>, ptr %i.dq, align 64, !tbaa !13
  %i.ds = fmul <16 x float> %i.cz, %i.dr
  store <16 x float> %i.ds, ptr %i.dq, align 64, !tbaa !13
  %i.dt = add nsw i32 %.078.i98, -64
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i97, i64 256
  %i.dv = icmp sgt i32 %.078.i98, 64
  br i1 %i.dv, label %.lr.ph.i96, label %_ZN4ojph5localL21avx512_multiply_constEPffi.exit99, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph121, %.loopexit
  %indvars.iv = phi i64 [ %i.bw, %.lr.ph121 ], [ %i.dw, %.loopexit ]
  %.0.in120 = phi i1 [ %5, %.lr.ph121 ], [ %i.fg, %.loopexit ] ; 2 uses
  %.082119 = phi ptr [ %i.bk, %.lr.ph121 ], [ %.083118, %.loopexit ] ; 4 uses
  %.083118 = phi ptr [ %i.bm, %.lr.ph121 ], [ %.082119, %.loopexit ] ; 8 uses
  %.084117 = phi i32 [ %i.bp, %.lr.ph121 ], [ %.085116, %.loopexit ] ; 4 uses
  %.085116 = phi i32 [ %i.bs, %.lr.ph121 ], [ %.084117, %.loopexit ] ; 5 uses
  %i.dw = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dx = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !13
  %i.ea = load float, ptr %.083118, align 4, !tbaa !25
  %i.eb = getelementptr inbounds i8, ptr %.083118, i64 -4
  store float %i.ea, ptr %i.eb, align 4, !tbaa !25
  %i.ec = add nsw i32 %.084117, -1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.083118, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !25
  %i.eg = zext nneg i32 %.084117 to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.083118, i64 %i.eg
  store float %i.ef, ptr %i.eh, align 4, !tbaa !25
  %i.ei = insertelement <16 x float> poison, float %i.dz, i64 0
  %i.ej = shufflevector <16 x float> %i.ei, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %.not126 = icmp eq i32 %.085116, 0              ; 2 uses
  br i1 %.0.in120, label %.preheader, label %.preheader102

.preheader102:                                    ; preds = %bb.c
  br i1 %.not126, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not126, label %.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %.preheader, %.lr.ph113
  %.087112 = phi i32 [ %i.er, %.lr.ph113 ], [ %.085116, %.preheader ] ; 2 uses
  %.088111 = phi ptr [ %i.et, %.lr.ph113 ], [ %.082119, %.preheader ] ; 3 uses
  %.090110 = phi ptr [ %i.es, %.lr.ph113 ], [ %.083118, %.preheader ] ; 3 uses
  %i.ek = load <16 x float>, ptr %.090110, align 64, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %.090110, i64 4
  %i.em = load <16 x float>, ptr %i.el, align 4, !tbaa !13
  %i.en = load <16 x float>, ptr %.088111, align 64, !tbaa !13
  %i.eo = fadd <16 x float> %i.ek, %i.em
  %i.ep = fmul <16 x float> %i.ej, %i.eo
  %i.eq = fadd <16 x float> %i.en, %i.ep
  store <16 x float> %i.eq, ptr %.088111, align 64, !tbaa !13
  %i.er = add nsw i32 %.087112, -16
  %i.es = getelementptr inbounds nuw i8, ptr %.090110, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %.088111, i64 64
  %i.eu = icmp sgt i32 %.087112, 16
  br i1 %i.eu, label %.lr.ph113, label %.loopexit, !llvm.loop !38

.lr.ph:                                           ; preds = %.preheader102, %.lr.ph
  %.1109 = phi i32 [ %i.fc, %.lr.ph ], [ %.085116, %.preheader102 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ojph5local22avx512_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  %i.mk = add nsw i32 %.0144199.ph, -1
  br label %vec.epilog.scalar.ph337.prol.loopexit

vec.epilog.scalar.ph337.prol.loopexit:            ; preds = %vec.epilog.scalar.ph337.prol, %vec.epilog.scalar.ph337.preheader
  %.0144199.unr = phi i32 [ %.0144199.ph, %vec.epilog.scalar.ph337.preheader ], [ %i.mk, %vec.epilog.scalar.ph337.prol ]
  %.6198.unr = phi ptr [ %.6198.ph, %vec.epilog.scalar.ph337.preheader ], [ %i.mh, %vec.epilog.scalar.ph337.prol ]
  %.6152197.unr = phi ptr [ %.6152197.ph, %vec.epilog.scalar.ph337.preheader ], [ %i.lz, %vec.epilog.scalar.ph337.prol ]
  %.6160196.unr = phi ptr [ %.6160196.ph, %vec.epilog.scalar.ph337.preheader ], [ %i.mb, %vec.epilog.scalar.ph337.prol ]
  %i.ml = icmp eq i32 %.0144199.ph, 1
  br i1 %i.ml, label %.loopexit, label %vec.epilog.scalar.ph337

vec.epilog.scalar.ph337:                          ; preds = %vec.epilog.scalar.ph337.prol.loopexit, %vec.epilog.scalar.ph337
  %.0144199 = phi i32 [ %i.ni, %vec.epilog.scalar.ph337 ], [ %.0144199.unr, %vec.epilog.scalar.ph337.prol.loopexit ]
  %.6198 = phi ptr [ %i.nf, %vec.epilog.scalar.ph337 ], [ %.6198.unr, %vec.epilog.scalar.ph337.prol.loopexit ] ; 4 uses
  %.6152197 = phi ptr [ %i.mx, %vec.epilog.scalar.ph337 ], [ %.6152197.unr, %vec.epilog.scalar.ph337.prol.loopexit ] ; 3 uses
  %.6160196 = phi ptr [ %i.mz, %vec.epilog.scalar.ph337 ], [ %.6160196.unr, %vec.epilog.scalar.ph337.prol.loopexit ] ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.6152197, i64 8
  %i.mn = load i64, ptr %.6152197, align 8, !tbaa !27
  %i.mo = getelementptr inbounds nuw i8, ptr %.6160196, i64 8
  %i.mp = load i64, ptr %.6160196, align 8, !tbaa !27
  %i.mq = add nsw i64 %i.mp, %i.mn
  %i.mr = mul nsw i64 %i.mq, %i.kg
  %i.ms = add nsw i64 %i.mr, %i.f
  %i.mt = ashr i64 %i.ms, %i.kh
  %i.mu = getelementptr inbounds nuw i8, ptr %.6198, i64 8 ; 2 uses
  %i.mv = load i64, ptr %.6198, align 8, !tbaa !27
  %i.mw = sub nsw i64 %i.mv, %i.mt
  store i64 %i.mw, ptr %.6198, align 8, !tbaa !27
  %i.mx = getelementptr inbounds nuw i8, ptr %.6152197, i64 16
  %i.my = load i64, ptr %i.mm, align 8, !tbaa !27
  %i.mz = getelementptr inbounds nuw i8, ptr %.6160196, i64 16
  %i.na = load i64, ptr %i.mo, align 8, !tbaa !27
  %i.nb = add nsw i64 %i.na, %i.my
  %i.nc = mul nsw i64 %i.nb, %i.kg
  %i.nd = add nsw i64 %i.nc, %i.f
  %i.ne = ashr i64 %i.nd, %i.kh
  %i.nf = getelementptr inbounds nuw i8, ptr %.6198, i64 16
  %i.ng = load i64, ptr %i.mu, align 8, !tbaa !27
  %i.nh = sub nsw i64 %i.ng, %i.ne
  store i64 %i.nh, ptr %i.mu, align 8, !tbaa !27
  %i.ni = add i32 %.0144199, -2                   ; 2 uses
  %.not170.1 = icmp eq i32 %i.ni, 0
  br i1 %.not170.1, label %.loopexit, label %vec.epilog.scalar.ph337, !llvm.loop !70

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0194 = phi i32 [ %i.of, %vec.epilog.scalar.ph ], [ %.0194.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.7193 = phi ptr [ %i.oc, %vec.epilog.scalar.ph ], [ %.7193.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %.7153192 = phi ptr [ %i.nu, %vec.epilog.scalar.ph ], [ %.7153192.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.7161191 = phi ptr [ %i.nw, %vec.epilog.scalar.ph ], [ %.7161191.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.7153192, i64 8
  %i.nk = load i64, ptr %.7153192, align 8, !tbaa !27
  %i.nl = getelementptr inbounds nuw i8, ptr %.7161191, i64 8
  %i.nm = load i64, ptr %.7161191, align 8, !tbaa !27
  %i.nn = add nsw i64 %i.nm, %i.nk
  %i.no = mul nsw i64 %i.nn, %i.ia
  %i.np = add nsw i64 %i.no, %i.f
  %i.nq = ashr i64 %i.np, %i.ib
  %i.nr = getelementptr inbounds nuw i8, ptr %.7193, i64 8 ; 2 uses
  %i.ns = load i64, ptr %.7193, align 8, !tbaa !27
  %i.nt = add nsw i64 %i.nq, %i.ns
  store i64 %i.nt, ptr %.7193, align 8, !tbaa !27
  %i.nu = getelementptr inbounds nuw i8, ptr %.7153192, i64 16
  %i.nv = load i64, ptr %i.nj, align 8, !tbaa !27
  %i.nw = getelementptr inbounds nuw i8, ptr %.7161191, i64 16
  %i.nx = load i64, ptr %i.nl, align 8, !tbaa !27
  %i.ny = add nsw i64 %i.nx, %i.nv
  %i.nz = mul nsw i64 %i.ny, %i.ia
  %i.oa = add nsw i64 %i.nz, %i.f
  %i.ob = ashr i64 %i.oa, %i.ib
  %i.oc = getelementptr inbounds nuw i8, ptr %.7193, i64 16
  %i.od = load i64, ptr %i.nr, align 8, !tbaa !27
  %i.oe = add nsw i64 %i.ob, %i.od
  store i64 %i.oe, ptr %i.nr, align 8, !tbaa !27
  %i.of = add i32 %.0194, -2                      ; 2 uses
  %.not.1 = icmp eq i32 %i.of, 0
  br i1 %.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !71

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph337.prol.loopexit, %vec.epilog.scalar.ph337, %.lr.ph205.prol.loopexit, %.lr.ph205, %.lr.ph210.prol.loopexit, %.lr.ph210, %.lr.ph215.prol.loopexit, %.lr.ph215, %.lr.ph220.prol.loopexit, %.lr.ph220, %.prol.loopexit, %.lr.ph225.new, %.prol.loopexit383, %.lr.ph230.new, %middle.block, %vec.epilog.middle.block, %middle.block333, %vec.epilog.middle.block357, %.preheader188, %.preheader186, %.preheader184, %.preheader182, %.preheader180, %.preheader178, %.preheader176, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local20avx512_rev_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = and i32 %i.b, 4
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = and i32 %i.e, 4
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  tail call void @_ZN4ojph5local22avx512_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %i.i = and i32 %i.h, 4
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %.split17, label %bb.g

.split17:                                         ; preds = %bb.f
  tail call void @_ZN4ojph5local22avx512_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  tail call void @_ZN4ojph5local22avx512_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  br label %bb.h

bb.h:                                             ; preds = %.split, %.split17, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local21avx512_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %.loopexit248.sink.split

bb.b:                                             ; preds = %bb.a
  %. = select i1 %5, ptr %1, ptr %2
  %.in = getelementptr inbounds nuw i8, ptr %., i64 16
  %i.b = load ptr, ptr %.in, align 8, !tbaa !13   ; 4 uses
  %.pn228 = select i1 %5, ptr %2, ptr %1
  %.in227 = getelementptr inbounds nuw i8, ptr %.pn228, i64 16
  %i.c = load ptr, ptr %.in227, align 8, !tbaa !13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 5 uses
  %i.f = icmp sgt i32 %4, 16
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = add nsw i32 %4, -17                      ; 2 uses
  %i.h = and i32 %i.g, 32
  %lcmp.mod.not.not = icmp eq i32 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.i = load <16 x float>, ptr %i.e, align 64, !tbaa !13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.k = load <16 x float>, ptr %i.j, align 64, !tbaa !13 ; 2 uses
  %i.l = shufflevector <16 x float> %i.i, <16 x float> %i.k, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.m = shufflevector <16 x float> %i.i, <16 x float> %i.k, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x float> %i.l, ptr %i.b, align 64, !tbaa !13
  store <16 x float> %i.m, ptr %i.c, align 64, !tbaa !13
  %i.n = add nsw i32 %4, -32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.044.i.unr = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.03543.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %.03742.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.03941.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa345.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa344.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.lcssa343.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i32 %i.g, 32
  br i1 %i.r, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.039.lcssa.i = phi i32 [ %4, %bb.b ], [ %.lcssa345.unr, %.lr.ph.i.prol.loopexit ], [ %i.aq, %.lr.ph.i ] ; 5 uses
  %.037.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %.lcssa344.unr, %.lr.ph.i.prol.loopexit ], [ %i.ar, %.lr.ph.i ] ; 4 uses
  %.035.lcssa.i = phi ptr [ %i.c, %bb.b ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.at, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.b, %bb.b ], [ %.lcssa343.unr, %.lr.ph.i.prol.loopexit ], [ %i.as, %.lr.ph.i ] ; 3 uses
  %i.s = icmp sgt i32 %.039.lcssa.i, 0
  br i1 %i.s, label %.lr.ph52.i.preheader, label %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.t = add nuw i32 %.039.lcssa.i, 31
  %i.u = and i32 %i.t, 16
  %lcmp.mod347.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod347.not.not, label %.lr.ph52.i.prol, label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.v = load <8 x float>, ptr %.037.lcssa.i, align 32, !tbaa !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 32
  %i.x = load <8 x float>, ptr %i.w, align 32, !tbaa !13 ; 2 uses
  %6 = shufflevector <8 x float> %i.v, <8 x float> %i.x, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %7 = shufflevector <8 x float> %i.v, <8 x float> %i.x, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x float> %6, ptr %.0.lcssa.i, align 32, !tbaa !13
  store <8 x float> %7, ptr %.035.lcssa.i, align 32, !tbaa !13
  %i.y = add nsw i32 %.039.lcssa.i, -16
  %i.z = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.035.lcssa.i, i64 32
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.151.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph52.i.preheader ], [ %i.aa, %.lr.ph52.i.prol ]
  %.13650.i.unr = phi ptr [ %.035.lcssa.i, %.lr.ph52.i.preheader ], [ %i.ab, %.lr.ph52.i.prol ]
  %.13849.i.unr = phi ptr [ %.037.lcssa.i, %.lr.ph52.i.preheader ], [ %i.z, %.lr.ph52.i.prol ]
  %.14048.i.unr = phi i32 [ %.039.lcssa.i, %.lr.ph52.i.preheader ], [ %i.y, %.lr.ph52.i.prol ]
  %i.ac = icmp ult i32 %.039.lcssa.i, 17
  br i1 %i.ac, label %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit, label %.lr.ph52.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.044.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.044.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03543.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.03543.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03742.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.03742.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.03941.i = phi i32 [ %i.aq, %.lr.ph.i ], [ %.03941.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ad = load <16 x float>, ptr %.03742.i, align 64, !tbaa !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03742.i, i64 64
  %i.af = load <16 x float>, ptr %i.ae, align 64, !tbaa !13 ; 2 uses
  %i.ag = shufflevector <16 x float> %i.ad, <16 x float> %i.af, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ah = shufflevector <16 x float> %i.ad, <16 x float> %i.af, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x float> %i.ag, ptr %.044.i, align 64, !tbaa !13
  store <16 x float> %i.ah, ptr %.03543.i, align 64, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.03742.i, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %.044.i, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03543.i, i64 64
  %i.al = load <16 x float>, ptr %i.ai, align 64, !tbaa !13 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03742.i, i64 192
  %i.an = load <16 x float>, ptr %i.am, align 64, !tbaa !13 ; 2 uses
  %i.ao = shufflevector <16 x float> %i.al, <16 x float> %i.an, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ap = shufflevector <16 x float> %i.al, <16 x float> %i.an, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x float> %i.ao, ptr %i.aj, align 64, !tbaa !13
  store <16 x float> %i.ap, ptr %i.ak, align 64, !tbaa !13
  %i.aq = add nsw i32 %.03941.i, -64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03742.i, i64 256 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.044.i, i64 128 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03543.i, i64 128 ; 2 uses
  %i.au = icmp sgt i32 %.03941.i, 80
  br i1 %i.au, label %.lr.ph.i, label %.preheader.i, !llvm.loop !1

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.151.i = phi ptr [ %i.bg, %.lr.ph52.i ], [ %.151.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.13650.i = phi ptr [ %i.bh, %.lr.ph52.i ], [ %.13650.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.13849.i = phi ptr [ %i.bf, %.lr.ph52.i ], [ %.13849.i.unr, %.lr.ph52.i.prol.loopexit ] ; 5 uses
  %.14048.i = phi i32 [ %i.be, %.lr.ph52.i ], [ %.14048.i.unr, %.lr.ph52.i.prol.loopexit ] ; 2 uses
  %i.av = load <8 x float>, ptr %.13849.i, align 32, !tbaa !13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13849.i, i64 32
  %i.ax = load <8 x float>, ptr %i.aw, align 32, !tbaa !13 ; 2 uses
  %8 = shufflevector <8 x float> %i.av, <8 x float> %i.ax, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %9 = shufflevector <8 x float> %i.av, <8 x float> %i.ax, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x float> %8, ptr %.151.i, align 32, !tbaa !13
  store <8 x float> %9, ptr %.13650.i, align 32, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.13849.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %.151.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.13650.i, i64 32
  %i.bb = load <8 x float>, ptr %i.ay, align 32, !tbaa !13 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.13849.i, i64 96
  %i.bd = load <8 x float>, ptr %i.bc, align 32, !tbaa !13 ; 2 uses
  %10 = shufflevector <8 x float> %i.bb, <8 x float> %i.bd, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %11 = shufflevector <8 x float> %i.bb, <8 x float> %i.bd, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x float> %10, ptr %i.az, align 32, !tbaa !13
  store <8 x float> %11, ptr %i.ba, align 32, !tbaa !13
  %i.be = add nsw i32 %.14048.i, -32
  %i.bf = getelementptr inbounds nuw i8, ptr %.13849.i, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %.151.i, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %.13650.i, i64 64
  %i.bi = icmp sgt i32 %.14048.i, 32
  br i1 %i.bi, label %.lr.ph52.i, label %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit, !llvm.loop !2

_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit: ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !22  ; 2 uses
  %.not283 = icmp eq i8 %i.bk, 0
  br i1 %.not283, label %.loopexit248, label %.lr.ph290

.lr.ph290:                                        ; preds = %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit
  %not. = xor i1 %5, true
  %i.bl = zext i1 %not. to i32
  %i.bm = add i32 %4, %i.bl
  %i.bn = lshr i32 %i.bm, 1
  %i.bo = zext i1 %5 to i32
  %i.bp = add i32 %4, %i.bo
  %i.bq = lshr i32 %i.bp, 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = zext i8 %i.bk to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph290, %.loopexit
  %indvars.iv = phi i64 [ %i.bw, %.lr.ph290 ], [ %i.bx, %.loopexit ]
  %.0.in289 = phi i1 [ %5, %.lr.ph290 ], [ %i.gs, %.loopexit ] ; 5 uses
  %.0202288 = phi ptr [ %i.bu, %.lr.ph290 ], [ %.0203287, %.loopexit ] ; 9 uses
  %.0203287 = phi ptr [ %i.bs, %.lr.ph290 ], [ %.0202288, %.loopexit ] ; 13 uses
  %.0204286 = phi i32 [ %i.bq, %.lr.ph290 ], [ %.0205285, %.loopexit ] ; 3 uses
  %.0205285 = phi i32 [ %i.bn, %.lr.ph290 ], [ %.0204286, %.loopexit ] ; 11 uses
  %i.bx = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !13 ; 3 uses
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !13 ; 2 uses
  %i.cf = sext i16 %i.ce to i32
  %i.cg = load i8, ptr %i.bz, align 4, !tbaa !13  ; 4 uses
  %i.ch = insertelement <16 x i32> poison, i32 %i.cc, i64 0
  %i.ci = shufflevector <16 x i32> %i.ch, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cj = insertelement <16 x i32> poison, i32 %i.cf, i64 0
  %i.ck = shufflevector <16 x i32> %i.cj, <16 x i32> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.cl = load i32, ptr %.0203287, align 4, !tbaa !32
  %i.cm = getelementptr inbounds i8, ptr %.0203287, i64 -4
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !32
  %i.cn = add nsw i32 %.0204286, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0203287, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !32
  %i.cr = zext nneg i32 %.0204286 to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.0203287, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !32
  %i.ct = icmp eq i16 %i.cb, 1
  br i1 %i.ct, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not298 = icmp eq i32 %.0205285, 0             ; 2 uses
  br i1 %.0.in289, label %.preheader, label %.preheader234

.preheader234:                                    ; preds = %bb.d
  br i1 %.not298, label %.loopexit, label %.lr.ph278

.lr.ph278:                                        ; preds = %.preheader234
  %i.cu = zext i8 %i.cg to i32
  br label %bb.f

.preheader:                                       ; preds = %bb.d
  br i1 %.not298, label %.loopexit, label %.lr.ph282

.lr.ph282:                                        ; preds = %.preheader
  %i.cv = zext i8 %i.cg to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph282, %bb.e
  %.0207281 = phi ptr [ %.0203287, %.lr.ph282 ], [ %i.df, %bb.e ] ; 3 uses
  %.0210280 = phi ptr [ %.0202288, %.lr.ph282 ], [ %i.dg, %bb.e ] ; 3 uses
  %.0218279 = phi i32 [ %.0205285, %.lr.ph282 ], [ %i.de, %bb.e ] ; 2 uses
  %i.cw = load <16 x i32>, ptr %.0207281, align 64, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.0207281, i64 4
  %i.cy = load <16 x i32>, ptr %i.cx, align 4, !tbaa !13
  %i.cz = load <16 x i32>, ptr %.0210280, align 64, !tbaa !13
  %i.da = add <16 x i32> %i.cw, %i.ck
  %i.db = add <16 x i32> %i.da, %i.cy
  %i.dc = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.db, i32 range(i32 0, 256) %i.cv)
  %i.dd = add <16 x i32> %i.dc, %i.cz
  store <16 x i32> %i.dd, ptr %.0210280, align 64, !tbaa !13
  %i.de = add nsw i32 %.0218279, -16
  %i.df = getelementptr inbounds nuw i8, ptr %.0207281, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0210280, i64 64
  %i.dh = icmp sgt i32 %.0218279, 16
  br i1 %i.dh, label %bb.e, label %.loopexit, !llvm.loop !81

bb.f:                                             ; preds = %.lr.ph278, %bb.f
  %.1277 = phi ptr [ %.0203287, %.lr.ph278 ], [ %i.dr, %bb.f ] ; 3 uses
  %.1211276 = phi ptr [ %.0202288, %.lr.ph278 ], [ %i.ds, %bb.f ] ; 3 uses
  %.1219275 = phi i32 [ %.0205285, %.lr.ph278 ], [ %i.dq, %bb.f ] ; 2 uses
  %i.di = load <16 x i32>, ptr %.1277, align 64, !tbaa !13
  %i.dj = getelementptr inbounds i8, ptr %.1277, i64 -4
  %i.dk = load <16 x i32>, ptr %i.dj, align 4, !tbaa !13
  %i.dl = load <16 x i32>, ptr %.1211276, align 64, !tbaa !13
  %i.dm = add <16 x i32> %i.di, %i.ck
  %i.dn = add <16 x i32> %i.dm, %i.dk
  %i.do = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.dn, i32 range(i32 0, 256) %i.cu)
  %i.dp = add <16 x i32> %i.do, %i.dl
  store <16 x i32> %i.dp, ptr %.1211276, align 64, !tbaa !13
  %i.dq = add nsw i32 %.1219275, -16
  %i.dr = getelementptr inbounds nuw i8, ptr %.1277, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %.1211276, i64 64
  %i.dt = icmp sgt i32 %.1219275, 16
  br i1 %i.dt, label %bb.f, label %.loopexit, !llvm.loop !82

bb.g:                                             ; preds = %bb.c
  %i.du = icmp eq i16 %i.cb, -1                   ; 2 uses
  %i.dv = icmp eq i16 %i.ce, 1
  %or.cond = select i1 %i.du, i1 %i.dv, i1 false
  %i.dw = zext i8 %i.cg to i32                    ; 4 uses
  %i.dx = icmp eq i8 %i.cg, 1
  %or.cond4 = select i1 %or.cond, i1 %i.dx, i1 false
  %.not296 = icmp eq i32 %.0205285, 0             ; 6 uses
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in289, label %.preheader236, label %.preheader238

.preheader238:                                    ; preds = %bb.h
  br i1 %.not296, label %.loopexit, label %.lr.ph270

.preheader236:                                    ; preds = %bb.h
  br i1 %.not296, label %.loopexit, label %.lr.ph274

.lr.ph274:                                        ; preds = %.preheader236, %.lr.ph274
  %.2273 = phi ptr [ %i.eg, %.lr.ph274 ], [ %.0203287, %.preheader236 ] ; 3 uses
  %.2212272 = phi ptr [ %i.eh, %.lr.ph274 ], [ %.0202288, %.preheader236 ] ; 3 uses
  %.0220271 = phi i32 [ %i.ef, %.lr.ph274 ], [ %.0205285, %.preheader236 ] ; 2 uses
  %i.dy = load <16 x i32>, ptr %.2273, align 64, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %.2273, i64 4
  %i.ea = load <16 x i32>, ptr %i.dz, align 4, !tbaa !13
  %i.eb = load <16 x i32>, ptr %.2212272, align 64, !tbaa !13
  %i.ec = add <16 x i32> %i.ea, %i.dy
  %i.ed = ashr <16 x i32> %i.ec, splat (i32 1)
  %i.ee = sub <16 x i32> %i.eb, %i.ed
  store <16 x i32> %i.ee, ptr %.2212272, align 64, !tbaa !13
  %i.ef = add nsw i32 %.0220271, -16
  %i.eg = getelementptr inbounds nuw i8, ptr %.2273, i64 64
  %i.eh = getelementptr inbounds nuw i8, ptr %.2212272, i64 64
  %i.ei = icmp sgt i32 %.0220271, 16
  br i1 %i.ei, label %.lr.ph274, label %.loopexit, !llvm.loop !83

.lr.ph270:                                        ; preds = %.preheader238, %.lr.ph270
  %.3269 = phi ptr [ %i.er, %.lr.ph270 ], [ %.0203287, %.preheader238 ] ; 3 uses
  %.3213268 = phi ptr [ %i.es, %.lr.ph270 ], [ %.0202288, %.preheader238 ] ; 3 uses
  %.1221267 = phi i32 [ %i.eq, %.lr.ph270 ], [ %.0205285, %.preheader238 ] ; 2 uses
  %i.ej = load <16 x i32>, ptr %.3269, align 64, !tbaa !13
  %i.ek = getelementptr inbounds i8, ptr %.3269, i64 -4
  %i.el = load <16 x i32>, ptr %i.ek, align 4, !tbaa !13
  %i.em = load <16 x i32>, ptr %.3213268, align 64, !tbaa !13
  %i.en = add <16 x i32> %i.el, %i.ej
  %i.eo = ashr <16 x i32> %i.en, splat (i32 1)
  %i.ep = sub <16 x i32> %i.em, %i.eo
  store <16 x i32> %i.ep, ptr %.3213268, align 64, !tbaa !13
  %i.eq = add nsw i32 %.1221267, -16
  %i.er = getelementptr inbounds nuw i8, ptr %.3269, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %.3213268, i64 64
  %i.et = icmp sgt i32 %.1221267, 16
  br i1 %i.et, label %.lr.ph270, label %.loopexit, !llvm.loop !84

bb.i:                                             ; preds = %bb.g
  br i1 %i.du, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.0.in289, label %.preheader240, label %.preheader242

.preheader242:                                    ; preds = %bb.j
  br i1 %.not296, label %.loopexit, label %.lr.ph262

.preheader240:                                    ; preds = %bb.j
  br i1 %.not296, label %.loopexit, label %.lr.ph266

.lr.ph266:                                        ; preds = %.preheader240, %.lr.ph266
  %.4265 = phi ptr [ %i.fd, %.lr.ph266 ], [ %.0203287, %.preheader240 ] ; 3 uses
  %.4214264 = phi ptr [ %i.fe, %.lr.ph266 ], [ %.0202288, %.preheader240 ] ; 3 uses
  %.0222263 = phi i32 [ %i.fc, %.lr.ph266 ], [ %.0205285, %.preheader240 ] ; 2 uses
  %i.eu = load <16 x i32>, ptr %.4265, align 64, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %.4265, i64 4
  %i.ew = load <16 x i32>, ptr %i.ev, align 4, !tbaa !13
  %i.ex = load <16 x i32>, ptr %.4214264, align 64, !tbaa !13
  %i.ey = add <16 x i32> %i.eu, %i.ew
  %i.ez = sub <16 x i32> %i.ck, %i.ey
  %i.fa = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.ez, i32 range(i32 0, 256) %i.dw)
  %i.fb = add <16 x i32> %i.fa, %i.ex
  store <16 x i32> %i.fb, ptr %.4214264, align 64, !tbaa !13
  %i.fc = add nsw i32 %.0222263, -16
  %i.fd = getelementptr inbounds nuw i8, ptr %.4265, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %.4214264, i64 64
  %i.ff = icmp sgt i32 %.0222263, 16
  br i1 %i.ff, label %.lr.ph266, label %.loopexit, !llvm.loop !85

.lr.ph262:                                        ; preds = %.preheader242, %.lr.ph262
  %.5261 = phi ptr [ %i.fp, %.lr.ph262 ], [ %.0203287, %.preheader242 ] ; 3 uses
  %.5215260 = phi ptr [ %i.fq, %.lr.ph262 ], [ %.0202288, %.preheader242 ] ; 3 uses
  %.1223259 = phi i32 [ %i.fo, %.lr.ph262 ], [ %.0205285, %.preheader242 ] ; 2 uses
  %i.fg = load <16 x i32>, ptr %.5261, align 64, !tbaa !13
  %i.fh = getelementptr inbounds i8, ptr %.5261, i64 -4
  %i.fi = load <16 x i32>, ptr %i.fh, align 4, !tbaa !13
  %i.fj = load <16 x i32>, ptr %.5215260, align 64, !tbaa !13
  %i.fk = add <16 x i32> %i.fg, %i.fi
  %i.fl = sub <16 x i32> %i.ck, %i.fk
  %i.fm = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.fl, i32 range(i32 0, 256) %i.dw)
  %i.fn = add <16 x i32> %i.fm, %i.fj
  store <16 x i32> %i.fn, ptr %.5215260, align 64, !tbaa !13
  %i.fo = add nsw i32 %.1223259, -16
  %i.fp = getelementptr inbounds nuw i8, ptr %.5261, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %.5215260, i64 64
  %i.fr = icmp sgt i32 %.1223259, 16
  br i1 %i.fr, label %.lr.ph262, label %.loopexit, !llvm.loop !86

bb.k:                                             ; preds = %bb.i
  br i1 %.0.in289, label %.preheader244, label %.preheader246

.preheader246:                                    ; preds = %bb.k
  br i1 %.not296, label %.loopexit, label %.lr.ph

.preheader244:                                    ; preds = %bb.k
  br i1 %.not296, label %.loopexit, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader244, %.lr.ph258
  %.6257 = phi ptr [ %i.gc, %.lr.ph258 ], [ %.0203287, %.preheader244 ] ; 3 uses
  %.0208256 = phi i32 [ %i.gb, %.lr.ph258 ], [ %.0205285, %.preheader244 ] ; 2 uses
  %.6216255 = phi ptr [ %i.gd, %.lr.ph258 ], [ %.0202288, %.preheader244 ] ; 3 uses
  %i.fs = load <16 x i32>, ptr %.6257, align 64, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %.6257, i64 4
  %i.fu = load <16 x i32>, ptr %i.ft, align 4, !tbaa !13
  %i.fv = load <16 x i32>, ptr %.6216255, align 64, !tbaa !13
  %i.fw = add <16 x i32> %i.fu, %i.fs
  %i.fx = mul <16 x i32> %i.fw, %i.ci
  %i.fy = add <16 x i32> %i.fx, %i.ck
  %i.fz = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.fy, i32 range(i32 0, 256) %i.dw)
  %i.ga = add <16 x i32> %i.fz, %i.fv
  store <16 x i32> %i.ga, ptr %.6216255, align 64, !tbaa !13
  %i.gb = add nsw i32 %.0208256, -16
  %i.gc = getelementptr inbounds nuw i8, ptr %.6257, i64 64
  %i.gd = getelementptr inbounds nuw i8, ptr %.6216255, i64 64
  %i.ge = icmp sgt i32 %.0208256, 16
  br i1 %i.ge, label %.lr.ph258, label %.loopexit, !llvm.loop !87

.lr.ph:                                           ; preds = %.preheader246, %.lr.ph
  %.7254 = phi ptr [ %i.gp, %.lr.ph ], [ %.0203287, %.preheader246 ] ; 3 uses
  %.1209253 = phi i32 [ %i.go, %.lr.ph ], [ %.0205285, %.preheader246 ] ; 2 uses
  %.7217252 = phi ptr [ %i.gq, %.lr.ph ], [ %.0202288, %.preheader246 ] ; 3 uses
  %i.gf = load <16 x i32>, ptr %.7254, align 64, !tbaa !13
  %i.gg = getelementptr inbounds i8, ptr %.7254, i64 -4
  %i.gh = load <16 x i32>, ptr %i.gg, align 4, !tbaa !13
  %i.gi = load <16 x i32>, ptr %.7217252, align 64, !tbaa !13
  %i.gj = add <16 x i32> %i.gh, %i.gf
  %i.gk = mul <16 x i32> %i.gj, %i.ci
  %i.gl = add <16 x i32> %i.gk, %i.ck
  %i.gm = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.gl, i32 range(i32 0, 256) %i.dw)
  %i.gn = add <16 x i32> %i.gm, %i.gi
  store <16 x i32> %i.gn, ptr %.7217252, align 64, !tbaa !13
  %i.go = add nsw i32 %.1209253, -16
  %i.gp = getelementptr inbounds nuw i8, ptr %.7254, i64 64
  %i.gq = getelementptr inbounds nuw i8, ptr %.7217252, i64 64
  %i.gr = icmp sgt i32 %.1209253, 16
  br i1 %i.gr, label %.lr.ph, label %.loopexit, !llvm.loop !88

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph258, %.lr.ph262, %.lr.ph266, %.lr.ph270, %.lr.ph274, %bb.f, %bb.e, %.preheader246, %.preheader244, %.preheader242, %.preheader240, %.preheader238, %.preheader236, %.preheader234, %.preheader
  %i.gs = xor i1 %.0.in289, true
  %.not.wide = icmp eq i64 %i.bx, 0
  br i1 %.not.wide, label %.loopexit248, label %bb.c, !llvm.loop !89

.loopexit248.sink.split:                          ; preds = %bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !13
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !32
  %.sink324 = select i1 %5, ptr %1, ptr %2
  %not.325 = xor i1 %5, true
  %i.gw = zext i1 %not.325 to i32
  %.sink = shl i32 %i.gv, %i.gw
  %i.gx = getelementptr inbounds nuw i8, ptr %.sink324, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !13
  store i32 %.sink, ptr %i.gy, align 4, !tbaa !32
  br label %.loopexit248

.loopexit248:                                     ; preds = %.loopexit, %.loopexit248.sink.split, %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local21avx512_rev_horz_ana64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %.loopexit232.sink.split

bb.b:                                             ; preds = %bb.a
  %. = select i1 %5, ptr %1, ptr %2
  %.in = getelementptr inbounds nuw i8, ptr %., i64 16
  %i.b = load ptr, ptr %.in, align 8, !tbaa !13   ; 4 uses
  %.pn210 = select i1 %5, ptr %2, ptr %1
  %.in209 = getelementptr inbounds nuw i8, ptr %.pn210, i64 16
  %i.c = load ptr, ptr %.in209, align 8, !tbaa !13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = icmp sgt i32 %4, 8
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = add nsw i32 %4, -9                       ; 2 uses
  %i.h = and i32 %i.g, 16
  %lcmp.mod.not.not = icmp eq i32 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.i = load <8 x double>, ptr %i.e, align 64, !tbaa !13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  %i.k = load <8 x double>, ptr %i.j, align 64, !tbaa !13 ; 2 uses
  %i.l = shufflevector <8 x double> %i.i, <8 x double> %i.k, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.m = shufflevector <8 x double> %i.i, <8 x double> %i.k, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x double> %i.l, ptr %i.b, align 64, !tbaa !13
  store <8 x double> %i.m, ptr %i.c, align 64, !tbaa !13
  %i.n = add nsw i32 %4, -16                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.044.i.unr = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.03543.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.03742.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.03941.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa441.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.lcssa440.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa439.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %i.q = icmp ult i32 %i.g, 16
  br i1 %i.q, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.039.lcssa.i = phi i32 [ %4, %bb.b ], [ %.lcssa440.unr, %.lr.ph.i.prol.loopexit ], [ %i.ao, %.lr.ph.i ] ; 5 uses
  %.037.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %.lcssa441.unr, %.lr.ph.i.prol.loopexit ], [ %i.ak, %.lr.ph.i ] ; 4 uses
  %.035.lcssa.i = phi ptr [ %i.c, %bb.b ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.b, %bb.b ], [ %.lcssa439.unr, %.lr.ph.i.prol.loopexit ], [ %i.ap, %.lr.ph.i ] ; 3 uses
  %i.r = icmp sgt i32 %.039.lcssa.i, 0
  br i1 %i.r, label %.lr.ph52.i.preheader, label %_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.s = add nuw i32 %.039.lcssa.i, 15
  %i.t = and i32 %i.s, 8
  %lcmp.mod443.not.not = icmp eq i32 %i.t, 0
  br i1 %lcmp.mod443.not.not, label %.lr.ph52.i.prol, label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.u = load <4 x double>, ptr %.037.lcssa.i, align 32, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 32
  %i.w = load <4 x double>, ptr %i.v, align 32, !tbaa !13 ; 2 uses
  %6 = shufflevector <4 x double> %i.u, <4 x double> %i.w, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %7 = shufflevector <4 x double> %i.u, <4 x double> %i.w, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x double> %6, ptr %.0.lcssa.i, align 32, !tbaa !13
  store <4 x double> %7, ptr %.035.lcssa.i, align 32, !tbaa !13
  %i.x = add nsw i32 %.039.lcssa.i, -8
  %i.y = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.035.lcssa.i, i64 32
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.151.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph52.i.preheader ], [ %i.z, %.lr.ph52.i.prol ]
  %.13650.i.unr = phi ptr [ %.035.lcssa.i, %.lr.ph52.i.preheader ], [ %i.aa, %.lr.ph52.i.prol ]
  %.13849.i.unr = phi ptr [ %.037.lcssa.i, %.lr.ph52.i.preheader ], [ %i.y, %.lr.ph52.i.prol ]
  %.14048.i.unr = phi i32 [ %.039.lcssa.i, %.lr.ph52.i.preheader ], [ %i.x, %.lr.ph52.i.prol ]
  %i.ab = icmp ult i32 %.039.lcssa.i, 9
  br i1 %i.ab, label %_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit, label %.lr.ph52.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.044.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %.044.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03543.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.03543.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03742.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.03742.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03941.i = phi i32 [ %i.ao, %.lr.ph.i ], [ %.03941.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ac = load <8 x double>, ptr %.03742.i, align 64, !tbaa !13 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03742.i, i64 128 ; 2 uses
  %i.ae = load <8 x double>, ptr %i.ad, align 64, !tbaa !13 ; 2 uses
  %i.af = shufflevector <8 x double> %i.ac, <8 x double> %i.ae, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ag = shufflevector <8 x double> %i.ac, <8 x double> %i.ae, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x double> %i.af, ptr %.044.i, align 64, !tbaa !13
  store <8 x double> %i.ag, ptr %.03543.i, align 64, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.044.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.03543.i, i64 64
  %i.aj = load <8 x double>, ptr %i.ad, align 64, !tbaa !13 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.03742.i, i64 256 ; 3 uses
  %i.al = load <8 x double>, ptr %i.ak, align 64, !tbaa !13 ; 2 uses
  %i.am = shufflevector <8 x double> %i.aj, <8 x double> %i.al, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.an = shufflevector <8 x double> %i.aj, <8 x double> %i.al, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x double> %i.am, ptr %i.ah, align 64, !tbaa !13
  store <8 x double> %i.an, ptr %i.ai, align 64, !tbaa !13
  %i.ao = add nsw i32 %.03941.i, -32              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.044.i, i64 128 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03543.i, i64 128 ; 2 uses
  %i.ar = icmp sgt i32 %.03941.i, 40
  br i1 %i.ar, label %.lr.ph.i, label %.preheader.i, !llvm.loop !90

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.151.i = phi ptr [ %i.bd, %.lr.ph52.i ], [ %.151.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.13650.i = phi ptr [ %i.be, %.lr.ph52.i ], [ %.13650.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.13849.i = phi ptr [ %i.bc, %.lr.ph52.i ], [ %.13849.i.unr, %.lr.ph52.i.prol.loopexit ] ; 5 uses
  %.14048.i = phi i32 [ %i.bb, %.lr.ph52.i ], [ %.14048.i.unr, %.lr.ph52.i.prol.loopexit ] ; 2 uses
  %i.as = load <4 x double>, ptr %.13849.i, align 32, !tbaa !13 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.13849.i, i64 32
  %i.au = load <4 x double>, ptr %i.at, align 32, !tbaa !13 ; 2 uses
  %8 = shufflevector <4 x double> %i.as, <4 x double> %i.au, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %9 = shufflevector <4 x double> %i.as, <4 x double> %i.au, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x double> %8, ptr %.151.i, align 32, !tbaa !13
  store <4 x double> %9, ptr %.13650.i, align 32, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.13849.i, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.151.i, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %.13650.i, i64 32
  %i.ay = load <4 x double>, ptr %i.av, align 32, !tbaa !13 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.13849.i, i64 96
  %i.ba = load <4 x double>, ptr %i.az, align 32, !tbaa !13 ; 2 uses
  %10 = shufflevector <4 x double> %i.ay, <4 x double> %i.ba, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %11 = shufflevector <4 x double> %i.ay, <4 x double> %i.ba, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x double> %10, ptr %i.aw, align 32, !tbaa !13
  store <4 x double> %11, ptr %i.ax, align 32, !tbaa !13
  %i.bb = add nsw i32 %.14048.i, -16
  %i.bc = getelementptr inbounds nuw i8, ptr %.13849.i, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %.151.i, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %.13650.i, i64 64
  %i.bf = icmp sgt i32 %.14048.i, 16
  br i1 %i.bf, label %.lr.ph52.i, label %_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit, !llvm.loop !91

_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit: ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %.preheader.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !22  ; 2 uses
  %.not269 = icmp eq i8 %i.bh, 0
  br i1 %.not269, label %.loopexit232, label %.lr.ph276

.lr.ph276:                                        ; preds = %_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit
  %not. = xor i1 %5, true
  %i.bi = zext i1 %not. to i32
  %i.bj = add i32 %4, %i.bi
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = zext i1 %5 to i32
  %i.bm = add i32 %4, %i.bl
  %i.bn = lshr i32 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = zext i8 %i.bh to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph276, %.loopexit
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph276 ], [ %i.bu, %.loopexit ]
  %.0.in275 = phi i1 [ %5, %.lr.ph276 ], [ %i.mm, %.loopexit ] ; 5 uses
  %.0186274 = phi ptr [ %i.br, %.lr.ph276 ], [ %.0187273, %.loopexit ] ; 25 uses
  %.0187273 = phi ptr [ %i.bp, %.lr.ph276 ], [ %.0186274, %.loopexit ] ; 30 uses
  %.0188272 = phi i32 [ %i.bn, %.lr.ph276 ], [ %.0189271, %.loopexit ] ; 3 uses
  %.0189271 = phi i32 [ %i.bk, %.lr.ph276 ], [ %.0188272, %.loopexit ] ; 25 uses
  %i.bu = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !13 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !13 ; 2 uses
  %i.cb = load i8, ptr %i.bw, align 4, !tbaa !13  ; 6 uses
  %i.cc = sext i16 %i.ca to i64                   ; 11 uses
  %i.cd = insertelement <8 x i64> poison, i64 %i.cc, i64 0
  %i.ce = shufflevector <8 x i64> %i.cd, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cf = load i64, ptr %.0187273, align 8, !tbaa !27
  %i.cg = getelementptr inbounds i8, ptr %.0187273, i64 -8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !27
  %i.ch = add nsw i32 %.0188272, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0187273, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !27
  %i.cl = zext nneg i32 %.0188272 to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.0187273, i64 %i.cl
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !27
  %i.cn = icmp eq i16 %i.by, 1
  br i1 %i.cn, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not282 = icmp eq i32 %.0189271, 0             ; 2 uses
  br i1 %.0.in275, label %.preheader, label %.preheader218

.preheader218:                                    ; preds = %bb.d
  br i1 %.not282, label %.loopexit, label %.lr.ph264

.lr.ph264:                                        ; preds = %.preheader218
  %i.co = zext i8 %i.cb to i32
  br label %bb.f

.preheader:                                       ; preds = %bb.d
  br i1 %.not282, label %.loopexit, label %.lr.ph268

.lr.ph268:                                        ; preds = %.preheader
  %i.cp = zext i8 %i.cb to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph268, %bb.e
  %.0192267 = phi ptr [ %.0187273, %.lr.ph268 ], [ %i.cz, %bb.e ] ; 3 uses
  %.0194266 = phi ptr [ %.0186274, %.lr.ph268 ], [ %i.da, %bb.e ] ; 3 uses
  %.0202265 = phi i32 [ %.0189271, %.lr.ph268 ], [ %i.cy, %bb.e ] ; 2 uses
  %i.cq = load <8 x i64>, ptr %.0192267, align 64, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.0192267, i64 8
  %i.cs = load <8 x i64>, ptr %i.cr, align 8, !tbaa !13
  %i.ct = load <8 x i64>, ptr %.0194266, align 64, !tbaa !13
  %i.cu = add <8 x i64> %i.cq, %i.ce
  %i.cv = add <8 x i64> %i.cu, %i.cs
  %i.cw = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.cv, i32 range(i32 0, 256) %i.cp)
  %i.cx = add <8 x i64> %i.cw, %i.ct
  store <8 x i64> %i.cx, ptr %.0194266, align 64, !tbaa !13
  %i.cy = add nsw i32 %.0202265, -8
  %i.cz = getelementptr inbounds nuw i8, ptr %.0192267, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %.0194266, i64 64
  %i.db = icmp sgt i32 %.0202265, 8
  br i1 %i.db, label %bb.e, label %.loopexit, !llvm.loop !92

bb.f:                                             ; preds = %.lr.ph264, %bb.f
  %.1193263 = phi ptr [ %.0187273, %.lr.ph264 ], [ %i.dl, %bb.f ] ; 3 uses
  %.1195262 = phi ptr [ %.0186274, %.lr.ph264 ], [ %i.dm, %bb.f ] ; 3 uses
  %.1203261 = phi i32 [ %.0189271, %.lr.ph264 ], [ %i.dk, %bb.f ] ; 2 uses
  %i.dc = load <8 x i64>, ptr %.1193263, align 64, !tbaa !13
  %i.dd = getelementptr inbounds i8, ptr %.1193263, i64 -8
  %i.de = load <8 x i64>, ptr %i.dd, align 8, !tbaa !13
  %i.df = load <8 x i64>, ptr %.1195262, align 64, !tbaa !13
  %i.dg = add <8 x i64> %i.dc, %i.ce
  %i.dh = add <8 x i64> %i.dg, %i.de
  %i.di = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.dh, i32 range(i32 0, 256) %i.co)
  %i.dj = add <8 x i64> %i.di, %i.df
  store <8 x i64> %i.dj, ptr %.1195262, align 64, !tbaa !13
  %i.dk = add nsw i32 %.1203261, -8
  %i.dl = getelementptr inbounds nuw i8, ptr %.1193263, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.1195262, i64 64
  %i.dn = icmp sgt i32 %.1203261, 8
  br i1 %i.dn, label %bb.f, label %.loopexit, !llvm.loop !93

bb.g:                                             ; preds = %bb.c
  %i.do = icmp eq i16 %i.by, -1                   ; 2 uses
  %i.dp = icmp eq i16 %i.ca, 1
  %or.cond = and i1 %i.do, %i.dp
  %i.dq = zext i8 %i.cb to i32                    ; 2 uses
  %i.dr = icmp eq i8 %i.cb, 1
  %or.cond4 = select i1 %or.cond, i1 %i.dr, i1 false
  %.not280 = icmp eq i32 %.0189271, 0             ; 6 uses
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in275, label %.preheader220, label %.preheader222

.preheader222:                                    ; preds = %bb.h
  br i1 %.not280, label %.loopexit, label %.lr.ph256

.preheader220:                                    ; preds = %bb.h
  br i1 %.not280, label %.loopexit, label %.lr.ph260

.lr.ph260:                                        ; preds = %.preheader220, %.lr.ph260
  %.2259 = phi ptr [ %i.ea, %.lr.ph260 ], [ %.0187273, %.preheader220 ] ; 3 uses
  %.2196258 = phi ptr [ %i.eb, %.lr.ph260 ], [ %.0186274, %.preheader220 ] ; 3 uses
  %.0204257 = phi i32 [ %i.dz, %.lr.ph260 ], [ %.0189271, %.preheader220 ] ; 2 uses
  %i.ds = load <8 x i64>, ptr %.2259, align 64, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.2259, i64 8
  %i.du = load <8 x i64>, ptr %i.dt, align 8, !tbaa !13
  %i.dv = load <8 x i64>, ptr %.2196258, align 64, !tbaa !13
  %i.dw = add <8 x i64> %i.du, %i.ds
  %i.dx = ashr <8 x i64> %i.dw, splat (i64 1)
  %i.dy = sub <8 x i64> %i.dv, %i.dx
  store <8 x i64> %i.dy, ptr %.2196258, align 64, !tbaa !13
  %i.dz = add nsw i32 %.0204257, -8
  %i.ea = getelementptr inbounds nuw i8, ptr %.2259, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %.2196258, i64 64
  %i.ec = icmp sgt i32 %.0204257, 8
  br i1 %i.ec, label %.lr.ph260, label %.loopexit, !llvm.loop !94

.lr.ph256:                                        ; preds = %.preheader222, %.lr.ph256
  %.3255 = phi ptr [ %i.el, %.lr.ph256 ], [ %.0187273, %.preheader222 ] ; 3 uses
  %.3197254 = phi ptr [ %i.em, %.lr.ph256 ], [ %.0186274, %.preheader222 ] ; 3 uses
  %.1205253 = phi i32 [ %i.ek, %.lr.ph256 ], [ %.0189271, %.preheader222 ] ; 2 uses
  %i.ed = load <8 x i64>, ptr %.3255, align 64, !tbaa !13
  %i.ee = getelementptr inbounds i8, ptr %.3255, i64 -8
  %i.ef = load <8 x i64>, ptr %i.ee, align 8, !tbaa !13
  %i.eg = load <8 x i64>, ptr %.3197254, align 64, !tbaa !13
  %i.eh = add <8 x i64> %i.ef, %i.ed
  %i.ei = ashr <8 x i64> %i.eh, splat (i64 1)
  %i.ej = sub <8 x i64> %i.eg, %i.ei
  store <8 x i64> %i.ej, ptr %.3197254, align 64, !tbaa !13
  %i.ek = add nsw i32 %.1205253, -8
  %i.el = getelementptr inbounds nuw i8, ptr %.3255, i64 64
  %i.em = getelementptr inbounds nuw i8, ptr %.3197254, i64 64
  %i.en = icmp sgt i32 %.1205253, 8
  br i1 %i.en, label %.lr.ph256, label %.loopexit, !llvm.loop !95

bb.i:                                             ; preds = %bb.g
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.0.in275, label %.preheader224, label %.preheader226

.preheader226:                                    ; preds = %bb.j
  br i1 %.not280, label %.loopexit, label %.lr.ph248

.preheader224:                                    ; preds = %bb.j
  br i1 %.not280, label %.loopexit, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader224, %.lr.ph252
  %.0191251 = phi i32 [ %i.ew, %.lr.ph252 ], [ %.0189271, %.preheader224 ] ; 2 uses
  %.4250 = phi ptr [ %i.ex, %.lr.ph252 ], [ %.0187273, %.preheader224 ] ; 3 uses
  %.4198249 = phi ptr [ %i.ey, %.lr.ph252 ], [ %.0186274, %.preheader224 ] ; 3 uses
  %i.eo = load <8 x i64>, ptr %.4250, align 64, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %.4250, i64 8
  %i.eq = load <8 x i64>, ptr %i.ep, align 8, !tbaa !13
  %i.er = load <8 x i64>, ptr %.4198249, align 64, !tbaa !13
  %i.es = add <8 x i64> %i.eo, %i.eq
  %i.et = sub <8 x i64> %i.ce, %i.es
  %i.eu = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.et, i32 range(i32 0, 256) %i.dq)
  %i.ev = add <8 x i64> %i.eu, %i.er
  store <8 x i64> %i.ev, ptr %.4198249, align 64, !tbaa !13
  %i.ew = add nsw i32 %.0191251, -8
  %i.ex = getelementptr inbounds nuw i8, ptr %.4250, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %.4198249, i64 64
  %i.ez = icmp sgt i32 %.0191251, 8
end_hunk_1
