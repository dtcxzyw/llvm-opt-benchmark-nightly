Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL19gemm_AT_BT_x86_int8ERKNS_3MatES2_S2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef %i.fj)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.w, !inline_history !0

bb.u:                                             ; preds = %bb.s
  %.not.i73 = icmp eq ptr %i.fj, null
  br i1 %.not.i73, label %_ZN4ncnn3MatD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.fj) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.w:                                             ; preds = %bb.t
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.r, %._crit_edge, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.fp = add nsw i32 %.052139, 1
  %i.fq = load i32, ptr %i.b, align 4, !tbaa !49
  %.not.not = icmp slt i32 %.052139, %i.fq
  br i1 %.not.not, label %bb.c, label %._crit_edge141

._crit_edge141:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge141, %bb.a
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4ncnn3MatD2Ev.exit56, %bb.c
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %lpad.loopexit.split-lp157, 0
  call void @__clang_call_terminate(ptr %i.fr) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #12 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn19cpu_support_x86_xopEv()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn32gemm_transB_packed_tile_int8_xopERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 6 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.e = icmp sgt i32 %4, 3
  br i1 %i.e, label %.preheader1077.lr.ph, label %.preheader1069.a

.preheader1077.lr.ph:                             ; preds = %bb.c
  %i.f = icmp sgt i32 %6, 7
  %i.g = icmp eq i32 %7, 0                        ; 4 uses
  %i.h = icmp sgt i32 %8, 1                       ; 4 uses
  %i.i = shl i32 %8, 2
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = add i32 %8, -2                           ; 2 uses
  %i.l = and i32 %i.k, -2
  %i.m = add i32 %i.l, 2                          ; 4 uses
  %i.n = and i32 %6, -8
  %i.o = zext i32 %i.k to i64                     ; 2 uses
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 8                  ; 2 uses
  %scevgep1649.a = getelementptr i8, ptr %i.b, i64 %i.r
  %i.s = shl nuw nsw i64 %i.p, 2
  %i.t = and i64 %i.o, 4294967294
  br label %.preheader1077

.preheader1077:                                   ; preds = %.preheader1077.lr.ph, %._crit_edge1232
  %indvars.iv = phi ptr [ %scevgep1649.a, %.preheader1077.lr.ph ], [ %scevgep1650, %._crit_edge1232 ] ; 3 uses
  %.06951236 = phi ptr [ %i.b, %.preheader1077.lr.ph ], [ %i.no, %._crit_edge1232 ] ; 9 uses
  %.06981235 = phi ptr [ %i.d, %.preheader1077.lr.ph ], [ %.4.lcssa, %._crit_edge1232 ] ; 2 uses
  %.07011234 = phi i32 [ 0, %.preheader1077.lr.ph ], [ %i.np, %._crit_edge1232 ]
  br i1 %i.f, label %.lr.ph1154, label %.preheader1076

.preheader1069.loopexit.a:                        ; preds = %._crit_edge1232
  %i.u = and i32 %4, 2147483644
  br label %.preheader1069.a

.preheader1069.a:                                 ; preds = %.preheader1069.loopexit.a, %bb.c
  %.0701.lcssa = phi i32 [ 0, %bb.c ], [ %i.u, %.preheader1069.loopexit.a ] ; 3 uses
  %.0698.lcssa = phi ptr [ %i.d, %bb.c ], [ %.4.lcssa, %.preheader1069.loopexit.a ] ; 2 uses
  %.0695.lcssa = phi ptr [ %i.b, %bb.c ], [ %i.no, %.preheader1069.loopexit.a ] ; 3 uses
  %i.v = or disjoint i32 %.0701.lcssa, 1
  %i.w = icmp slt i32 %i.v, %4
  br i1 %i.w, label %.preheader1068.lr.ph, label %.preheader1060.a

.preheader1068.lr.ph:                             ; preds = %.preheader1069.a
  %i.x = icmp sgt i32 %6, 7
  %i.y = icmp eq i32 %7, 0                        ; 4 uses
  %i.z = icmp sgt i32 %8, 1                       ; 4 uses
  %i.aa = shl i32 %8, 1
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = add i32 %8, -2                          ; 2 uses
  %i.ad = and i32 %i.ac, -2
  %i.ae = add i32 %i.ad, 2                        ; 4 uses
  %i.af = and i32 %6, -8
  %i.ag = zext i32 %i.ac to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 1                       ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = shl nuw nsw i64 %i.ah, 2
  %i.ak = add nuw nsw i64 %i.aj, 4                ; 2 uses
  %scevgep1659.a = getelementptr i8, ptr %.0695.lcssa, i64 %i.ak
  %i.al = and i64 %i.ag, 4294967294
  br label %.preheader1068

.preheader1076:                                   ; preds = %._crit_edge, %.preheader1077
  %.0716.lcssa = phi i32 [ 0, %.preheader1077 ], [ %i.n, %._crit_edge ] ; 3 uses
  %.0704.lcssa = phi ptr [ %i.c, %.preheader1077 ], [ %.2706.lcssa, %._crit_edge ] ; 2 uses
  %.1699.lcssa = phi ptr [ %.06981235, %.preheader1077 ], [ %i.fv, %._crit_edge ] ; 2 uses
  %i.am = or disjoint i32 %.0716.lcssa, 3
  %i.an = icmp slt i32 %i.am, %6
  br i1 %i.an, label %.lr.ph1183, label %.preheader1075

.lr.ph1154:                                       ; preds = %.preheader1077, %._crit_edge
  %.16991153 = phi ptr [ %i.fv, %._crit_edge ], [ %.06981235, %.preheader1077 ] ; 17 uses
  %.07041152 = phi ptr [ %.2706.lcssa, %._crit_edge ], [ %i.c, %.preheader1077 ] ; 2 uses
  %.07161151 = phi i32 [ %i.fw, %._crit_edge ], [ 0, %.preheader1077 ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph1154
  %i.ao = load <4 x i32>, ptr %.16991153, align 16, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %.16991153, i64 16
  %i.aq = load <4 x i32>, ptr %i.ap, align 16, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %.16991153, i64 32
  %i.as = load <4 x i32>, ptr %i.ar, align 16, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %.16991153, i64 48
  %i.au = load <4 x i32>, ptr %i.at, align 16, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %.16991153, i64 64
  %i.aw = load <4 x i32>, ptr %i.av, align 16, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %.16991153, i64 80
  %i.ay = load <4 x i32>, ptr %i.ax, align 16, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %.16991153, i64 96
  %i.ba = load <4 x i32>, ptr %i.az, align 16, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %.16991153, i64 112
  %i.bc = load <4 x i32>, ptr %i.bb, align 16, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph1154, %bb.d
  %i.bd = phi <4 x i32> [ %i.ba, %bb.d ], [ zeroinitializer, %.lr.ph1154 ] ; 2 uses
  %i.be = phi <4 x i32> [ %i.ay, %bb.d ], [ zeroinitializer, %.lr.ph1154 ] ; 2 uses
  %i.bf = phi <4 x i32> [ %i.aw, %bb.d ], [ zeroinitializer, %.lr.ph1154 ] ; 2 uses
  %i.bg = phi <4 x i32> [ %i.au, %bb.d ], [ zeroinitializer, %.lr.ph1154 ] ; 2 uses
  %i.bh = phi <4 x i32> [ %i.as, %bb.d ], [ zeroinitializer, %.lr.ph1154 ] ; 2 uses
  %i.bi = phi <4 x i32> [ %i.aq, %bb.d ], [ zeroinitializer, %.lr.ph1154 ] ; 2 uses
  %i.bj = phi <4 x i32> [ %i.ao, %bb.d ], [ zeroinitializer, %.lr.ph1154 ] ; 2 uses
  %i.bk = phi <4 x i32> [ %i.bc, %bb.d ], [ zeroinitializer, %.lr.ph1154 ] ; 2 uses
  br i1 %i.h, label %.lr.ph, label %.preheader1073.a

.preheader1073.a:                                 ; preds = %.lr.ph, %bb.e
  %.lcssa1102.a = phi <4 x i32> [ %i.bk, %bb.e ], [ %i.dc, %.lr.ph ] ; 2 uses
  %.lcssa1101.a = phi <4 x i32> [ %i.bd, %bb.e ], [ %i.da, %.lr.ph ] ; 2 uses
  %.lcssa1100 = phi <4 x i32> [ %i.be, %bb.e ], [ %i.cy, %.lr.ph ] ; 2 uses
  %.lcssa1099 = phi <4 x i32> [ %i.bf, %bb.e ], [ %i.cv, %.lr.ph ] ; 2 uses
  %.lcssa1098 = phi <4 x i32> [ %i.bg, %bb.e ], [ %i.cs, %.lr.ph ] ; 2 uses
  %.lcssa1097 = phi <4 x i32> [ %i.bh, %bb.e ], [ %i.cq, %.lr.ph ] ; 2 uses
  %.lcssa1096 = phi <4 x i32> [ %i.bi, %bb.e ], [ %i.cn, %.lr.ph ] ; 2 uses
  %.lcssa1095 = phi <4 x i32> [ %i.bj, %bb.e ], [ %i.ck, %.lr.ph ] ; 2 uses
  %.0726.lcssa = phi i32 [ 0, %bb.e ], [ %i.m, %.lr.ph ] ; 2 uses
  %.0724.lcssa = phi ptr [ %.06951236, %bb.e ], [ %i.dd, %.lr.ph ]
  %.1705.lcssa = phi ptr [ %.07041152, %bb.e ], [ %i.de, %.lr.ph ] ; 2 uses
  %i.bl = icmp slt i32 %.0726.lcssa, %8
  br i1 %i.bl, label %.lr.ph1141, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.17051127 = phi ptr [ %i.de, %.lr.ph ], [ %.07041152, %bb.e ] ; 2 uses
  %.07241126 = phi ptr [ %i.dd, %.lr.ph ], [ %.06951236, %bb.e ] ; 2 uses
  %.07261125 = phi i32 [ %i.df, %.lr.ph ], [ 0, %bb.e ]
  %i.bm = phi <4 x i32> [ %i.ck, %.lr.ph ], [ %i.bj, %bb.e ]
  %i.bn = phi <4 x i32> [ %i.cn, %.lr.ph ], [ %i.bi, %bb.e ]
  %i.bo = phi <4 x i32> [ %i.cq, %.lr.ph ], [ %i.bh, %bb.e ]
  %i.bp = phi <4 x i32> [ %i.cs, %.lr.ph ], [ %i.bg, %bb.e ]
  %i.bq = phi <4 x i32> [ %i.cv, %.lr.ph ], [ %i.bf, %bb.e ]
  %i.br = phi <4 x i32> [ %i.cy, %.lr.ph ], [ %i.be, %bb.e ]
  %i.bs = phi <4 x i32> [ %i.da, %.lr.ph ], [ %i.bd, %bb.e ]
  %i.bt = phi <4 x i32> [ %i.dc, %.lr.ph ], [ %i.bk, %bb.e ]
  %i.bu = load double, ptr %.07241126, align 1, !tbaa !87
  %i.bv = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bw = bitcast <2 x double> %i.bv to <2 x i64>
  %i.bx = shufflevector <2 x i64> %i.bw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.by = load <16 x i8>, ptr %.17051127, align 1, !tbaa !87 ; 3 uses
  %i.bz = bitcast <2 x i64> %i.bx to <16 x i8>    ; 2 uses
  %.lobit.i847 = ashr <16 x i8> %i.bz, splat (i8 7)
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> %.lobit.i847, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %.lobit.i846 = ashr <16 x i8> %i.by, splat (i8 7) ; 2 uses
  %i.cb = shufflevector <16 x i8> %i.by, <16 x i8> %.lobit.i846, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.by, <16 x i8> %.lobit.i846, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %9 = bitcast <16 x i8> %i.ca to <4 x i32>
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cd = bitcast <16 x i8> %i.cb to <4 x i32>
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.cf = bitcast <16 x i8> %i.cc to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ch = bitcast <16 x i8> %i.ca to <8 x i16>    ; 4 uses
  %i.ci = bitcast <16 x i8> %i.cb to <8 x i16>    ; 2 uses
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ch, <8 x i16> %i.ci)
  %i.ck = add <4 x i32> %i.cj, %i.bm              ; 2 uses
  %i.cl = bitcast <16 x i8> %i.cc to <8 x i16>    ; 2 uses
  %i.cm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ch, <8 x i16> %i.cl)
  %i.cn = add <4 x i32> %i.cm, %i.bn              ; 2 uses
  %i.co = bitcast <4 x i32> %10 to <8 x i16>      ; 4 uses
  %i.cp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.co, <8 x i16> %i.ci)
  %i.cq = add <4 x i32> %i.cp, %i.bo              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.co, <8 x i16> %i.cl)
  %i.cs = add <4 x i32> %i.cr, %i.bp              ; 2 uses
  %i.ct = bitcast <4 x i32> %i.ce to <8 x i16>    ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ch, <8 x i16> %i.ct)
  %i.cv = add <4 x i32> %i.cu, %i.bq              ; 2 uses
  %i.cw = bitcast <4 x i32> %i.cg to <8 x i16>    ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ch, <8 x i16> %i.cw)
  %i.cy = add <4 x i32> %i.cx, %i.br              ; 2 uses
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.co, <8 x i16> %i.ct)
  %i.da = add <4 x i32> %i.cz, %i.bs              ; 2 uses
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.co, <8 x i16> %i.cw)
  %i.dc = add <4 x i32> %i.db, %i.bt              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.07241126, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.17051127, i64 16 ; 2 uses
  %i.df = add nuw nsw i32 %.07261125, 2           ; 2 uses
  %i.dg = or disjoint i32 %i.df, 1
  %i.dh = icmp slt i32 %i.dg, %8
  br i1 %i.dh, label %.lr.ph, label %.preheader1073.a, !llvm.loop !543

.lr.ph1141:                                       ; preds = %.preheader1073.a, %.lr.ph1141
  %.27061140 = phi ptr [ %i.fm, %.lr.ph1141 ], [ %.1705.lcssa, %.preheader1073.a ] ; 2 uses
  %.17251139 = phi ptr [ %i.fl, %.lr.ph1141 ], [ %.0724.lcssa, %.preheader1073.a ] ; 2 uses
  %.17271138 = phi i32 [ %i.fn, %.lr.ph1141 ], [ %.0726.lcssa, %.preheader1073.a ]
  %i.di = phi <4 x i32> [ %i.ew, %.lr.ph1141 ], [ %.lcssa1095, %.preheader1073.a ]
  %i.dj = phi <4 x i32> [ %i.ey, %.lr.ph1141 ], [ %.lcssa1096, %.preheader1073.a ]
  %i.dk = phi <4 x i32> [ %i.fa, %.lr.ph1141 ], [ %.lcssa1097, %.preheader1073.a ]
  %i.dl = phi <4 x i32> [ %i.fc, %.lr.ph1141 ], [ %.lcssa1098, %.preheader1073.a ]
  %i.dm = phi <4 x i32> [ %i.fe, %.lr.ph1141 ], [ %.lcssa1099, %.preheader1073.a ]
  %i.dn = phi <4 x i32> [ %i.fg, %.lr.ph1141 ], [ %.lcssa1100, %.preheader1073.a ]
  %i.do = phi <4 x i32> [ %i.fi, %.lr.ph1141 ], [ %.lcssa1101.a, %.preheader1073.a ]
  %i.dp = phi <4 x i32> [ %i.fk, %.lr.ph1141 ], [ %.lcssa1102.a, %.preheader1073.a ]
  %i.dq = load float, ptr %.17251139, align 1, !tbaa !87
  %i.dr = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = load i64, ptr %.27061140, align 1, !tbaa !87
  %i.du = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dt, i64 0
  %i.dv = bitcast <4 x float> %i.ds to <16 x i8>  ; 2 uses
  %.lobit.i845 = ashr <16 x i8> %i.dv, splat (i8 7)
  %i.dw = shufflevector <16 x i8> %i.dv, <16 x i8> %.lobit.i845, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dx = bitcast <2 x i64> %i.du to <16 x i8>    ; 2 uses
  %.lobit.i844 = ashr <16 x i8> %i.dx, splat (i8 7)
  %i.dy = shufflevector <16 x i8> %i.dx, <16 x i8> %.lobit.i844, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dz = bitcast <16 x i8> %i.dw to <4 x i32>
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.eb = bitcast <16 x i8> %i.dy to <8 x i16>    ; 5 uses
  %i.ec = shufflevector <8 x i16> %i.eb, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 4 uses
  %i.ed = bitcast <16 x i8> %i.dw to <8 x i16>    ; 4 uses
  %i.ee = mul <8 x i16> %i.ed, %i.eb              ; 2 uses
  %i.ef = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ed, <8 x i16> %i.eb) ; 2 uses
  %i.eg = bitcast <4 x i32> %i.ea to <8 x i16>    ; 4 uses
  %i.eh = mul <8 x i16> %i.eg, %i.eb              ; 2 uses
  %i.ei = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.eg, <8 x i16> %i.eb) ; 2 uses
  %i.ej = mul <8 x i16> %i.ec, %i.ed              ; 2 uses
  %i.ek = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ed, <8 x i16> %i.ec) ; 2 uses
  %i.el = mul <8 x i16> %i.ec, %i.eg              ; 2 uses
  %i.em = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.eg, <8 x i16> %i.ec) ; 2 uses
  %i.en = shufflevector <8 x i16> %i.ee, <8 x i16> %i.ef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eo = shufflevector <8 x i16> %i.ee, <8 x i16> %i.ef, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ep = shufflevector <8 x i16> %i.eh, <8 x i16> %i.ei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eq = shufflevector <8 x i16> %i.eh, <8 x i16> %i.ei, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.er = shufflevector <8 x i16> %i.ej, <8 x i16> %i.ek, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.es = shufflevector <8 x i16> %i.ej, <8 x i16> %i.ek, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.et = shufflevector <8 x i16> %i.el, <8 x i16> %i.em, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eu = shufflevector <8 x i16> %i.el, <8 x i16> %i.em, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ev = bitcast <8 x i16> %i.en to <4 x i32>
  %i.ew = add <4 x i32> %i.di, %i.ev              ; 2 uses
  %i.ex = bitcast <8 x i16> %i.eo to <4 x i32>
  %i.ey = add <4 x i32> %i.dj, %i.ex              ; 2 uses
  %i.ez = bitcast <8 x i16> %i.ep to <4 x i32>
  %i.fa = add <4 x i32> %i.dk, %i.ez              ; 2 uses
  %i.fb = bitcast <8 x i16> %i.eq to <4 x i32>
  %i.fc = add <4 x i32> %i.dl, %i.fb              ; 2 uses
  %i.fd = bitcast <8 x i16> %i.er to <4 x i32>
  %i.fe = add <4 x i32> %i.dm, %i.fd              ; 2 uses
  %i.ff = bitcast <8 x i16> %i.es to <4 x i32>
  %i.fg = add <4 x i32> %i.dn, %i.ff              ; 2 uses
  %i.fh = bitcast <8 x i16> %i.et to <4 x i32>
  %i.fi = add <4 x i32> %i.do, %i.fh              ; 2 uses
  %i.fj = bitcast <8 x i16> %i.eu to <4 x i32>
  %i.fk = add <4 x i32> %i.dp, %i.fj              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.17251139, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %.27061140, i64 8 ; 2 uses
  %i.fn = add nuw nsw i32 %.17271138, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.fn, %8
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1141, !llvm.loop !544

._crit_edge:                                      ; preds = %.lr.ph1141, %.preheader1073.a
  %.lcssa1110.a = phi <4 x i32> [ %.lcssa1102.a, %.preheader1073.a ], [ %i.fk, %.lr.ph1141 ]
  %.lcssa1109.a = phi <4 x i32> [ %.lcssa1101.a, %.preheader1073.a ], [ %i.fi, %.lr.ph1141 ]
  %.lcssa1108 = phi <4 x i32> [ %.lcssa1100, %.preheader1073.a ], [ %i.fg, %.lr.ph1141 ]
  %.lcssa1107 = phi <4 x i32> [ %.lcssa1099, %.preheader1073.a ], [ %i.fe, %.lr.ph1141 ]
  %.lcssa1106 = phi <4 x i32> [ %.lcssa1098, %.preheader1073.a ], [ %i.fc, %.lr.ph1141 ]
  %.lcssa1105 = phi <4 x i32> [ %.lcssa1097, %.preheader1073.a ], [ %i.fa, %.lr.ph1141 ]
  %.lcssa1104 = phi <4 x i32> [ %.lcssa1096, %.preheader1073.a ], [ %i.ey, %.lr.ph1141 ]
  %.lcssa1103 = phi <4 x i32> [ %.lcssa1095, %.preheader1073.a ], [ %i.ew, %.lr.ph1141 ]
  %.2706.lcssa = phi ptr [ %.1705.lcssa, %.preheader1073.a ], [ %i.fm, %.lr.ph1141 ] ; 2 uses
  store <4 x i32> %.lcssa1103, ptr %.16991153, align 16, !tbaa !87
  %i.fo = getelementptr inbounds nuw i8, ptr %.16991153, i64 16
  store <4 x i32> %.lcssa1104, ptr %i.fo, align 16, !tbaa !87
  %i.fp = getelementptr inbounds nuw i8, ptr %.16991153, i64 32
  store <4 x i32> %.lcssa1105, ptr %i.fp, align 16, !tbaa !87
  %i.fq = getelementptr inbounds nuw i8, ptr %.16991153, i64 48
  store <4 x i32> %.lcssa1106, ptr %i.fq, align 16, !tbaa !87
  %i.fr = getelementptr inbounds nuw i8, ptr %.16991153, i64 64
  store <4 x i32> %.lcssa1107, ptr %i.fr, align 16, !tbaa !87
  %i.fs = getelementptr inbounds nuw i8, ptr %.16991153, i64 80
  store <4 x i32> %.lcssa1108, ptr %i.fs, align 16, !tbaa !87
  %i.ft = getelementptr inbounds nuw i8, ptr %.16991153, i64 96
  store <4 x i32> %.lcssa1109.a, ptr %i.ft, align 16, !tbaa !87
  %i.fu = getelementptr inbounds nuw i8, ptr %.16991153, i64 112
  store <4 x i32> %.lcssa1110.a, ptr %i.fu, align 16, !tbaa !87
  %i.fv = getelementptr inbounds nuw i8, ptr %.16991153, i64 128 ; 2 uses
  %i.fw = add nuw nsw i32 %.07161151, 8           ; 2 uses
  %i.fx = or disjoint i32 %i.fw, 7
  %i.fy = icmp slt i32 %i.fx, %6
  br i1 %i.fy, label %.lr.ph1154, label %.preheader1076, !llvm.loop !545

.preheader1075:                                   ; preds = %._crit_edge1174, %.preheader1076
  %.1717.lcssa = phi i32 [ %.0716.lcssa, %.preheader1076 ], [ %i.jj, %._crit_edge1174 ] ; 3 uses
  %.3707.lcssa = phi ptr [ %.0704.lcssa, %.preheader1076 ], [ %.5709.lcssa, %._crit_edge1174 ] ; 2 uses
  %.2700.lcssa = phi ptr [ %.1699.lcssa, %.preheader1076 ], [ %i.ji, %._crit_edge1174 ] ; 2 uses
  %i.fz = or disjoint i32 %.1717.lcssa, 1
  %i.ga = icmp slt i32 %i.fz, %6
  br i1 %i.ga, label %.lr.ph1208, label %.preheader1074

.lr.ph1183:                                       ; preds = %.preheader1076, %._crit_edge1174
  %.27001182 = phi ptr [ %i.ji, %._crit_edge1174 ], [ %.1699.lcssa, %.preheader1076 ] ; 9 uses
  %.37071181 = phi ptr [ %.5709.lcssa, %._crit_edge1174 ], [ %.0704.lcssa, %.preheader1076 ] ; 3 uses
  %.17171180 = phi i32 [ %i.jj, %._crit_edge1174 ], [ %.0716.lcssa, %.preheader1076 ]
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph1183
  %i.gb = load <4 x i32>, ptr %.27001182, align 16, !tbaa !87
  %i.gc = getelementptr inbounds nuw i8, ptr %.27001182, i64 16
  %i.gd = load <4 x i32>, ptr %i.gc, align 16, !tbaa !87
  %i.ge = getelementptr inbounds nuw i8, ptr %.27001182, i64 32
  %i.gf = load <4 x i32>, ptr %i.ge, align 16, !tbaa !87
  %i.gg = getelementptr inbounds nuw i8, ptr %.27001182, i64 48
  %i.gh = load <4 x i32>, ptr %i.gg, align 16, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph1183, %bb.f
  %i.gi = phi <4 x i32> [ %i.gf, %bb.f ], [ zeroinitializer, %.lr.ph1183 ] ; 2 uses
  %i.gj = phi <4 x i32> [ %i.gd, %bb.f ], [ zeroinitializer, %.lr.ph1183 ] ; 2 uses
  %i.gk = phi <4 x i32> [ %i.gb, %bb.f ], [ zeroinitializer, %.lr.ph1183 ] ; 2 uses
  %i.gl = phi <4 x i32> [ %i.gh, %bb.f ], [ zeroinitializer, %.lr.ph1183 ] ; 2 uses
  br i1 %i.h, label %.lr.ph1162, label %.preheader1072.a

.preheader1072.loopexit:                          ; preds = %.lr.ph1162
  %scevgep = getelementptr i8, ptr %.37071181, i64 %i.r
  br label %.preheader1072.a

.preheader1072.a:                                 ; preds = %.preheader1072.loopexit, %bb.g
  %.lcssa1114.a = phi <4 x i32> [ %i.gl, %bb.g ], [ %i.hm, %.preheader1072.loopexit ] ; 2 uses
  %.lcssa1113.a = phi <4 x i32> [ %i.gi, %bb.g ], [ %i.hk, %.preheader1072.loopexit ] ; 2 uses
  %.lcssa1112 = phi <4 x i32> [ %i.gj, %bb.g ], [ %i.hh, %.preheader1072.loopexit ] ; 2 uses
  %.lcssa1111 = phi <4 x i32> [ %i.gk, %bb.g ], [ %i.he, %.preheader1072.loopexit ] ; 2 uses
  %.0730.lcssa = phi i32 [ 0, %bb.g ], [ %i.m, %.preheader1072.loopexit ] ; 2 uses
  %.0728.lcssa = phi ptr [ %.06951236, %bb.g ], [ %i.hn, %.preheader1072.loopexit ]
  %.4708.lcssa = phi ptr [ %.37071181, %bb.g ], [ %scevgep, %.preheader1072.loopexit ] ; 2 uses
  %i.gm = icmp slt i32 %.0730.lcssa, %8
  br i1 %i.gm, label %.lr.ph1173, label %._crit_edge1174

.lr.ph1162:                                       ; preds = %bb.g, %.lr.ph1162
  %.47081160 = phi ptr [ %i.ho, %.lr.ph1162 ], [ %.37071181, %bb.g ] ; 2 uses
  %.07281159 = phi ptr [ %i.hn, %.lr.ph1162 ], [ %.06951236, %bb.g ] ; 2 uses
  %.07301158 = phi i32 [ %i.hp, %.lr.ph1162 ], [ 0, %bb.g ]
  %i.gn = phi <4 x i32> [ %i.he, %.lr.ph1162 ], [ %i.gk, %bb.g ]
  %i.go = phi <4 x i32> [ %i.hh, %.lr.ph1162 ], [ %i.gj, %bb.g ]
  %i.gp = phi <4 x i32> [ %i.hk, %.lr.ph1162 ], [ %i.gi, %bb.g ]
  %i.gq = phi <4 x i32> [ %i.hm, %.lr.ph1162 ], [ %i.gl, %bb.g ]
  %i.gr = load i64, ptr %.07281159, align 1, !tbaa !87
  %i.gs = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.gr, i64 0
  %i.gt = load i64, ptr %.47081160, align 1, !tbaa !87
  %i.gu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.gt, i64 0
  %i.gv = bitcast <2 x i64> %i.gs to <16 x i8>    ; 2 uses
  %.lobit.i843 = ashr <16 x i8> %i.gv, splat (i8 7)
  %i.gw = shufflevector <16 x i8> %i.gv, <16 x i8> %.lobit.i843, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.gx = bitcast <2 x i64> %i.gu to <16 x i8>    ; 2 uses
  %.lobit.i842 = ashr <16 x i8> %i.gx, splat (i8 7)
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> %.lobit.i842, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %11 = bitcast <16 x i8> %i.gw to <4 x i32>
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.gz = bitcast <16 x i8> %i.gy to <4 x i32>
  %i.ha = shufflevector <4 x i32> %i.gz, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.hb = bitcast <16 x i8> %i.gw to <8 x i16>    ; 2 uses
  %i.hc = bitcast <16 x i8> %i.gy to <8 x i16>    ; 2 uses
  %i.hd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.hb, <8 x i16> %i.hc)
  %i.he = add <4 x i32> %i.hd, %i.gn              ; 2 uses
  %i.hf = bitcast <4 x i32> %i.ha to <8 x i16>    ; 2 uses
  %i.hg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.hb, <8 x i16> %i.hf)
  %i.hh = add <4 x i32> %i.hg, %i.go              ; 2 uses
  %i.hi = bitcast <4 x i32> %12 to <8 x i16>      ; 2 uses
  %i.hj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.hi, <8 x i16> %i.hc)
  %i.hk = add <4 x i32> %i.hj, %i.gp              ; 2 uses
  %i.hl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.hi, <8 x i16> %i.hf)
  %i.hm = add <4 x i32> %i.hl, %i.gq              ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.07281159, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.47081160, i64 8
  %i.hp = add nuw nsw i32 %.07301158, 2           ; 2 uses
  %i.hq = or disjoint i32 %i.hp, 1
  %i.hr = icmp slt i32 %i.hq, %8
  br i1 %i.hr, label %.lr.ph1162, label %.preheader1072.loopexit, !llvm.loop !546

.lr.ph1173:                                       ; preds = %.preheader1072.a, %.lr.ph1173
  %.57091172 = phi ptr [ %i.jd, %.lr.ph1173 ], [ %.4708.lcssa, %.preheader1072.a ] ; 2 uses
  %.17291171 = phi ptr [ %i.jc, %.lr.ph1173 ], [ %.0728.lcssa, %.preheader1072.a ] ; 2 uses
  %.17311170 = phi i32 [ %i.je, %.lr.ph1173 ], [ %.0730.lcssa, %.preheader1072.a ]
  %i.hs = phi <4 x i32> [ %i.iv, %.lr.ph1173 ], [ %.lcssa1111, %.preheader1072.a ]
  %i.ht = phi <4 x i32> [ %i.ix, %.lr.ph1173 ], [ %.lcssa1112, %.preheader1072.a ]
  %i.hu = phi <4 x i32> [ %i.iz, %.lr.ph1173 ], [ %.lcssa1113.a, %.preheader1072.a ]
  %i.hv = phi <4 x i32> [ %i.jb, %.lr.ph1173 ], [ %.lcssa1114.a, %.preheader1072.a ]
  %i.hw = load float, ptr %.17291171, align 1, !tbaa !87
  %i.hx = insertelement <4 x float> poison, float %i.hw, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = load float, ptr %.57091172, align 1, !tbaa !87
  %i.ia = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = bitcast <4 x float> %i.hy to <16 x i8>  ; 2 uses
  %.lobit.i841 = ashr <16 x i8> %i.ic, splat (i8 7)
  %i.id = shufflevector <16 x i8> %i.ic, <16 x i8> %.lobit.i841, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ie = bitcast <4 x float> %i.ib to <16 x i8>  ; 2 uses
  %.lobit.i840 = ashr <16 x i8> %i.ie, splat (i8 7)
  %i.if = shufflevector <16 x i8> %i.ie, <16 x i8> %.lobit.i840, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ig = bitcast <16 x i8> %i.id to <4 x i32>
  %i.ih = shufflevector <4 x i32> %i.ig, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ii = bitcast <16 x i8> %i.if to <8 x i16>
  %i.ij = shufflevector <8 x i16> %i.ii, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 4> ; 4 uses
  %i.ik = bitcast <16 x i8> %i.id to <8 x i16>    ; 2 uses
  %i.il = mul <8 x i16> %i.ij, %i.ik              ; 2 uses
  %i.im = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ik, <8 x i16> %i.ij) ; 2 uses
  %i.in = bitcast <4 x i32> %i.ih to <8 x i16>    ; 2 uses
  %i.io = mul <8 x i16> %i.ij, %i.in              ; 2 uses
  %i.ip = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.in, <8 x i16> %i.ij) ; 2 uses
  %i.iq = shufflevector <8 x i16> %i.il, <8 x i16> %i.im, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ir = shufflevector <8 x i16> %i.il, <8 x i16> %i.im, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.is = shufflevector <8 x i16> %i.io, <8 x i16> %i.ip, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.it = shufflevector <8 x i16> %i.io, <8 x i16> %i.ip, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.iu = bitcast <8 x i16> %i.iq to <4 x i32>
  %i.iv = add <4 x i32> %i.hs, %i.iu              ; 2 uses
  %i.iw = bitcast <8 x i16> %i.ir to <4 x i32>
  %i.ix = add <4 x i32> %i.ht, %i.iw              ; 2 uses
  %i.iy = bitcast <8 x i16> %i.is to <4 x i32>
  %i.iz = add <4 x i32> %i.hu, %i.iy              ; 2 uses
  %i.ja = bitcast <8 x i16> %i.it to <4 x i32>
  %i.jb = add <4 x i32> %i.hv, %i.ja              ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.17291171, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %.57091172, i64 4 ; 2 uses
  %i.je = add nuw nsw i32 %.17311170, 1           ; 2 uses
  %exitcond1648.not = icmp eq i32 %i.je, %8
  br i1 %exitcond1648.not, label %._crit_edge1174, label %.lr.ph1173, !llvm.loop !547

._crit_edge1174:                                  ; preds = %.lr.ph1173, %.preheader1072.a
  %.lcssa1118.a = phi <4 x i32> [ %.lcssa1114.a, %.preheader1072.a ], [ %i.jb, %.lr.ph1173 ]
  %.lcssa1117.a = phi <4 x i32> [ %.lcssa1113.a, %.preheader1072.a ], [ %i.iz, %.lr.ph1173 ]
  %.lcssa1116 = phi <4 x i32> [ %.lcssa1112, %.preheader1072.a ], [ %i.ix, %.lr.ph1173 ]
  %.lcssa1115 = phi <4 x i32> [ %.lcssa1111, %.preheader1072.a ], [ %i.iv, %.lr.ph1173 ]
  %.5709.lcssa = phi ptr [ %.4708.lcssa, %.preheader1072.a ], [ %i.jd, %.lr.ph1173 ] ; 2 uses
  store <4 x i32> %.lcssa1115, ptr %.27001182, align 16, !tbaa !87
  %i.jf = getelementptr inbounds nuw i8, ptr %.27001182, i64 16
  store <4 x i32> %.lcssa1116, ptr %i.jf, align 16, !tbaa !87
  %i.jg = getelementptr inbounds nuw i8, ptr %.27001182, i64 32
  store <4 x i32> %.lcssa1117.a, ptr %i.jg, align 16, !tbaa !87
  %i.jh = getelementptr inbounds nuw i8, ptr %.27001182, i64 48
  store <4 x i32> %.lcssa1118.a, ptr %i.jh, align 16, !tbaa !87
  %i.ji = getelementptr inbounds nuw i8, ptr %.27001182, i64 64 ; 2 uses
  %i.jj = add nuw nsw i32 %.17171180, 4           ; 3 uses
  %i.jk = or disjoint i32 %i.jj, 3
  %i.jl = icmp slt i32 %i.jk, %6
  br i1 %i.jl, label %.lr.ph1183, label %.preheader1075, !llvm.loop !548

.preheader1074:                                   ; preds = %._crit_edge1201, %.preheader1075
  %.2718.lcssa = phi i32 [ %.1717.lcssa, %.preheader1075 ], [ %i.lu, %._crit_edge1201 ] ; 2 uses
  %.6710.lcssa = phi ptr [ %.3707.lcssa, %.preheader1075 ], [ %.8712.lcssa, %._crit_edge1201 ]
  %.3.lcssa = phi ptr [ %.2700.lcssa, %.preheader1075 ], [ %i.lt, %._crit_edge1201 ] ; 2 uses
  %i.jm = icmp slt i32 %.2718.lcssa, %6
  br i1 %i.jm, label %.lr.ph1231, label %._crit_edge1232

.lr.ph1208:                                       ; preds = %.preheader1075, %._crit_edge1201
  %.31207 = phi ptr [ %i.lt, %._crit_edge1201 ], [ %.2700.lcssa, %.preheader1075 ] ; 5 uses
  %.67101206 = phi ptr [ %.8712.lcssa, %._crit_edge1201 ], [ %.3707.lcssa, %.preheader1075 ] ; 3 uses
  %.27181205 = phi i32 [ %i.lu, %._crit_edge1201 ], [ %.1717.lcssa, %.preheader1075 ]
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph1208
  %i.jn = load <4 x i32>, ptr %.31207, align 16, !tbaa !87
  %i.jo = getelementptr inbounds nuw i8, ptr %.31207, i64 16
  %i.jp = load <4 x i32>, ptr %i.jo, align 16, !tbaa !87
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph1208, %bb.h
  %i.jq = phi <4 x i32> [ %i.jn, %bb.h ], [ zeroinitializer, %.lr.ph1208 ] ; 2 uses
  %i.jr = phi <4 x i32> [ %i.jp, %bb.h ], [ zeroinitializer, %.lr.ph1208 ] ; 2 uses
  br i1 %i.h, label %.lr.ph1191, label %.preheader1071

.preheader1071.loopexit:                          ; preds = %.lr.ph1191
  %i.js = getelementptr i8, ptr %.67101206, i64 %i.s
  %scevgep1651.a = getelementptr i8, ptr %i.js, i64 4
  br label %.preheader1071

.preheader1071:                                   ; preds = %.preheader1071.loopexit, %bb.i
  %.lcssa1120.a = phi <4 x i32> [ %i.jr, %bb.i ], [ %i.km, %.preheader1071.loopexit ] ; 2 uses
  %.lcssa1119.a = phi <4 x i32> [ %i.jq, %bb.i ], [ %i.kj, %.preheader1071.loopexit ] ; 2 uses
  %.0734.lcssa = phi i32 [ 0, %bb.i ], [ %i.m, %.preheader1071.loopexit ] ; 2 uses
  %.0732.lcssa = phi ptr [ %.06951236, %bb.i ], [ %indvars.iv, %.preheader1071.loopexit ]
  %.7711.lcssa = phi ptr [ %.67101206, %bb.i ], [ %scevgep1651.a, %.preheader1071.loopexit ] ; 2 uses
  %i.jt = icmp slt i32 %.0734.lcssa, %8
  br i1 %i.jt, label %.lr.ph1200, label %._crit_edge1201

.lr.ph1191:                                       ; preds = %bb.i, %.lr.ph1191
  %.77111189 = phi ptr [ %i.ko, %.lr.ph1191 ], [ %.67101206, %bb.i ] ; 2 uses
  %.07321188 = phi ptr [ %i.kn, %.lr.ph1191 ], [ %.06951236, %bb.i ] ; 2 uses
  %.07341187 = phi i32 [ %i.kp, %.lr.ph1191 ], [ 0, %bb.i ]
  %i.ju = phi <4 x i32> [ %i.kj, %.lr.ph1191 ], [ %i.jq, %bb.i ]
  %i.jv = phi <4 x i32> [ %i.km, %.lr.ph1191 ], [ %i.jr, %bb.i ]
  %i.jw = load i64, ptr %.07321188, align 1, !tbaa !87
  %i.jx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.jw, i64 0
  %i.jy = load float, ptr %.77111189, align 1, !tbaa !87
  %i.jz = insertelement <4 x float> poison, float %i.jy, i64 0
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kb = bitcast <2 x i64> %i.jx to <16 x i8>    ; 2 uses
  %.lobit.i839 = ashr <16 x i8> %i.kb, splat (i8 7)
  %i.kc = shufflevector <16 x i8> %i.kb, <16 x i8> %.lobit.i839, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.kd = bitcast <4 x float> %i.ka to <16 x i8>  ; 2 uses
  %.lobit.i838 = ashr <16 x i8> %i.kd, splat (i8 7)
  %i.ke = shufflevector <16 x i8> %i.kd, <16 x i8> %.lobit.i838, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %.cast = bitcast <16 x i8> %i.ke to <4 x i32>
  %i.kf = shufflevector <4 x i32> %.cast, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.kg = bitcast <16 x i8> %i.kc to <8 x i16>    ; 2 uses
  %i.kh = bitcast <16 x i8> %i.ke to <8 x i16>
  %i.ki = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kg, <8 x i16> %i.kh)
  %i.kj = add <4 x i32> %i.ki, %i.ju              ; 2 uses
  %i.kk = bitcast <4 x i32> %i.kf to <8 x i16>
  %i.kl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kg, <8 x i16> %i.kk)
  %i.km = add <4 x i32> %i.kl, %i.jv              ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.07321188, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %.77111189, i64 4
  %i.kp = add nuw nsw i32 %.07341187, 2           ; 2 uses
  %i.kq = or disjoint i32 %i.kp, 1
  %i.kr = icmp slt i32 %i.kq, %8
  br i1 %i.kr, label %.lr.ph1191, label %.preheader1071.loopexit, !llvm.loop !549

.lr.ph1200:                                       ; preds = %.preheader1071, %.lr.ph1200
  %.87121199 = phi ptr [ %i.lq, %.lr.ph1200 ], [ %.7711.lcssa, %.preheader1071 ] ; 2 uses
  %.17331198 = phi ptr [ %i.lp, %.lr.ph1200 ], [ %.0732.lcssa, %.preheader1071 ] ; 2 uses
  %.17351197 = phi i32 [ %i.lr, %.lr.ph1200 ], [ %.0734.lcssa, %.preheader1071 ]
  %i.ks = phi <4 x i32> [ %i.lm, %.lr.ph1200 ], [ %.lcssa1119.a, %.preheader1071 ]
  %i.kt = phi <4 x i32> [ %i.lo, %.lr.ph1200 ], [ %.lcssa1120.a, %.preheader1071 ]
  %i.ku = load float, ptr %.17331198, align 1, !tbaa !87
  %i.kv = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kx = load i16, ptr %.87121199, align 2, !tbaa !105
  %i.ky = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %i.kz = shufflevector <8 x i16> %i.ky, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.la = bitcast <4 x float> %i.kw to <16 x i8>  ; 2 uses
  %.lobit.i837 = ashr <16 x i8> %i.la, splat (i8 7)
  %i.lb = shufflevector <16 x i8> %i.la, <16 x i8> %.lobit.i837, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lc = bitcast <8 x i16> %i.kz to <16 x i8>    ; 2 uses
  %.lobit.i836 = ashr <16 x i8> %i.lc, splat (i8 7)
  %i.ld = shufflevector <16 x i8> %i.lc, <16 x i8> %.lobit.i836, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.le = bitcast <16 x i8> %i.ld to <8 x i16>
  %i.lf = shufflevector <8 x i16> %i.le, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 5, i32 4> ; 2 uses
  %i.lg = bitcast <16 x i8> %i.lb to <8 x i16>    ; 2 uses
  %i.lh = mul <8 x i16> %i.lf, %i.lg              ; 2 uses
  %i.li = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.lg, <8 x i16> %i.lf) ; 2 uses
  %i.lj = shufflevector <8 x i16> %i.lh, <8 x i16> %i.li, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lk = shufflevector <8 x i16> %i.lh, <8 x i16> %i.li, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ll = bitcast <8 x i16> %i.lj to <4 x i32>
  %i.lm = add <4 x i32> %i.ks, %i.ll              ; 2 uses
  %i.ln = bitcast <8 x i16> %i.lk to <4 x i32>
  %i.lo = add <4 x i32> %i.kt, %i.ln              ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.17331198, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %.87121199, i64 2 ; 2 uses
  %i.lr = add nuw nsw i32 %.17351197, 1           ; 2 uses
  %exitcond1652.not.a = icmp eq i32 %i.lr, %8
  br i1 %exitcond1652.not.a, label %._crit_edge1201, label %.lr.ph1200, !llvm.loop !550

._crit_edge1201:                                  ; preds = %.lr.ph1200, %.preheader1071
  %.lcssa1122.a = phi <4 x i32> [ %.lcssa1120.a, %.preheader1071 ], [ %i.lo, %.lr.ph1200 ]
  %.lcssa1121.a = phi <4 x i32> [ %.lcssa1119.a, %.preheader1071 ], [ %i.lm, %.lr.ph1200 ]
  %.8712.lcssa = phi ptr [ %.7711.lcssa, %.preheader1071 ], [ %i.lq, %.lr.ph1200 ] ; 2 uses
  store <4 x i32> %.lcssa1121.a, ptr %.31207, align 16, !tbaa !87
  %i.ls = getelementptr inbounds nuw i8, ptr %.31207, i64 16
  store <4 x i32> %.lcssa1122.a, ptr %i.ls, align 16, !tbaa !87
  %i.lt = getelementptr inbounds nuw i8, ptr %.31207, i64 32 ; 2 uses
  %i.lu = add nuw nsw i32 %.27181205, 2           ; 3 uses
  %i.lv = or disjoint i32 %i.lu, 1
  %i.lw = icmp slt i32 %i.lv, %6
  br i1 %i.lw, label %.lr.ph1208, label %.preheader1074, !llvm.loop !551

.lr.ph1231:                                       ; preds = %.preheader1074, %._crit_edge1225
  %.41230 = phi ptr [ %i.nm, %._crit_edge1225 ], [ %.3.lcssa, %.preheader1074 ] ; 3 uses
  %.97131229 = phi ptr [ %.11715.lcssa, %._crit_edge1225 ], [ %.6710.lcssa, %.preheader1074 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii:bb.a
  br label %._crit_edge346

.lr.ph345.split.split.us.preheader:               ; preds = %.lr.ph345.split
  %i.gv = sub i32 %i.m, %.2439.lcssa
  %i.gw = zext i32 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 4                ; 2 uses
  %i.gy = add nuw nsw i64 %i.gx, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.3.lcssa, i8 0, i64 %i.gy, i1 false), !tbaa !87
  %scevgep743 = getelementptr i8, ptr %.3.lcssa, i64 16
  %scevgep744 = getelementptr i8, ptr %scevgep743, i64 %i.gx
  br label %._crit_edge346

.lr.ph317.split.split:                            ; preds = %.lr.ph317.split, %.lr.ph317.split.split
  %.3316 = phi ptr [ %i.gz, %.lr.ph317.split.split ], [ %.2405.lcssa, %.lr.ph317.split ]
  %.2439314 = phi i32 [ %i.ha, %.lr.ph317.split.split ], [ %.1438.lcssa, %.lr.ph317.split ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.3316, i64 32 ; 2 uses
  %i.ha = add nuw nsw i32 %.2439314, 2            ; 3 uses
  %i.hb = or disjoint i32 %i.ha, 1
  %i.hc = icmp slt i32 %i.hb, %1
  br i1 %i.hc, label %.lr.ph317.split.split, label %.preheader251, !llvm.loop !958

._crit_edge346:                                   ; preds = %._crit_edge339.us, %.lr.ph345.split.split.preheader, %.lr.ph345.split.split.us.preheader, %.preheader251
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader251 ], [ %scevgep744, %.lr.ph345.split.split.us.preheader ], [ %scevgep742, %.lr.ph345.split.split.preheader ], [ %i.gq, %._crit_edge339.us ] ; 2 uses
  %i.hd = getelementptr inbounds [2 x i8], ptr %.0401356, i64 %i.e ; 2 uses
  %i.he = add nuw nsw i32 %.0406354, 4            ; 2 uses
  %i.hf = or disjoint i32 %i.he, 3
  %i.hg = icmp slt i32 %i.hf, %0
  br i1 %i.hg, label %.preheader254, label %.preheader250.loopexit, !llvm.loop !963

.preheader249:                                    ; preds = %.preheader249.lr.ph, %._crit_edge451
  %.1402455 = phi ptr [ %.0401.lcssa, %.preheader249.lr.ph ], [ %i.qh, %._crit_edge451 ] ; 10 uses
  %.5454 = phi ptr [ %.0403.lcssa, %.preheader249.lr.ph ], [ %.9.lcssa, %._crit_edge451 ] ; 2 uses
  %.1407453 = phi i32 [ %.0406.lcssa, %.preheader249.lr.ph ], [ %i.qi, %._crit_edge451 ]
  br i1 %i.r, label %.lr.ph379, label %.preheader248

.preheader245:                                    ; preds = %._crit_edge451, %.preheader250
  %.1407.lcssa = phi i32 [ %.0406.lcssa, %.preheader250 ], [ %i.qi, %._crit_edge451 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.0403.lcssa, %.preheader250 ], [ %.9.lcssa, %._crit_edge451 ]
  %.1402.lcssa = phi ptr [ %.0401.lcssa, %.preheader250 ], [ %i.qh, %._crit_edge451 ]
  %i.hh = icmp slt i32 %.1407.lcssa, %0
  br i1 %i.hh, label %.preheader244.lr.ph, label %._crit_edge613

.preheader244.lr.ph:                              ; preds = %.preheader245
  %i.hi = icmp sgt i32 %1, 7
  %.not507 = icmp eq i32 %2, 0                    ; 4 uses
  %i.hj = icmp sgt i32 %3, 3                      ; 4 uses
  %i.hk = sext i32 %3 to i64
  %i.hl = add i32 %3, -4                          ; 4 uses
  %i.hm = and i32 %i.hl, -4
  %i.hn = add i32 %i.hm, 4                        ; 4 uses
  %i.ho = and i32 %1, -8
  %i.hp = lshr i32 %i.hl, 2
  %i.hq = zext nneg i32 %i.hp to i64              ; 5 uses
  %i.hr = shl nuw nsw i64 %i.hq, 5
  %i.hs = shl nuw nsw i64 %i.hq, 4
  %i.ht = shl nuw nsw i64 %i.hq, 3
  %i.hu = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check233 = icmp ult i32 %i.hl, 12
  %n.vec235 = and i64 %i.hu, 2147483644           ; 5 uses
  %i.hv = trunc nuw nsw i64 %n.vec235 to i32
  %i.hw = shl i32 %i.hv, 2
  %i.hx = shl nuw nsw i64 %n.vec235, 3
  %i.hy = shl nuw nsw i64 %n.vec235, 4
  %cmp.n256 = icmp eq i64 %i.hu, %n.vec235
  %i.hz = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check158 = icmp ult i32 %i.hl, 28
  %n.vec160 = and i64 %i.hz, 2147483640           ; 4 uses
  %i.ia = trunc nuw nsw i64 %n.vec160 to i32
  %i.ib = shl i32 %i.ia, 2
  %i.ic = shl nuw nsw i64 %n.vec160, 3            ; 2 uses
  %cmp.n193 = icmp eq i64 %i.hz, %n.vec160
  br label %.preheader244

.preheader248:                                    ; preds = %._crit_edge370, %.preheader249
  %.0483.lcssa = phi i32 [ 0, %.preheader249 ], [ %i.y, %._crit_edge370 ] ; 6 uses
  %.0475.lcssa = phi ptr [ %.0.val1, %.preheader249 ], [ %.1476.lcssa, %._crit_edge370 ] ; 4 uses
  %.6.lcssa = phi ptr [ %.5454, %.preheader249 ], [ %i.ky, %._crit_edge370 ] ; 5 uses
  %i.id = or disjoint i32 %.0483.lcssa, 3
  %i.ie = icmp slt i32 %i.id, %1
  br i1 %i.ie, label %.lr.ph397, label %.preheader247

.lr.ph397:                                        ; preds = %.preheader248
  br i1 %i.s, label %.lr.ph397.split.us, label %.lr.ph397.split

.lr.ph397.split.us:                               ; preds = %.lr.ph397, %._crit_edge390.us
  %.7396.us = phi ptr [ %i.jd, %._crit_edge390.us ], [ %.6.lcssa, %.lr.ph397 ] ; 5 uses
  %.2477395.us = phi ptr [ %scevgep752, %._crit_edge390.us ], [ %.0475.lcssa, %.lr.ph397 ] ; 2 uses
  %.1484394.us = phi i32 [ %i.je, %._crit_edge390.us ], [ %.0483.lcssa, %.lr.ph397 ]
  br i1 %.not511, label %.lr.ph389.us.preheader, label %bb.h

bb.h:                                             ; preds = %.lr.ph397.split.us
  %i.if = load <4 x float>, ptr %.7396.us, align 16, !tbaa !87
  %i.ig = getelementptr inbounds nuw i8, ptr %.7396.us, i64 16
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !tbaa !87
  br label %.lr.ph389.us.preheader

.lr.ph389.us.preheader:                           ; preds = %bb.h, %.lr.ph397.split.us
  %.1227384.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph397.split.us ], [ %i.if, %bb.h ]
  %.1229383.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph397.split.us ], [ %i.ih, %bb.h ]
  br label %.lr.ph389.us

.lr.ph389.us:                                     ; preds = %.lr.ph389.us.preheader, %.lr.ph389.us
  %.3478387.us = phi ptr [ %i.iz, %.lr.ph389.us ], [ %.2477395.us, %.lr.ph389.us.preheader ] ; 2 uses
  %.0497386.us = phi i32 [ %i.ja, %.lr.ph389.us ], [ 0, %.lr.ph389.us.preheader ]
  %.0498385.us = phi ptr [ %i.iy, %.lr.ph389.us ], [ %.1402455, %.lr.ph389.us.preheader ] ; 2 uses
  %.1227384.us = phi <4 x float> [ %i.iv, %.lr.ph389.us ], [ %.1227384.us.ph, %.lr.ph389.us.preheader ]
  %.1229383.us = phi <4 x float> [ %i.ix, %.lr.ph389.us ], [ %.1229383.us.ph, %.lr.ph389.us.preheader ]
  %i.ii = load float, ptr %.0498385.us, align 1, !tbaa !87
  %i.ij = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.il = bitcast <4 x float> %i.ik to <8 x i16>
  %i.im = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.il, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.in = bitcast <8 x i16> %i.im to <4 x float>  ; 2 uses
  %i.io = load i64, ptr %.3478387.us, align 1, !tbaa !87
  %i.ip = insertelement <2 x i64> poison, i64 %i.io, i64 0
  %i.iq = bitcast <2 x i64> %i.ip to <8 x i16>
  %i.ir = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.is = bitcast <8 x i16> %i.ir to <4 x float>  ; 2 uses
  %i.it = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.iu = fmul fast <4 x float> %i.in, %i.is
  %i.iv = fadd fast <4 x float> %i.iu, %.1227384.us ; 2 uses
  %i.iw = fmul fast <4 x float> %i.it, %i.in
  %i.ix = fadd fast <4 x float> %i.iw, %.1229383.us ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0498385.us, i64 4
  %i.iz = getelementptr inbounds nuw i8, ptr %.3478387.us, i64 8
  %i.ja = add nuw nsw i32 %.0497386.us, 1         ; 2 uses
  %exitcond753.not = icmp eq i32 %i.ja, %3
  br i1 %exitcond753.not, label %._crit_edge390.us, label %.lr.ph389.us, !llvm.loop !964

._crit_edge390.us:                                ; preds = %.lr.ph389.us
  %i.jb = getelementptr i8, ptr %.2477395.us, i64 %i.aa
  %scevgep752 = getelementptr i8, ptr %i.jb, i64 8 ; 2 uses
  store <4 x float> %i.iv, ptr %.7396.us, align 16, !tbaa !87
  %i.jc = getelementptr inbounds nuw i8, ptr %.7396.us, i64 16
  store <4 x float> %i.ix, ptr %i.jc, align 16, !tbaa !87
  %i.jd = getelementptr inbounds nuw i8, ptr %.7396.us, i64 32 ; 2 uses
  %i.je = add nuw nsw i32 %.1484394.us, 4         ; 3 uses
  %i.jf = or disjoint i32 %i.je, 3
  %i.jg = icmp slt i32 %i.jf, %1
  br i1 %i.jg, label %.lr.ph397.split.us, label %.preheader247, !llvm.loop !965

.lr.ph397.split:                                  ; preds = %.lr.ph397
  br i1 %.not511, label %.lr.ph397.split.split.us.preheader, label %.lr.ph397.split.split

.lr.ph397.split.split.us.preheader:               ; preds = %.lr.ph397.split
  %i.jh = sub i32 %i.z, %.0483.lcssa              ; 2 uses
  %i.ji = lshr i32 %i.jh, 2
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 5                ; 2 uses
  %i.jl = add nuw nsw i64 %i.jk, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.6.lcssa, i8 0, i64 %i.jl, i1 false), !tbaa !87
  %scevgep750 = getelementptr i8, ptr %.6.lcssa, i64 32
  %scevgep751 = getelementptr i8, ptr %scevgep750, i64 %i.jk
  %i.jm = or disjoint i32 %.0483.lcssa, 4
  %i.jn = and i32 %i.jh, -4
  %i.jo = add i32 %i.jm, %i.jn
  br label %.preheader247

.lr.ph379:                                        ; preds = %.preheader249, %._crit_edge370
  %.6378 = phi ptr [ %i.ky, %._crit_edge370 ], [ %.5454, %.preheader249 ] ; 9 uses
  %.0475377 = phi ptr [ %.1476.lcssa, %._crit_edge370 ], [ %.0.val1, %.preheader249 ] ; 3 uses
  %.0483376 = phi i32 [ %i.kz, %._crit_edge370 ], [ 0, %.preheader249 ]
  br i1 %.not511, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph379
  %i.jp = load <4 x float>, ptr %.6378, align 16, !tbaa !87
  %i.jq = getelementptr inbounds nuw i8, ptr %.6378, i64 16
  %i.jr = load <4 x float>, ptr %i.jq, align 16, !tbaa !87
  %i.js = getelementptr inbounds nuw i8, ptr %.6378, i64 32
  %i.jt = load <4 x float>, ptr %i.js, align 16, !tbaa !87
  %i.ju = getelementptr inbounds nuw i8, ptr %.6378, i64 48
  %i.jv = load <4 x float>, ptr %i.ju, align 16, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph379
  %.0224 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph379 ], [ %i.jv, %bb.i ] ; 2 uses
  %.0222 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph379 ], [ %i.jt, %bb.i ] ; 2 uses
  %.0220 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph379 ], [ %i.jr, %bb.i ] ; 2 uses
  %.0218 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph379 ], [ %i.jp, %bb.i ] ; 2 uses
  br i1 %i.s, label %.lr.ph369, label %._crit_edge370

.lr.ph369:                                        ; preds = %bb.j, %.lr.ph369
  %.1476367 = phi ptr [ %i.ks, %.lr.ph369 ], [ %.0475377, %bb.j ] ; 2 uses
  %.0499366 = phi i32 [ %i.kt, %.lr.ph369 ], [ 0, %bb.j ]
  %.0500365 = phi ptr [ %i.kr, %.lr.ph369 ], [ %.1402455, %bb.j ] ; 2 uses
  %.1219364 = phi <4 x float> [ %i.kk, %.lr.ph369 ], [ %.0218, %bb.j ]
  %.1221363 = phi <4 x float> [ %i.km, %.lr.ph369 ], [ %.0220, %bb.j ]
  %.1223362 = phi <4 x float> [ %i.ko, %.lr.ph369 ], [ %.0222, %bb.j ]
  %.1225361 = phi <4 x float> [ %i.kq, %.lr.ph369 ], [ %.0224, %bb.j ]
  %i.jw = load float, ptr %.0500365, align 1, !tbaa !87
  %i.jx = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.jz = load <2 x i64>, ptr %.1476367, align 1, !tbaa !87 ; 2 uses
  %i.ka = bitcast <4 x float> %i.jy to <8 x i16>
  %i.kb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ka, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kc = bitcast <8 x i16> %i.kb to <4 x float>  ; 3 uses
  %i.kd = shufflevector <4 x float> %i.kc, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ke = bitcast <2 x i64> %i.jz to <8 x i16>
  %i.kf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ke, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kg = bitcast <8 x i16> %i.kf to <4 x float>  ; 2 uses
  %i.kh = bitcast <2 x i64> %i.jz to <8 x i16>
  %4 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kh, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.ki = bitcast <8 x i16> %4 to <4 x float>     ; 2 uses
  %i.kj = fmul fast <4 x float> %i.kc, %i.kg
  %i.kk = fadd fast <4 x float> %i.kj, %.1219364  ; 2 uses
  %i.kl = fmul fast <4 x float> %i.ki, %i.kc
  %i.km = fadd fast <4 x float> %i.kl, %.1221363  ; 2 uses
  %i.kn = fmul fast <4 x float> %i.kd, %i.kg
  %i.ko = fadd fast <4 x float> %i.kn, %.1223362  ; 2 uses
  %i.kp = fmul fast <4 x float> %i.kd, %i.ki
  %i.kq = fadd fast <4 x float> %i.kp, %.1225361  ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0500365, i64 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.1476367, i64 16
  %i.kt = add nuw nsw i32 %.0499366, 1            ; 2 uses
  %exitcond749.not = icmp eq i32 %i.kt, %3
  br i1 %exitcond749.not, label %._crit_edge370.loopexit, label %.lr.ph369, !llvm.loop !966

._crit_edge370.loopexit:                          ; preds = %.lr.ph369
  %i.ku = getelementptr i8, ptr %.0475377, i64 %i.x
  %scevgep748 = getelementptr i8, ptr %i.ku, i64 16
  br label %._crit_edge370

._crit_edge370:                                   ; preds = %._crit_edge370.loopexit, %bb.j
  %.1225.lcssa = phi <4 x float> [ %.0224, %bb.j ], [ %i.kq, %._crit_edge370.loopexit ]
  %.1223.lcssa = phi <4 x float> [ %.0222, %bb.j ], [ %i.ko, %._crit_edge370.loopexit ]
  %.1221.lcssa = phi <4 x float> [ %.0220, %bb.j ], [ %i.km, %._crit_edge370.loopexit ]
  %.1219.lcssa = phi <4 x float> [ %.0218, %bb.j ], [ %i.kk, %._crit_edge370.loopexit ]
  %.1476.lcssa = phi ptr [ %.0475377, %bb.j ], [ %scevgep748, %._crit_edge370.loopexit ] ; 2 uses
  store <4 x float> %.1219.lcssa, ptr %.6378, align 16, !tbaa !87
  %i.kv = getelementptr inbounds nuw i8, ptr %.6378, i64 16
  store <4 x float> %.1221.lcssa, ptr %i.kv, align 16, !tbaa !87
  %i.kw = getelementptr inbounds nuw i8, ptr %.6378, i64 32
  store <4 x float> %.1223.lcssa, ptr %i.kw, align 16, !tbaa !87
  %i.kx = getelementptr inbounds nuw i8, ptr %.6378, i64 48
  store <4 x float> %.1225.lcssa, ptr %i.kx, align 16, !tbaa !87
  %i.ky = getelementptr inbounds nuw i8, ptr %.6378, i64 64 ; 2 uses
  %i.kz = add nuw nsw i32 %.0483376, 8            ; 2 uses
  %i.la = or disjoint i32 %i.kz, 7
  %i.lb = icmp slt i32 %i.la, %1
  br i1 %i.lb, label %.lr.ph379, label %.preheader248, !llvm.loop !967

.preheader247:                                    ; preds = %.lr.ph397.split.split, %._crit_edge390.us, %.lr.ph397.split.split.us.preheader, %.preheader248
  %.1484.lcssa = phi i32 [ %.0483.lcssa, %.preheader248 ], [ %i.jo, %.lr.ph397.split.split.us.preheader ], [ %i.je, %._crit_edge390.us ], [ %i.lg, %.lr.ph397.split.split ] ; 3 uses
  %.2477.lcssa = phi ptr [ %.0475.lcssa, %.preheader248 ], [ %.0475.lcssa, %.lr.ph397.split.split.us.preheader ], [ %scevgep752, %._crit_edge390.us ], [ %.0475.lcssa, %.lr.ph397.split.split ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader248 ], [ %scevgep751, %.lr.ph397.split.split.us.preheader ], [ %i.jd, %._crit_edge390.us ], [ %i.lf, %.lr.ph397.split.split ] ; 2 uses
  %i.lc = or disjoint i32 %.1484.lcssa, 1
  %i.ld = icmp slt i32 %i.lc, %1
  br i1 %i.ld, label %.lr.ph432.preheader, label %.preheader246

.lr.ph432.preheader:                              ; preds = %.preheader247
  %i.le = getelementptr i8, ptr %.1402455, i64 %i.ae
  br label %.lr.ph432

.lr.ph397.split.split:                            ; preds = %.lr.ph397.split, %.lr.ph397.split.split
  %.7396 = phi ptr [ %i.lf, %.lr.ph397.split.split ], [ %.6.lcssa, %.lr.ph397.split ]
  %.1484394 = phi i32 [ %i.lg, %.lr.ph397.split.split ], [ %.0483.lcssa, %.lr.ph397.split ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.7396, i64 32 ; 2 uses
  %i.lg = add nuw nsw i32 %.1484394, 4            ; 3 uses
  %i.lh = or disjoint i32 %i.lg, 3
  %i.li = icmp slt i32 %i.lh, %1
  br i1 %i.li, label %.lr.ph397.split.split, label %.preheader247, !llvm.loop !965

.preheader246:                                    ; preds = %._crit_edge423, %.preheader247
  %.2485.lcssa = phi i32 [ %.1484.lcssa, %.preheader247 ], [ %i.ns, %._crit_edge423 ] ; 2 uses
  %.4479.lcssa = phi ptr [ %.2477.lcssa, %.preheader247 ], [ %.5480.lcssa, %._crit_edge423 ]
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader247 ], [ %i.nr, %._crit_edge423 ] ; 2 uses
  %i.lj = icmp slt i32 %.2485.lcssa, %1
  br i1 %i.lj, label %.lr.ph450.preheader, label %._crit_edge451

.lr.ph450.preheader:                              ; preds = %.preheader246
  %i.lk = getelementptr i8, ptr %.1402455, i64 %i.ai
  br label %.lr.ph450

.lr.ph432:                                        ; preds = %.lr.ph432.preheader, %._crit_edge423
  %.8431 = phi ptr [ %i.nr, %._crit_edge423 ], [ %.7.lcssa, %.lr.ph432.preheader ] ; 3 uses
  %.4479430 = phi ptr [ %.5480.lcssa, %._crit_edge423 ], [ %.2477.lcssa, %.lr.ph432.preheader ] ; 5 uses
  %.2485429 = phi i32 [ %i.ns, %._crit_edge423 ], [ %.1484.lcssa, %.lr.ph432.preheader ]
  br i1 %.not511, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph432
  %i.ll = load <4 x float>, ptr %.8431, align 4, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph432
  %i.lm = phi <4 x float> [ %i.ll, %bb.k ], [ zeroinitializer, %.lr.ph432 ] ; 6 uses
  br i1 %i.s, label %.lr.ph422.preheader, label %._crit_edge423

.lr.ph422.preheader:                              ; preds = %bb.l
  br i1 %min.iters.check108, label %.lr.ph422.preheader341, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph422.preheader
  %i.ln = getelementptr i8, ptr %.4479430, i64 %i.ae
  %i.lo = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.lm, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.lp = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.lm, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.lq = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.lm, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.lr = shufflevector <4 x float> %i.lm, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next125, %vector.body111 ] ; 2 uses
  %vec.phi113 = phi <4 x float> [ %i.lo, %vector.ph109 ], [ %i.mo, %vector.body111 ]
  %vec.phi114 = phi <4 x float> [ %i.lp, %vector.ph109 ], [ %i.mm, %vector.body111 ]
  %vec.phi115 = phi <4 x float> [ %i.lq, %vector.ph109 ], [ %i.mk, %vector.body111 ]
  %vec.phi116 = phi <4 x float> [ %i.lr, %vector.ph109 ], [ %i.mi, %vector.body111 ]
  %i.ls = shl i64 %index112, 2                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %.4479430, i64 %i.ls
  %next.gep118 = getelementptr i8, ptr %.1402455, i64 %i.ls
  %wide.vec119 = load <8 x i16>, ptr %next.gep118, align 2, !tbaa !105
  %i.lt = freeze <8 x i16> %wide.vec119           ; 2 uses
  %i.lu = bitcast <8 x i16> %i.lt to <4 x i32>
  %i.lv = bitcast <8 x i16> %i.lt to <4 x i32>
  %i.lw = and <4 x i32> %i.lv, splat (i32 -65536)
  %i.lx = shl <4 x i32> %i.lu, splat (i32 16)
  %i.ly = bitcast <4 x i32> %i.lx to <4 x float>  ; 2 uses
  %i.lz = bitcast <4 x i32> %i.lw to <4 x float>  ; 2 uses
  %wide.vec122 = load <8 x i16>, ptr %next.gep117, align 2, !tbaa !105
  %i.ma = freeze <8 x i16> %wide.vec122           ; 2 uses
  %i.mb = bitcast <8 x i16> %i.ma to <4 x i32>
  %i.mc = bitcast <8 x i16> %i.ma to <4 x i32>
  %i.md = and <4 x i32> %i.mc, splat (i32 -65536)
  %i.me = shl <4 x i32> %i.mb, splat (i32 16)
  %i.mf = bitcast <4 x i32> %i.me to <4 x float>  ; 2 uses
  %i.mg = bitcast <4 x i32> %i.md to <4 x float>  ; 2 uses
  %i.mh = fmul fast <4 x float> %i.mf, %i.ly
  %i.mi = fadd fast <4 x float> %i.mh, %vec.phi116 ; 2 uses
  %i.mj = fmul fast <4 x float> %i.mg, %i.ly
  %i.mk = fadd fast <4 x float> %i.mj, %vec.phi115 ; 2 uses
  %i.ml = fmul fast <4 x float> %i.mf, %i.lz
  %i.mm = fadd fast <4 x float> %i.ml, %vec.phi114 ; 2 uses
  %i.mn = fmul fast <4 x float> %i.mg, %i.lz
  %i.mo = fadd fast <4 x float> %i.mn, %vec.phi113 ; 2 uses
  %index.next125 = add nuw i64 %index112, 4       ; 2 uses
  %i.mp = icmp eq i64 %index.next125, %n.vec110
  br i1 %i.mp, label %middle.block126, label %vector.body111, !llvm.loop !968

middle.block126:                                  ; preds = %vector.body111
  %i.mq = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.mo)
  %i.mr = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.mm)
  %i.ms = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.mk)
  %i.mt = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.mi)
  %i.mu = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.mv = insertelement <4 x float> %i.mu, float %i.ms, i64 1
  %i.mw = insertelement <4 x float> %i.mv, float %i.mr, i64 2
  %i.mx = insertelement <4 x float> %i.mw, float %i.mq, i64 3 ; 2 uses
  br i1 %cmp.n127, label %._crit_edge423.loopexit, label %.lr.ph422.preheader341

.lr.ph422.preheader341:                           ; preds = %.lr.ph422.preheader, %middle.block126
  %.5480420.ph = phi ptr [ %.4479430, %.lr.ph422.preheader ], [ %i.ln, %middle.block126 ]
  %.0487419.ph = phi i32 [ 0, %.lr.ph422.preheader ], [ %i.af, %middle.block126 ]
  %.0488418.ph = phi ptr [ %.1402455, %.lr.ph422.preheader ], [ %i.le, %middle.block126 ]
  %.ph342 = phi <4 x float> [ %i.lm, %.lr.ph422.preheader ], [ %i.mx, %middle.block126 ]
  br label %.lr.ph422

.lr.ph422:                                        ; preds = %.lr.ph422.preheader341, %.lr.ph422
  %.5480420 = phi ptr [ %i.nm, %.lr.ph422 ], [ %.5480420.ph, %.lr.ph422.preheader341 ] ; 2 uses
  %.0487419 = phi i32 [ %i.nn, %.lr.ph422 ], [ %.0487419.ph, %.lr.ph422.preheader341 ]
  %.0488418 = phi ptr [ %i.nl, %.lr.ph422 ], [ %.0488418.ph, %.lr.ph422.preheader341 ] ; 2 uses
  %i.my = phi <4 x float> [ %i.nk, %.lr.ph422 ], [ %.ph342, %.lr.ph422.preheader341 ]
  %i.mz = load <2 x i16>, ptr %.0488418, align 2, !tbaa !105
  %i.na = shufflevector <2 x i16> %i.mz, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.nb = zext <4 x i16> %i.na to <4 x i32>
  %i.nc = shl nuw <4 x i32> %i.nb, splat (i32 16)
  %i.nd = bitcast <4 x i32> %i.nc to <4 x float>
  %i.ne = load <2 x i16>, ptr %.5480420, align 2, !tbaa !105
  %i.nf = shufflevector <2 x i16> %i.ne, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ng = zext <4 x i16> %i.nf to <4 x i32>
  %i.nh = shl nuw <4 x i32> %i.ng, splat (i32 16)
  %i.ni = bitcast <4 x i32> %i.nh to <4 x float>
  %i.nj = fmul fast <4 x float> %i.ni, %i.nd
  %i.nk = fadd fast <4 x float> %i.nj, %i.my      ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.0488418, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %.5480420, i64 4
  %i.nn = add nuw nsw i32 %.0487419, 1            ; 2 uses
  %exitcond755.not = icmp eq i32 %i.nn, %3
  br i1 %exitcond755.not, label %._crit_edge423.loopexit, label %.lr.ph422, !llvm.loop !969

._crit_edge423.loopexit:                          ; preds = %.lr.ph422, %middle.block126
  %i.no = phi <4 x float> [ %i.mx, %middle.block126 ], [ %i.nk, %.lr.ph422 ]
  %i.np = getelementptr i8, ptr %.4479430, i64 %i.ab
  %scevgep754 = getelementptr i8, ptr %i.np, i64 4
  br label %._crit_edge423

._crit_edge423:                                   ; preds = %._crit_edge423.loopexit, %bb.l
  %.5480.lcssa = phi ptr [ %.4479430, %bb.l ], [ %scevgep754, %._crit_edge423.loopexit ] ; 2 uses
  %i.nq = phi <4 x float> [ %i.lm, %bb.l ], [ %i.no, %._crit_edge423.loopexit ]
  store <4 x float> %i.nq, ptr %.8431, align 4, !tbaa !67
  %i.nr = getelementptr inbounds nuw i8, ptr %.8431, i64 16 ; 2 uses
  %i.ns = add nuw nsw i32 %.2485429, 2            ; 3 uses
  %i.nt = or disjoint i32 %i.ns, 1
  %i.nu = icmp slt i32 %i.nt, %1
  br i1 %i.nu, label %.lr.ph432, label %.preheader246, !llvm.loop !970

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %._crit_edge443
  %.9449 = phi ptr [ %i.qf, %._crit_edge443 ], [ %.8.lcssa, %.lr.ph450.preheader ] ; 3 uses
  %.6481448 = phi ptr [ %.7482.lcssa, %._crit_edge443 ], [ %.4479.lcssa, %.lr.ph450.preheader ] ; 5 uses
  %.3486447 = phi i32 [ %i.qg, %._crit_edge443 ], [ %.2485.lcssa, %.lr.ph450.preheader ]
  br i1 %.not511, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph450
  %i.nv = load <2 x float>, ptr %.9449, align 4, !tbaa !67
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph450
  %i.nw = phi <2 x float> [ %i.nv, %bb.m ], [ zeroinitializer, %.lr.ph450 ] ; 3 uses
  br i1 %i.s, label %.lr.ph442.preheader, label %._crit_edge443

end_hunk_1
begin_hunk_2_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  %i.ajv = shufflevector <8 x i16> %i.ajt, <8 x i16> %i.aju, <2 x i32> <i32 0, i32 8>
  store <2 x i16> %i.ajv, ptr %.11753977, align 2, !tbaa !105
  %i.ajw = getelementptr inbounds nuw [2 x i8], ptr %.11753977, i64 %i.k
  %i.ajx = shufflevector <8 x i16> %i.ajt, <8 x i16> %i.aju, <2 x i32> <i32 1, i32 9>
  store <2 x i16> %i.ajx, ptr %i.ajw, align 2, !tbaa !105
  %.sroa.064.4.vec.extract = extractelement <8 x i16> %i.ajt, i64 2
  %i.ajy = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx888 ; 2 uses
  store i16 %.sroa.064.4.vec.extract, ptr %i.ajy, align 2, !tbaa !105
  %.sroa.11.20.vec.extract = extractelement <8 x i16> %i.aju, i64 2
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 2
  store i16 %.sroa.11.20.vec.extract, ptr %i.ajz, align 2, !tbaa !105
  %.sroa.064.6.vec.extract = extractelement <8 x i16> %i.ajt, i64 3
  %i.aka = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx889 ; 2 uses
  store i16 %.sroa.064.6.vec.extract, ptr %i.aka, align 2, !tbaa !105
  %.sroa.11.22.vec.extract = extractelement <8 x i16> %i.aju, i64 3
  %i.akb = getelementptr i8, ptr %i.aka, i64 2
  store i16 %.sroa.11.22.vec.extract, ptr %i.akb, align 2, !tbaa !105
  %.sroa.064.8.vec.extract = extractelement <8 x i16> %i.ajt, i64 4
  %i.akc = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx890 ; 2 uses
  store i16 %.sroa.064.8.vec.extract, ptr %i.akc, align 2, !tbaa !105
  %.sroa.11.24.vec.extract = extractelement <8 x i16> %i.aju, i64 4
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 2
  store i16 %.sroa.11.24.vec.extract, ptr %i.akd, align 2, !tbaa !105
  %.sroa.064.10.vec.extract = extractelement <8 x i16> %i.ajt, i64 5
  %i.ake = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx891 ; 2 uses
  store i16 %.sroa.064.10.vec.extract, ptr %i.ake, align 2, !tbaa !105
  %.sroa.11.26.vec.extract = extractelement <8 x i16> %i.aju, i64 5
  %i.akf = getelementptr i8, ptr %i.ake, i64 2
  store i16 %.sroa.11.26.vec.extract, ptr %i.akf, align 2, !tbaa !105
  %.sroa.064.12.vec.extract = extractelement <8 x i16> %i.ajt, i64 6
  %i.akg = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx892 ; 2 uses
  store i16 %.sroa.064.12.vec.extract, ptr %i.akg, align 2, !tbaa !105
  %.sroa.11.28.vec.extract = extractelement <8 x i16> %i.aju, i64 6
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 2
  store i16 %.sroa.11.28.vec.extract, ptr %i.akh, align 2, !tbaa !105
  %.sroa.064.14.vec.extract = extractelement <8 x i16> %i.ajt, i64 7
  %i.aki = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx893 ; 2 uses
  store i16 %.sroa.064.14.vec.extract, ptr %i.aki, align 2, !tbaa !105
  %.sroa.11.30.vec.extract = extractelement <8 x i16> %i.aju, i64 7
  %i.akj = getelementptr i8, ptr %i.aki, i64 2
  store i16 %.sroa.11.30.vec.extract, ptr %i.akj, align 2, !tbaa !105
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %bb.eu, %bb.et, %bb.ew
  %i.akk = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx1828
  br label %bb.ez

bb.ey:                                            ; preds = %bb.es
  store <4 x float> %i.ajh, ptr %.11753977, align 1, !tbaa !87
  %i.akl = getelementptr inbounds nuw [2 x i8], ptr %.11753977, i64 %i.k
  store <4 x float> %i.ajo, ptr %i.akl, align 1, !tbaa !87
  %i.akm = getelementptr inbounds nuw i8, ptr %.11753977, i64 16
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey, %bb.eq, %bb.er
  %.31755 = phi ptr [ %.11753977, %bb.eq ], [ %.11753977, %bb.er ], [ %i.akk, %bb.ex ], [ %i.akm, %bb.ey ] ; 2 uses
  %.21745 = phi ptr [ %i.aiw, %bb.eq ], [ %i.aja, %bb.er ], [ %.11744978, %bb.ex ], [ %.11744978, %bb.ey ] ; 2 uses
  %i.akn = add nuw nsw i32 %.01734979, 8          ; 2 uses
  %i.ako = or disjoint i32 %i.akn, 7
  %i.akp = icmp slt i32 %i.ako, %6
  br i1 %i.akp, label %.lr.ph982, label %.preheader912, !llvm.loop !997

.preheader911:                                    ; preds = %bb.fs, %.preheader912
  %.41756.lcssa = phi ptr [ %.11753.lcssa, %.preheader912 ], [ %.61758, %bb.fs ] ; 2 uses
  %.31746.lcssa = phi ptr [ %.11744.lcssa, %.preheader912 ], [ %.41747, %bb.fs ] ; 2 uses
  %.11735.lcssa = phi i32 [ %.01734.lcssa, %.preheader912 ], [ %i.ana, %bb.fs ] ; 3 uses
  %.71693.lcssa = phi ptr [ %.61692.lcssa, %.preheader912 ], [ %i.akw, %bb.fs ] ; 2 uses
  %.27.lcssa = phi ptr [ %.24.lcssa, %.preheader912 ], [ %.29, %bb.fs ] ; 2 uses
  %i.akq = or disjoint i32 %.11735.lcssa, 1
  %i.akr = icmp slt i32 %i.akq, %6
  br i1 %i.akr, label %.lr.ph1008.preheader, label %.preheader910

.lr.ph1008.preheader:                             ; preds = %.preheader911
  %i.aks = shufflevector <2 x float> %i.afy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akt = shufflevector <2 x float> %i.afy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aku = shufflevector <2 x float> %i.afy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1008

.lr.ph997:                                        ; preds = %.preheader912, %bb.fs
  %.27996 = phi ptr [ %.29, %bb.fs ], [ %.24.lcssa, %.preheader912 ] ; 9 uses
  %.71693995 = phi ptr [ %i.akw, %bb.fs ], [ %.61692.lcssa, %.preheader912 ] ; 2 uses
  %.11735994 = phi i32 [ %i.ana, %bb.fs ], [ %.01734.lcssa, %.preheader912 ]
  %.31746993 = phi ptr [ %.41747, %bb.fs ], [ %.11744.lcssa, %.preheader912 ] ; 13 uses
  %.41756992 = phi ptr [ %.61758, %bb.fs ], [ %.11753.lcssa, %.preheader912 ] ; 11 uses
  %.5663991 = phi <4 x float> [ %.7665, %bb.fs ], [ %.2660.lcssa, %.preheader912 ] ; 6 uses
  %.6672990 = phi <4 x float> [ %.8674, %bb.fs ], [ %.3669.lcssa, %.preheader912 ] ; 7 uses
  %i.akv = load <8 x float>, ptr %.71693995, align 16, !tbaa !87 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.71693995, i64 32 ; 2 uses
  %i.akx = shufflevector <8 x float> %i.akv, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aky = shufflevector <8 x float> %i.akv, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.akz = shufflevector <4 x float> %i.akx, <4 x float> %i.aky, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 6 uses
  %i.ala = shufflevector <4 x float> %i.akx, <4 x float> %i.aky, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.alb = shufflevector <4 x float> %i.ala, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 6 uses
  %.not1823 = icmp eq ptr %.27996, null
  br i1 %.not1823, label %.thread830, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph997
  br i1 %i.bg, label %.thread821, label %bb.fb

.thread821:                                       ; preds = %bb.fa
  %i.alc = fadd fast <4 x float> %.6672990, %i.akz
  %i.ald = fadd fast <4 x float> %i.alb, %.6672990
  br label %.thread830

bb.fb:                                            ; preds = %bb.fa
  br i1 %or.cond11, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.ale = fadd fast <4 x float> %.6672990, %i.akz
  %i.alf = fadd fast <4 x float> %i.alb, %.5663991
  br label %.thread830

bb.fd:                                            ; preds = %bb.fb
  switch i32 %2, label %.thread830 [
    i32 3, label %bb.fe
    i32 4, label %bb.ff
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.alg = load <4 x float>, ptr %.27996, align 1, !tbaa !87 ; 3 uses
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %.27996, i64 %i.t
  %i.ali = load <4 x float>, ptr %i.alh, align 1, !tbaa !87 ; 3 uses
  %i.alj = fmul fast <4 x float> %i.alg, %i.bk
  %i.alk = fmul fast <4 x float> %i.ali, %i.bk
  %.pn = select i1 %i.bl, <4 x float> %i.alg, <4 x float> %i.alj
  %.2603.v = select i1 %i.bl, <4 x float> %i.ali, <4 x float> %i.alk
  %.2603 = fadd fast <4 x float> %.2603.v, %i.alb
  %.2609 = fadd fast <4 x float> %.pn, %i.akz
  %i.all = getelementptr inbounds nuw i8, ptr %.27996, i64 16
  br label %.thread830

bb.ff:                                            ; preds = %bb.fd
  %i.alm = load <4 x float>, ptr %.27996, align 1, !tbaa !87
  %i.aln = fmul fast <4 x float> %i.alm, %i.bk    ; 3 uses
  %i.alo = fadd fast <4 x float> %i.aln, %i.akz
  %i.alp = fadd fast <4 x float> %i.aln, %i.alb
  %i.alq = getelementptr inbounds nuw i8, ptr %.27996, i64 16
  br label %.thread830

.thread830:                                       ; preds = %bb.fd, %bb.fc, %.thread821, %bb.fe, %bb.ff, %.lr.ph997
  %.8674 = phi nsz <4 x float> [ %.6672990, %.lr.ph997 ], [ %i.aln, %bb.ff ], [ %.6672990, %bb.fd ], [ %i.alg, %bb.fe ], [ %.6672990, %.thread821 ], [ %.6672990, %bb.fc ]
  %.7665 = phi nsz <4 x float> [ %.5663991, %.lr.ph997 ], [ %.5663991, %bb.ff ], [ %.5663991, %bb.fd ], [ %i.ali, %bb.fe ], [ %.5663991, %.thread821 ], [ %.5663991, %bb.fc ]
  %.4611 = phi nsz <4 x float> [ %i.akz, %.lr.ph997 ], [ %i.alo, %bb.ff ], [ %i.akz, %bb.fd ], [ %.2609, %bb.fe ], [ %i.alc, %.thread821 ], [ %i.ale, %bb.fc ] ; 2 uses
  %.4605 = phi nsz <4 x float> [ %i.alb, %.lr.ph997 ], [ %i.alp, %bb.ff ], [ %i.alb, %bb.fd ], [ %.2603, %bb.fe ], [ %i.ald, %.thread821 ], [ %i.alf, %bb.fc ] ; 2 uses
  %.29 = phi ptr [ null, %.lr.ph997 ], [ %i.alq, %bb.ff ], [ %.27996, %bb.fd ], [ %i.all, %bb.fe ], [ %.27996, %.thread821 ], [ %.27996, %bb.fc ] ; 2 uses
  %i.alr = fmul fast <4 x float> %.4611, %i.bo
  %i.als = fmul fast <4 x float> %.4605, %i.bo
  %.5612 = select nsz i1 %i.bm, <4 x float> %i.alr, <4 x float> %.4611 ; 7 uses
  %.5606 = select nsz i1 %i.bm, <4 x float> %i.als, <4 x float> %.4605 ; 7 uses
  br i1 %i.bp, label %bb.fg, label %bb.fm

bb.fg:                                            ; preds = %.thread830
  br i1 %.not1817, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  switch i32 %i.b, label %bb.fk [
    i32 4, label %bb.fi
    i32 1, label %bb.fj
  ]

bb.fi:                                            ; preds = %bb.fh
  store <4 x float> %.5612, ptr %.31746993, align 1, !tbaa !87
  %i.alt = getelementptr inbounds nuw i8, ptr %.31746993, i64 16
  store <4 x float> %.5606, ptr %i.alt, align 1, !tbaa !87
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %.sroa.037.0.vec.extract = extractelement <4 x float> %.5612, i64 0
  store float %.sroa.037.0.vec.extract, ptr %.31746993, align 4, !tbaa !67
  %.sroa.738.16.vec.extract = extractelement <4 x float> %.5606, i64 0
  %i.alu = getelementptr inbounds nuw i8, ptr %.31746993, i64 4
  store float %.sroa.738.16.vec.extract, ptr %i.alu, align 4, !tbaa !67
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %.31746993, i64 %i.k
  %i.alw = shufflevector <4 x float> %.5612, <4 x float> %.5606, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.alw, ptr %i.alv, align 4, !tbaa !67
  %i.alx = getelementptr inbounds nuw i8, ptr %.31746993, i64 %.idx890
  %i.aly = shufflevector <4 x float> %.5612, <4 x float> %.5606, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aly, ptr %i.alx, align 4, !tbaa !67
  %i.alz = getelementptr inbounds nuw i8, ptr %.31746993, i64 %.idx892
  %i.ama = shufflevector <4 x float> %.5612, <4 x float> %.5606, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ama, ptr %i.alz, align 4, !tbaa !67
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fi, %bb.fh, %bb.fj
  %i.amb = getelementptr inbounds nuw i8, ptr %.31746993, i64 %.idx1828
  br label %bb.fs

bb.fl:                                            ; preds = %bb.fg
  store <4 x float> %.5612, ptr %.31746993, align 1, !tbaa !87
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %.31746993, i64 %i.k
  store <4 x float> %.5606, ptr %i.amc, align 1, !tbaa !87
  %i.amd = getelementptr inbounds nuw i8, ptr %.31746993, i64 16
  br label %bb.fs

bb.fm:                                            ; preds = %.thread830
  %i.ame = bitcast <4 x float> %.5612 to <8 x i16>
  %i.amf = bitcast <4 x float> %.5606 to <8 x i16>
  %i.amg = shufflevector <8 x i16> %i.ame, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amh = shufflevector <8 x i16> %i.amf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ami = bitcast <8 x i16> %i.amg to <4 x float>
  %i.amj = bitcast <8 x i16> %i.amh to <4 x float>
  %i.amk = shufflevector <4 x float> %i.ami, <4 x float> %i.amj, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  br i1 %.not1817, label %bb.fr, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  switch i32 %i.b, label %bb.fq [
    i32 4, label %bb.fo
    i32 1, label %bb.fp
  ]

bb.fo:                                            ; preds = %bb.fn
  store <4 x float> %i.amk, ptr %.41756992, align 1, !tbaa !87
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.aml = bitcast <4 x float> %i.amk to <8 x i16> ; 6 uses
  %i.amm = shufflevector <8 x i16> %i.aml, <8 x i16> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i16> %i.amm, ptr %.41756992, align 2, !tbaa !105
  %i.amn = getelementptr inbounds nuw [2 x i8], ptr %.41756992, i64 %i.k
  %i.amo = shufflevector <8 x i16> %i.aml, <8 x i16> poison, <2 x i32> <i32 1, i32 5>
  store <2 x i16> %i.amo, ptr %i.amn, align 2, !tbaa !105
  %.sroa.035.4.vec.extract = extractelement <8 x i16> %i.aml, i64 2
  %i.amp = getelementptr inbounds nuw i8, ptr %.41756992, i64 %.idx888 ; 2 uses
  store i16 %.sroa.035.4.vec.extract, ptr %i.amp, align 2, !tbaa !105
  %.sroa.035.12.vec.extract = extractelement <8 x i16> %i.aml, i64 6
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 2
  store i16 %.sroa.035.12.vec.extract, ptr %i.amq, align 2, !tbaa !105
  %.sroa.035.6.vec.extract = extractelement <8 x i16> %i.aml, i64 3
  %i.amr = getelementptr inbounds nuw i8, ptr %.41756992, i64 %.idx889 ; 2 uses
  store i16 %.sroa.035.6.vec.extract, ptr %i.amr, align 2, !tbaa !105
  %.sroa.035.14.vec.extract = extractelement <8 x i16> %i.aml, i64 7
  %i.ams = getelementptr i8, ptr %i.amr, i64 2
  store i16 %.sroa.035.14.vec.extract, ptr %i.ams, align 2, !tbaa !105
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fo, %bb.fn, %bb.fp
  %i.amt = getelementptr inbounds nuw i8, ptr %.41756992, i64 %.idx890
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fm
  %i.amu = bitcast <4 x float> %i.amk to <2 x i64>
  %i.amv = extractelement <2 x i64> %i.amu, i64 0
  store i64 %i.amv, ptr %.41756992, align 1, !tbaa !87
  %i.amw = getelementptr inbounds nuw [2 x i8], ptr %.41756992, i64 %i.k
  %i.amx = bitcast <4 x float> %i.amk to <2 x i64>
  %i.amy = extractelement <2 x i64> %i.amx, i64 1
  store i64 %i.amy, ptr %i.amw, align 1, !tbaa !87
  %i.amz = getelementptr inbounds nuw i8, ptr %.41756992, i64 8
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fq, %bb.fr, %bb.fk, %bb.fl
  %.61758 = phi ptr [ %.41756992, %bb.fk ], [ %.41756992, %bb.fl ], [ %i.amt, %bb.fq ], [ %i.amz, %bb.fr ] ; 2 uses
  %.41747 = phi ptr [ %i.amb, %bb.fk ], [ %i.amd, %bb.fl ], [ %.31746993, %bb.fq ], [ %.31746993, %bb.fr ] ; 2 uses
  %i.ana = add nuw nsw i32 %.11735994, 4          ; 3 uses
  %i.anb = or disjoint i32 %i.ana, 3
  %i.anc = icmp slt i32 %i.anb, %6
  br i1 %i.anc, label %.lr.ph997, label %.preheader911, !llvm.loop !998

.preheader910:                                    ; preds = %bb.gf, %.preheader911
  %.71759.lcssa = phi ptr [ %.41756.lcssa, %.preheader911 ], [ %.91761, %bb.gf ]
  %.51748.lcssa = phi ptr [ %.31746.lcssa, %.preheader911 ], [ %.61749, %bb.gf ]
  %.21736.lcssa = phi i32 [ %.11735.lcssa, %.preheader911 ], [ %i.apg, %bb.gf ] ; 2 uses
  %.81694.lcssa = phi ptr [ %.71693.lcssa, %.preheader911 ], [ %i.ani, %bb.gf ] ; 2 uses
  %.30.lcssa = phi ptr [ %.27.lcssa, %.preheader911 ], [ %.32, %bb.gf ] ; 2 uses
  %i.and = icmp slt i32 %.21736.lcssa, %6
  br i1 %i.and, label %.lr.ph1019.preheader, label %._crit_edge1020

.lr.ph1019.preheader:                             ; preds = %.preheader910
  %i.ane = shufflevector <2 x float> %i.afy, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph1019

.lr.ph1008:                                       ; preds = %.lr.ph1008.preheader, %bb.gf
  %.301007 = phi ptr [ %.32, %bb.gf ], [ %.27.lcssa, %.lr.ph1008.preheader ] ; 9 uses
  %.816941006 = phi ptr [ %i.ani, %bb.gf ], [ %.71693.lcssa, %.lr.ph1008.preheader ] ; 3 uses
  %.217361005 = phi i32 [ %i.apg, %bb.gf ], [ %.11735.lcssa, %.lr.ph1008.preheader ]
  %.517481004 = phi ptr [ %.61749, %bb.gf ], [ %.31746.lcssa, %.lr.ph1008.preheader ] ; 7 uses
  %.717591003 = phi ptr [ %.91761, %bb.gf ], [ %.41756.lcssa, %.lr.ph1008.preheader ] ; 7 uses
  %i.anf = load <2 x float>, ptr %.816941006, align 4, !tbaa !67 ; 6 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.816941006, i64 8
  %i.anh = load <2 x float>, ptr %i.ang, align 4, !tbaa !67 ; 6 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.816941006, i64 16 ; 2 uses
  %.not1820 = icmp eq ptr %.301007, null
  br i1 %.not1820, label %.thread849, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph1008
  br i1 %i.bg, label %.thread836, label %bb.fu

.thread836:                                       ; preds = %bb.ft
  %i.anj = fadd fast <2 x float> %i.anf, %i.aku
  %i.ank = fadd fast <2 x float> %i.anh, %i.aku
  br label %.thread849

bb.fu:                                            ; preds = %bb.ft
  br i1 %or.cond11, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.anl = fadd fast <2 x float> %i.anf, %i.aks
  %i.anm = fadd fast <2 x float> %i.anh, %i.akt
  br label %.thread849

bb.fw:                                            ; preds = %bb.fu
  switch i32 %2, label %.thread849 [
    i32 3, label %bb.fx
    i32 4, label %bb.fy
  ]

bb.fx:                                            ; preds = %bb.fw
  %i.ann = load <2 x float>, ptr %.301007, align 4, !tbaa !67
  %i.ano = fmul fast <2 x float> %i.ann, %i.bw
  %i.anp = fadd fast <2 x float> %i.ano, %i.anf
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %.301007, i64 %i.t
  %i.anr = load <2 x float>, ptr %i.anq, align 4, !tbaa !67
  %i.ans = fmul fast <2 x float> %i.anr, %i.bw
  %i.ant = fadd fast <2 x float> %i.ans, %i.anh
  %i.anu = getelementptr inbounds nuw i8, ptr %.301007, i64 8
  br label %.thread849

bb.fy:                                            ; preds = %bb.fw
  %i.anv = load <2 x float>, ptr %.301007, align 4, !tbaa !67
  %i.anw = fmul fast <2 x float> %i.anv, %i.bw    ; 2 uses
  %i.anx = fadd fast <2 x float> %i.anw, %i.anf
  %i.any = fadd fast <2 x float> %i.anw, %i.anh
  %i.anz = getelementptr inbounds nuw i8, ptr %.301007, i64 8
  br label %.thread849

.thread849:                                       ; preds = %bb.fw, %bb.fv, %.thread836, %bb.fx, %bb.fy, %.lr.ph1008
  %.32 = phi ptr [ %i.anz, %bb.fy ], [ %.301007, %bb.fw ], [ null, %.lr.ph1008 ], [ %i.anu, %bb.fx ], [ %.301007, %.thread836 ], [ %.301007, %bb.fv ] ; 2 uses
  %i.aoa = phi <2 x float> [ %i.any, %bb.fy ], [ %i.anh, %bb.fw ], [ %i.anh, %.lr.ph1008 ], [ %i.ant, %bb.fx ], [ %i.ank, %.thread836 ], [ %i.anm, %bb.fv ]
  %i.aob = phi <2 x float> [ %i.anx, %bb.fy ], [ %i.anf, %bb.fw ], [ %i.anf, %.lr.ph1008 ], [ %i.anp, %bb.fx ], [ %i.anj, %.thread836 ], [ %i.anl, %bb.fv ]
  %i.aoc = fmul fast <2 x float> %i.aob, %i.by    ; 4 uses
  %i.aod = fmul fast <2 x float> %i.aoa, %i.by    ; 5 uses
  br i1 %i.bp, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %.thread849
  %i.aoe = extractelement <2 x float> %i.aoc, i64 0
  store float %i.aoe, ptr %.517481004, align 4, !tbaa !67
  %i.aof = getelementptr inbounds nuw i8, ptr %.517481004, i64 4 ; 2 uses
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %.517481004, i64 %i.k ; 3 uses
  %i.aoh = getelementptr i8, ptr %i.aog, i64 4    ; 2 uses
  br i1 %.not1817, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aoi = extractelement <2 x float> %i.aod, i64 0
  store float %i.aoi, ptr %i.aof, align 4, !tbaa !67
  %i.aoj = extractelement <2 x float> %i.aoc, i64 1
  store float %i.aoj, ptr %i.aog, align 4, !tbaa !67
  %i.aok = extractelement <2 x float> %i.aod, i64 1
  store float %i.aok, ptr %i.aoh, align 4, !tbaa !67
  %i.aol = getelementptr inbounds nuw i8, ptr %.517481004, i64 %.idx890
  br label %bb.gf

bb.gb:                                            ; preds = %bb.fz
  %i.aom = extractelement <2 x float> %i.aoc, i64 1
  store float %i.aom, ptr %i.aof, align 4, !tbaa !67
  %i.aon = extractelement <2 x float> %i.aod, i64 0
  store float %i.aon, ptr %i.aog, align 4, !tbaa !67
  %i.aoo = extractelement <2 x float> %i.aod, i64 1
  store float %i.aoo, ptr %i.aoh, align 4, !tbaa !67
  %i.aop = getelementptr inbounds nuw i8, ptr %.517481004, i64 8
  br label %bb.gf

bb.gc:                                            ; preds = %.thread849
  %i.aoq = bitcast <2 x float> %i.aoc to <2 x i32>
  %i.aor = lshr <2 x i32> %i.aoq, splat (i32 16)  ; 2 uses
  %i.aos = bitcast <2 x i32> %i.aor to <4 x i16>
  %i.aot = extractelement <4 x i16> %i.aos, i64 0
  %i.aou = bitcast <2 x i32> %i.aor to <4 x i16>
  %i.aov = extractelement <4 x i16> %i.aou, i64 2 ; 2 uses
  %i.aow = bitcast <2 x float> %i.aod to <2 x i32>
  %i.aox = lshr <2 x i32> %i.aow, splat (i32 16)
  %i.aoy = trunc nuw <2 x i32> %i.aox to <2 x i16> ; 3 uses
  store i16 %i.aot, ptr %.717591003, align 2, !tbaa !105
  %i.aoz = getelementptr inbounds nuw i8, ptr %.717591003, i64 2 ; 2 uses
  %i.apa = getelementptr inbounds nuw [2 x i8], ptr %.717591003, i64 %i.k ; 3 uses
  br i1 %.not1817, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.apb = getelementptr i8, ptr %i.apa, i64 2
  %i.apc = extractelement <2 x i16> %i.aoy, i64 0
  store i16 %i.apc, ptr %i.aoz, align 2, !tbaa !105
  store i16 %i.aov, ptr %i.apa, align 2, !tbaa !105
  %i.apd = extractelement <2 x i16> %i.aoy, i64 1
  store i16 %i.apd, ptr %i.apb, align 2, !tbaa !105
  %i.ape = getelementptr inbounds nuw i8, ptr %.717591003, i64 %.idx888
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  store i16 %i.aov, ptr %i.aoz, align 2, !tbaa !105
  store <2 x i16> %i.aoy, ptr %i.apa, align 2, !tbaa !105
  %i.apf = getelementptr inbounds nuw i8, ptr %.717591003, i64 4
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %bb.ge, %bb.ga, %bb.gb
  %.91761 = phi ptr [ %.717591003, %bb.ga ], [ %.717591003, %bb.gb ], [ %i.ape, %bb.gd ], [ %i.apf, %bb.ge ] ; 2 uses
  %.61749 = phi ptr [ %i.aol, %bb.ga ], [ %i.aop, %bb.gb ], [ %.517481004, %bb.gd ], [ %.517481004, %bb.ge ] ; 2 uses
  %i.apg = add nuw nsw i32 %.217361005, 2         ; 3 uses
  %i.aph = or disjoint i32 %i.apg, 1
  %i.api = icmp slt i32 %i.aph, %6
  br i1 %i.api, label %.lr.ph1008, label %.preheader910, !llvm.loop !999

.lr.ph1019:                                       ; preds = %.lr.ph1019.preheader, %bb.gp
  %.331018 = phi ptr [ %.35, %bb.gp ], [ %.30.lcssa, %.lr.ph1019.preheader ] ; 7 uses
  %.916951017 = phi ptr [ %i.apk, %bb.gp ], [ %.81694.lcssa, %.lr.ph1019.preheader ] ; 2 uses
  %.317371016 = phi i32 [ %i.aqw, %bb.gp ], [ %.21736.lcssa, %.lr.ph1019.preheader ]
  %.717501015 = phi ptr [ %.81751, %bb.gp ], [ %.51748.lcssa, %.lr.ph1019.preheader ] ; 7 uses
  %.1017621014 = phi ptr [ %.121764, %bb.gp ], [ %.71759.lcssa, %.lr.ph1019.preheader ] ; 7 uses
  %i.apj = load <2 x float>, ptr %.916951017, align 4, !tbaa !67 ; 4 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.916951017, i64 8 ; 2 uses
  %.not1819 = icmp eq ptr %.331018, null
  br i1 %.not1819, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph1019
  %i.apl = fadd fast <2 x float> %i.apj, %i.ane
  %i.apm = select <2 x i1> %i.ca, <2 x float> %i.apl, <2 x float> %i.apj ; 3 uses
  %i.apn = fadd fast <2 x float> %i.apm, %i.afy
  %i.apo = select <2 x i1> %i.cc, <2 x float> %i.apn, <2 x float> %i.apm
  switch i32 %2, label %bb.gi [
    i32 3, label %.thread855
    i32 4, label %bb.gh
  ]

.thread855:                                       ; preds = %bb.gg
  %i.app = load float, ptr %.331018, align 4, !tbaa !67
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %.331018, i64 %i.t
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !67
  %i.aps = insertelement <2 x float> poison, float %i.app, i64 0
  %i.apt = insertelement <2 x float> %i.aps, float %i.apr, i64 1
  %i.apu = fmul fast <2 x float> %i.apt, %i.bw
  %i.apv = fadd fast <2 x float> %i.apu, %i.apj
  %i.apw = getelementptr inbounds nuw i8, ptr %.331018, i64 4
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.apx = load float, ptr %.331018, align 4, !tbaa !67
  %i.apy = fmul fast float %i.apx, %8
  %i.apz = insertelement <2 x float> poison, float %i.apy, i64 0
  %i.aqa = shufflevector <2 x float> %i.apz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqb = fadd fast <2 x float> %i.aqa, %i.apm
  %i.aqc = getelementptr inbounds nuw i8, ptr %.331018, i64 4
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gg, %.thread855, %bb.gh, %.lr.ph1019
  %.35 = phi ptr [ %i.aqc, %bb.gh ], [ %.331018, %bb.gg ], [ null, %.lr.ph1019 ], [ %i.apw, %.thread855 ] ; 2 uses
  %i.aqd = phi <2 x float> [ %i.aqb, %bb.gh ], [ %i.apo, %bb.gg ], [ %i.apj, %.lr.ph1019 ], [ %i.apv, %.thread855 ]
  %i.aqe = fmul fast <2 x float> %i.aqd, %i.ce    ; 4 uses
  br i1 %i.bp, label %bb.gj, label %bb.gm
end_hunk_2
