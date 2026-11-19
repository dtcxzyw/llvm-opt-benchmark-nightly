Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/basicretinafilter?download=true
inline.NumInlined: 322
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN2cv11bioinspired17BasicRetinaFilter45setProgressiveFilterConstants_CentredAccuracyEfffj:bb.a
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.fy
  store float %i.ge, ptr %i.gi, align 4, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !152
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11bioinspired17BasicRetinaFilter44setProgressiveFilterConstants_CustomAccuracyEfffRKSt8valarrayIfEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !34     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34
  %.not = icmp eq i64 %i.a, %i.c
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.5, i64 noundef 129) ; 0 uses
  %i.e = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 6 uses
  %.not.i.i.i54 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i54, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !71
  %.not.i1.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 67
  %i.n = load i8, ptr %i.m, align 1, !tbaa !72
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.n, %bb.d ], [ %i.r, %bb.e ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !34
  %.not43 = icmp eq i64 %i.v, %i.a
  br i1 %.not43, label %_ZNSt8valarrayIfE6resizeEmf.exit53, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !35
  tail call void @_ZdlPv(ptr noundef %.pre.i) #17
  store i64 %i.a, ptr %i.u, align 8, !tbaa !34
  %i.x = shl i64 %i.a, 2                          ; 2 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #16 ; 2 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !35
  %.not4.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not4.i.i.i, label %_ZNSt8valarrayIfE6resizeEmf.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.x, i1 false), !tbaa !37
  br label %_ZNSt8valarrayIfE6resizeEmf.exit

_ZNSt8valarrayIfE6resizeEmf.exit:                 ; preds = %.lr.ph.i.i.i.preheader, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i64, ptr %4, align 8, !tbaa !34    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !34
  %.not.i44 = icmp eq i64 %i.ac, %i.aa
  %.pre.i45 = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  br i1 %.not.i44, label %._crit_edge.i51, label %bb.h

._crit_edge.i51:                                  ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit
  %.pre5.i52 = shl i64 %i.aa, 2
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit
  tail call void @_ZdlPv(ptr noundef %.pre.i45) #17
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !34
  %i.ad = shl i64 %i.aa, 2                        ; 2 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #16 ; 2 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i51
  %.idx.pre-phi.i46 = phi i64 [ %.pre5.i52, %._crit_edge.i51 ], [ %i.ad, %bb.h ]
  %i.af = phi ptr [ %.pre.i45, %._crit_edge.i51 ], [ %i.ae, %bb.h ]
  %.not4.i.i.i47 = icmp eq i64 %i.aa, 0
  br i1 %.not4.i.i.i47, label %_ZNSt8valarrayIfE6resizeEmf.exit53, label %.lr.ph.i.i.i48.preheader

.lr.ph.i.i.i48.preheader:                         ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %.idx.pre-phi.i46, i1 false), !tbaa !37
  br label %_ZNSt8valarrayIfE6resizeEmf.exit53

_ZNSt8valarrayIfE6resizeEmf.exit53:               ; preds = %.lr.ph.i.i.i48.preheader, %bb.i, %bb.f
  %i.ag = fadd float %1, %2
  %i.ah = fmul float %3, %3
  %i.ai = fcmp ugt float %3, 0.000000e+00
  br i1 %i.ai, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit53
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 99) ; 0 uses
  %i.ak = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !39
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65 ; 6 uses
  %.not.i.i.i55 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i55, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56: ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !71
  %.not.i1.i.i57 = icmp eq i8 %i.ar, 0
  br i1 %.not.i1.i.i57, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 67
  %i.at = load i8, ptr %i.as, align 1, !tbaa !72
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit59

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ap)
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef signext i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(570) %i.ap, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit59

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit59: ; preds = %bb.l, %bb.m
  %.0.i.i.i58 = phi i8 [ %i.at, %bb.l ], [ %i.ax, %bb.m ]
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i58)
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit59, %_ZNSt8valarrayIfE6resizeEmf.exit53
  %i.ba = mul i32 %5, 3                           ; 3 uses
  %i.bb = fadd float %i.ag, 1.000000e+00          ; 4 uses
  %i.bc = fmul float %i.ah, 1.600000e+00
  %i.bd = fdiv float %i.bb, %i.bc
  %i.be = fadd float %i.bd, 1.000000e+00          ; 3 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float -1.000000e+00)
  %i.bg = tail call noundef float @sqrtf(float noundef %i.bf) #17
  %i.bh = fsub float %i.be, %i.bg                 ; 2 uses
  %i.bi = zext i32 %i.ba to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  store float %i.bh, ptr %i.bl, align 4, !tbaa !37
  %i.bm = fsub float 1.000000e+00, %i.bh          ; 4 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = fmul float %i.bm, %i.bn
  %i.bp = fmul float %i.bm, %i.bo
  %i.bq = fdiv float %i.bp, %i.bb
  %i.br = add i32 %i.ba, 1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bs
  store float %i.bq, ptr %i.bt, align 4, !tbaa !37
  %i.bu = add i32 %i.ba, 2
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bv
  store float %2, ptr %i.bw, align 4, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !42 ; 3 uses
  %i.bz = trunc i64 %i.by to i32                  ; 3 uses
  %.not62 = icmp eq i32 %i.bz, 0
  br i1 %.not62, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !41 ; 3 uses
  %i.cc = and i64 %i.cb, 4294967295
  %.not63 = icmp eq i64 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 4 uses
  br i1 %.not63, label %.loopexit, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !35 ; 5 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !35 ; 6 uses
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !35 ; 6 uses
  %wide.trip.count = and i64 %i.cb, 4294967295    ; 5 uses
  %i.ck = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.cl = shl i64 %i.by, 2
  %6 = add i64 %i.cl, 17179869180
  %7 = and i64 %6, 17179869180
  %i.cm = shl nuw nsw i64 %wide.trip.count, 2
  %i.cn = add nuw nsw i64 %7, %i.cm               ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.cn ; 2 uses
  %scevgep90 = getelementptr i8, ptr %i.cj, i64 %i.cn ; 3 uses
  %scevgep91 = getelementptr i8, ptr %i.ci, i64 %i.cn ; 3 uses
  %scevgep92.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %ident.check = icmp ne i64 %i.by, 1
  %i.co = trunc i64 %i.ck to i32
  %i.cp = icmp ugt i64 %i.ck, 4294967295
  %invariant.op = or i1 %i.cp, %ident.check
  %bound0 = icmp ult ptr %i.cd, %scevgep91
  %bound1 = icmp ult ptr %i.ci, %scevgep92.a
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %i.cd, %scevgep90
  %bound194 = icmp ult ptr %i.cj, %scevgep92.a
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict, %found.conflict95
  %bound096 = icmp ult ptr %i.ci, %scevgep90
  %bound197 = icmp ult ptr %i.cj, %scevgep91
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx, %found.conflict98
  %bound0100 = icmp ult ptr %i.ci, %scevgep
  %bound1101 = icmp ult ptr %i.ch, %scevgep91
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %i.cj, %scevgep
  %bound1105 = icmp ult ptr %i.ch, %scevgep90
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %n.vec = and i64 %i.cb, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.04261 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.di, %._crit_edge ] ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.cq = xor i32 %.04261, -1
  %i.cr = icmp ult i32 %i.cq, %i.co
  %.reass = or i1 %i.cr, %invariant.op
  %brmerge = select i1 %.reass, i1 true, i1 %conflict.rdx107
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.cs = load float, ptr %i.cd, align 4, !tbaa !78, !alias.scope !175, !noalias !176
  %broadcast.splatinsert108 = insertelement <4 x float> poison, float %i.cs, i64 0
  %broadcast.splat109 = shufflevector <4 x float> %broadcast.splatinsert108, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = trunc nuw i64 %index to i32
  %i.cu = add i32 %.04261, %i.ct
  %i.cv = zext i32 %i.cu to i64                   ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cv
  %wide.load = load <4 x float>, ptr %i.cw, align 4, !tbaa !37, !alias.scope !177
  %i.cx = fmul <4 x float> %broadcast.splat109, %wide.load ; 2 uses
  %i.cy = fcmp ogt <4 x float> %i.cx, splat (float 1.000000e+00)
  %i.cz = select <4 x i1> %i.cy, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cx ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cv
  store <4 x float> %i.cz, ptr %i.da, align 4, !tbaa !37, !alias.scope !178, !noalias !179
  %i.db = fsub <4 x float> splat (float 1.000000e+00), %i.cz ; 4 uses
  %i.dc = fmul <4 x float> %i.db, %i.db
  %i.dd = fmul <4 x float> %i.db, %i.dc
  %i.de = fmul <4 x float> %i.db, %i.dd
  %i.df = fdiv <4 x float> %i.de, %broadcast.splat
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cv
  store <4 x float> %i.df, ptr %i.dg, align 4, !tbaa !37, !alias.scope !180, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.di = add nuw i32 %.04261, 1                  ; 2 uses
  %exitcond65.not = icmp eq i32 %i.di, %i.bz
  br i1 %exitcond65.not, label %.loopexit, label %.preheader, !llvm.loop !173

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dj = trunc nuw i64 %indvars.iv to i32
  %i.dk = mul i32 %i.dj, %i.bz
  %i.dl = add i32 %i.dk, %.04261
  %i.dm = load float, ptr %i.cd, align 4, !tbaa !78
  %i.dn = zext i32 %i.dl to i64                   ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !37
  %i.dq = fmul float %i.dm, %i.dp                 ; 2 uses
  %i.dr = fcmp ogt float %i.dq, 1.000000e+00
  %spec.store.select = select i1 %i.dr, float 1.000000e+00, float %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dn
  store float %spec.store.select, ptr %i.ds, align 4, !tbaa !37
  %i.dt = fsub float 1.000000e+00, %spec.store.select ; 4 uses
  %i.du = fmul float %i.dt, %i.dt
  %i.dv = fmul float %i.dt, %i.du
  %i.dw = fmul float %i.dt, %i.dv
  %i.dx = fdiv float %i.dw, %i.bb
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dn
  store float %i.dx, ptr %i.dy, align 4, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !174

.loopexit:                                        ; preds = %._crit_edge, %bb.n, %.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv11bioinspired17BasicRetinaFilter25runFilter_LocalAdapdationERKSt8valarrayIfES5_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Range", align 4         ; 6 uses
  %4 = alloca %"class.cv::bioinspired::BasicRetinaFilter::Parallel_localAdaptation", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = trunc i64 %i.h to i32                    ; 6 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %i.i, 8
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.i, -8
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.017.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.ba, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01316.i.epil.init = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.ay, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.017.i.epil = phi float [ %i.m, %.lr.ph.i.epil ], [ %.017.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.01316.i.epil = phi ptr [ %i.k, %.lr.ph.i.epil ], [ %.01316.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.01316.i.epil, i64 4
  %i.l = load float, ptr %.01316.i.epil, align 4, !tbaa !37
  %i.m = fadd float %.017.i.epil, %i.l            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !181

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ba, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.i.epil ]
  %i.n = uitofp i32 %i.i to float
  %i.o = fdiv float %.0.lcssa.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load float, ptr %i.q, align 8, !tbaa !81
  %i.s = fmul float %i.o, %i.r                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %i.s, ptr %i.t, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !tbaa !84
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.i, ptr %i.u, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.w = load float, ptr %i.v, align 4, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv11bioinspired17BasicRetinaFilter24Parallel_localAdaptationE, i64 16), ptr %4, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.d, ptr %i.x, align 8, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %i.y, align 8, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.z, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float 1.000000e+00, ptr %i.aa, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.s, ptr %i.ab, align 4, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.w, ptr %i.ac, align 8, !tbaa !93
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef -1.000000e+00)
          to label %_ZN2cv11bioinspired17BasicRetinaFilter25_localLuminanceAdaptationEPKfS3_Pfb.exit unwind label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.017.i = phi float [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.ba, %.lr.ph.i ]
  %.01316.i = phi ptr [ %i.b, %.lr.ph.i.preheader.new ], [ %i.ay, %.lr.ph.i ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.01316.i, i64 4
  %i.ae = load float, ptr %.01316.i, align 4, !tbaa !37
  %i.af = fadd float %.017.i, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.01316.i, i64 8
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !37
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.01316.i, i64 12
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !37
  %i.al = fadd float %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.01316.i, i64 16
  %i.an = load float, ptr %i.aj, align 4, !tbaa !37
  %i.ao = fadd float %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.01316.i, i64 20
  %i.aq = load float, ptr %i.am, align 4, !tbaa !37
  %i.ar = fadd float %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.01316.i, i64 24
  %i.at = load float, ptr %i.ap, align 4, !tbaa !37
  %i.au = fadd float %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.01316.i, i64 28
  %i.aw = load float, ptr %i.as, align 4, !tbaa !37
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.01316.i, i64 32 ; 2 uses
  %i.az = load float, ptr %i.av, align 4, !tbaa !37
  %i.ba = fadd float %i.ax, %i.az                 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
end_hunk_0
