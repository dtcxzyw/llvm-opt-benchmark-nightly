inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK4ncnn7Padding7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  store i32 %i.ep, ptr %i.au, align 4, !tbaa !52
  store i32 %i.eq, ptr %i.av, align 8, !tbaa !53
  store i32 1, ptr %i.aw, align 4, !tbaa !54
  store i32 %i.er, ptr %i.ax, align 8, !tbaa !51
  %i.fb = sext i32 %i.ep to i64
  %i.fc = sext i32 %i.eq to i64
  %i.fd = mul nsw i64 %i.fc, %i.fb                ; 2 uses
  %i.fe = mul i64 %i.ew, %i.fd
  %i.ff = add i64 %i.fe, 15
  %i.fg = and i64 %i.ff, -16
  %i.fh = udiv i64 %i.fg, %i.ew
  store i64 %i.fh, ptr %i.ay, align 8, !tbaa !20
  %i.fi = load i32, ptr %i.az, align 8, !tbaa !55, !noalias !363 ; 2 uses
  %i.fj = add nsw i32 %i.fi, -1
  store i32 %i.fj, ptr %i.at, align 8, !tbaa !55, !alias.scope !363
  %i.fk = icmp eq i32 %i.fi, 4
  br i1 %i.fk, label %bb.q, label %_ZNK4ncnn3Mat7channelEi.exit

bb.q:                                             ; preds = %.noexc58
  store i64 %i.fd, ptr %i.ay, align 8, !tbaa !20, !alias.scope !363
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %bb.q, %.noexc58
  %i.fl = load i64, ptr %6, align 8, !tbaa !56    ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %thread-pre-split, label %bb.r

thread-pre-split:                                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.fn = load i32, ptr %i.ba, align 8, !tbaa !22
  %i.fo = load i32, ptr %i.bb, align 8, !tbaa !40
  %i.fp = fptosi float %i.ce to i8
  call fastcc void @_ZN4ncnnL22copy_make_border_imageIaEEvRKNS_3MatERS1_iiiT_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.fn, i32 noundef %i.fo, i32 noundef %i.ed, i8 noundef signext %i.fp)
  %.pr60 = load i64, ptr %6, align 8, !tbaa !56
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split, %_ZNK4ncnn3Mat7channelEi.exit
  %i.fq = phi i64 [ %.pr60, %thread-pre-split ], [ %i.fl, %_ZNK4ncnn3Mat7channelEi.exit ] ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 2
  br i1 %i.fr, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.fs = load i32, ptr %i.ba, align 8, !tbaa !22
  %i.ft = load i32, ptr %i.bb, align 8, !tbaa !40
  %i.fu = load i32, ptr %i.ah, align 8, !tbaa !42
  %i.fv = load i8, ptr %i.bc, align 1, !tbaa !59, !range !60, !noundef !61
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fx = load i8, ptr %i.bd, align 2, !tbaa !62, !range !60, !noundef !61
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fz = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.ce)
          to label %bb.w unwind label %bb.aa

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ga = bitcast float %i.ce to i32
  %i.gb = lshr i32 %i.ga, 16
  %i.gc = trunc nuw i32 %i.gb to i16
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.gd = phi i16 [ %i.gc, %bb.v ], [ %i.fz, %bb.u ]
  call fastcc void @_ZN4ncnnL22copy_make_border_imageItEEvRKNS_3MatERS1_iiiT_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fu, i16 noundef zeroext %i.gd)
  %.pre77 = load i64, ptr %6, align 8, !tbaa !56
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %i.ge = phi i64 [ %.pre77, %bb.w ], [ %i.fq, %bb.r ]
  %i.gf = icmp eq i64 %i.ge, 4
  br i1 %i.gf, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit47

bb.y:                                             ; preds = %bb.x
  %i.gg = load i32, ptr %i.ba, align 8, !tbaa !22
  %i.gh = load i32, ptr %i.bb, align 8, !tbaa !40
  %i.gi = load i32, ptr %i.ah, align 8, !tbaa !42
  call fastcc void @_ZN4ncnnL22copy_make_border_imageIfEEvRKNS_3MatERS1_iiiT_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.gg, i32 noundef %i.gh, i32 noundef %i.gi, float noundef nofpclass(nan inf) %i.ce)
  br label %_ZN4ncnn3MatD2Ev.exit47

_ZN4ncnn3MatD2Ev.exit47:                          ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph66, %middle.block, %bb.o, %_ZN4ncnn3Mat4fillItEEvT_.exit, %_ZN4ncnn3MatD2Ev.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1
  %i.gj = load i32, ptr %i.b, align 4, !tbaa !50
  %i.gk = sext i32 %i.gj to i64
  %.not.not = icmp slt i64 %indvars.iv73, %i.gk
  br i1 %.not.not, label %.noexc55, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.aa:                                            ; preds = %bb.u, %bb.l
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #16
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !366 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Padding7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not122 = icmp sgt i32 %i.k, %i.j
  br i1 %.not122, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 228
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 34 ; 2 uses
  %i.au = sext i32 %i.k to i64                    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph125, %._crit_edge
  %i.av = phi i32 [ %i.j, %.lr.ph125 ], [ %i.bg, %._crit_edge ]
  %indvars.iv133 = phi i64 [ %i.au, %.lr.ph125 ], [ %indvars.iv.next134, %._crit_edge ] ; 5 uses
  %indvar127 = phi i64 [ 0, %.lr.ph125 ], [ %indvar.next128, %._crit_edge ] ; 2 uses
  %12 = add nsw i64 %indvar127, %i.au
  %i.aw = load i32, ptr %i.l, align 8, !tbaa !44
  %.not50 = icmp eq i32 %i.aw, 0
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv133
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.in = phi ptr [ %i.ay, %bb.d ], [ %i.n, %bb.c ]
  %i.az = load float, ptr %.in, align 4, !tbaa !256 ; 7 uses
  %i.ba = load i32, ptr %4, align 4, !tbaa !50
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.noexc75.lr.ph, label %._crit_edge

.noexc75.lr.ph:                                   ; preds = %bb.e
  %i.bc = fptosi float %i.az to i8                ; 2 uses
  %i.bd = bitcast float %i.az to i32
  %i.be = lshr i32 %i.bd, 16
  %i.bf = trunc nuw i32 %i.be to i16              ; 4 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.az, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.noexc75

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre139 = load i32, ptr %i.b, align 4, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bg = phi i32 [ %.pre139, %._crit_edge.loopexit ], [ %i.av, %bb.e ] ; 2 uses
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1
  %i.bh = sext i32 %i.bg to i64
  %.not.not = icmp slt i64 %indvars.iv133, %i.bh
  %indvar.next128 = add nuw nsw i64 %indvar127, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge126

.noexc75:                                         ; preds = %.noexc75.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %.noexc75.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.bi = load ptr, ptr %5, align 8, !tbaa !18, !noalias !368 ; 2 uses
  %i.bj = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !368 ; 2 uses
  %i.bk = mul i64 %i.bj, %indvars.iv133
  %i.bl = load i64, ptr %i.r, align 8, !tbaa !48, !noalias !368 ; 4 uses
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm
  %i.bo = load i32, ptr %i.s, align 8, !tbaa !49, !noalias !368
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !17, !noalias !368
  store ptr null, ptr %i.u, align 8, !tbaa !11
  store i64 %i.bl, ptr %i.v, align 8, !tbaa !48
  store i32 %i.bo, ptr %i.w, align 8, !tbaa !49
  store ptr %i.bp, ptr %i.x, align 8, !tbaa !17
  store i32 2, ptr %i.y, align 8, !tbaa !55
  %i.bq = load <2 x i32>, ptr %i.o, align 4, !tbaa !50, !noalias !368
  %i.br = load i32, ptr %i.p, align 8, !tbaa !53, !noalias !368
  %i.bs = load i32, ptr %i.o, align 4, !tbaa !52, !noalias !368
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = sext i32 %i.br to i64                   ; 2 uses
  %i.bv = mul nsw i64 %i.bu, %i.bt                ; 12 uses
  %i.bw = mul i64 %i.bv, %indvar
  %i.bx = mul i64 %i.bw, %i.bl
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bx ; 7 uses
  store ptr %i.by, ptr %10, align 8, !tbaa !18
  %i.bz = shufflevector <2 x i32> %i.bq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ca, ptr %i.z, align 4, !tbaa !50
  store i64 %i.bv, ptr %i.aa, align 8, !tbaa !20, !alias.scope !371
  %i.cb = load i32, ptr %i.ab, align 8, !tbaa !45 ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvar, %i.cc
  br i1 %i.cd, label %.noexc75._crit_edge, label %bb.f

.noexc75._crit_edge:                              ; preds = %.noexc75
  %.pre140 = load i32, ptr %i.ac, align 8, !tbaa !42
  br label %bb.g

bb.f:                                             ; preds = %.noexc75
  %i.ce = load i32, ptr %6, align 4, !tbaa !50
  %i.cf = add nsw i32 %i.ce, %i.cb
  %i.cg = sext i32 %i.cf to i64
  %.not51 = icmp slt i64 %indvar, %i.cg
  %.pre141 = load i32, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  br i1 %.not51, label %._crit_edge136, label %bb.g

bb.g:                                             ; preds = %.noexc75._crit_edge, %bb.f
  %i.ch = phi i32 [ %.pre140, %.noexc75._crit_edge ], [ %.pre141, %bb.f ] ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.h, label %._crit_edge136

bb.h:                                             ; preds = %bb.g
  %i.cj = load i64, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.i, label %_ZN4ncnn3Mat4fillIaEEvT_.exit

bb.i:                                             ; preds = %bb.h
  %i.cl = trunc i64 %i.bv to i32
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.cn = mul i64 %indvar, %i.bu
  %13 = mul i64 %i.cn, %i.bt
  %i.co = mul i64 %12, %i.bj
  %i.cp = add i64 %13, %i.co
  %i.cq = mul i64 %i.bl, %i.cp
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.cq
  %i.cr = and i64 %i.bv, 2147483647
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %i.bc, i64 %i.cr, i1 false), !tbaa !66
  %.pr.pre = load i64, ptr %7, align 8, !tbaa !56
  br label %_ZN4ncnn3Mat4fillIaEEvT_.exit

_ZN4ncnn3Mat4fillIaEEvT_.exit:                    ; preds = %.lr.ph.preheader, %bb.h
  %i.cs = phi i64 [ %i.cj, %bb.h ], [ %.pr.pre, %.lr.ph.preheader ]
  %i.ct = icmp eq i64 %i.cs, 2
  br i1 %i.ct, label %bb.j, label %_ZN4ncnn3Mat4fillItEEvT_.exit

bb.j:                                             ; preds = %_ZN4ncnn3Mat4fillIaEEvT_.exit
  %i.cu = load i8, ptr %i.as, align 1, !tbaa !59, !range !60, !noundef !61
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cw = load i8, ptr %i.at, align 2, !tbaa !62, !range !60, !noundef !61
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cy = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.az)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.cz = phi i16 [ %i.cy, %bb.l ], [ %i.bf, %bb.k ], [ %i.bf, %bb.j ] ; 3 uses
  %i.da = trunc i64 %i.bv to i32
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %iter.check, label %_ZN4ncnn3Mat4fillItEEvT_.exit

iter.check:                                       ; preds = %bb.m
  %wide.trip.count = and i64 %i.bv, 2147483647    ; 5 uses
  %min.iters.check153 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check153, label %.lr.ph116.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check154 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check154, label %vec.epilog.ph, label %vector.ph155

vector.ph155:                                     ; preds = %vector.main.loop.iter.check
  %i.dc = and i64 %i.bv, 12
  %n.vec156 = and i64 %i.bv, 2147483632           ; 4 uses
  %broadcast.splatinsert157 = insertelement <8 x i16> poison, i16 %i.cz, i64 0
  %broadcast.splat158 = shufflevector <8 x i16> %broadcast.splatinsert157, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph155
  %index160 = phi i64 [ 0, %vector.ph155 ], [ %index.next161, %vector.body159 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index160 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <8 x i16> %broadcast.splat158, ptr %i.dd, align 2, !tbaa !132
  store <8 x i16> %broadcast.splat158, ptr %i.de, align 2, !tbaa !132
  %index.next161 = add nuw i64 %index160, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.df, label %middle.block162, label %vector.body159, !llvm.loop !374

middle.block162:                                  ; preds = %vector.body159
  %cmp.n163 = icmp eq i64 %wide.trip.count, %n.vec156
  br i1 %cmp.n163, label %_ZN4ncnn3Mat4fillItEEvT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block162
  %min.epilog.iters.check = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph116.preheader, label %vec.epilog.ph, !prof !135

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec156, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %i.bv, 2147483644           ; 3 uses
  %broadcast.splatinsert165 = insertelement <4 x i16> poison, i16 %i.cz, i64 0
  %broadcast.splat166 = shufflevector <4 x i16> %broadcast.splatinsert165, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index167 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index167
  store <4 x i16> %broadcast.splat166, ptr %i.dg, align 2, !tbaa !132
  %index.next168 = add nuw i64 %index167, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !375

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %wide.trip.count, %n.vec164
  br i1 %cmp.n169, label %_ZN4ncnn3Mat4fillItEEvT_.exit, label %.lr.ph116.preheader

.lr.ph116.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec156, %vec.epilog.iter.check ], [ %n.vec164, %vec.epilog.middle.block ]
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %.lr.ph116
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph116 ], [ %indvars.iv.ph, %.lr.ph116.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv
  store i16 %i.cz, ptr %i.di, align 2, !tbaa !132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4ncnn3Mat4fillItEEvT_.exit, label %.lr.ph116, !llvm.loop !376

_ZN4ncnn3Mat4fillItEEvT_.exit:                    ; preds = %.lr.ph116, %middle.block162, %vec.epilog.middle.block, %bb.m, %_ZN4ncnn3Mat4fillIaEEvT_.exit
  %.pr = load i64, ptr %7, align 8, !tbaa !56
  %i.dj = icmp eq i64 %.pr, 4
  br i1 %i.dj, label %bb.n, label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %_ZN4ncnn3Mat4fillItEEvT_.exit
  %i.dk = trunc i64 %i.bv to i32                  ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph119.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph119.preheader:                              ; preds = %bb.n
  %i.dm = and i64 %i.bv, 2147483647               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.dm, 8
  br i1 %min.iters.check, label %.lr.ph119.preheader171, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph119.preheader
  %n.vec = and i64 %i.bv, 2147483640              ; 4 uses
  %i.dn = trunc nuw nsw i64 %n.vec to i32
  %i.do = shl nuw nsw i64 %n.vec, 2
  %i.dp = getelementptr i8, ptr %i.by, i64 %i.do
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.dq ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !256
  store <4 x float> %broadcast.splat, ptr %i.dr, align 4, !tbaa !256
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !377

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph119.preheader171

.lr.ph119.preheader171:                           ; preds = %.lr.ph119.preheader, %middle.block
  %.0.i77118.ph = phi i32 [ 0, %.lr.ph119.preheader ], [ %i.dn, %middle.block ]
  %.05.i117.ph = phi ptr [ %i.by, %.lr.ph119.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.preheader171, %.lr.ph119
  %.0.i77118 = phi i32 [ %i.du, %.lr.ph119 ], [ %.0.i77118.ph, %.lr.ph119.preheader171 ]
  %.05.i117 = phi ptr [ %i.dt, %.lr.ph119 ], [ %.05.i117.ph, %.lr.ph119.preheader171 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i117, i64 4
  store float %i.az, ptr %.05.i117, align 4, !tbaa !256
  %i.du = add nuw nsw i32 %.0.i77118, 1           ; 2 uses
  %exitcond131.not = icmp eq i32 %i.du, %i.dk
  br i1 %exitcond131.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph119, !llvm.loop !378

._crit_edge136:                                   ; preds = %bb.f, %bb.g
  %i.dv = phi i32 [ %i.ch, %bb.g ], [ %.pre141, %bb.f ] ; 2 uses
  %i.dw = trunc nuw nsw i64 %indvar to i32
  %i.dx = sub nsw i32 %i.dw, %i.cb                ; 3 uses
  switch i32 %i.dv, label %.noexc78 [
    i32 1, label %.thread
    i32 2, label %bb.o
  ]

.thread:                                          ; preds = %._crit_edge136
  %i.dy = call i32 @llvm.smax.i32(i32 %i.dx, i32 0)
  %i.dz = load i32, ptr %6, align 4, !tbaa !50
  %i.ea = add nsw i32 %i.dz, -1
  %. = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.ea)
  br label %.noexc78

bb.o:                                             ; preds = %._crit_edge136
  %i.eb = call i32 @llvm.abs.i32(i32 %i.dx, i1 true)
  %i.ec = load i32, ptr %6, align 4, !tbaa !50
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  %i.ee = sub nsw i32 %i.eb, %i.ed
  %i.ef = call i32 @llvm.abs.i32(i32 %i.ee, i1 true)
  %i.eg = sub nsw i32 %i.ed, %i.ef
  br label %.noexc78

.noexc78:                                         ; preds = %._crit_edge136, %bb.o, %.thread
  %.1 = phi i32 [ %i.eg, %bb.o ], [ %i.dx, %._crit_edge136 ], [ %., %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.eh = load ptr, ptr %9, align 8, !tbaa !18, !noalias !379
  %i.ei = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !379
  %i.ej = mul i64 %i.ei, %indvars.iv133
  %i.ek = load i64, ptr %i.ag, align 8, !tbaa !48, !noalias !379 ; 3 uses
  %i.el = mul i64 %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.el
  %i.en = load i32, ptr %i.ah, align 8, !tbaa !49, !noalias !379
  %i.eo = load ptr, ptr %i.ai, align 8, !tbaa !17, !noalias !379
  %i.ep = sext i32 %.1 to i64
  store ptr null, ptr %i.aj, align 8, !tbaa !11
  store i64 %i.ek, ptr %i.ak, align 8, !tbaa !48
  store i32 %i.en, ptr %i.al, align 8, !tbaa !49
  store ptr %i.eo, ptr %i.am, align 8, !tbaa !17
  store i32 2, ptr %i.an, align 8, !tbaa !55
  %i.eq = load <2 x i32>, ptr %i.ad, align 4, !tbaa !50, !noalias !379
  %i.er = load i32, ptr %i.ae, align 8, !tbaa !53, !noalias !379
  %i.es = load i32, ptr %i.ad, align 4, !tbaa !52, !noalias !379
  %i.et = sext i32 %i.es to i64
  %i.eu = sext i32 %i.er to i64
  %i.ev = mul nsw i64 %i.eu, %i.et                ; 2 uses
  %i.ew = mul i64 %i.ev, %i.ep
  %i.ex = mul i64 %i.ew, %i.ek
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ex
  store ptr %i.ey, ptr %11, align 8, !tbaa !18
  %i.ez = shufflevector <2 x i32> %i.eq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x i32> %i.ez, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.fa, ptr %i.ao, align 4, !tbaa !50
  store i64 %i.ev, ptr %i.ap, align 8, !tbaa !20, !alias.scope !382
  %i.fb = load i64, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %thread-pre-split, label %bb.p

thread-pre-split:                                 ; preds = %.noexc78
  %i.fd = load i32, ptr %i.aq, align 8, !tbaa !22
  %i.fe = load i32, ptr %i.ar, align 8, !tbaa !40
  call fastcc void @_ZN4ncnnL22copy_make_border_imageIaEEvRKNS_3MatERS1_iiiT_(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.fd, i32 noundef %i.fe, i32 noundef %i.dv, i8 noundef signext %i.bc)
  %.pr113 = load i64, ptr %7, align 8, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %.noexc78
  %i.ff = phi i64 [ %.pr113, %thread-pre-split ], [ %i.fb, %.noexc78 ] ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 2
  br i1 %i.fg, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fh = load i32, ptr %i.aq, align 8, !tbaa !22
  %i.fi = load i32, ptr %i.ar, align 8, !tbaa !40
  %i.fj = load i32, ptr %i.ac, align 8, !tbaa !42
  %i.fk = load i8, ptr %i.as, align 1, !tbaa !59, !range !60, !noundef !61
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fm = load i8, ptr %i.at, align 2, !tbaa !62, !range !60, !noundef !61
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fo = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.az)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %i.fp = phi i16 [ %i.fo, %bb.s ], [ %i.bf, %bb.r ], [ %i.bf, %bb.q ]
  call fastcc void @_ZN4ncnnL22copy_make_border_imageItEEvRKNS_3MatERS1_iiiT_(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.fh, i32 noundef %i.fi, i32 noundef %i.fj, i16 noundef zeroext %i.fp)
  %.pre137 = load i64, ptr %7, align 8, !tbaa !56
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %i.fq = phi i64 [ %.pre137, %bb.t ], [ %i.ff, %bb.p ]
  %i.fr = icmp eq i64 %i.fq, 4
  br i1 %i.fr, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit53

bb.v:                                             ; preds = %bb.u
  %i.fs = load i32, ptr %i.aq, align 8, !tbaa !22
  %i.ft = load i32, ptr %i.ar, align 8, !tbaa !40
  %i.fu = load i32, ptr %i.ac, align 8, !tbaa !42
  call fastcc void @_ZN4ncnnL22copy_make_border_imageIfEEvRKNS_3MatERS1_iiiT_(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fu, float noundef nofpclass(nan inf) %i.az)
  br label %_ZN4ncnn3MatD2Ev.exit53

_ZN4ncnn3MatD2Ev.exit53:                          ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph119, %middle.block, %bb.i, %bb.n, %_ZN4ncnn3Mat4fillItEEvT_.exit, %_ZN4ncnn3MatD2Ev.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.fv = load i32, ptr %4, align 4, !tbaa !50
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvar.next, %i.fw
  br i1 %i.fx, label %.noexc75, label %._crit_edge.loopexit, !llvm.loop !385

._crit_edge126:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge126, %bb.a
  ret void

bb.x:                                             ; preds = %bb.s, %bb.l
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{ptr @_ZN4ncnn7PaddingD2Ev}
!22 = !{!23, !6, i64 208}
!23 = !{!"_ZTSN4ncnn7PaddingE", !24, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !38, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !12, i64 248}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!38 = !{!"float", !7, i64 0}
!39 = !{!23, !6, i64 212}
!40 = !{!23, !6, i64 216}
!41 = !{!23, !6, i64 220}
!42 = !{!23, !6, i64 224}
!43 = !{!23, !38, i64 228}
!44 = !{!23, !6, i64 240}
!45 = !{!23, !6, i64 232}
!46 = !{!23, !6, i64 236}
!47 = !{!13, !13, i64 0}
!48 = !{!12, !15, i64 16}
!49 = !{!12, !6, i64 24}
!50 = !{!6, !6, i64 0}
!51 = !{!12, !6, i64 56}
end_hunk_0
