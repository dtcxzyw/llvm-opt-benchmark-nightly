Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avxvnni?download=true
inline.NumInlined: 76
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !389

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.df, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.df) #3
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #3
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !382 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dl, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !381 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !387
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !389

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dp, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dp) #3
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #3
  %i.dv = add nsw i32 %.069, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.069, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #25
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not153 = icmp sgt i32 %i.k, %i.j
  br i1 %.not153, label %._crit_edge157, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph156, %_ZN4ncnn3MatD2Ev.exit
  %.045154 = phi i32 [ %i.k, %.lr.ph156 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !9
  %i.at = mul nsw i32 %i.as, %.045154             ; 5 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.au

.noexc46:                                         ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !32, !noalias !414
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !414
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !414
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 5 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !9
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !9
  %.sroa.speculated120 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 10 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.bh = icmp sgt i32 %.sroa.speculated120, 7
  %i.bi = and i32 %.sroa.speculated120, 2147483640
  %i.bj = zext nneg i32 %.sroa.speculated120 to i64
  %i.bk = sext i32 %.sroa.speculated120 to i64    ; 3 uses
  %invariant.op.i = add nsw i64 %i.bk, -3
  %i.bl = sext i32 %i.at to i64                   ; 2 uses
  %invariant.op736.i = add nsw i64 %i.bk, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.bm = add nsw i32 %.045154, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.045154, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge157

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.yy, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.za, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044152 = phi i32 [ 0, %.lr.ph ], [ %i.yz, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 7 uses
  %i.bq = sub nsw i32 %i.bp, %.044152
  %.sroa.speculated116 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 23 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc52.preheader, label %._crit_edge

.noexc52.preheader:                               ; preds = %bb.d
  %.pre159 = load i32, ptr %9, align 4, !tbaa !9
  br label %.noexc52

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !10 ; 9 uses
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !19 ; 9 uses
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !16 ; 11 uses
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.bx = sext i32 %i.bv to i64
  %i.by = mul i64 %i.bw, %i.bx                    ; 16 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = sdiv i32 %i.bz, 2                       ; 8 uses
  %factor.op.mul576.i = shl i32 %.sroa.speculated116, 4 ; 6 uses
  br i1 %i.bh, label %.lr.ph579.i, label %.preheader567.i

.lr.ph579.i:                                      ; preds = %._crit_edge
  %i.cb = icmp sgt i32 %.sroa.speculated116, 0
  %i.cc = shl nsw i32 %.sroa.speculated116, 3
  %15 = zext nneg i32 %i.cc to i64
  %16 = zext nneg i32 %factor.op.mul576.i to i64
  %i.cd = mul nsw i32 %.sroa.speculated116, 24
  %17 = zext nneg i32 %i.cd to i64
  %i.ce = shl nsw i32 %.sroa.speculated116, 5
  %18 = zext nneg i32 %i.ce to i64                ; 12 uses
  %.idx458.i = shl i64 %i.by, 3                   ; 2 uses
  %.idx459.i = mul i64 %i.by, 12                  ; 2 uses
  %.idx460.i = shl i64 %i.by, 4                   ; 2 uses
  %.idx461.i = mul i64 %i.by, 20                  ; 2 uses
  %.idx462.i = mul i64 %i.by, 24                  ; 2 uses
  %.idx463.i = mul i64 %i.by, 28                  ; 2 uses
  %i.cf = mul nsw i32 %i.bv, %i.bt
  %i.cg = sext i32 %i.cf to i64
  br i1 %i.cb, label %.lr.ph.us.preheader.i, label %.preheader567.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph579.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv649.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next650.i, %._crit_edge.us.i ] ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv649.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul576.i, %i.ch
  %i.ci = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cj = add i32 %i.at, %i.ch
  %i.ck = sdiv i32 %i.cj, %i.bv
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ci
  br label %_ZN4ncnn3MatD2Ev.exit469.us.i

_ZN4ncnn3MatD2Ev.exit469.us.i:                    ; preds = %bb.u, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.u ] ; 3 uses
  %.idx733.i.a = shl nuw nsw i64 %indvars.iv.i, 5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx733.i.a ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %15 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %16 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %17 ; 2 uses
  %i.cr = load <8 x i32>, ptr %i.co, align 32, !tbaa !43 ; 2 uses
  %i.cs = load <8 x i32>, ptr %i.cp, align 32, !tbaa !43 ; 2 uses
  %i.ct = load <8 x i32>, ptr %i.cq, align 32, !tbaa !43
  %i.cu = sub <8 x i32> %i.cr, %i.cs
  %i.cv = add <8 x i32> %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %18 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %18 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %18 ; 2 uses
  %i.cz = load <8 x i32>, ptr %i.cw, align 32, !tbaa !43 ; 2 uses
  %i.da = load <8 x i32>, ptr %i.cx, align 32, !tbaa !43 ; 2 uses
  %i.db = load <8 x i32>, ptr %i.cy, align 32, !tbaa !43
  %i.dc = sub <8 x i32> %i.cz, %i.da
  %i.dd = add <8 x i32> %i.dc, %i.db              ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %18 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %18 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %18 ; 2 uses
  %i.dh = load <8 x i32>, ptr %i.de, align 32, !tbaa !43 ; 2 uses
  %i.di = load <8 x i32>, ptr %i.df, align 32, !tbaa !43 ; 2 uses
  %i.dj = load <8 x i32>, ptr %i.dg, align 32, !tbaa !43
  %i.dk = sub <8 x i32> %i.dh, %i.di
  %i.dl = add <8 x i32> %i.dk, %i.dj              ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %18
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %18
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %18
  %i.dp = load <8 x i32>, ptr %i.dm, align 32, !tbaa !43 ; 2 uses
  %i.dq = load <8 x i32>, ptr %i.dn, align 32, !tbaa !43 ; 2 uses
  %i.dr = load <8 x i32>, ptr %i.do, align 32, !tbaa !43
  %i.ds = trunc i64 %indvars.iv.i to i32
  %i.dt = add i32 %.044152, %i.ds                 ; 2 uses
  %i.du = sdiv i32 %i.dt, %i.ca
  %i.dv = srem i32 %i.dt, %i.ca
  %i.dw = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !417
  %i.dx = load ptr, ptr %12, align 8, !tbaa !32, !noalias !417
  %i.dy = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !417
  %i.dz = mul i64 %i.dy, %i.cl
  %i.ea = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !417 ; 2 uses
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb
  %i.ed = sext i32 %i.dw to i64
  %i.ee = shl nsw i32 %i.du, 1                    ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = mul nsw i64 %i.ed, %i.ef
  %i.eh = mul i64 %i.eg, %i.ea
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eh
  %i.ej = shl nsw i32 %i.dv, 1                    ; 2 uses
  %i.ek = mul nsw i32 %i.ej, %i.bv
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.el ; 16 uses
  %i.en = or disjoint i32 %i.ej, 1
  %i.eo = icmp slt i32 %i.en, %i.bt               ; 6 uses
  %.not457.us.i = icmp slt i32 %i.ee, %i.bu
  br i1 %.not457.us.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit469.us.i
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %18 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %18 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %18
  %i.es = load <8 x i32>, ptr %i.er, align 32, !tbaa !43
  %i.et = load <8 x i32>, ptr %i.eq, align 32, !tbaa !43
  %i.eu = add <8 x i32> %i.di, %i.dh
  %i.ev = add <8 x i32> %i.eu, %i.et              ; 2 uses
  %i.ew = load <8 x i32>, ptr %i.ep, align 32, !tbaa !43
  %i.ex = add <8 x i32> %i.da, %i.cz
  %i.ey = add <8 x i32> %i.ex, %i.ew              ; 2 uses
  %i.ez = load <8 x i32>, ptr %i.cn, align 32, !tbaa !43
  %i.fa = add <8 x i32> %i.cs, %i.cr
  %i.fb = add <8 x i32> %i.fa, %i.ez
  %i.fc = add <8 x i32> %i.fb, %i.ev
  %i.fd = add <8 x i32> %i.fc, %i.ey
  %i.fe = add <8 x i32> %i.dq, %i.dp
  %i.ff = add <8 x i32> %i.fe, %i.es
  %i.fg = sub <8 x i32> %i.ff, %i.ev
  %i.fh = add <8 x i32> %i.fg, %i.ey
  %i.fi = ashr <8 x i32> %i.fd, splat (i32 2)     ; 10 uses
  %i.fj = ashr <8 x i32> %i.fh, splat (i32 2)     ; 10 uses
  %i.fk = bitcast <8 x i32> %i.fj to <4 x i64>    ; 2 uses
  switch i32 %i.bv, label %bb.l [
    i32 8, label %bb.j
    i32 4, label %bb.h
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.by ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx458.i ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx459.i ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx460.i ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx461.i ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx462.i ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx463.i ; 2 uses
  %.sroa.0536.0.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 0
  store i32 %.sroa.0536.0.vec.extract.us.i, ptr %i.em, align 4, !tbaa !9
  %.sroa.0536.4.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 1
  store i32 %.sroa.0536.4.vec.extract.us.i, ptr %i.fl, align 4, !tbaa !9
  %.sroa.0536.8.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 2
  store i32 %.sroa.0536.8.vec.extract.us.i, ptr %i.fm, align 4, !tbaa !9
  %.sroa.0536.12.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 3
  store i32 %.sroa.0536.12.vec.extract.us.i, ptr %i.fn, align 4, !tbaa !9
  %.sroa.0536.16.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 4
  store i32 %.sroa.0536.16.vec.extract.us.i, ptr %i.fo, align 4, !tbaa !9
  %.sroa.0536.20.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 5
  store i32 %.sroa.0536.20.vec.extract.us.i, ptr %i.fp, align 4, !tbaa !9
  %.sroa.0536.24.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 6
  store i32 %.sroa.0536.24.vec.extract.us.i, ptr %i.fq, align 4, !tbaa !9
  %.sroa.0536.28.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 7
  store i32 %.sroa.0536.28.vec.extract.us.i, ptr %i.fr, align 4, !tbaa !9
  br i1 %i.eo, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.11.32.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %.sroa.11.32.vec.extract.us.i, ptr %i.fs, align 4, !tbaa !9
  %.sroa.11.36.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %.sroa.11.36.vec.extract.us.i, ptr %i.ft, align 4, !tbaa !9
  %.sroa.11.40.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 %.sroa.11.40.vec.extract.us.i, ptr %i.fu, align 4, !tbaa !9
  %.sroa.11.44.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 %.sroa.11.44.vec.extract.us.i, ptr %i.fv, align 4, !tbaa !9
  %.sroa.11.48.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i32 %.sroa.11.48.vec.extract.us.i, ptr %i.fw, align 4, !tbaa !9
  %.sroa.11.52.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %.sroa.11.52.vec.extract.us.i, ptr %i.fx, align 4, !tbaa !9
  %.sroa.11.56.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 6
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %.sroa.11.56.vec.extract.us.i, ptr %i.fy, align 4, !tbaa !9
  %.sroa.11.60.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 7
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %.sroa.11.60.vec.extract.us.i, ptr %i.fz, align 4, !tbaa !9
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ga = bitcast <8 x i32> %i.fi to <4 x i64>    ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.by ; 2 uses
  %i.gc = shufflevector <4 x i64> %i.ga, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.gc, ptr %i.em, align 16, !tbaa !43
  %i.gd = shufflevector <4 x i64> %i.ga, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.gd, ptr %i.gb, align 16, !tbaa !43
  br i1 %i.eo, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ge = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.gf = shufflevector <4 x i64> %i.fk, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.gf, ptr %i.ge, align 16, !tbaa !43
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gh = shufflevector <4 x i64> %i.fk, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.gh, ptr %i.gg, align 16, !tbaa !43
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  store <8 x i32> %i.fi, ptr %i.em, align 32, !tbaa !43
  br i1 %i.eo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gi = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store <8 x i32> %i.fj, ptr %i.gi, align 32, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.cg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit469.us.i
  %.1443.us.i = phi ptr [ %i.em, %_ZN4ncnn3MatD2Ev.exit469.us.i ], [ %i.gj, %bb.l ] ; 14 uses
  %i.gk = or disjoint i32 %i.ee, 1
  %.not457.us.1.i = icmp slt i32 %i.gk, %i.bu
  br i1 %.not457.us.1.i, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.gl = add <8 x i32> %i.cv, %i.dd
  %i.gm = add <8 x i32> %i.gl, %i.dl
  %i.gn = add <8 x i32> %i.dd, %i.dp
  %i.go = add <8 x i32> %i.dl, %i.dq
  %i.gp = sub <8 x i32> %i.gn, %i.go
  %i.gq = add <8 x i32> %i.gp, %i.dr
  %i.gr = ashr <8 x i32> %i.gm, splat (i32 2)     ; 10 uses
  %i.gs = ashr <8 x i32> %i.gq, splat (i32 2)     ; 10 uses
  %i.gt = bitcast <8 x i32> %i.gs to <4 x i64>    ; 2 uses
  switch i32 %i.bv, label %bb.u [
    i32 8, label %bb.s
    i32 4, label %bb.q
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.1443.us.i, i64 %i.by ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx458.i ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx459.i ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx460.i ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx461.i ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx462.i ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx463.i ; 2 uses
  %.sroa.0536.0.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 0
  store i32 %.sroa.0536.0.vec.extract.us.1.i, ptr %.1443.us.i, align 4, !tbaa !9
  %.sroa.0536.4.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 1
  store i32 %.sroa.0536.4.vec.extract.us.1.i, ptr %i.gu, align 4, !tbaa !9
  %.sroa.0536.8.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 2
  store i32 %.sroa.0536.8.vec.extract.us.1.i, ptr %i.gv, align 4, !tbaa !9
  %.sroa.0536.12.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 3
  store i32 %.sroa.0536.12.vec.extract.us.1.i, ptr %i.gw, align 4, !tbaa !9
  %.sroa.0536.16.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 4
  store i32 %.sroa.0536.16.vec.extract.us.1.i, ptr %i.gx, align 4, !tbaa !9
  %.sroa.0536.20.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 5
  store i32 %.sroa.0536.20.vec.extract.us.1.i, ptr %i.gy, align 4, !tbaa !9
  %.sroa.0536.24.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 6
  store i32 %.sroa.0536.24.vec.extract.us.1.i, ptr %i.gz, align 4, !tbaa !9
  %.sroa.0536.28.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 7
  store i32 %.sroa.0536.28.vec.extract.us.1.i, ptr %i.ha, align 4, !tbaa !9
  br i1 %i.eo, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %.sroa.11.32.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 0
  %i.hb = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 4
  store i32 %.sroa.11.32.vec.extract.us.1.i, ptr %i.hb, align 4, !tbaa !9
  %.sroa.11.36.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 %.sroa.11.36.vec.extract.us.1.i, ptr %i.hc, align 4, !tbaa !9
  %.sroa.11.40.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 2
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i32 %.sroa.11.40.vec.extract.us.1.i, ptr %i.hd, align 4, !tbaa !9
  %.sroa.11.44.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 3
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %.sroa.11.44.vec.extract.us.1.i, ptr %i.he, align 4, !tbaa !9
  %.sroa.11.48.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 %.sroa.11.48.vec.extract.us.1.i, ptr %i.hf, align 4, !tbaa !9
  %.sroa.11.52.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 5
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store i32 %.sroa.11.52.vec.extract.us.1.i, ptr %i.hg, align 4, !tbaa !9
  %.sroa.11.56.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 6
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store i32 %.sroa.11.56.vec.extract.us.1.i, ptr %i.hh, align 4, !tbaa !9
  %.sroa.11.60.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 7
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %.sroa.11.60.vec.extract.us.1.i, ptr %i.hi, align 4, !tbaa !9
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  %i.hj = bitcast <8 x i32> %i.gr to <4 x i64>    ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.1443.us.i, i64 %i.by ; 2 uses
  %i.hl = shufflevector <4 x i64> %i.hj, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.hl, ptr %.1443.us.i, align 16, !tbaa !43
  %i.hm = shufflevector <4 x i64> %i.hj, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.hm, ptr %i.hk, align 16, !tbaa !43
  br i1 %i.eo, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hn = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 16
  %i.ho = shufflevector <4 x i64> %i.gt, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ho, ptr %i.hn, align 16, !tbaa !43
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hq = shufflevector <4 x i64> %i.gt, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.hq, ptr %i.hp, align 16, !tbaa !43
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  store <8 x i32> %i.gr, ptr %.1443.us.i, align 32, !tbaa !43
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hr = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 32
  store <8 x i32> %i.gs, ptr %i.hr, align 32, !tbaa !43
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit469.us.i, !llvm.loop !420

._crit_edge.us.i:                                 ; preds = %bb.u
  %indvars.iv.next650.i = add nuw nsw i64 %indvars.iv649.i, 8 ; 3 uses
  %i.hs = or disjoint i64 %indvars.iv.next650.i, 7
  %i.ht = icmp samesign ult i64 %i.hs, %i.bj
  br i1 %i.ht, label %.lr.ph.us.i, label %.preheader567.loopexit.i, !llvm.loop !421

.preheader567.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.hu = trunc nuw nsw i64 %indvars.iv.next650.i to i32
  br label %.preheader567.i

.preheader567.i:                                  ; preds = %.lr.ph579.i, %.preheader567.loopexit.i, %._crit_edge
  %.0433.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.hu, %.preheader567.loopexit.i ], [ %i.bi, %.lr.ph579.i ] ; 6 uses
  %i.hv = or disjoint i32 %.0433.lcssa.i, 3
  %i.hw = icmp slt i32 %i.hv, %.sroa.speculated120
  br i1 %i.hw, label %.lr.ph590.i, label %.preheader566.i

.lr.ph590.i:                                      ; preds = %.preheader567.i
  %i.hx = icmp sgt i32 %.sroa.speculated116, 0
  %i.hy = shl nsw i32 %.sroa.speculated116, 2
  %19 = zext nneg i32 %i.hy to i64
  %i.hz = shl nsw i32 %.sroa.speculated116, 3
  %20 = zext nneg i32 %i.hz to i64
  %i.ia = mul nsw i32 %.sroa.speculated116, 12
  %21 = zext nneg i32 %i.ia to i64
  %22 = zext nneg i32 %factor.op.mul576.i to i64  ; 12 uses
  %.idx.i = shl i64 %i.by, 3                      ; 2 uses
  %.idx456.i = mul i64 %i.by, 12                  ; 2 uses
  %i.ib = mul nsw i32 %i.bv, %i.bt
  %i.ic = sext i32 %i.ib to i64
  br i1 %i.hx, label %.lr.ph.us593.preheader.i, label %.lr.ph590.split.preheader.i

.lr.ph590.split.preheader.i:                      ; preds = %.lr.ph590.i
  %i.id = add i32 %.0433.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %i.id)
  %reass.sub = sub i32 %smax.i, %.0433.lcssa.i
  %i.ie = and i32 %reass.sub, -4
  %i.if = add i32 %.0433.lcssa.i, %i.ie
  br label %.preheader566.i

.lr.ph.us593.preheader.i:                         ; preds = %.lr.ph590.i
  %i.ig = sext i32 %.0433.lcssa.i to i64
  %wide.trip.count662.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us593.i

.lr.ph.us593.i:                                   ; preds = %._crit_edge.us594.i, %.lr.ph.us593.preheader.i
  %indvars.iv664.i = phi i64 [ %i.ig, %.lr.ph.us593.preheader.i ], [ %indvars.iv.next665.i, %._crit_edge.us594.i ] ; 2 uses
  %i.ih = trunc nsw i64 %indvars.iv664.i to i32   ; 2 uses
  %factor.op.mul.reass.us592.i = mul i32 %factor.op.mul576.i, %i.ih
  %i.ii = sext i32 %factor.op.mul.reass.us592.i to i64
  %i.ij = add i32 %i.at, %i.ih
  %i.ik = sdiv i32 %i.ij, %i.bv
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ii
  br label %_ZN4ncnn3MatD2Ev.exit468.us.i

_ZN4ncnn3MatD2Ev.exit468.us.i:                    ; preds = %bb.ah, %.lr.ph.us593.i
  %indvars.iv659.i = phi i64 [ 0, %.lr.ph.us593.i ], [ %indvars.iv.next660.i, %bb.ah ] ; 3 uses
  %.idx734.i.a = shl nuw nsw i64 %indvars.iv659.i, 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %.idx734.i.a ; 5 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %19 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %20 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %21 ; 2 uses
  %i.ir = load <4 x i32>, ptr %i.io, align 16, !tbaa !43 ; 2 uses
  %i.is = load <4 x i32>, ptr %i.ip, align 16, !tbaa !43 ; 2 uses
  %i.it = load <4 x i32>, ptr %i.iq, align 16, !tbaa !43
  %i.iu = sub <4 x i32> %i.ir, %i.is
  %i.iv = add <4 x i32> %i.iu, %i.it
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %22 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %22 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %22 ; 2 uses
  %i.iz = load <4 x i32>, ptr %i.iw, align 16, !tbaa !43 ; 2 uses
  %i.ja = load <4 x i32>, ptr %i.ix, align 16, !tbaa !43 ; 2 uses
  %i.jb = load <4 x i32>, ptr %i.iy, align 16, !tbaa !43
  %i.jc = sub <4 x i32> %i.iz, %i.ja
  %i.jd = add <4 x i32> %i.jc, %i.jb              ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %22 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %22 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %22 ; 2 uses
  %i.jh = load <4 x i32>, ptr %i.je, align 16, !tbaa !43 ; 2 uses
  %i.ji = load <4 x i32>, ptr %i.jf, align 16, !tbaa !43 ; 2 uses
  %i.jj = load <4 x i32>, ptr %i.jg, align 16, !tbaa !43
  %i.jk = sub <4 x i32> %i.jh, %i.ji
  %i.jl = add <4 x i32> %i.jk, %i.jj              ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %22
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %22
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %22
  %i.jp = load <4 x i32>, ptr %i.jm, align 16, !tbaa !43 ; 2 uses
  %i.jq = load <4 x i32>, ptr %i.jn, align 16, !tbaa !43 ; 2 uses
  %i.jr = load <4 x i32>, ptr %i.jo, align 16, !tbaa !43
  %i.js = trunc i64 %indvars.iv659.i to i32
  %i.jt = add i32 %.044152, %i.js                 ; 2 uses
  %i.ju = sdiv i32 %i.jt, %i.ca
  %i.jv = srem i32 %i.jt, %i.ca
  %i.jw = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !422
  %i.jx = load ptr, ptr %12, align 8, !tbaa !32, !noalias !422
  %i.jy = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !422
  %i.jz = mul i64 %i.jy, %i.il
  %i.ka = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !422 ; 2 uses
  %i.kb = mul i64 %i.jz, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.kb
  %i.kd = sext i32 %i.jw to i64
  %i.ke = shl nsw i32 %i.ju, 1                    ; 3 uses
  %i.kf = sext i32 %i.ke to i64
  %i.kg = mul nsw i64 %i.kd, %i.kf
  %i.kh = mul i64 %i.kg, %i.ka
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kh
  %i.kj = shl nsw i32 %i.jv, 1                    ; 2 uses
  %i.kk = mul nsw i32 %i.kj, %i.bv
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.kl ; 9 uses
  %i.kn = or disjoint i32 %i.kj, 1
  %i.ko = icmp slt i32 %i.kn, %i.bt               ; 4 uses
  %.not455.us.i = icmp slt i32 %i.ke, %i.bu
  br i1 %.not455.us.i, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit468.us.i
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %22 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %22 ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %22
  %i.ks = load <4 x i32>, ptr %i.kr, align 16, !tbaa !43
  %i.kt = load <4 x i32>, ptr %i.kq, align 16, !tbaa !43
  %i.ku = add <4 x i32> %i.ji, %i.jh
  %i.kv = add <4 x i32> %i.ku, %i.kt              ; 2 uses
  %i.kw = load <4 x i32>, ptr %i.kp, align 16, !tbaa !43
  %i.kx = add <4 x i32> %i.ja, %i.iz
  %i.ky = add <4 x i32> %i.kx, %i.kw              ; 2 uses
  %i.kz = load <4 x i32>, ptr %i.in, align 16, !tbaa !43
  %i.la = add <4 x i32> %i.is, %i.ir
  %i.lb = add <4 x i32> %i.la, %i.kz
  %i.lc = add <4 x i32> %i.lb, %i.kv
  %i.ld = add <4 x i32> %i.lc, %i.ky
  %i.le = add <4 x i32> %i.jq, %i.jp
  %i.lf = add <4 x i32> %i.le, %i.ks
  %i.lg = sub <4 x i32> %i.lf, %i.kv
  %i.lh = add <4 x i32> %i.lg, %i.ky
  %i.li = ashr <4 x i32> %i.ld, splat (i32 2)     ; 5 uses
  %i.lj = ashr <4 x i32> %i.lh, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.aa [
    i32 4, label %bb.y
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.by ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.km, i64 %.idx.i ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.km, i64 %.idx456.i ; 2 uses
  %.sroa.0514.0.vec.extract.us.i = extractelement <4 x i32> %i.li, i64 0
  store i32 %.sroa.0514.0.vec.extract.us.i, ptr %i.km, align 4, !tbaa !9
  %.sroa.0514.4.vec.extract.us.i = extractelement <4 x i32> %i.li, i64 1
  store i32 %.sroa.0514.4.vec.extract.us.i, ptr %i.lk, align 4, !tbaa !9
  %.sroa.0514.8.vec.extract.us.i = extractelement <4 x i32> %i.li, i64 2
  store i32 %.sroa.0514.8.vec.extract.us.i, ptr %i.ll, align 4, !tbaa !9
  %.sroa.0514.12.vec.extract.us.i = extractelement <4 x i32> %i.li, i64 3
  store i32 %.sroa.0514.12.vec.extract.us.i, ptr %i.lm, align 4, !tbaa !9
  br i1 %i.ko, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.7516.16.vec.extract.us.i = extractelement <4 x i32> %i.lj, i64 0
  %i.ln = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i32 %.sroa.7516.16.vec.extract.us.i, ptr %i.ln, align 4, !tbaa !9
  %.sroa.7516.20.vec.extract.us.i = extractelement <4 x i32> %i.lj, i64 1
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  store i32 %.sroa.7516.20.vec.extract.us.i, ptr %i.lo, align 4, !tbaa !9
  %.sroa.7516.24.vec.extract.us.i = extractelement <4 x i32> %i.lj, i64 2
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store i32 %.sroa.7516.24.vec.extract.us.i, ptr %i.lp, align 4, !tbaa !9
  %.sroa.7516.28.vec.extract.us.i = extractelement <4 x i32> %i.lj, i64 3
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  store i32 %.sroa.7516.28.vec.extract.us.i, ptr %i.lq, align 4, !tbaa !9
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  store <4 x i32> %i.li, ptr %i.km, align 16, !tbaa !43
  br i1 %i.ko, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.lr = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <4 x i32> %i.lj, ptr %i.lr, align 16, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.ic
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit468.us.i
  %.1432.us.i = phi ptr [ %i.km, %_ZN4ncnn3MatD2Ev.exit468.us.i ], [ %i.ls, %bb.aa ] ; 7 uses
  %i.lt = or disjoint i32 %i.ke, 1
  %.not455.us.1.i = icmp slt i32 %i.lt, %i.bu
  br i1 %.not455.us.1.i, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.lu = add <4 x i32> %i.iv, %i.jd
  %i.lv = add <4 x i32> %i.lu, %i.jl
  %i.lw = add <4 x i32> %i.jd, %i.jp
  %i.lx = add <4 x i32> %i.jl, %i.jq
  %i.ly = sub <4 x i32> %i.lw, %i.lx
  %i.lz = add <4 x i32> %i.ly, %i.jr
  %i.ma = ashr <4 x i32> %i.lv, splat (i32 2)     ; 5 uses
  %i.mb = ashr <4 x i32> %i.lz, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.ah [
    i32 4, label %bb.af
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.1432.us.i, i64 %i.by ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 %.idx.i ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 %.idx456.i ; 2 uses
  %.sroa.0514.0.vec.extract.us.1.i = extractelement <4 x i32> %i.ma, i64 0
  store i32 %.sroa.0514.0.vec.extract.us.1.i, ptr %.1432.us.i, align 4, !tbaa !9
  %.sroa.0514.4.vec.extract.us.1.i = extractelement <4 x i32> %i.ma, i64 1
  store i32 %.sroa.0514.4.vec.extract.us.1.i, ptr %i.mc, align 4, !tbaa !9
  %.sroa.0514.8.vec.extract.us.1.i = extractelement <4 x i32> %i.ma, i64 2
  store i32 %.sroa.0514.8.vec.extract.us.1.i, ptr %i.md, align 4, !tbaa !9
  %.sroa.0514.12.vec.extract.us.1.i = extractelement <4 x i32> %i.ma, i64 3
  store i32 %.sroa.0514.12.vec.extract.us.1.i, ptr %i.me, align 4, !tbaa !9
  br i1 %i.ko, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.sroa.7516.16.vec.extract.us.1.i = extractelement <4 x i32> %i.mb, i64 0
  %i.mf = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 4
  store i32 %.sroa.7516.16.vec.extract.us.1.i, ptr %i.mf, align 4, !tbaa !9
  %.sroa.7516.20.vec.extract.us.1.i = extractelement <4 x i32> %i.mb, i64 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store i32 %.sroa.7516.20.vec.extract.us.1.i, ptr %i.mg, align 4, !tbaa !9
  %.sroa.7516.24.vec.extract.us.1.i = extractelement <4 x i32> %i.mb, i64 2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store i32 %.sroa.7516.24.vec.extract.us.1.i, ptr %i.mh, align 4, !tbaa !9
  %.sroa.7516.28.vec.extract.us.1.i = extractelement <4 x i32> %i.mb, i64 3
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  store i32 %.sroa.7516.28.vec.extract.us.1.i, ptr %i.mi, align 4, !tbaa !9
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  store <4 x i32> %i.ma, ptr %.1432.us.i, align 16, !tbaa !43
  br i1 %i.ko, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.mj = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 16
  store <4 x i32> %i.mb, ptr %i.mj, align 16, !tbaa !43
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %indvars.iv.next660.i = add nuw nsw i64 %indvars.iv659.i, 1 ; 2 uses
  %exitcond663.not.i = icmp eq i64 %indvars.iv.next660.i, %wide.trip.count662.i
  br i1 %exitcond663.not.i, label %._crit_edge.us594.i, label %_ZN4ncnn3MatD2Ev.exit468.us.i, !llvm.loop !425

._crit_edge.us594.i:                              ; preds = %bb.ah
  %indvars.iv.next665.i = add nuw nsw i64 %indvars.iv664.i, 4 ; 3 uses
  %i.mk = icmp slt i64 %indvars.iv.next665.i, %invariant.op.i
  br i1 %i.mk, label %.lr.ph.us593.i, label %.preheader566.loopexit.i, !llvm.loop !426

.preheader566.loopexit.i:                         ; preds = %._crit_edge.us594.i
  %i.ml = trunc nsw i64 %indvars.iv.next665.i to i32
  br label %.preheader566.i

.preheader566.i:                                  ; preds = %.preheader566.loopexit.i, %.lr.ph590.split.preheader.i, %.preheader567.i
  %.1434.lcssa.i = phi i32 [ %.0433.lcssa.i, %.preheader567.i ], [ %i.ml, %.preheader566.loopexit.i ], [ %i.if, %.lr.ph590.split.preheader.i ] ; 6 uses
  %i.mm = or disjoint i32 %.1434.lcssa.i, 1
  %i.mn = icmp slt i32 %i.mm, %.sroa.speculated120
  br i1 %i.mn, label %.lr.ph606.i, label %.preheader.i

.lr.ph606.i:                                      ; preds = %.preheader566.i
  %i.mo = icmp sgt i32 %.sroa.speculated116, 0
  %i.mp = shl nsw i32 %.sroa.speculated116, 1
  %23 = zext nneg i32 %i.mp to i64
  %i.mq = shl nsw i32 %.sroa.speculated116, 2
  %24 = zext nneg i32 %i.mq to i64
  %i.mr = mul nsw i32 %.sroa.speculated116, 6
  %25 = zext nneg i32 %i.mr to i64
  %i.ms = shl nsw i32 %.sroa.speculated116, 3
  %26 = zext nneg i32 %i.ms to i64                ; 12 uses
  %i.mt = sext i32 %i.bt to i64
  br i1 %i.mo, label %.lr.ph606.split.us.i, label %.lr.ph606.split.preheader.i

.lr.ph606.split.preheader.i:                      ; preds = %.lr.ph606.i
  %i.mu = add i32 %.1434.lcssa.i, 3
  %smax667.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %i.mu)
  %reass.sub158 = sub i32 %smax667.i, %.1434.lcssa.i
  %i.mv = and i32 %reass.sub158, -2
  %i.mw = add i32 %.1434.lcssa.i, %i.mv
  br label %.preheader.i

.lr.ph606.split.us.i:                             ; preds = %.lr.ph606.i
  %i.mx = load ptr, ptr %12, align 8, !tbaa !32, !noalias !427
  %i.my = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !427
  %i.mz = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !427 ; 2 uses
  %factor.op.mul.i = mul i64 %i.mz, %i.my
  %i.na = sext i32 %.1434.lcssa.i to i64
  %wide.trip.count678.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us609.i

.lr.ph.us609.i:                                   ; preds = %._crit_edge.us610.i, %.lr.ph606.split.us.i
  %indvars.iv680.i = phi i64 [ %indvars.iv.next681.i, %._crit_edge.us610.i ], [ %i.na, %.lr.ph606.split.us.i ] ; 3 uses
  %i.nb = trunc nsw i64 %indvars.iv680.i to i32
  %factor.op.mul.reass.us608.i = mul i32 %factor.op.mul576.i, %i.nb
  %i.nc = sext i32 %factor.op.mul.reass.us608.i to i64
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.nc
  %i.ne = add nsw i64 %indvars.iv680.i, %i.bl
  %.reass.i = mul i64 %factor.op.mul.i, %i.ne
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit467.us.i

_ZN4ncnn3MatD2Ev.exit467.us.i:                    ; preds = %bb.ao, %.lr.ph.us609.i
  %indvars.iv675.i = phi i64 [ 0, %.lr.ph.us609.i ], [ %indvars.iv.next676.i, %bb.ao ] ; 3 uses
  %.idx735.i = shl nuw nsw i64 %indvars.iv675.i, 3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx735.i ; 6 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %23 ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %24 ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %25 ; 3 uses
  %i.nk = load i32, ptr %i.nh, align 4, !tbaa !9  ; 2 uses
  %i.nl = load i32, ptr %i.ni, align 4, !tbaa !9  ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !9  ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !9  ; 2 uses
  %i.nq = sub i32 %i.nk, %i.nl
  %i.nr = load i32, ptr %i.nj, align 4, !tbaa !9
  %i.ns = add nsw i32 %i.nq, %i.nr
  %i.nt = sub i32 %i.nn, %i.np
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !9
  %i.nw = add nsw i32 %i.nt, %i.nv
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %26 ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %26 ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %26 ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %26 ; 3 uses
  %i.ob = load i32, ptr %i.nx, align 4, !tbaa !9
  %i.oc = load i32, ptr %i.ny, align 4, !tbaa !9  ; 2 uses
  %i.od = add nsw i32 %i.oc, %i.ob
  %i.oe = load i32, ptr %i.nz, align 4, !tbaa !9  ; 2 uses
  %i.of = add nsw i32 %i.od, %i.oe                ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !9  ; 2 uses
  %i.ok = add nsw i32 %i.oj, %i.oh
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !9  ; 2 uses
  %i.on = add nsw i32 %i.ok, %i.om                ; 2 uses
  %i.oo = sub i32 %i.oc, %i.oe
  %i.op = load i32, ptr %i.oa, align 4, !tbaa !9
  %i.oq = add nsw i32 %i.op, %i.oo                ; 2 uses
  %i.or = sub i32 %i.oj, %i.om
  %i.os = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !9
  %i.ou = add nsw i32 %i.ot, %i.or                ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %26 ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %26 ; 3 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %26 ; 3 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %26 ; 3 uses
  %i.oz = load i32, ptr %i.ov, align 4, !tbaa !9
  %i.pa = load i32, ptr %i.ow, align 4, !tbaa !9  ; 2 uses
  %i.pb = add nsw i32 %i.pa, %i.oz
  %i.pc = load i32, ptr %i.ox, align 4, !tbaa !9  ; 2 uses
  %i.pd = add nsw i32 %i.pb, %i.pc                ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !9
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !9  ; 2 uses
  %i.pi = add nsw i32 %i.ph, %i.pf
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !9  ; 2 uses
  %i.pl = add nsw i32 %i.pi, %i.pk                ; 2 uses
  %i.pm = sub i32 %i.pa, %i.pc
  %i.pn = load i32, ptr %i.oy, align 4, !tbaa !9
  %i.po = add nsw i32 %i.pn, %i.pm                ; 2 uses
  %i.pp = sub i32 %i.ph, %i.pk
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !9
  %i.ps = add nsw i32 %i.pr, %i.pp                ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %26 ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %26 ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %26 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %26 ; 2 uses
  %i.px = load i32, ptr %i.pt, align 4, !tbaa !9
  %i.py = load i32, ptr %i.pu, align 4, !tbaa !9  ; 2 uses
  %i.pz = load i32, ptr %i.pv, align 4, !tbaa !9  ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !9
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !9  ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !9  ; 2 uses
  %i.qg = load i32, ptr %i.pw, align 4, !tbaa !9
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !9
  %i.qj = trunc i64 %indvars.iv675.i to i32
  %i.qk = add i32 %.044152, %i.qj                 ; 2 uses
  %i.ql = sdiv i32 %i.qk, %i.ca
  %i.qm = srem i32 %i.qk, %i.ca
  %i.qn = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !427
  %i.qo = sext i32 %i.qn to i64
  %i.qp = shl nsw i32 %i.ql, 1                    ; 3 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = mul i64 %i.mz, %i.qq
  %i.qs = mul i64 %i.qr, %i.qo
  %i.qt = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.qs
  %i.qu = shl nsw i32 %i.qm, 1                    ; 2 uses
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qv ; 5 uses
  %i.qx = or disjoint i32 %i.qu, 1
  %i.qy = icmp slt i32 %i.qx, %i.bt               ; 2 uses
  %.not454.us.i = icmp slt i32 %i.qp, %i.bu
  br i1 %.not454.us.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit467.us.i
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !9
  %i.rb = load i32, ptr %i.ng, align 4, !tbaa !9
  %i.rc = add i32 %i.nl, %i.nk
  %i.rd = add i32 %i.rc, %i.of
  %i.re = add i32 %i.rd, %i.pd
  %i.rf = add i32 %i.re, %i.rb
  %i.rg = add i32 %i.np, %i.nn
  %i.rh = add i32 %i.rg, %i.on
  %i.ri = add i32 %i.rh, %i.pl
  %i.rj = add i32 %i.ri, %i.ra
  %i.rk = ashr i32 %i.rf, 2
  %i.rl = ashr i32 %i.rj, 2
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.by ; 2 uses
  store i32 %i.rk, ptr %i.qw, align 4, !tbaa !9
  store i32 %i.rl, ptr %i.rm, align 4, !tbaa !9
  br i1 %i.qy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.rn = sub i32 %i.on, %i.pl
  %i.ro = add i32 %i.rn, %i.qb
  %i.rp = add i32 %i.ro, %i.qd
  %i.rq = add i32 %i.rp, %i.qf
  %i.rr = ashr i32 %i.rq, 2
  %i.rs = sub i32 %i.of, %i.pd
  %i.rt = add i32 %i.rs, %i.px
  %i.ru = add i32 %i.rt, %i.py
  %i.rv = add i32 %i.ru, %i.pz
  %i.rw = ashr i32 %i.rv, 2
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  store i32 %i.rw, ptr %i.rx, align 4, !tbaa !9
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  store i32 %i.rr, ptr %i.ry, align 4, !tbaa !9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.mt
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN4ncnn3MatD2Ev.exit467.us.i
  %.1423.us.i = phi ptr [ %i.qw, %_ZN4ncnn3MatD2Ev.exit467.us.i ], [ %i.rz, %bb.ak ] ; 3 uses
  %i.sa = or disjoint i32 %i.qp, 1
  %.not454.us.1.i = icmp slt i32 %i.sa, %i.bu
  br i1 %.not454.us.1.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.sb = add nsw i32 %i.ns, %i.oq
  %i.sc = add nsw i32 %i.sb, %i.po
  %i.sd = add nsw i32 %i.nw, %i.ou
  %i.se = add nsw i32 %i.sd, %i.ps
  %i.sf = ashr i32 %i.sc, 2
  %i.sg = ashr i32 %i.se, 2
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.1423.us.i, i64 %i.by ; 2 uses
  store i32 %i.sf, ptr %.1423.us.i, align 4, !tbaa !9
  store i32 %i.sg, ptr %i.sh, align 4, !tbaa !9
  br i1 %i.qy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.si = add i32 %i.ou, %i.qd
  %i.sj = add i32 %i.ps, %i.qf
  %i.sk = sub i32 %i.si, %i.sj
  %i.sl = add i32 %i.sk, %i.qi
  %i.sm = ashr i32 %i.sl, 2
  %i.sn = add i32 %i.oq, %i.py
  %i.so = add i32 %i.po, %i.pz
  %i.sp = sub i32 %i.sn, %i.so
  %i.sq = add i32 %i.sp, %i.qg
  %i.sr = ashr i32 %i.sq, 2
  %i.ss = getelementptr inbounds nuw i8, ptr %.1423.us.i, i64 4
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !9
  %i.st = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  store i32 %i.sm, ptr %i.st, align 4, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %indvars.iv.next676.i = add nuw nsw i64 %indvars.iv675.i, 1 ; 2 uses
  %exitcond679.not.i = icmp eq i64 %indvars.iv.next676.i, %wide.trip.count678.i
  br i1 %exitcond679.not.i, label %._crit_edge.us610.i, label %_ZN4ncnn3MatD2Ev.exit467.us.i, !llvm.loop !430

._crit_edge.us610.i:                              ; preds = %bb.ao
  %indvars.iv.next681.i = add nuw nsw i64 %indvars.iv680.i, 2 ; 3 uses
  %i.su = icmp slt i64 %indvars.iv.next681.i, %invariant.op736.i
  br i1 %i.su, label %.lr.ph.us609.i, label %.preheader.loopexit.i, !llvm.loop !431

.preheader.loopexit.i:                            ; preds = %._crit_edge.us610.i
  %i.sv = trunc nsw i64 %indvars.iv.next681.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph606.split.preheader.i, %.preheader566.i
  %.2.lcssa.i = phi i32 [ %.1434.lcssa.i, %.preheader566.i ], [ %i.sv, %.preheader.loopexit.i ], [ %i.mw, %.lr.ph606.split.preheader.i ] ; 2 uses
  %i.sw = icmp slt i32 %.2.lcssa.i, %.sroa.speculated120
  br i1 %i.sw, label %.lr.ph624.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph624.i:                                      ; preds = %.preheader.i
  %i.sx = icmp sgt i32 %.sroa.speculated116, 0
  %27 = zext i32 %.sroa.speculated116 to i64      ; 2 uses
  %i.sy = shl nsw i32 %.sroa.speculated116, 1
  %28 = zext nneg i32 %i.sy to i64
  %i.sz = mul nsw i32 %.sroa.speculated116, 3
  %29 = zext nneg i32 %i.sz to i64
  %i.ta = shl nsw i32 %.sroa.speculated116, 2
  %30 = zext nneg i32 %i.ta to i64                ; 12 uses
  %i.tb = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.sx, label %.lr.ph624.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph624.split.us.i:                             ; preds = %.lr.ph624.i
  %i.tc = load ptr, ptr %12, align 8, !tbaa !32, !noalias !432
  %i.td = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !432
  %i.te = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !432 ; 2 uses
  %factor.op.mul634.i = mul i64 %i.te, %i.td
  %i.tf = sext i32 %.2.lcssa.i to i64
  br label %.lr.ph.us632.i

.lr.ph.us632.i:                                   ; preds = %._crit_edge.us633.i, %.lr.ph624.split.us.i
  %indvars.iv698.i = phi i64 [ %indvars.iv.next699.i, %._crit_edge.us633.i ], [ %i.tf, %.lr.ph624.split.us.i ] ; 3 uses
  %i.tg = trunc nsw i64 %indvars.iv698.i to i32
  %factor.op.mul619.reass.us.i = mul i32 %factor.op.mul576.i, %i.tg
  %i.th = sext i32 %factor.op.mul619.reass.us.i to i64
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.th
  %i.tj = add nsw i64 %indvars.iv698.i, %i.bl
  %.reass635.i = mul i64 %factor.op.mul634.i, %i.tj
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tc, i64 %.reass635.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us630.i, %.lr.ph.us632.i
  %indvars.iv693.i = phi i64 [ 0, %.lr.ph.us632.i ], [ %indvars.iv.next694.i, %.split.us630.i ] ; 3 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv693.i ; 5 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %27 ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %28 ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %29 ; 2 uses
  %i.tp = load i32, ptr %i.tl, align 4, !tbaa !9
  %i.tq = load i32, ptr %i.tm, align 4, !tbaa !9  ; 2 uses
  %i.tr = add nsw i32 %i.tq, %i.tp
  %i.ts = load i32, ptr %i.tn, align 4, !tbaa !9  ; 2 uses
  %i.tt = add nsw i32 %i.tr, %i.ts                ; 2 uses
  %i.tu = sub i32 %i.tq, %i.ts
  %i.tv = load i32, ptr %i.to, align 4, !tbaa !9
  %i.tw = add nsw i32 %i.tu, %i.tv                ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %30 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %30 ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %30 ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %30 ; 2 uses
  %i.ub = load i32, ptr %i.tx, align 4, !tbaa !9
  %i.uc = load i32, ptr %i.ty, align 4, !tbaa !9  ; 2 uses
  %i.ud = add nsw i32 %i.uc, %i.ub
  %i.ue = load i32, ptr %i.tz, align 4, !tbaa !9  ; 2 uses
  %i.uf = add nsw i32 %i.ud, %i.ue                ; 3 uses
  %i.ug = sub i32 %i.uc, %i.ue
  %i.uh = load i32, ptr %i.ua, align 4, !tbaa !9
  %i.ui = add nsw i32 %i.ug, %i.uh                ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %30 ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %30 ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %30 ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %30 ; 2 uses
  %i.un = load i32, ptr %i.uj, align 4, !tbaa !9
  %i.uo = load i32, ptr %i.uk, align 4, !tbaa !9  ; 2 uses
  %i.up = add nsw i32 %i.uo, %i.un
  %i.uq = load i32, ptr %i.ul, align 4, !tbaa !9  ; 2 uses
  %i.ur = add nsw i32 %i.up, %i.uq                ; 3 uses
  %i.us = sub i32 %i.uo, %i.uq
  %i.ut = load i32, ptr %i.um, align 4, !tbaa !9
  %i.uu = add nsw i32 %i.us, %i.ut                ; 3 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %30
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %30
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %30
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %30
  %i.uz = load i32, ptr %i.uv, align 4, !tbaa !9
  %i.va = load i32, ptr %i.uw, align 4, !tbaa !9  ; 2 uses
  %i.vb = load i32, ptr %i.ux, align 4, !tbaa !9  ; 2 uses
  %i.vc = load i32, ptr %i.uy, align 4, !tbaa !9
  %i.vd = trunc i64 %indvars.iv693.i to i32
  %i.ve = add i32 %.044152, %i.vd                 ; 2 uses
  %i.vf = sdiv i32 %i.ve, %i.ca
  %i.vg = srem i32 %i.ve, %i.ca
  %i.vh = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !432
  %i.vi = sext i32 %i.vh to i64
  %i.vj = shl nsw i32 %i.vf, 1                    ; 4 uses
  %i.vk = sext i32 %i.vj to i64
  %i.vl = mul i64 %i.te, %i.vk
  %i.vm = mul i64 %i.vl, %i.vi
  %i.vn = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.vm
  %i.vo = shl nsw i32 %i.vg, 1                    ; 2 uses
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %i.vp ; 7 uses
  %i.vr = or disjoint i32 %i.vo, 1
  %i.vs = icmp slt i32 %i.vr, %i.bt
  %.fr.us.i = freeze i1 %i.vs
  %.not.us.us.i = icmp slt i32 %i.vj, %i.bu       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.ap:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i
  %i.vt = add nsw i32 %i.uf, %i.tt
  %i.vu = add nsw i32 %i.vt, %i.ur
  %i.vv = ashr i32 %i.vu, 2
  store i32 %i.vv, ptr %i.vq, align 4, !tbaa !9
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.vq, i64 %i.tb
  br label %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i

_ZN4ncnn3MatD2Ev.exit.split.us631.1.i:            ; preds = %bb.ap, %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i
  %.1.us629.i = phi ptr [ %i.vq, %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i ], [ %i.vw, %bb.ap ]
  %i.vx = or disjoint i32 %i.vj, 1
  %.not.us628.1.i = icmp slt i32 %i.vx, %i.bu
  br i1 %.not.us628.1.i, label %bb.aq, label %.split.us630.i

bb.aq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i
  %i.vy = add nsw i32 %i.ui, %i.tw
  %i.vz = add nsw i32 %i.vy, %i.uu
  %i.wa = ashr i32 %i.vz, 2
  store i32 %i.wa, ptr %.1.us629.i, align 4, !tbaa !9
  br label %.split.us630.i

.split.us630.i:                                   ; preds = %bb.as, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.aq, %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i
  %indvars.iv.next694.i = add nuw nsw i64 %indvars.iv693.i, 1 ; 2 uses
  %exitcond697.not.i = icmp eq i64 %indvars.iv.next694.i, %27
  br i1 %exitcond697.not.i, label %._crit_edge.us633.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !435

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.wb = add nsw i32 %i.uf, %i.tt
  %i.wc = add nsw i32 %i.wb, %i.ur
  %i.wd = ashr i32 %i.wc, 2
  store i32 %i.wd, ptr %i.vq, align 4, !tbaa !9
  %i.we = sub i32 %i.uf, %i.ur
  %i.wf = add i32 %i.we, %i.uz
  %i.wg = add i32 %i.wf, %i.va
  %i.wh = add i32 %i.wg, %i.vb
  %i.wi = ashr i32 %i.wh, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  store i32 %i.wi, ptr %i.wj, align 4, !tbaa !9
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.vq, i64 %i.tb
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.ar, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.vq, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.wk, %bb.ar ] ; 2 uses
  %i.wl = or disjoint i32 %i.vj, 1
  %.not.us.us.1.i = icmp slt i32 %i.wl, %i.bu
  br i1 %.not.us.us.1.i, label %bb.as, label %.split.us630.i

bb.as:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.wm = add nsw i32 %i.ui, %i.tw
  %i.wn = add nsw i32 %i.wm, %i.uu
  %i.wo = ashr i32 %i.wn, 2
  store i32 %i.wo, ptr %.1.us.us.i, align 4, !tbaa !9
  %i.wp = add i32 %i.ui, %i.va
  %i.wq = add i32 %i.uu, %i.vb
  %i.wr = sub i32 %i.wp, %i.wq
  %i.ws = add i32 %i.wr, %i.vc
  %i.wt = ashr i32 %i.ws, 2
  %i.wu = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.wt, ptr %i.wu, align 4, !tbaa !9
  br label %.split.us630.i

._crit_edge.us633.i:                              ; preds = %.split.us630.i
  %indvars.iv.next699.i = add nuw nsw i64 %indvars.iv698.i, 1 ; 2 uses
  %exitcond702.not.i = icmp eq i64 %indvars.iv.next699.i, %i.bk
  br i1 %exitcond702.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us632.i, !llvm.loop !436

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.wv = phi i32 [ %i.yu, %.noexc52 ], [ %.pre159, %.noexc52.preheader ] ; 3 uses
  %i.ww = phi i32 [ %i.yw, %.noexc52 ], [ %i.br, %.noexc52.preheader ] ; 2 uses
  %.0151 = phi i32 [ %i.yv, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.wx = sub nsw i32 %i.ww, %.0151
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.wv, i32 %i.wx)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #3
  %i.wy = load i32, ptr %3, align 4, !tbaa !9
  %i.wz = sdiv i32 %i.at, %i.wy
  %i.xa = load ptr, ptr %10, align 8, !tbaa !32, !noalias !437
  %i.xb = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !437
  %i.xc = sext i32 %i.wz to i64
  %i.xd = mul i64 %i.xb, %i.xc
  %i.xe = load i64, ptr %i.q, align 8, !tbaa !36, !noalias !437 ; 3 uses
  %i.xf = mul i64 %i.xd, %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xf
  %i.xh = load i32, ptr %i.r, align 8, !tbaa !16, !noalias !437
  %i.xi = load ptr, ptr %i.s, align 8, !tbaa !381, !noalias !437
  %i.xj = sdiv i32 %.0151, %i.wv
  %i.xk = sext i32 %i.xj to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !382
  store i64 %i.xe, ptr %i.u, align 8, !tbaa !36
  store i32 %i.xh, ptr %i.v, align 8, !tbaa !16
  store ptr %i.xi, ptr %i.w, align 8, !tbaa !381
  store i32 2, ptr %i.x, align 8, !tbaa !383
  %i.xl = load <2 x i32>, ptr %i.n, align 4, !tbaa !9, !noalias !437
  %i.xm = load i32, ptr %i.o, align 8, !tbaa !19, !noalias !437
  %i.xn = load i32, ptr %i.n, align 4, !tbaa !10, !noalias !437
  %i.xo = sext i32 %i.xn to i64
  %i.xp = sext i32 %i.xm to i64
  %i.xq = mul nsw i64 %i.xp, %i.xo                ; 2 uses
  %i.xr = mul i64 %i.xe, %i.xq
  %i.xs = mul i64 %i.xr, %i.xk
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xs
  store ptr %i.xt, ptr %13, align 8, !tbaa !32
  %i.xu = shufflevector <2 x i32> %i.xl, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xv = shufflevector <4 x i32> %i.xu, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.xv, ptr %i.y, align 4, !tbaa !9
  store i64 %i.xq, ptr %i.z, align 8, !tbaa !18, !alias.scope !440
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #3
  %i.xw = load i32, ptr %7, align 4, !tbaa !9
  %i.xx = sdiv i32 %.044152, %i.xw
  %i.xy = load ptr, ptr %11, align 8, !tbaa !32, !noalias !443
  %i.xz = load i64, ptr %i.ac, align 8, !tbaa !18, !noalias !443
  %i.ya = sext i32 %i.xx to i64
  %i.yb = mul i64 %i.xz, %i.ya
  %i.yc = load i64, ptr %i.ad, align 8, !tbaa !36, !noalias !443 ; 3 uses
  %i.yd = mul i64 %i.yb, %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.yd
  %i.yf = load i32, ptr %i.ae, align 8, !tbaa !16, !noalias !443
  %i.yg = load ptr, ptr %i.af, align 8, !tbaa !381, !noalias !443
  store ptr null, ptr %i.ag, align 8, !tbaa !382
  store i64 %i.yc, ptr %i.ah, align 8, !tbaa !36
  store i32 %i.yf, ptr %i.ai, align 8, !tbaa !16
  store ptr %i.yg, ptr %i.aj, align 8, !tbaa !381
  store i32 2, ptr %i.ak, align 8, !tbaa !383
  %i.yh = load <2 x i32>, ptr %i.aa, align 4, !tbaa !9, !noalias !443
  %i.yi = load i32, ptr %i.ab, align 8, !tbaa !19, !noalias !443
  %i.yj = load i32, ptr %i.aa, align 4, !tbaa !10, !noalias !443
  %i.yk = sext i32 %i.yj to i64
  %i.yl = sext i32 %i.yi to i64
  %i.ym = mul nsw i64 %i.yl, %i.yk                ; 2 uses
  %i.yn = mul i64 %i.yc, %i.ym
  %i.yo = mul i64 %i.yn, %i.xk
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yo
  store ptr %i.yp, ptr %14, align 8, !tbaa !32
  %i.yq = shufflevector <2 x i32> %i.yh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yr = shufflevector <4 x i32> %i.yq, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.yr, ptr %i.al, align 4, !tbaa !9
  store i64 %i.ym, ptr %i.am, align 8, !tbaa !18, !alias.scope !446
  %i.ys = add nsw i32 %i.wv, %.0151
  %i.yt = icmp sge i32 %i.ys, %i.ww
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated120, i32 noundef %.sroa.speculated116, i32 noundef %.0151, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.yt)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #3
  %i.yu = load i32, ptr %9, align 4, !tbaa !9     ; 2 uses
  %i.yv = add nsw i32 %i.yu, %.0151               ; 2 uses
  %i.yw = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.yx = icmp slt i32 %i.yv, %i.yw
  br i1 %i.yx, label %.noexc52, label %._crit_edge, !llvm.loop !449

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us633.i, %.lr.ph624.i, %.preheader.i
  %i.yy = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.yz = add nsw i32 %i.yy, %.044152             ; 2 uses
  %i.za = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.zb = icmp slt i32 %i.yz, %i.za
  br i1 %i.zb, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !450

._crit_edge157:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge157, %bb.a
  ret void

bb.au:                                            ; preds = %bb.c
  %i.zc = landingpad { ptr, i32 }
          catch ptr null
  %i.zd = extractvalue { ptr, i32 } %i.zc, 0
  call void @__clang_call_terminate(ptr %i.zd) #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %3, 7
  br i1 %i.a, label %.preheader362.lr.ph, label %.preheader354

.preheader362.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 7
  %i.g = icmp eq i32 %5, 0                        ; 4 uses
  %i.h = icmp sgt i32 %6, 1                       ; 4 uses
  %i.i = add i32 %6, -2                           ; 6 uses
  %i.j = and i32 %i.i, -2
  %i.k = add i32 %i.j, 2                          ; 4 uses
  %i.l = and i32 %4, -8
  %i.m = lshr i32 %i.i, 1                         ; 3 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = shl nuw nsw i64 %i.n, 2
  %i.r = zext nneg i32 %3 to i64
  %i.s = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.t = lshr i32 %i.i, 1                         ; 2 uses
  %i.u = add nuw i32 %i.t, 1                      ; 6 uses
  %i.v = icmp eq i32 %i.t, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod1958 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1965 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1960.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1964 = trunc i32 %i.u to i1
  %i.z = icmp eq i32 %i.m, 0
  %unroll_iter1974 = and i32 %i.u, -2
  %i.aa = and i32 %i.i, 2
  %lcmp.mod1970.not.not = icmp eq i32 %i.aa, 0
  %lcmp.mod1973 = trunc i32 %i.u to i1
  br label %.preheader362

.preheader362:                                    ; preds = %.preheader362.lr.ph, %bb.b
  %indvars.iv1068 = phi i64 [ 0, %.preheader362.lr.ph ], [ %indvars.iv.next1069, %bb.b ] ; 2 uses
  %.0802513 = phi ptr [ %.0.val, %.preheader362.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.ab = mul nsw i64 %indvars.iv1068, %i.s
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.ch

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  store i32 %i.j, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  store i32 1, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #3
  store i32 0, ptr %i.g, align 4, !tbaa !9
  %i.k = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !9
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !9
  %i.n = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %.not132 = icmp sgt i32 %i.n, %i.m
  br i1 %.not132, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph135, %_ZN4ncnn3MatD2Ev.exit
  %.045133 = phi i32 [ %i.n, %.lr.ph135 ], [ %i.fd, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ej = load i32, ptr %3, align 4, !tbaa !9
  %i.ek = mul nsw i32 %i.ej, %.045133             ; 5 uses
  %i.el = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.ci

.noexc46:                                         ; preds = %bb.c
  %i.em = load ptr, ptr %4, align 8, !tbaa !32, !noalias !571
  %i.en = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !571
  %i.eo = sext i32 %i.el to i64
  %i.ep = mul i64 %i.en, %i.eo
  %i.eq = load i64, ptr %i.p, align 8, !tbaa !36, !noalias !571
  %i.er = mul i64 %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.er ; 5 uses
  %i.et = load i32, ptr %5, align 4, !tbaa !9
  %i.eu = sub nsw i32 %i.et, %i.ek
  %i.ev = load i32, ptr %3, align 4, !tbaa !9
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.ev, i32 %i.eu) ; 10 uses
  %i.ew = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.ey = icmp sgt i32 %.sroa.speculated121, 7
  %i.ez = and i32 %.sroa.speculated121, 2147483640
  %i.fa = zext nneg i32 %.sroa.speculated121 to i64
  %i.fb = sext i32 %.sroa.speculated121 to i64    ; 3 uses
  %invariant.op.i = add nsw i64 %i.fb, -3
  %i.fc = sext i32 %i.ek to i64                   ; 2 uses
  %invariant.op425.i = add nsw i64 %i.fb, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.fd = add nsw i32 %.045133, 1
  %i.fe = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.045133, %i.fe
  br i1 %.not.not, label %bb.c, label %._crit_edge136

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.ff = phi i32 [ %.pre, %.lr.ph ], [ %i.beh, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.fg = phi i32 [ %i.ew, %.lr.ph ], [ %i.bej, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044131 = phi i32 [ 0, %.lr.ph ], [ %i.bei, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 7 uses
  %i.fh = sub nsw i32 %i.fg, %.044131
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fh) ; 33 uses
  %i.fi = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.noexc52.preheader, label %._crit_edge

.noexc52.preheader:                               ; preds = %bb.d
  %.pre138 = load i32, ptr %9, align 4, !tbaa !9
  br label %.noexc52

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.fk = load i32, ptr %i.aq, align 4, !tbaa !10 ; 17 uses
  %i.fl = load i32, ptr %i.ar, align 8, !tbaa !19 ; 7 uses
  %i.fm = load i32, ptr %i.as, align 8, !tbaa !16 ; 9 uses
  %i.fn = load i64, ptr %i.at, align 8, !tbaa !18
  %i.fo = sext i32 %i.fm to i64
  %i.fp = mul i64 %i.fn, %i.fo                    ; 12 uses
  %i.fq = add nsw i32 %i.fk, 3
  %i.fr = sdiv i32 %i.fq, 4                       ; 8 uses
  %factor.op.mul100.i = mul i32 %.sroa.speculated117, 36 ; 4 uses
  br i1 %i.ey, label %.lr.ph103.i, label %.preheader79.i

.lr.ph103.i:                                      ; preds = %._crit_edge
  %i.fs = icmp sgt i32 %.sroa.speculated117, 0
  %i.ft = shl nsw i32 %.sroa.speculated117, 3
  %15 = zext nneg i32 %i.ft to i64
  %i.fu = shl nsw i32 %.sroa.speculated117, 4
  %16 = zext nneg i32 %i.fu to i64
  %i.fv = mul nsw i32 %.sroa.speculated117, 24
  %17 = zext nneg i32 %i.fv to i64
  %i.fw = shl nsw i32 %.sroa.speculated117, 5
  %18 = zext nneg i32 %i.fw to i64
  %i.fx = mul nsw i32 %.sroa.speculated117, 40
  %19 = zext nneg i32 %i.fx to i64
  %i.fy = mul nsw i32 %.sroa.speculated117, 48
  %20 = zext nneg i32 %i.fy to i64                ; 30 uses
  %.idx1028.i = shl i64 %i.fp, 3
  %.idx1029.i = mul i64 %i.fp, 12
  %.idx1030.i = shl i64 %i.fp, 4
  %.idx1031.i = mul i64 %i.fp, 20
  %.idx1032.i = mul i64 %i.fp, 24
  %.idx1033.i = mul i64 %i.fp, 28
  %i.fz = mul nsw i32 %i.fm, %i.fk
  %i.ga = sext i32 %i.fz to i64
  br i1 %i.fs, label %.lr.ph.us.preheader.i, label %.preheader79.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph103.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv364.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next365.i, %._crit_edge.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.gb = trunc nuw nsw i64 %indvars.iv364.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul100.i, %i.gb
  %i.gc = sext i32 %factor.op.mul.reass.us.i to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.gc
  %i.ge = add i32 %i.ek, %i.gb
  %i.gf = sdiv i32 %i.ge, %i.fm
  %i.gg = sext i32 %i.gf to i64
  br label %.preheader80.us.i

.preheader80.us.i:                                ; preds = %bb.aa, %.lr.ph.us.i
  %indvars.iv360.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next361.i, %bb.aa ] ; 3 uses
  %.idx422.i.a = shl nuw nsw i64 %indvars.iv360.i, 5
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.idx422.i.a ; 7 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %15 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %16 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %17 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %18 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %19 ; 2 uses
  %i.gn = load <8 x i32>, ptr %i.gh, align 32, !tbaa !43
  %i.go = load <8 x i32>, ptr %i.gi, align 32, !tbaa !43 ; 2 uses
  %i.gp = load <8 x i32>, ptr %i.gj, align 32, !tbaa !43 ; 2 uses
  %i.gq = load <8 x i32>, ptr %i.gk, align 32, !tbaa !43 ; 2 uses
  %i.gr = load <8 x i32>, ptr %i.gl, align 32, !tbaa !43 ; 2 uses
  %i.gs = load <8 x i32>, ptr %i.gm, align 32, !tbaa !43
  %i.gt = add <8 x i32> %i.gp, %i.go              ; 2 uses
  %i.gu = add <8 x i32> %i.gr, %i.gq              ; 2 uses
  %i.gv = sub <8 x i32> %i.go, %i.gp              ; 2 uses
  %i.gw = sub <8 x i32> %i.gq, %i.gr              ; 2 uses
  %i.gx = add <8 x i32> %i.gt, %i.gn
  %i.gy = add <8 x i32> %i.gx, %i.gu
  %i.gz = shl <8 x i32> %i.gw, splat (i32 1)
  %i.ha = add <8 x i32> %i.gz, %i.gv
  %i.hb = shl <8 x i32> %i.gu, splat (i32 2)
  %i.hc = add <8 x i32> %i.hb, %i.gt
  %i.hd = shl <8 x i32> %i.gw, splat (i32 3)
  %i.he = add <8 x i32> %i.hd, %i.gv
  %i.hf = shl <8 x i32> %i.gs, splat (i32 2)
  %i.hg = add <8 x i32> %i.he, %i.hf
  store <8 x i32> %i.gy, ptr %i.a, align 32, !tbaa !43
  store <8 x i32> %i.ha, ptr %i.au, align 32, !tbaa !43
  store <8 x i32> %i.hc, ptr %i.av, align 32, !tbaa !43
  store <8 x i32> %i.hg, ptr %i.aw, align 32, !tbaa !43
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %20 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %20 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %20 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %20 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %20 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %20 ; 2 uses
  %i.hn = load <8 x i32>, ptr %i.hh, align 32, !tbaa !43
  %i.ho = load <8 x i32>, ptr %i.hi, align 32, !tbaa !43 ; 2 uses
  %i.hp = load <8 x i32>, ptr %i.hj, align 32, !tbaa !43 ; 2 uses
  %i.hq = load <8 x i32>, ptr %i.hk, align 32, !tbaa !43 ; 2 uses
  %i.hr = load <8 x i32>, ptr %i.hl, align 32, !tbaa !43 ; 2 uses
  %i.hs = load <8 x i32>, ptr %i.hm, align 32, !tbaa !43
  %i.ht = add <8 x i32> %i.hp, %i.ho              ; 2 uses
  %i.hu = add <8 x i32> %i.hr, %i.hq              ; 2 uses
  %i.hv = sub <8 x i32> %i.ho, %i.hp              ; 2 uses
  %i.hw = sub <8 x i32> %i.hq, %i.hr              ; 2 uses
  %i.hx = add <8 x i32> %i.ht, %i.hn
  %i.hy = add <8 x i32> %i.hx, %i.hu
  %i.hz = shl <8 x i32> %i.hw, splat (i32 1)
  %i.ia = add <8 x i32> %i.hz, %i.hv
  %i.ib = shl <8 x i32> %i.hu, splat (i32 2)
  %i.ic = add <8 x i32> %i.ib, %i.ht
  %i.id = shl <8 x i32> %i.hw, splat (i32 3)
  %i.ie = add <8 x i32> %i.id, %i.hv
  %i.if = shl <8 x i32> %i.hs, splat (i32 2)
  %i.ig = add <8 x i32> %i.ie, %i.if
  store <8 x i32> %i.hy, ptr %i.bc, align 32, !tbaa !43
  store <8 x i32> %i.ia, ptr %i.bd, align 32, !tbaa !43
  store <8 x i32> %i.ic, ptr %i.be, align 32, !tbaa !43
  store <8 x i32> %i.ig, ptr %i.bf, align 32, !tbaa !43
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %20 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %20 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %20 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %20 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %20 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %20 ; 2 uses
  %i.in = load <8 x i32>, ptr %i.ih, align 32, !tbaa !43
  %i.io = load <8 x i32>, ptr %i.ii, align 32, !tbaa !43 ; 2 uses
  %i.ip = load <8 x i32>, ptr %i.ij, align 32, !tbaa !43 ; 2 uses
  %i.iq = load <8 x i32>, ptr %i.ik, align 32, !tbaa !43 ; 2 uses
  %i.ir = load <8 x i32>, ptr %i.il, align 32, !tbaa !43 ; 2 uses
  %i.is = load <8 x i32>, ptr %i.im, align 32, !tbaa !43
  %i.it = add <8 x i32> %i.ip, %i.io              ; 2 uses
  %i.iu = add <8 x i32> %i.ir, %i.iq              ; 2 uses
  %i.iv = sub <8 x i32> %i.io, %i.ip              ; 2 uses
  %i.iw = sub <8 x i32> %i.iq, %i.ir              ; 2 uses
  %i.ix = add <8 x i32> %i.it, %i.in
  %i.iy = add <8 x i32> %i.ix, %i.iu
  %i.iz = shl <8 x i32> %i.iw, splat (i32 1)
  %i.ja = add <8 x i32> %i.iz, %i.iv
  %i.jb = shl <8 x i32> %i.iu, splat (i32 2)
  %i.jc = add <8 x i32> %i.jb, %i.it
  %i.jd = shl <8 x i32> %i.iw, splat (i32 3)
  %i.je = add <8 x i32> %i.jd, %i.iv
  %i.jf = shl <8 x i32> %i.is, splat (i32 2)
  %i.jg = add <8 x i32> %i.je, %i.jf
  store <8 x i32> %i.iy, ptr %i.bg, align 32, !tbaa !43
  store <8 x i32> %i.ja, ptr %i.bh, align 32, !tbaa !43
  store <8 x i32> %i.jc, ptr %i.bi, align 32, !tbaa !43
  store <8 x i32> %i.jg, ptr %i.bj, align 32, !tbaa !43
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %20 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %20 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %20 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %20 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %20 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %20 ; 2 uses
  %i.jn = load <8 x i32>, ptr %i.jh, align 32, !tbaa !43
  %i.jo = load <8 x i32>, ptr %i.ji, align 32, !tbaa !43 ; 2 uses
  %i.jp = load <8 x i32>, ptr %i.jj, align 32, !tbaa !43 ; 2 uses
  %i.jq = load <8 x i32>, ptr %i.jk, align 32, !tbaa !43 ; 2 uses
  %i.jr = load <8 x i32>, ptr %i.jl, align 32, !tbaa !43 ; 2 uses
  %i.js = load <8 x i32>, ptr %i.jm, align 32, !tbaa !43
  %i.jt = add <8 x i32> %i.jp, %i.jo              ; 2 uses
  %i.ju = add <8 x i32> %i.jr, %i.jq              ; 2 uses
  %i.jv = sub <8 x i32> %i.jo, %i.jp              ; 2 uses
  %i.jw = sub <8 x i32> %i.jq, %i.jr              ; 2 uses
  %i.jx = add <8 x i32> %i.jt, %i.jn
  %i.jy = add <8 x i32> %i.jx, %i.ju
  %i.jz = shl <8 x i32> %i.jw, splat (i32 1)
  %i.ka = add <8 x i32> %i.jz, %i.jv
  %i.kb = shl <8 x i32> %i.ju, splat (i32 2)
  %i.kc = add <8 x i32> %i.kb, %i.jt
  %i.kd = shl <8 x i32> %i.jw, splat (i32 3)
  %i.ke = add <8 x i32> %i.kd, %i.jv
  %i.kf = shl <8 x i32> %i.js, splat (i32 2)
  %i.kg = add <8 x i32> %i.ke, %i.kf
  store <8 x i32> %i.jy, ptr %i.bk, align 32, !tbaa !43
  store <8 x i32> %i.ka, ptr %i.bl, align 32, !tbaa !43
  store <8 x i32> %i.kc, ptr %i.bm, align 32, !tbaa !43
  store <8 x i32> %i.kg, ptr %i.bn, align 32, !tbaa !43
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %20 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %20 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %20 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %20 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %20 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %20 ; 2 uses
  %i.kn = load <8 x i32>, ptr %i.kh, align 32, !tbaa !43
  %i.ko = load <8 x i32>, ptr %i.ki, align 32, !tbaa !43 ; 2 uses
  %i.kp = load <8 x i32>, ptr %i.kj, align 32, !tbaa !43 ; 2 uses
  %i.kq = load <8 x i32>, ptr %i.kk, align 32, !tbaa !43 ; 2 uses
  %i.kr = load <8 x i32>, ptr %i.kl, align 32, !tbaa !43 ; 2 uses
  %i.ks = load <8 x i32>, ptr %i.km, align 32, !tbaa !43
  %i.kt = add <8 x i32> %i.kp, %i.ko              ; 2 uses
  %i.ku = add <8 x i32> %i.kr, %i.kq              ; 2 uses
  %i.kv = sub <8 x i32> %i.ko, %i.kp              ; 2 uses
  %i.kw = sub <8 x i32> %i.kq, %i.kr              ; 2 uses
  %i.kx = add <8 x i32> %i.kt, %i.kn
  %i.ky = add <8 x i32> %i.kx, %i.ku
  %i.kz = shl <8 x i32> %i.kw, splat (i32 1)
  %i.la = add <8 x i32> %i.kz, %i.kv
  %i.lb = shl <8 x i32> %i.ku, splat (i32 2)
  %i.lc = add <8 x i32> %i.lb, %i.kt
  %i.ld = shl <8 x i32> %i.kw, splat (i32 3)
  %i.le = add <8 x i32> %i.ld, %i.kv
  %i.lf = shl <8 x i32> %i.ks, splat (i32 2)
  %i.lg = add <8 x i32> %i.le, %i.lf
  store <8 x i32> %i.ky, ptr %i.bo, align 32, !tbaa !43
  store <8 x i32> %i.la, ptr %i.bp, align 32, !tbaa !43
  store <8 x i32> %i.lc, ptr %i.bq, align 32, !tbaa !43
  store <8 x i32> %i.lg, ptr %i.br, align 32, !tbaa !43
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %20
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %20
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %20
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %20
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %20
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %20
  %i.ln = trunc i64 %indvars.iv360.i to i32
  %i.lo = add i32 %.044131, %i.ln                 ; 2 uses
  %i.lp = sdiv i32 %i.lo, %i.fr
  %i.lq = srem i32 %i.lo, %i.fr
  %i.lr = load <8 x i32>, ptr %i.lh, align 32, !tbaa !43
  %i.ls = load <8 x i32>, ptr %i.li, align 32, !tbaa !43 ; 2 uses
  %i.lt = load <8 x i32>, ptr %i.lj, align 32, !tbaa !43 ; 2 uses
  %i.lu = load <8 x i32>, ptr %i.lk, align 32, !tbaa !43 ; 2 uses
  %i.lv = load <8 x i32>, ptr %i.ll, align 32, !tbaa !43 ; 2 uses
  %i.lw = load <8 x i32>, ptr %i.lm, align 32, !tbaa !43
  %i.lx = add <8 x i32> %i.lt, %i.ls              ; 2 uses
  %i.ly = add <8 x i32> %i.lv, %i.lu              ; 2 uses
  %i.lz = sub <8 x i32> %i.ls, %i.lt
  %i.ma = sub <8 x i32> %i.lu, %i.lv              ; 2 uses
  %i.mb = add <8 x i32> %i.lx, %i.lr
end_hunk_1
begin_hunk_2_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  store i32 %.sroa.051.12.vec.extract.us.i, ptr %i.pd, align 4, !tbaa !9
  %.sroa.051.16.vec.extract.us.i = extractelement <8 x i32> %i.oo, i64 4
  store i32 %.sroa.051.16.vec.extract.us.i, ptr %i.pe, align 4, !tbaa !9
  %.sroa.051.20.vec.extract.us.i = extractelement <8 x i32> %i.oo, i64 5
  store i32 %.sroa.051.20.vec.extract.us.i, ptr %i.pf, align 4, !tbaa !9
  %.sroa.051.24.vec.extract.us.i = extractelement <8 x i32> %i.oo, i64 6
  store i32 %.sroa.051.24.vec.extract.us.i, ptr %i.pg, align 4, !tbaa !9
  %.sroa.051.28.vec.extract.us.i = extractelement <8 x i32> %i.oo, i64 7
  store i32 %.sroa.051.28.vec.extract.us.i, ptr %i.ph, align 4, !tbaa !9
  br i1 %i.ng, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.11.32.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 0
  %i.pi = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 4
  store i32 %.sroa.11.32.vec.extract.us.i, ptr %i.pi, align 4, !tbaa !9
  %.sroa.11.36.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 1
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  store i32 %.sroa.11.36.vec.extract.us.i, ptr %i.pj, align 4, !tbaa !9
  %.sroa.11.40.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 2
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  store i32 %.sroa.11.40.vec.extract.us.i, ptr %i.pk, align 4, !tbaa !9
  %.sroa.11.44.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 3
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  store i32 %.sroa.11.44.vec.extract.us.i, ptr %i.pl, align 4, !tbaa !9
  %.sroa.11.48.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 4
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  store i32 %.sroa.11.48.vec.extract.us.i, ptr %i.pm, align 4, !tbaa !9
  %.sroa.11.52.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 5
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  store i32 %.sroa.11.52.vec.extract.us.i, ptr %i.pn, align 4, !tbaa !9
  %.sroa.11.56.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 6
  %i.po = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  store i32 %.sroa.11.56.vec.extract.us.i, ptr %i.po, align 4, !tbaa !9
  %.sroa.11.60.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 7
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  store i32 %.sroa.11.60.vec.extract.us.i, ptr %i.pp, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.ni, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.20.64.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 0
  %i.pq = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 8
  store i32 %.sroa.20.64.vec.extract.us.i, ptr %i.pq, align 4, !tbaa !9
  %.sroa.20.68.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i32 %.sroa.20.68.vec.extract.us.i, ptr %i.pr, align 4, !tbaa !9
  %.sroa.20.72.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 2
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store i32 %.sroa.20.72.vec.extract.us.i, ptr %i.ps, align 4, !tbaa !9
  %.sroa.20.76.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 3
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i32 %.sroa.20.76.vec.extract.us.i, ptr %i.pt, align 4, !tbaa !9
  %.sroa.20.80.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 4
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store i32 %.sroa.20.80.vec.extract.us.i, ptr %i.pu, align 4, !tbaa !9
  %.sroa.20.84.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 5
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store i32 %.sroa.20.84.vec.extract.us.i, ptr %i.pv, align 4, !tbaa !9
  %.sroa.20.88.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 6
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store i32 %.sroa.20.88.vec.extract.us.i, ptr %i.pw, align 4, !tbaa !9
  %.sroa.20.92.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 7
  %i.px = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i32 %.sroa.20.92.vec.extract.us.i, ptr %i.px, align 4, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.nk, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %.sroa.2955.96.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 0
  %i.py = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 12
  store i32 %.sroa.2955.96.vec.extract.us.i, ptr %i.py, align 4, !tbaa !9
  %.sroa.2955.100.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 1
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  store i32 %.sroa.2955.100.vec.extract.us.i, ptr %i.pz, align 4, !tbaa !9
  %.sroa.2955.104.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 2
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  store i32 %.sroa.2955.104.vec.extract.us.i, ptr %i.qa, align 4, !tbaa !9
  %.sroa.2955.108.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 3
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  store i32 %.sroa.2955.108.vec.extract.us.i, ptr %i.qb, align 4, !tbaa !9
  %.sroa.2955.112.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 4
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  store i32 %.sroa.2955.112.vec.extract.us.i, ptr %i.qc, align 4, !tbaa !9
  %.sroa.2955.116.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 5
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  store i32 %.sroa.2955.116.vec.extract.us.i, ptr %i.qd, align 4, !tbaa !9
  %.sroa.2955.120.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 6
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  store i32 %.sroa.2955.120.vec.extract.us.i, ptr %i.qe, align 4, !tbaa !9
  %.sroa.2955.124.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 7
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  store i32 %.sroa.2955.124.vec.extract.us.i, ptr %i.qf, align 4, !tbaa !9
  br label %bb.y

bb.m:                                             ; preds = %bb.f
  %i.qg = bitcast <8 x i32> %i.oo to <4 x i64>    ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.098498.us.i, i64 %i.fp ; 4 uses
  %i.qi = shufflevector <4 x i64> %i.qg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qi, ptr %.098498.us.i, align 16, !tbaa !43
  %i.qj = shufflevector <4 x i64> %i.qg, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qj, ptr %i.qh, align 16, !tbaa !43
  br i1 %i.ng, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.qk = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 16
  %i.ql = shufflevector <4 x i64> %i.os, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ql, ptr %i.qk, align 16, !tbaa !43
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qn = shufflevector <4 x i64> %i.os, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qn, ptr %i.qm, align 16, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.ni, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.qo = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 32
  %i.qp = shufflevector <4 x i64> %i.ow, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qp, ptr %i.qo, align 16, !tbaa !43
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.qr = shufflevector <4 x i64> %i.ow, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qr, ptr %i.qq, align 16, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.nk, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.qs = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 48
  %i.qt = shufflevector <4 x i64> %i.pa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qt, ptr %i.qs, align 16, !tbaa !43
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qh, i64 48
  %i.qv = shufflevector <4 x i64> %i.pa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qv, ptr %i.qu, align 16, !tbaa !43
  br label %bb.y

bb.s:                                             ; preds = %bb.f
  store <8 x i32> %i.oo, ptr %.098498.us.i, align 32, !tbaa !43
  br i1 %i.ng, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.qw = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 32
  store <8 x i32> %i.or, ptr %i.qw, align 32, !tbaa !43
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.ni, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.qx = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 64
  store <8 x i32> %i.ov, ptr %i.qx, align 32, !tbaa !43
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.nk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.qy = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 96
  store <8 x i32> %i.oz, ptr %i.qy, align 32, !tbaa !43
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.r, %bb.q, %bb.l, %bb.k, %bb.f
  %i.qz = getelementptr inbounds [4 x i8], ptr %.098498.us.i, i64 %i.ga
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.e
  %.1985.us.i = phi ptr [ %.098498.us.i, %bb.e ], [ %i.qz, %bb.y ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.aa, label %bb.e, !llvm.loop !577

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 2 uses
  %exitcond363.not.i = icmp eq i64 %indvars.iv.next361.i, %wide.trip.count.i
  br i1 %exitcond363.not.i, label %._crit_edge.us.i, label %.preheader80.us.i, !llvm.loop !578

._crit_edge.us.i:                                 ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 8 ; 3 uses
  %i.ra = or disjoint i64 %indvars.iv.next365.i, 7
  %i.rb = icmp samesign ult i64 %i.ra, %i.fa
  br i1 %i.rb, label %.lr.ph.us.i, label %.preheader79.loopexit.i, !llvm.loop !579

.preheader79.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.rc = trunc nuw nsw i64 %indvars.iv.next365.i to i32
  br label %.preheader79.i

.preheader79.i:                                   ; preds = %.lr.ph103.i, %.preheader79.loopexit.i, %._crit_edge
  %.0949.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.rc, %.preheader79.loopexit.i ], [ %i.ez, %.lr.ph103.i ] ; 6 uses
  %i.rd = or disjoint i32 %.0949.lcssa.i, 3
  %i.re = icmp slt i32 %i.rd, %.sroa.speculated121
  br i1 %i.re, label %.lr.ph150.i, label %.preheader77.i

.lr.ph150.i:                                      ; preds = %.preheader79.i
  %i.rf = icmp sgt i32 %.sroa.speculated117, 0
  %i.rg = shl nsw i32 %.sroa.speculated117, 2
  %21 = zext nneg i32 %i.rg to i64
  %i.rh = shl nsw i32 %.sroa.speculated117, 3
  %22 = zext nneg i32 %i.rh to i64
  %i.ri = mul nsw i32 %.sroa.speculated117, 12
  %23 = zext nneg i32 %i.ri to i64
  %i.rj = shl nsw i32 %.sroa.speculated117, 4
  %24 = zext nneg i32 %i.rj to i64
  %i.rk = mul nsw i32 %.sroa.speculated117, 20
  %25 = zext nneg i32 %i.rk to i64
  %i.rl = mul nsw i32 %.sroa.speculated117, 24
  %26 = zext nneg i32 %i.rl to i64                ; 30 uses
  %.idx.i = shl i64 %i.fp, 3
  %.idx1026.i = mul i64 %i.fp, 12
  %i.rm = mul nsw i32 %i.fm, %i.fk
  %i.rn = sext i32 %i.rm to i64
  br i1 %i.rf, label %.lr.ph.us153.preheader.i, label %.lr.ph150.split.preheader.i

.lr.ph150.split.preheader.i:                      ; preds = %.lr.ph150.i
  %i.ro = add i32 %.0949.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated121, i32 %i.ro)
  %reass.sub = sub i32 %smax.i, %.0949.lcssa.i
  %i.rp = and i32 %reass.sub, -4
  %i.rq = add i32 %.0949.lcssa.i, %i.rp
  br label %.preheader77.i

.lr.ph.us153.preheader.i:                         ; preds = %.lr.ph150.i
  %i.rr = sext i32 %.0949.lcssa.i to i64
  %wide.trip.count378.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us153.i

.lr.ph.us153.i:                                   ; preds = %._crit_edge.us154.i, %.lr.ph.us153.preheader.i
  %indvars.iv380.i = phi i64 [ %i.rr, %.lr.ph.us153.preheader.i ], [ %indvars.iv.next381.i, %._crit_edge.us154.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.rs = trunc nsw i64 %indvars.iv380.i to i32   ; 2 uses
  %factor.op.mul.reass.us152.i = mul i32 %factor.op.mul100.i, %i.rs
  %i.rt = sext i32 %factor.op.mul.reass.us152.i to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.rt
  %i.rv = add i32 %i.ek, %i.rs
  %i.rw = sdiv i32 %i.rv, %i.fm
  %i.rx = sext i32 %i.rw to i64
  br label %.preheader78.us.i

.preheader78.us.i:                                ; preds = %bb.ar, %.lr.ph.us153.i
  %indvars.iv375.i = phi i64 [ 0, %.lr.ph.us153.i ], [ %indvars.iv.next376.i, %bb.ar ] ; 3 uses
  %.idx423.i.a = shl nuw nsw i64 %indvars.iv375.i, 4
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.idx423.i.a ; 7 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %21 ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %22 ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %23 ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %24 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %25 ; 2 uses
  %i.se = load <4 x i32>, ptr %i.ry, align 16, !tbaa !43
  %i.sf = load <4 x i32>, ptr %i.rz, align 16, !tbaa !43 ; 2 uses
  %i.sg = load <4 x i32>, ptr %i.sa, align 16, !tbaa !43 ; 2 uses
  %i.sh = load <4 x i32>, ptr %i.sb, align 16, !tbaa !43 ; 2 uses
  %i.si = load <4 x i32>, ptr %i.sc, align 16, !tbaa !43 ; 2 uses
  %i.sj = load <4 x i32>, ptr %i.sd, align 16, !tbaa !43
  %i.sk = add <4 x i32> %i.sg, %i.sf              ; 2 uses
  %i.sl = add <4 x i32> %i.si, %i.sh              ; 2 uses
  %i.sm = sub <4 x i32> %i.sf, %i.sg              ; 2 uses
  %i.sn = sub <4 x i32> %i.sh, %i.si              ; 2 uses
  %i.so = add <4 x i32> %i.sk, %i.se
  %i.sp = add <4 x i32> %i.so, %i.sl
  %i.sq = shl <4 x i32> %i.sn, splat (i32 1)
  %i.sr = add <4 x i32> %i.sq, %i.sm
  %i.ss = shl <4 x i32> %i.sl, splat (i32 2)
  %i.st = add <4 x i32> %i.ss, %i.sk
  %i.su = shl <4 x i32> %i.sn, splat (i32 3)
  %i.sv = add <4 x i32> %i.su, %i.sm
  %i.sw = shl <4 x i32> %i.sj, splat (i32 2)
  %i.sx = add <4 x i32> %i.sv, %i.sw
  store <4 x i32> %i.sp, ptr %i.b, align 16, !tbaa !43
  store <4 x i32> %i.sr, ptr %i.bs, align 16, !tbaa !43
  store <4 x i32> %i.st, ptr %i.bt, align 16, !tbaa !43
  store <4 x i32> %i.sx, ptr %i.bu, align 16, !tbaa !43
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %26 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %26 ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %26 ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %26 ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %26 ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %26 ; 2 uses
  %i.te = load <4 x i32>, ptr %i.sy, align 16, !tbaa !43
  %i.tf = load <4 x i32>, ptr %i.sz, align 16, !tbaa !43 ; 2 uses
  %i.tg = load <4 x i32>, ptr %i.ta, align 16, !tbaa !43 ; 2 uses
  %i.th = load <4 x i32>, ptr %i.tb, align 16, !tbaa !43 ; 2 uses
  %i.ti = load <4 x i32>, ptr %i.tc, align 16, !tbaa !43 ; 2 uses
  %i.tj = load <4 x i32>, ptr %i.td, align 16, !tbaa !43
  %i.tk = add <4 x i32> %i.tg, %i.tf              ; 2 uses
  %i.tl = add <4 x i32> %i.ti, %i.th              ; 2 uses
  %i.tm = sub <4 x i32> %i.tf, %i.tg              ; 2 uses
  %i.tn = sub <4 x i32> %i.th, %i.ti              ; 2 uses
  %i.to = add <4 x i32> %i.tk, %i.te
  %i.tp = add <4 x i32> %i.to, %i.tl
  %i.tq = shl <4 x i32> %i.tn, splat (i32 1)
  %i.tr = add <4 x i32> %i.tq, %i.tm
  %i.ts = shl <4 x i32> %i.tl, splat (i32 2)
  %i.tt = add <4 x i32> %i.ts, %i.tk
  %i.tu = shl <4 x i32> %i.tn, splat (i32 3)
  %i.tv = add <4 x i32> %i.tu, %i.tm
  %i.tw = shl <4 x i32> %i.tj, splat (i32 2)
  %i.tx = add <4 x i32> %i.tv, %i.tw
  store <4 x i32> %i.tp, ptr %i.bz, align 16, !tbaa !43
  store <4 x i32> %i.tr, ptr %i.ca, align 16, !tbaa !43
  store <4 x i32> %i.tt, ptr %i.cb, align 16, !tbaa !43
  store <4 x i32> %i.tx, ptr %i.cc, align 16, !tbaa !43
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %26 ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %26 ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %26 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %26 ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %26 ; 2 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %26 ; 2 uses
  %i.ue = load <4 x i32>, ptr %i.ty, align 16, !tbaa !43
  %i.uf = load <4 x i32>, ptr %i.tz, align 16, !tbaa !43 ; 2 uses
  %i.ug = load <4 x i32>, ptr %i.ua, align 16, !tbaa !43 ; 2 uses
  %i.uh = load <4 x i32>, ptr %i.ub, align 16, !tbaa !43 ; 2 uses
  %i.ui = load <4 x i32>, ptr %i.uc, align 16, !tbaa !43 ; 2 uses
  %i.uj = load <4 x i32>, ptr %i.ud, align 16, !tbaa !43
  %i.uk = add <4 x i32> %i.ug, %i.uf              ; 2 uses
  %i.ul = add <4 x i32> %i.ui, %i.uh              ; 2 uses
  %i.um = sub <4 x i32> %i.uf, %i.ug              ; 2 uses
  %i.un = sub <4 x i32> %i.uh, %i.ui              ; 2 uses
  %i.uo = add <4 x i32> %i.uk, %i.ue
  %i.up = add <4 x i32> %i.uo, %i.ul
  %i.uq = shl <4 x i32> %i.un, splat (i32 1)
  %i.ur = add <4 x i32> %i.uq, %i.um
  %i.us = shl <4 x i32> %i.ul, splat (i32 2)
  %i.ut = add <4 x i32> %i.us, %i.uk
  %i.uu = shl <4 x i32> %i.un, splat (i32 3)
  %i.uv = add <4 x i32> %i.uu, %i.um
  %i.uw = shl <4 x i32> %i.uj, splat (i32 2)
  %i.ux = add <4 x i32> %i.uv, %i.uw
  store <4 x i32> %i.up, ptr %i.cd, align 16, !tbaa !43
  store <4 x i32> %i.ur, ptr %i.ce, align 16, !tbaa !43
  store <4 x i32> %i.ut, ptr %i.cf, align 16, !tbaa !43
  store <4 x i32> %i.ux, ptr %i.cg, align 16, !tbaa !43
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %26 ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %26 ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %26 ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %26 ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %26 ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %26 ; 2 uses
  %i.ve = load <4 x i32>, ptr %i.uy, align 16, !tbaa !43
  %i.vf = load <4 x i32>, ptr %i.uz, align 16, !tbaa !43 ; 2 uses
  %i.vg = load <4 x i32>, ptr %i.va, align 16, !tbaa !43 ; 2 uses
  %i.vh = load <4 x i32>, ptr %i.vb, align 16, !tbaa !43 ; 2 uses
  %i.vi = load <4 x i32>, ptr %i.vc, align 16, !tbaa !43 ; 2 uses
  %i.vj = load <4 x i32>, ptr %i.vd, align 16, !tbaa !43
  %i.vk = add <4 x i32> %i.vg, %i.vf              ; 2 uses
  %i.vl = add <4 x i32> %i.vi, %i.vh              ; 2 uses
  %i.vm = sub <4 x i32> %i.vf, %i.vg              ; 2 uses
  %i.vn = sub <4 x i32> %i.vh, %i.vi              ; 2 uses
  %i.vo = add <4 x i32> %i.vk, %i.ve
  %i.vp = add <4 x i32> %i.vo, %i.vl
  %i.vq = shl <4 x i32> %i.vn, splat (i32 1)
  %i.vr = add <4 x i32> %i.vq, %i.vm
  %i.vs = shl <4 x i32> %i.vl, splat (i32 2)
  %i.vt = add <4 x i32> %i.vs, %i.vk
  %i.vu = shl <4 x i32> %i.vn, splat (i32 3)
  %i.vv = add <4 x i32> %i.vu, %i.vm
  %i.vw = shl <4 x i32> %i.vj, splat (i32 2)
  %i.vx = add <4 x i32> %i.vv, %i.vw
  store <4 x i32> %i.vp, ptr %i.ch, align 16, !tbaa !43
  store <4 x i32> %i.vr, ptr %i.ci, align 16, !tbaa !43
  store <4 x i32> %i.vt, ptr %i.cj, align 16, !tbaa !43
  store <4 x i32> %i.vx, ptr %i.ck, align 16, !tbaa !43
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %26 ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %26 ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %26 ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %26 ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %26 ; 2 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %26 ; 2 uses
  %i.we = load <4 x i32>, ptr %i.vy, align 16, !tbaa !43
  %i.wf = load <4 x i32>, ptr %i.vz, align 16, !tbaa !43 ; 2 uses
  %i.wg = load <4 x i32>, ptr %i.wa, align 16, !tbaa !43 ; 2 uses
  %i.wh = load <4 x i32>, ptr %i.wb, align 16, !tbaa !43 ; 2 uses
  %i.wi = load <4 x i32>, ptr %i.wc, align 16, !tbaa !43 ; 2 uses
  %i.wj = load <4 x i32>, ptr %i.wd, align 16, !tbaa !43
  %i.wk = add <4 x i32> %i.wg, %i.wf              ; 2 uses
  %i.wl = add <4 x i32> %i.wi, %i.wh              ; 2 uses
  %i.wm = sub <4 x i32> %i.wf, %i.wg              ; 2 uses
  %i.wn = sub <4 x i32> %i.wh, %i.wi              ; 2 uses
  %i.wo = add <4 x i32> %i.wk, %i.we
  %i.wp = add <4 x i32> %i.wo, %i.wl
  %i.wq = shl <4 x i32> %i.wn, splat (i32 1)
  %i.wr = add <4 x i32> %i.wq, %i.wm
  %i.ws = shl <4 x i32> %i.wl, splat (i32 2)
  %i.wt = add <4 x i32> %i.ws, %i.wk
  %i.wu = shl <4 x i32> %i.wn, splat (i32 3)
  %i.wv = add <4 x i32> %i.wu, %i.wm
  %i.ww = shl <4 x i32> %i.wj, splat (i32 2)
  %i.wx = add <4 x i32> %i.wv, %i.ww
  store <4 x i32> %i.wp, ptr %i.cl, align 16, !tbaa !43
  store <4 x i32> %i.wr, ptr %i.cm, align 16, !tbaa !43
  store <4 x i32> %i.wt, ptr %i.cn, align 16, !tbaa !43
  store <4 x i32> %i.wx, ptr %i.co, align 16, !tbaa !43
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %26
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %26
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %26
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %26
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %26
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %26
  %i.xe = trunc i64 %indvars.iv375.i to i32
  %i.xf = add i32 %.044131, %i.xe                 ; 2 uses
  %i.xg = sdiv i32 %i.xf, %i.fr
  %i.xh = srem i32 %i.xf, %i.fr
  %i.xi = load <4 x i32>, ptr %i.wy, align 16, !tbaa !43
  %i.xj = load <4 x i32>, ptr %i.wz, align 16, !tbaa !43 ; 2 uses
  %i.xk = load <4 x i32>, ptr %i.xa, align 16, !tbaa !43 ; 2 uses
  %i.xl = load <4 x i32>, ptr %i.xb, align 16, !tbaa !43 ; 2 uses
  %i.xm = load <4 x i32>, ptr %i.xc, align 16, !tbaa !43 ; 2 uses
  %i.xn = load <4 x i32>, ptr %i.xd, align 16, !tbaa !43
end_hunk_2
begin_hunk_3_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.yf = load i32, ptr %i.aq, align 4, !tbaa !10, !noalias !580
  %i.yg = load ptr, ptr %12, align 8, !tbaa !32, !noalias !580
  %i.yh = load i64, ptr %i.at, align 8, !tbaa !18, !noalias !580
  %i.yi = mul i64 %i.yh, %i.rx
  %i.yj = load i64, ptr %i.bb, align 8, !tbaa !36, !noalias !580 ; 2 uses
  %i.yk = mul i64 %i.yi, %i.yj
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.yk
  %i.ym = sext i32 %i.yf to i64
  %i.yn = shl nsw i32 %i.xg, 2                    ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %i.yp = mul nsw i64 %i.ym, %i.yo
  %i.yq = mul i64 %i.yp, %i.yj
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.yq
  %i.ys = shl nsw i32 %i.xh, 2                    ; 4 uses
  %i.yt = mul nsw i32 %i.ys, %i.fm
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.yr, i64 %i.yu
  %i.yw = or disjoint i32 %i.ys, 1
  %i.yx = icmp slt i32 %i.yw, %i.fk               ; 2 uses
  %i.yy = or disjoint i32 %i.ys, 2
  %i.yz = icmp slt i32 %i.yy, %i.fk               ; 2 uses
  %i.za = or disjoint i32 %i.ys, 3
  %i.zb = icmp slt i32 %i.za, %i.fk               ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aq, %.preheader78.us.i
  %indvars.iv371.i = phi i64 [ %indvars.iv.next372.i, %bb.aq ], [ 0, %.preheader78.us.i ] ; 3 uses
  %.01004145.us.i = phi ptr [ %.11005.us.i, %bb.aq ], [ %i.yv, %.preheader78.us.i ] ; 13 uses
  %i.zc = trunc i64 %indvars.iv371.i to i32
  %i.zd = or i32 %i.yn, %i.zc
  %.not1025.us.i = icmp slt i32 %i.zd, %i.fl
  br i1 %.not1025.us.i, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.ze = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv371.i ; 6 uses
  %i.zf = load <4 x i32>, ptr %i.ze, align 16, !tbaa !43
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zh = load <4 x i32>, ptr %i.zg, align 16, !tbaa !43 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.zj = load <4 x i32>, ptr %i.zi, align 16, !tbaa !43 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ze, i64 48
  %i.zl = load <4 x i32>, ptr %i.zk, align 16, !tbaa !43 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ze, i64 64
  %i.zn = load <4 x i32>, ptr %i.zm, align 16, !tbaa !43 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ze, i64 80
  %i.zp = load <4 x i32>, ptr %i.zo, align 16, !tbaa !43
  %i.zq = add <4 x i32> %i.zj, %i.zh              ; 2 uses
  %i.zr = add <4 x i32> %i.zn, %i.zl              ; 2 uses
  %i.zs = sub <4 x i32> %i.zh, %i.zj              ; 2 uses
  %i.zt = sub <4 x i32> %i.zl, %i.zn              ; 2 uses
  %i.zu = add <4 x i32> %i.zq, %i.zf
  %i.zv = add <4 x i32> %i.zu, %i.zr
  %i.zw = shl <4 x i32> %i.zt, splat (i32 1)
  %i.zx = add <4 x i32> %i.zw, %i.zs
  %i.zy = shl <4 x i32> %i.zr, splat (i32 2)
  %i.zz = add <4 x i32> %i.zy, %i.zq
  %i.aaa = shl <4 x i32> %i.zt, splat (i32 3)
  %i.aab = add <4 x i32> %i.zp, %i.zs
  %i.aac = add <4 x i32> %i.aab, %i.aaa
  %i.aad = sitofp fast <4 x i32> %i.zv to <4 x float>
  %i.aae = fmul fast <4 x float> %i.aad, splat (float f0x3AE38E39)
  %i.aaf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aae) ; 5 uses
  %i.aag = sitofp fast <4 x i32> %i.zx to <4 x float>
  %i.aah = fmul fast <4 x float> %i.aag, splat (float f0x3AE38E39)
  %i.aai = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aah) ; 5 uses
  %i.aaj = sitofp fast <4 x i32> %i.zz to <4 x float>
  %i.aak = fmul fast <4 x float> %i.aaj, splat (float f0x3AE38E39)
  %i.aal = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aak) ; 5 uses
  %i.aam = sitofp fast <4 x i32> %i.aac to <4 x float>
  %i.aan = fmul fast <4 x float> %i.aam, splat (float f0x3AE38E39)
  %i.aao = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aan) ; 5 uses
  switch i32 %i.fm, label %bb.ap [
    i32 4, label %bb.aj
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.01004145.us.i, i64 %i.fp ; 4 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 %.idx.i ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 %.idx1026.i ; 4 uses
  %.sroa.026.0.vec.extract.us.i = extractelement <4 x i32> %i.aaf, i64 0
  store i32 %.sroa.026.0.vec.extract.us.i, ptr %.01004145.us.i, align 4, !tbaa !9
  %.sroa.026.4.vec.extract.us.i = extractelement <4 x i32> %i.aaf, i64 1
  store i32 %.sroa.026.4.vec.extract.us.i, ptr %i.aap, align 4, !tbaa !9
  %.sroa.026.8.vec.extract.us.i = extractelement <4 x i32> %i.aaf, i64 2
  store i32 %.sroa.026.8.vec.extract.us.i, ptr %i.aaq, align 4, !tbaa !9
  %.sroa.026.12.vec.extract.us.i = extractelement <4 x i32> %i.aaf, i64 3
  store i32 %.sroa.026.12.vec.extract.us.i, ptr %i.aar, align 4, !tbaa !9
  br i1 %i.yx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.sroa.728.16.vec.extract.us.i = extractelement <4 x i32> %i.aai, i64 0
  %i.aas = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 4
  store i32 %.sroa.728.16.vec.extract.us.i, ptr %i.aas, align 4, !tbaa !9
  %.sroa.728.20.vec.extract.us.i = extractelement <4 x i32> %i.aai, i64 1
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  store i32 %.sroa.728.20.vec.extract.us.i, ptr %i.aat, align 4, !tbaa !9
  %.sroa.728.24.vec.extract.us.i = extractelement <4 x i32> %i.aai, i64 2
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  store i32 %.sroa.728.24.vec.extract.us.i, ptr %i.aau, align 4, !tbaa !9
  %.sroa.728.28.vec.extract.us.i = extractelement <4 x i32> %i.aai, i64 3
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 4
  store i32 %.sroa.728.28.vec.extract.us.i, ptr %i.aav, align 4, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.yz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x i32> %i.aal, i64 0
  %i.aaw = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 8
  store i32 %.sroa.12.32.vec.extract.us.i, ptr %i.aaw, align 4, !tbaa !9
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x i32> %i.aal, i64 1
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  store i32 %.sroa.12.36.vec.extract.us.i, ptr %i.aax, align 4, !tbaa !9
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x i32> %i.aal, i64 2
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  store i32 %.sroa.12.40.vec.extract.us.i, ptr %i.aay, align 4, !tbaa !9
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x i32> %i.aal, i64 3
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  store i32 %.sroa.12.44.vec.extract.us.i, ptr %i.aaz, align 4, !tbaa !9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.zb, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %.sroa.1731.48.vec.extract.us.i = extractelement <4 x i32> %i.aao, i64 0
  %i.aba = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 12
  store i32 %.sroa.1731.48.vec.extract.us.i, ptr %i.aba, align 4, !tbaa !9
  %.sroa.1731.52.vec.extract.us.i = extractelement <4 x i32> %i.aao, i64 1
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aap, i64 12
  store i32 %.sroa.1731.52.vec.extract.us.i, ptr %i.abb, align 4, !tbaa !9
  %.sroa.1731.56.vec.extract.us.i = extractelement <4 x i32> %i.aao, i64 2
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaq, i64 12
  store i32 %.sroa.1731.56.vec.extract.us.i, ptr %i.abc, align 4, !tbaa !9
  %.sroa.1731.60.vec.extract.us.i = extractelement <4 x i32> %i.aao, i64 3
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aar, i64 12
  store i32 %.sroa.1731.60.vec.extract.us.i, ptr %i.abd, align 4, !tbaa !9
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ac
  store <4 x i32> %i.aaf, ptr %.01004145.us.i, align 16, !tbaa !43
  br i1 %i.yx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.abe = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 16
  store <4 x i32> %i.aai, ptr %i.abe, align 16, !tbaa !43
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.yz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.abf = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 32
  store <4 x i32> %i.aal, ptr %i.abf, align 16, !tbaa !43
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.zb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.abg = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 48
  store <4 x i32> %i.aao, ptr %i.abg, align 16, !tbaa !43
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ai, %bb.ah, %bb.ac
  %i.abh = getelementptr inbounds [4 x i8], ptr %.01004145.us.i, i64 %i.rn
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ab
  %.11005.us.i = phi ptr [ %.01004145.us.i, %bb.ab ], [ %i.abh, %bb.ap ]
  %indvars.iv.next372.i = add nuw nsw i64 %indvars.iv371.i, 1 ; 2 uses
  %exitcond374.not.i = icmp eq i64 %indvars.iv.next372.i, 4
  br i1 %exitcond374.not.i, label %bb.ar, label %bb.ab, !llvm.loop !583

bb.ar:                                            ; preds = %bb.aq
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next376.i, %wide.trip.count378.i
  br i1 %exitcond379.not.i, label %._crit_edge.us154.i, label %.preheader78.us.i, !llvm.loop !584

._crit_edge.us154.i:                              ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 4 ; 3 uses
  %i.abi = icmp slt i64 %indvars.iv.next381.i, %invariant.op.i
  br i1 %i.abi, label %.lr.ph.us153.i, label %.preheader77.loopexit.i, !llvm.loop !585

.preheader77.loopexit.i:                          ; preds = %._crit_edge.us154.i
  %i.abj = trunc nsw i64 %indvars.iv.next381.i to i32
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %.preheader77.loopexit.i, %.lr.ph150.split.preheader.i, %.preheader79.i
  %.1950.lcssa.i = phi i32 [ %.0949.lcssa.i, %.preheader79.i ], [ %i.abj, %.preheader77.loopexit.i ], [ %i.rq, %.lr.ph150.split.preheader.i ] ; 6 uses
  %i.abk = or disjoint i32 %.1950.lcssa.i, 1
  %i.abl = icmp slt i32 %i.abk, %.sroa.speculated121
  br i1 %i.abl, label %.lr.ph206.i, label %.preheader75.i

.lr.ph206.i:                                      ; preds = %.preheader77.i
  %i.abm = icmp sgt i32 %.sroa.speculated117, 0
  %i.abn = shl nsw i32 %.sroa.speculated117, 1
  %27 = zext nneg i32 %i.abn to i64
  %i.abo = shl nsw i32 %.sroa.speculated117, 2
  %28 = zext nneg i32 %i.abo to i64
  %i.abp = mul nsw i32 %.sroa.speculated117, 6
  %29 = zext nneg i32 %i.abp to i64
  %i.abq = shl nsw i32 %.sroa.speculated117, 3
  %30 = zext nneg i32 %i.abq to i64
  %i.abr = mul nsw i32 %.sroa.speculated117, 10
  %31 = zext nneg i32 %i.abr to i64
  %i.abs = mul nsw i32 %.sroa.speculated117, 12
  %32 = zext nneg i32 %i.abs to i64               ; 30 uses
  %i.abt = sext i32 %i.fk to i64
  br i1 %i.abm, label %.lr.ph206.split.us.i, label %.lr.ph206.split.preheader.i

.lr.ph206.split.preheader.i:                      ; preds = %.lr.ph206.i
  %i.abu = add i32 %.1950.lcssa.i, 3
  %smax383.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated121, i32 %i.abu)
  %reass.sub137 = sub i32 %smax383.i, %.1950.lcssa.i
  %i.abv = and i32 %reass.sub137, -2
  %i.abw = add i32 %.1950.lcssa.i, %i.abv
  br label %.preheader75.i

.lr.ph206.split.us.i:                             ; preds = %.lr.ph206.i
  %i.abx = load ptr, ptr %12, align 8, !tbaa !32, !noalias !586
  %i.aby = load i64, ptr %i.at, align 8, !tbaa !18, !noalias !586
  %i.abz = load i64, ptr %i.bb, align 8, !tbaa !36, !noalias !586 ; 2 uses
  %factor.op.mul.i = mul i64 %i.abz, %i.aby
  %i.aca = sext i32 %.1950.lcssa.i to i64
  %wide.trip.count395.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us209.i

.lr.ph.us209.i:                                   ; preds = %._crit_edge.us210.i, %.lr.ph206.split.us.i
  %indvars.iv397.i = phi i64 [ %indvars.iv.next398.i, %._crit_edge.us210.i ], [ %i.aca, %.lr.ph206.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.acb = trunc nsw i64 %indvars.iv397.i to i32
  %factor.op.mul.reass.us208.i = mul i32 %factor.op.mul100.i, %i.acb
  %i.acc = sext i32 %factor.op.mul.reass.us208.i to i64
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.acc
  %i.ace = add nsw i64 %indvars.iv397.i, %i.fc
  %.reass.i = mul i64 %factor.op.mul.i, %i.ace
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abx, i64 %.reass.i
  br label %.preheader76.us.i

.preheader76.us.i:                                ; preds = %bb.bb, %.lr.ph.us209.i
  %indvars.iv392.i = phi i64 [ 0, %.lr.ph.us209.i ], [ %indvars.iv.next393.i, %bb.bb ] ; 3 uses
  %.idx424.i = shl nuw nsw i64 %indvars.iv392.i, 3
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 %.idx424.i ; 8 uses
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %27 ; 3 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %28 ; 3 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %29 ; 3 uses
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %30 ; 3 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %31 ; 3 uses
  %i.acm = load i32, ptr %i.ach, align 4, !tbaa !9 ; 2 uses
  %i.acn = load i32, ptr %i.aci, align 4, !tbaa !9 ; 2 uses
  %i.aco = add nsw i32 %i.acn, %i.acm             ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !9 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !9 ; 2 uses
  %i.act = add nsw i32 %i.acs, %i.acq             ; 2 uses
  %i.acu = load i32, ptr %i.acj, align 4, !tbaa !9 ; 2 uses
  %i.acv = load i32, ptr %i.ack, align 4, !tbaa !9 ; 2 uses
  %i.acw = add nsw i32 %i.acv, %i.acu             ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acj, i64 4
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !9 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !9 ; 2 uses
  %i.adb = add nsw i32 %i.ada, %i.acy             ; 2 uses
  %i.adc = sub nsw i32 %i.acm, %i.acn             ; 2 uses
  %i.add = sub nsw i32 %i.acq, %i.acs             ; 2 uses
  %i.ade = sub nsw i32 %i.acu, %i.acv             ; 2 uses
  %i.adf = sub nsw i32 %i.acy, %i.ada             ; 2 uses
  %i.adg = add nsw i32 %i.acw, %i.aco
  %i.adh = load i32, ptr %i.acg, align 4, !tbaa !9
  %i.adi = add nsw i32 %i.adg, %i.adh
  %i.adj = add nsw i32 %i.adb, %i.act
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !9
  %i.adm = add nsw i32 %i.adj, %i.adl
  %i.adn = shl nsw i32 %i.ade, 1
  %i.ado = add nsw i32 %i.adn, %i.adc
  %i.adp = shl nsw i32 %i.adf, 1
  %i.adq = add nsw i32 %i.adp, %i.add
  %i.adr = shl nsw i32 %i.acw, 2
  %i.ads = add nsw i32 %i.adr, %i.aco
  %i.adt = shl nsw i32 %i.adb, 2
  %i.adu = add nsw i32 %i.adt, %i.act
  %i.adv = shl nsw i32 %i.ade, 3
  %i.adw = add nsw i32 %i.adv, %i.adc
  %i.adx = load i32, ptr %i.acl, align 4, !tbaa !9
  %i.ady = shl nsw i32 %i.adx, 2
  %i.adz = add nsw i32 %i.adw, %i.ady
  %i.aea = shl nsw i32 %i.adf, 3
  %i.aeb = add nsw i32 %i.aea, %i.add
  %i.aec = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !9
  %i.aee = shl nsw i32 %i.aed, 2
  %i.aef = add nsw i32 %i.aeb, %i.aee
  store i32 %i.adi, ptr %i.c, align 16, !tbaa !9
  store i32 %i.adm, ptr %i.cz, align 4, !tbaa !9
  store i32 %i.ado, ptr %i.cp, align 16, !tbaa !9
  store i32 %i.adq, ptr %i.da, align 4, !tbaa !9
  store i32 %i.ads, ptr %i.cq, align 16, !tbaa !9
  store i32 %i.adu, ptr %i.db, align 4, !tbaa !9
  store i32 %i.adz, ptr %i.cr, align 16, !tbaa !9
  store i32 %i.aef, ptr %i.dc, align 4, !tbaa !9
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %32 ; 3 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %32 ; 3 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %32 ; 3 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %32 ; 3 uses
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %32 ; 3 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %32 ; 3 uses
  %i.aem = load i32, ptr %i.aeh, align 4, !tbaa !9 ; 2 uses
  %i.aen = load i32, ptr %i.aei, align 4, !tbaa !9 ; 2 uses
  %i.aeo = add nsw i32 %i.aen, %i.aem             ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeh, i64 4
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !9 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aei, i64 4
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !9 ; 2 uses
  %i.aet = add nsw i32 %i.aes, %i.aeq             ; 2 uses
  %i.aeu = load i32, ptr %i.aej, align 4, !tbaa !9 ; 2 uses
  %i.aev = load i32, ptr %i.aek, align 4, !tbaa !9 ; 2 uses
  %i.aew = add nsw i32 %i.aev, %i.aeu             ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aej, i64 4
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !9 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aek, i64 4
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !9 ; 2 uses
  %i.afb = add nsw i32 %i.afa, %i.aey             ; 2 uses
  %i.afc = sub nsw i32 %i.aem, %i.aen             ; 2 uses
  %i.afd = sub nsw i32 %i.aeq, %i.aes             ; 2 uses
  %i.afe = sub nsw i32 %i.aeu, %i.aev             ; 2 uses
  %i.aff = sub nsw i32 %i.aey, %i.afa             ; 2 uses
  %i.afg = add nsw i32 %i.aew, %i.aeo
  %i.afh = load i32, ptr %i.aeg, align 4, !tbaa !9
  %i.afi = add nsw i32 %i.afg, %i.afh
  %i.afj = add nsw i32 %i.afb, %i.aet
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !9
  %i.afm = add nsw i32 %i.afj, %i.afl
  %i.afn = shl nsw i32 %i.afe, 1
  %i.afo = add nsw i32 %i.afn, %i.afc
  %i.afp = shl nsw i32 %i.aff, 1
  %i.afq = add nsw i32 %i.afp, %i.afd
  %i.afr = shl nsw i32 %i.aew, 2
  %i.afs = add nsw i32 %i.afr, %i.aeo
  %i.aft = shl nsw i32 %i.afb, 2
  %i.afu = add nsw i32 %i.aft, %i.aet
  %i.afv = shl nsw i32 %i.afe, 3
  %i.afw = add nsw i32 %i.afv, %i.afc
  %i.afx = load i32, ptr %i.ael, align 4, !tbaa !9
  %i.afy = shl nsw i32 %i.afx, 2
  %i.afz = add nsw i32 %i.afw, %i.afy
  %i.aga = shl nsw i32 %i.aff, 3
  %i.agb = add nsw i32 %i.aga, %i.afd
  %i.agc = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !9
  %i.age = shl nsw i32 %i.agd, 2
  %i.agf = add nsw i32 %i.agb, %i.age
  store i32 %i.afi, ptr %i.dd, align 8, !tbaa !9
  store i32 %i.afm, ptr %i.de, align 4, !tbaa !9
  store i32 %i.afo, ptr %i.df, align 8, !tbaa !9
  store i32 %i.afq, ptr %i.dg, align 4, !tbaa !9
  store i32 %i.afs, ptr %i.dh, align 8, !tbaa !9
  store i32 %i.afu, ptr %i.di, align 4, !tbaa !9
  store i32 %i.afz, ptr %i.dj, align 8, !tbaa !9
  store i32 %i.agf, ptr %i.dk, align 4, !tbaa !9
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %32 ; 3 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %32 ; 3 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %32 ; 3 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.aej, i64 %32 ; 3 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %32 ; 3 uses
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %32 ; 3 uses
  %i.agm = load i32, ptr %i.agh, align 4, !tbaa !9 ; 2 uses
  %i.agn = load i32, ptr %i.agi, align 4, !tbaa !9 ; 2 uses
  %i.ago = add nsw i32 %i.agn, %i.agm             ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !9 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !9 ; 2 uses
  %i.agt = add nsw i32 %i.ags, %i.agq             ; 2 uses
  %i.agu = load i32, ptr %i.agj, align 4, !tbaa !9 ; 2 uses
  %i.agv = load i32, ptr %i.agk, align 4, !tbaa !9 ; 2 uses
  %i.agw = add nsw i32 %i.agv, %i.agu             ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agj, i64 4
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !9 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !9 ; 2 uses
  %i.ahb = add nsw i32 %i.aha, %i.agy             ; 2 uses
  %i.ahc = sub nsw i32 %i.agm, %i.agn             ; 2 uses
  %i.ahd = sub nsw i32 %i.agq, %i.ags             ; 2 uses
  %i.ahe = sub nsw i32 %i.agu, %i.agv             ; 2 uses
  %i.ahf = sub nsw i32 %i.agy, %i.aha             ; 2 uses
  %i.ahg = add nsw i32 %i.agw, %i.ago
  %i.ahh = load i32, ptr %i.agg, align 4, !tbaa !9
  %i.ahi = add nsw i32 %i.ahg, %i.ahh
  %i.ahj = add nsw i32 %i.ahb, %i.agt
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agg, i64 4
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !9
  %i.ahm = add nsw i32 %i.ahj, %i.ahl
  %i.ahn = shl nsw i32 %i.ahe, 1
  %i.aho = add nsw i32 %i.ahn, %i.ahc
  %i.ahp = shl nsw i32 %i.ahf, 1
  %i.ahq = add nsw i32 %i.ahp, %i.ahd
  %i.ahr = shl nsw i32 %i.agw, 2
  %i.ahs = add nsw i32 %i.ahr, %i.ago
  %i.aht = shl nsw i32 %i.ahb, 2
  %i.ahu = add nsw i32 %i.aht, %i.agt
  %i.ahv = shl nsw i32 %i.ahe, 3
  %i.ahw = add nsw i32 %i.ahv, %i.ahc
  %i.ahx = load i32, ptr %i.agl, align 4, !tbaa !9
  %i.ahy = shl nsw i32 %i.ahx, 2
end_hunk_3
begin_hunk_4_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.amp = srem i32 %i.amn, %i.fr
  %i.amq = load i32, ptr %i.amg, align 4, !tbaa !9
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amg, i64 4
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !9
  %i.amt = load <2 x i32>, ptr %i.amh, align 4, !tbaa !9 ; 3 uses
  %i.amu = load <2 x i32>, ptr %i.ami, align 4, !tbaa !9 ; 3 uses
  %foldExtExtBinop = add nsw <2 x i32> %i.amu, %i.amt
  %i.amv = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop145 = add nsw <2 x i32> %i.amu, %i.amt
  %i.amw = extractelement <2 x i32> %foldExtExtBinop145, i64 1 ; 2 uses
  %i.amx = load <2 x i32>, ptr %i.amj, align 4, !tbaa !9 ; 3 uses
  %i.amy = load <2 x i32>, ptr %i.amk, align 4, !tbaa !9 ; 3 uses
  %foldExtExtBinop147 = add nsw <2 x i32> %i.amy, %i.amx
  %i.amz = extractelement <2 x i32> %foldExtExtBinop147, i64 0 ; 2 uses
  %foldExtExtBinop149 = add nsw <2 x i32> %i.amy, %i.amx
  %i.ana = extractelement <2 x i32> %foldExtExtBinop149, i64 1 ; 2 uses
  %i.anb = sub nsw <2 x i32> %i.amt, %i.amu
  %i.anc = sub nsw <2 x i32> %i.amx, %i.amy       ; 3 uses
  %i.and = add nsw i32 %i.amz, %i.amv
  %i.ane = add nsw i32 %i.and, %i.amq
  %i.anf = add nsw i32 %i.ana, %i.amw
  %i.ang = add nsw i32 %i.anf, %i.ams
  %i.anh = load <2 x i32>, ptr %i.aml, align 4, !tbaa !9
  %i.ani = shl nsw i32 %i.ane, 2
  %i.anj = shl nsw i32 %i.ang, 2
  %i.ank = extractelement <2 x i32> %i.anc, i64 0
  %i.anl = shl i32 %i.ank, 3
  %i.anm = shl <2 x i32> %i.anb, splat (i32 2)    ; 3 uses
  %i.ann = extractelement <2 x i32> %i.anm, i64 0
  %i.ano = add i32 %i.anl, %i.ann
  %i.anp = extractelement <2 x i32> %i.anc, i64 1
  %i.anq = shl i32 %i.anp, 3
  %i.anr = extractelement <2 x i32> %i.anm, i64 1
  %i.ans = add i32 %i.anq, %i.anr
  %i.ant = shl i32 %i.amz, 4
  %i.anu = shl i32 %i.amv, 2
  %i.anv = add i32 %i.ant, %i.anu
  %i.anw = shl i32 %i.ana, 4
  %i.anx = shl i32 %i.amw, 2
  %i.any = add i32 %i.anw, %i.anx
  %i.anz = shl <2 x i32> %i.anh, splat (i32 4)
  %i.aoa = shl <2 x i32> %i.anc, splat (i32 5)
  %i.aob = add <2 x i32> %i.aoa, %i.anm
  %i.aoc = add <2 x i32> %i.aob, %i.anz
  store i32 %i.ani, ptr %i.cs, align 8, !tbaa !9
  store i32 %i.anj, ptr %i.ct, align 4, !tbaa !9
  store i32 %i.ano, ptr %i.cu, align 8, !tbaa !9
  store i32 %i.ans, ptr %i.cv, align 4, !tbaa !9
  store i32 %i.anv, ptr %i.cw, align 8, !tbaa !9
  store i32 %i.any, ptr %i.cx, align 4, !tbaa !9
  store <2 x i32> %i.aoc, ptr %i.cy, align 8, !tbaa !9
  %i.aod = load i32, ptr %i.aq, align 4, !tbaa !10, !noalias !586
  %i.aoe = sext i32 %i.aod to i64
  %i.aof = shl nsw i32 %i.amo, 2                  ; 2 uses
  %i.aog = sext i32 %i.aof to i64
  %i.aoh = mul i64 %i.abz, %i.aog
  %i.aoi = mul i64 %i.aoh, %i.aoe
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aoi
  %i.aok = shl nsw i32 %i.amp, 2                  ; 4 uses
  %i.aol = sext i32 %i.aok to i64
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.aoj, i64 %i.aol
  %i.aon = or disjoint i32 %i.aok, 1
  %i.aoo = icmp slt i32 %i.aon, %i.fk
  %i.aop = or disjoint i32 %i.aok, 2
  %i.aoq = icmp slt i32 %i.aop, %i.fk
  %i.aor = or disjoint i32 %i.aok, 3
  %i.aos = icmp slt i32 %i.aor, %i.fk
  br label %bb.as

bb.as:                                            ; preds = %bb.ba, %.preheader76.us.i
  %indvars.iv388.i = phi i64 [ %indvars.iv.next389.i, %bb.ba ], [ 0, %.preheader76.us.i ] ; 3 uses
  %.0981201.us.i = phi ptr [ %.1982.us.i, %bb.ba ], [ %i.aom, %.preheader76.us.i ] ; 7 uses
  %i.aot = trunc i64 %indvars.iv388.i to i32
  %i.aou = or i32 %i.aof, %i.aot
  %.not1024.us.i = icmp slt i32 %i.aou, %i.fl
  br i1 %.not1024.us.i, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.aov = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %indvars.iv388.i ; 12 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.aox = load i32, ptr %i.aow, align 8, !tbaa !9 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  %i.aoz = load i32, ptr %i.aoy, align 16, !tbaa !9 ; 2 uses
  %i.apa = add nsw i32 %i.aoz, %i.aox             ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aov, i64 12
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !9 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aov, i64 20
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !9 ; 2 uses
  %i.apf = add nsw i32 %i.ape, %i.apc             ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aov, i64 24
  %i.aph = load i32, ptr %i.apg, align 8, !tbaa !9 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aov, i64 32
  %i.apj = load i32, ptr %i.api, align 16, !tbaa !9 ; 2 uses
  %i.apk = add nsw i32 %i.apj, %i.aph             ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aov, i64 28
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !9 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aov, i64 36
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !9 ; 2 uses
  %i.app = add nsw i32 %i.apo, %i.apm             ; 2 uses
  %i.apq = sub nsw i32 %i.aox, %i.aoz             ; 2 uses
  %i.apr = sub nsw i32 %i.apc, %i.ape             ; 2 uses
  %i.aps = sub nsw i32 %i.aph, %i.apj             ; 2 uses
  %i.apt = sub nsw i32 %i.apm, %i.apo             ; 2 uses
  %i.apu = add nsw i32 %i.apk, %i.apa
  %i.apv = load i32, ptr %i.aov, align 16, !tbaa !9
  %i.apw = add nsw i32 %i.apu, %i.apv
  %i.apx = add nsw i32 %i.app, %i.apf
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aov, i64 4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !9
  %i.aqa = add nsw i32 %i.apx, %i.apz
  %i.aqb = shl nsw i32 %i.apk, 2
  %i.aqc = add nsw i32 %i.aqb, %i.apa
  %i.aqd = shl nsw i32 %i.app, 2
  %i.aqe = add nsw i32 %i.aqd, %i.apf
  %i.aqf = shl nsw i32 %i.aps, 3
  %i.aqg = add nsw i32 %i.aqf, %i.apq
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aov, i64 40
  %i.aqi = load i32, ptr %i.aqh, align 8, !tbaa !9
  %i.aqj = add nsw i32 %i.aqg, %i.aqi
  %i.aqk = shl nsw i32 %i.apt, 3
  %i.aql = add nsw i32 %i.aqk, %i.apr
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aov, i64 44
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !9
  %i.aqo = add nsw i32 %i.aql, %i.aqn
  %i.aqp = sdiv i32 %i.apw, 576
  %i.aqq = sdiv i32 %i.aqa, 576
  %i.aqr = sdiv i32 %i.aqc, 576
  %i.aqs = sdiv i32 %i.aqe, 576
  %i.aqt = sdiv i32 %i.aqj, 576
  %i.aqu = sdiv i32 %i.aqo, 576
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.0981201.us.i, i64 %i.fp ; 4 uses
  store i32 %i.aqp, ptr %.0981201.us.i, align 4, !tbaa !9
  store i32 %i.aqq, ptr %i.aqv, align 4, !tbaa !9
  br i1 %i.aoo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.aqw = shl nsw i32 %i.apt, 1
  %i.aqx = add nsw i32 %i.aqw, %i.apr
  %i.aqy = sdiv i32 %i.aqx, 576
  %i.aqz = shl nsw i32 %i.aps, 1
  %i.ara = add nsw i32 %i.aqz, %i.apq
  %i.arb = sdiv i32 %i.ara, 576
  %i.arc = getelementptr inbounds nuw i8, ptr %.0981201.us.i, i64 4
  store i32 %i.arb, ptr %i.arc, align 4, !tbaa !9
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqv, i64 4
  store i32 %i.aqy, ptr %i.ard, align 4, !tbaa !9
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.aoq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.are = getelementptr inbounds nuw i8, ptr %.0981201.us.i, i64 8
  store i32 %i.aqr, ptr %i.are, align 4, !tbaa !9
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  store i32 %i.aqs, ptr %i.arf, align 4, !tbaa !9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %i.aos, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.arg = getelementptr inbounds nuw i8, ptr %.0981201.us.i, i64 12
  store i32 %i.aqt, ptr %i.arg, align 4, !tbaa !9
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqv, i64 12
  store i32 %i.aqu, ptr %i.arh, align 4, !tbaa !9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ari = getelementptr inbounds [4 x i8], ptr %.0981201.us.i, i64 %i.abt
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.as
  %.1982.us.i = phi ptr [ %.0981201.us.i, %bb.as ], [ %i.ari, %bb.az ]
  %indvars.iv.next389.i = add nuw nsw i64 %indvars.iv388.i, 1 ; 2 uses
  %exitcond391.not.i = icmp eq i64 %indvars.iv.next389.i, 4
  br i1 %exitcond391.not.i, label %bb.bb, label %bb.as, !llvm.loop !589

bb.bb:                                            ; preds = %bb.ba
  %indvars.iv.next393.i = add nuw nsw i64 %indvars.iv392.i, 1 ; 2 uses
  %exitcond396.not.i = icmp eq i64 %indvars.iv.next393.i, %wide.trip.count395.i
  br i1 %exitcond396.not.i, label %._crit_edge.us210.i, label %.preheader76.us.i, !llvm.loop !590

._crit_edge.us210.i:                              ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  %indvars.iv.next398.i = add nuw nsw i64 %indvars.iv397.i, 2 ; 3 uses
  %i.arj = icmp slt i64 %indvars.iv.next398.i, %invariant.op425.i
  br i1 %i.arj, label %.lr.ph.us209.i, label %.preheader75.loopexit.i, !llvm.loop !591

.preheader75.loopexit.i:                          ; preds = %._crit_edge.us210.i
  %i.ark = trunc nsw i64 %indvars.iv.next398.i to i32
  br label %.preheader75.i

.preheader75.i:                                   ; preds = %.preheader75.loopexit.i, %.lr.ph206.split.preheader.i, %.preheader77.i
  %.2.lcssa.i = phi i32 [ %.1950.lcssa.i, %.preheader77.i ], [ %i.ark, %.preheader75.loopexit.i ], [ %i.abw, %.lr.ph206.split.preheader.i ] ; 2 uses
  %i.arl = icmp slt i32 %.2.lcssa.i, %.sroa.speculated121
  br i1 %i.arl, label %.lr.ph295.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph295.i:                                      ; preds = %.preheader75.i
  %i.arm = icmp sgt i32 %.sroa.speculated117, 0
  %33 = zext i32 %.sroa.speculated117 to i64      ; 2 uses
  %i.arn = shl nsw i32 %.sroa.speculated117, 1
  %34 = zext nneg i32 %i.arn to i64
  %i.aro = mul nsw i32 %.sroa.speculated117, 3
  %35 = zext nneg i32 %i.aro to i64
  %i.arp = shl nsw i32 %.sroa.speculated117, 2
  %36 = zext nneg i32 %i.arp to i64
  %i.arq = mul nsw i32 %.sroa.speculated117, 5
  %37 = zext nneg i32 %i.arq to i64
  %i.arr = mul nsw i32 %.sroa.speculated117, 6
  %38 = zext nneg i32 %i.arr to i64               ; 30 uses
  %i.ars = sext i32 %i.fk to i64                  ; 3 uses
  br i1 %i.arm, label %.lr.ph295.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph295.split.us.i:                             ; preds = %.lr.ph295.i
  %i.art = load ptr, ptr %12, align 8, !tbaa !32, !noalias !592
  %i.aru = load i64, ptr %i.at, align 8, !tbaa !18, !noalias !592
  %i.arv = load i64, ptr %i.bb, align 8, !tbaa !36, !noalias !592 ; 2 uses
  %factor.op.mul323.i = mul i64 %i.arv, %i.aru
  %i.arw = sext i32 %.2.lcssa.i to i64
  br label %.lr.ph.us297.i

.lr.ph.us297.i:                                   ; preds = %._crit_edge.us298.i, %.lr.ph295.split.us.i
  %indvars.iv413.i = phi i64 [ %indvars.iv.next414.i, %._crit_edge.us298.i ], [ %i.arw, %.lr.ph295.split.us.i ] ; 3 uses
  %i.arx = trunc nsw i64 %indvars.iv413.i to i32
  %factor.op.mul290.reass.us.i = mul i32 %factor.op.mul100.i, %i.arx
  %i.ary = sext i32 %factor.op.mul290.reass.us.i to i64
  %i.arz = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ary
  %i.asa = add nsw i64 %indvars.iv413.i, %i.fc
  %.reass324.i = mul i64 %factor.op.mul323.i, %i.asa
  %i.asb = getelementptr inbounds nuw i8, ptr %i.art, i64 %.reass324.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.cg, %.lr.ph.us297.i
  %indvars.iv408.i = phi i64 [ 0, %.lr.ph.us297.i ], [ %indvars.iv.next409.i, %bb.cg ] ; 3 uses
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.arz, i64 %indvars.iv408.i ; 7 uses
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %33 ; 2 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %34 ; 2 uses
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %35 ; 2 uses
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %36 ; 2 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %37 ; 2 uses
  %i.asi = load i32, ptr %i.asd, align 4, !tbaa !9 ; 2 uses
  %i.asj = load i32, ptr %i.ase, align 4, !tbaa !9 ; 2 uses
  %i.ask = add nsw i32 %i.asj, %i.asi             ; 2 uses
  %i.asl = load i32, ptr %i.asf, align 4, !tbaa !9 ; 2 uses
  %i.asm = load i32, ptr %i.asg, align 4, !tbaa !9 ; 2 uses
  %i.asn = add nsw i32 %i.asm, %i.asl             ; 2 uses
  %i.aso = sub nsw i32 %i.asi, %i.asj             ; 2 uses
  %i.asp = sub nsw i32 %i.asl, %i.asm             ; 2 uses
  %i.asq = shl nsw i32 %i.asp, 1
  %i.asr = shl nsw i32 %i.asn, 2
  %i.ass = shl nsw i32 %i.asp, 3
  %i.ast = load i32, ptr %i.ash, align 4, !tbaa !9
  %i.asu = shl nsw i32 %i.ast, 2
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %38 ; 2 uses
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.ase, i64 %38 ; 2 uses
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %38 ; 2 uses
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %38 ; 2 uses
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %38 ; 2 uses
  %i.ata = load i32, ptr %i.asv, align 4, !tbaa !9 ; 2 uses
  %i.atb = load i32, ptr %i.asw, align 4, !tbaa !9 ; 2 uses
  %i.atc = add nsw i32 %i.atb, %i.ata             ; 2 uses
  %i.atd = load i32, ptr %i.asx, align 4, !tbaa !9 ; 2 uses
  %i.ate = load i32, ptr %i.asy, align 4, !tbaa !9 ; 2 uses
  %i.atf = add nsw i32 %i.ate, %i.atd             ; 2 uses
  %i.atg = sub nsw i32 %i.ata, %i.atb             ; 2 uses
  %i.ath = sub nsw i32 %i.atd, %i.ate             ; 2 uses
  %i.ati = shl nsw i32 %i.ath, 1
  %i.atj = add nsw i32 %i.ati, %i.atg             ; 2 uses
  %i.atk = shl nsw i32 %i.atf, 2
  %i.atl = add nsw i32 %i.atk, %i.atc             ; 2 uses
  %i.atm = shl nsw i32 %i.ath, 3
  %i.atn = add nsw i32 %i.atm, %i.atg
  %i.ato = load i32, ptr %i.asz, align 4, !tbaa !9
  %i.atp = shl nsw i32 %i.ato, 2
  %i.atq = add nsw i32 %i.atn, %i.atp             ; 2 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %i.asv, i64 %38 ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.asw, i64 %38 ; 2 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.asx, i64 %38 ; 2 uses
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.asy, i64 %38 ; 2 uses
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.asz, i64 %38 ; 2 uses
  %i.atw = load i32, ptr %i.atr, align 4, !tbaa !9 ; 2 uses
  %i.atx = load i32, ptr %i.ats, align 4, !tbaa !9 ; 2 uses
  %i.aty = add nsw i32 %i.atx, %i.atw             ; 2 uses
  %i.atz = load i32, ptr %i.att, align 4, !tbaa !9 ; 2 uses
  %i.aua = load i32, ptr %i.atu, align 4, !tbaa !9 ; 2 uses
  %i.aub = add nsw i32 %i.aua, %i.atz             ; 2 uses
  %i.auc = sub nsw i32 %i.atw, %i.atx             ; 2 uses
  %i.aud = sub nsw i32 %i.atz, %i.aua             ; 2 uses
  %i.aue = shl nsw i32 %i.aud, 1
  %i.auf = add nsw i32 %i.aue, %i.auc             ; 2 uses
  %i.aug = shl nsw i32 %i.aub, 2
  %i.auh = add nsw i32 %i.aug, %i.aty             ; 2 uses
  %i.aui = shl nsw i32 %i.aud, 3
  %i.auj = add nsw i32 %i.aui, %i.auc
  %i.auk = load i32, ptr %i.atv, align 4, !tbaa !9
  %i.aul = shl nsw i32 %i.auk, 2
  %i.aum = add nsw i32 %i.auj, %i.aul             ; 2 uses
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.atr, i64 %38 ; 2 uses
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.ats, i64 %38 ; 2 uses
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %38 ; 2 uses
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.atu, i64 %38 ; 2 uses
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %38 ; 2 uses
  %i.aus = load i32, ptr %i.aun, align 4, !tbaa !9 ; 2 uses
  %i.aut = load i32, ptr %i.auo, align 4, !tbaa !9 ; 2 uses
  %i.auu = add nsw i32 %i.aut, %i.aus             ; 2 uses
  %i.auv = load i32, ptr %i.aup, align 4, !tbaa !9 ; 2 uses
  %i.auw = load i32, ptr %i.auq, align 4, !tbaa !9 ; 2 uses
  %i.aux = add nsw i32 %i.auw, %i.auv             ; 2 uses
  %i.auy = sub nsw i32 %i.aus, %i.aut             ; 2 uses
  %i.auz = sub nsw i32 %i.auv, %i.auw             ; 2 uses
  %i.ava = shl nsw i32 %i.auz, 1
  %i.avb = add nsw i32 %i.ava, %i.auy             ; 2 uses
  %i.avc = shl nsw i32 %i.aux, 2
  %i.avd = add nsw i32 %i.avc, %i.auu             ; 2 uses
  %i.ave = shl nsw i32 %i.auz, 3
  %i.avf = add nsw i32 %i.ave, %i.auy
  %i.avg = load i32, ptr %i.aur, align 4, !tbaa !9
  %i.avh = shl nsw i32 %i.avg, 2
  %i.avi = add nsw i32 %i.avf, %i.avh             ; 2 uses
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.aun, i64 %38 ; 2 uses
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.auo, i64 %38 ; 2 uses
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.aup, i64 %38 ; 2 uses
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.auq, i64 %38 ; 2 uses
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %38 ; 2 uses
  %i.avo = load i32, ptr %i.avj, align 4, !tbaa !9 ; 2 uses
  %i.avp = load i32, ptr %i.avk, align 4, !tbaa !9 ; 2 uses
  %i.avq = add nsw i32 %i.avp, %i.avo             ; 2 uses
  %i.avr = load i32, ptr %i.avl, align 4, !tbaa !9 ; 2 uses
  %i.avs = load i32, ptr %i.avm, align 4, !tbaa !9 ; 2 uses
  %i.avt = add nsw i32 %i.avs, %i.avr             ; 2 uses
  %i.avu = sub nsw i32 %i.avo, %i.avp             ; 2 uses
  %i.avv = sub nsw i32 %i.avr, %i.avs             ; 2 uses
  %i.avw = shl nsw i32 %i.avv, 1
  %i.avx = add nsw i32 %i.avw, %i.avu             ; 2 uses
  %i.avy = shl nsw i32 %i.avt, 2
  %i.avz = add nsw i32 %i.avy, %i.avq             ; 2 uses
  %i.awa = shl nsw i32 %i.avv, 3
  %i.awb = add nsw i32 %i.awa, %i.avu
  %i.awc = load i32, ptr %i.avn, align 4, !tbaa !9
  %i.awd = shl nsw i32 %i.awc, 2
  %i.awe = add nsw i32 %i.awb, %i.awd             ; 2 uses
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.avj, i64 %38
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.avk, i64 %38
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %38
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %38
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %38
  %i.awk = trunc i64 %indvars.iv408.i to i32
  %i.awl = add i32 %.044131, %i.awk               ; 2 uses
  %i.awm = sdiv i32 %i.awl, %i.fr
  %i.awn = srem i32 %i.awl, %i.fr
  %i.awo = load i32, ptr %i.awf, align 4, !tbaa !9 ; 2 uses
  %i.awp = load i32, ptr %i.awg, align 4, !tbaa !9 ; 2 uses
  %i.awq = add nsw i32 %i.awp, %i.awo             ; 2 uses
  %i.awr = load i32, ptr %i.awh, align 4, !tbaa !9 ; 2 uses
  %i.aws = load i32, ptr %i.awi, align 4, !tbaa !9 ; 2 uses
  %i.awt = add nsw i32 %i.aws, %i.awr             ; 2 uses
  %i.awu = sub nsw i32 %i.awo, %i.awp
  %i.awv = sub nsw i32 %i.awr, %i.aws             ; 2 uses
  %i.aww = load i32, ptr %i.awj, align 4, !tbaa !9
  %i.awx = shl i32 %i.awu, 2                      ; 2 uses
  %i.awy = shl i32 %i.awt, 4
  %i.awz = shl i32 %i.awq, 2
  %i.axa = shl i32 %i.aww, 4
  %i.axb = shl i32 %i.awv, 5
  %i.axc = load i32, ptr %i.aq, align 4, !tbaa !10, !noalias !592
  %i.axd = sext i32 %i.axc to i64
  %i.axe = shl nsw i32 %i.awm, 2                  ; 5 uses
  %i.axf = sext i32 %i.axe to i64
  %i.axg = mul i64 %i.arv, %i.axf
  %i.axh = mul i64 %i.axg, %i.axd
  %i.axi = getelementptr inbounds nuw i8, ptr %i.asb, i64 %i.axh
  %i.axj = shl nsw i32 %i.awn, 2                  ; 4 uses
  %i.axk = sext i32 %i.axj to i64
  %i.axl = getelementptr inbounds [4 x i8], ptr %i.axi, i64 %i.axk ; 6 uses
  %i.axm = or disjoint i32 %i.axj, 1
  %i.axn = icmp slt i32 %i.axm, %i.fk             ; 4 uses
  %i.axo = or disjoint i32 %i.axj, 2
  %i.axp = icmp slt i32 %i.axo, %i.fk             ; 4 uses
  %i.axq = or disjoint i32 %i.axj, 3
  %i.axr = icmp slt i32 %i.axq, %i.fk             ; 4 uses
  %.not.us.i = icmp slt i32 %i.axe, %i.fl
  br i1 %.not.us.i, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %.preheader.us.i
  %i.axs = add nsw i32 %i.awt, %i.awq
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %38 ; 2 uses
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %38 ; 2 uses
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axu, i64 %38 ; 2 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %38 ; 2 uses
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.axw, i64 %38
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !9
  %i.axz = add nsw i32 %i.axs, %i.axy
  %i.aya = shl nsw i32 %i.axz, 2
  %i.ayb = add nsw i32 %i.avt, %i.avq
  %i.ayc = load i32, ptr %i.axw, align 4, !tbaa !9
  %i.ayd = add nsw i32 %i.ayb, %i.ayc             ; 2 uses
  %i.aye = add nsw i32 %i.aux, %i.auu
  %i.ayf = load i32, ptr %i.axv, align 4, !tbaa !9
  %i.ayg = add nsw i32 %i.aye, %i.ayf             ; 2 uses
  %i.ayh = add nsw i32 %i.aub, %i.aty
  %i.ayi = load i32, ptr %i.axu, align 4, !tbaa !9
  %i.ayj = add nsw i32 %i.ayh, %i.ayi             ; 2 uses
  %i.ayk = add nsw i32 %i.atf, %i.atc
  %i.ayl = load i32, ptr %i.axt, align 4, !tbaa !9
  %i.aym = add nsw i32 %i.ayk, %i.ayl             ; 2 uses
  %i.ayn = load i32, ptr %i.asc, align 4, !tbaa !9
  %i.ayo = add nsw i32 %i.aym, %i.ayj             ; 2 uses
  %i.ayp = add nsw i32 %i.ayg, %i.ayd             ; 2 uses
  %i.ayq = sub nsw i32 %i.aym, %i.ayj             ; 2 uses
  %i.ayr = sub nsw i32 %i.ayg, %i.ayd             ; 2 uses
  %i.ays = add i32 %i.asn, %i.ask
  %i.ayt = add i32 %i.ays, %i.ayp
  %i.ayu = add i32 %i.ayt, %i.ayn
  %i.ayv = add i32 %i.ayu, %i.ayo
  %i.ayw = shl nsw i32 %i.ayp, 2
  %i.ayx = add nsw i32 %i.ayo, %i.ayw
  %i.ayy = shl nsw i32 %i.ayr, 3
  %i.ayz = add i32 %i.ayy, %i.aya
  %i.aza = add i32 %i.ayz, %i.ayq
  %i.azb = sdiv i32 %i.ayv, 576
  %i.azc = sdiv i32 %i.ayx, 576
  %i.azd = sdiv i32 %i.aza, 576
  store i32 %i.azb, ptr %i.axl, align 4, !tbaa !9
  br i1 %i.axn, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.aze = shl nsw i32 %i.ayr, 1
  %i.azf = add nsw i32 %i.ayq, %i.aze
  %i.azg = sdiv i32 %i.azf, 576
  %i.azh = getelementptr inbounds nuw i8, ptr %i.axl, i64 4
  store i32 %i.azg, ptr %i.azh, align 4, !tbaa !9
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %i.axp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.azi = getelementptr inbounds nuw i8, ptr %i.axl, i64 8
  store i32 %i.azc, ptr %i.azi, align 4, !tbaa !9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  br i1 %i.axr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.azj = getelementptr inbounds nuw i8, ptr %i.axl, i64 12
  store i32 %i.azd, ptr %i.azj, align 4, !tbaa !9
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.azk = getelementptr inbounds [4 x i8], ptr %i.axl, i64 %i.ars
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.preheader.us.i
  %.1.us.i = phi ptr [ %i.axl, %.preheader.us.i ], [ %i.azk, %bb.bi ] ; 6 uses
  %i.azl = or disjoint i32 %i.axe, 1
  %.not.us.1.i = icmp slt i32 %i.azl, %i.fl
  br i1 %.not.us.1.i, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.azm = add nsw i32 %i.auf, %i.atj             ; 2 uses
  %i.azn = add nsw i32 %i.avx, %i.avb             ; 2 uses
  %i.azo = sub nsw i32 %i.atj, %i.auf             ; 2 uses
  %i.azp = sub nsw i32 %i.avb, %i.avx             ; 2 uses
  %i.azq = add i32 %i.asq, %i.aso
  %i.azr = add i32 %i.azq, %i.azm
  %i.azs = add i32 %i.azr, %i.azn
  %i.azt = shl nsw i32 %i.azn, 2
  %i.azu = add nsw i32 %i.azt, %i.azm
  %reass.add = add i32 %i.awv, %i.azp
  %reass.mul = shl i32 %reass.add, 3
  %i.azv = add i32 %i.awx, %i.azo
  %i.azw = add i32 %i.azv, %reass.mul
  %i.azx = sdiv i32 %i.azs, 576
  %i.azy = sdiv i32 %i.azu, 576
  %i.azz = sdiv i32 %i.azw, 576
  store i32 %i.azx, ptr %.1.us.i, align 4, !tbaa !9
  br i1 %i.axn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.baa = shl nsw i32 %i.azp, 1
  %i.bab = add nsw i32 %i.baa, %i.azo
  %i.bac = sdiv i32 %i.bab, 576
  %i.bad = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i32 %i.bac, ptr %i.bad, align 4, !tbaa !9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.axp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.bae = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store i32 %i.azy, ptr %i.bae, align 4, !tbaa !9
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  br i1 %i.axr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.baf = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store i32 %i.azz, ptr %i.baf, align 4, !tbaa !9
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.bag = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.ars
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bj
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.bj ], [ %i.bag, %bb.bq ] ; 6 uses
  %i.bah = or disjoint i32 %i.axe, 2
  %.not.us.2.i = icmp slt i32 %i.bah, %i.fl
  br i1 %.not.us.2.i, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %bb.br
  %i.bai = add nsw i32 %i.auh, %i.atl             ; 2 uses
  %i.baj = add nsw i32 %i.avz, %i.avd             ; 2 uses
  %i.bak = sub nsw i32 %i.atl, %i.auh             ; 2 uses
  %i.bal = sub nsw i32 %i.avd, %i.avz             ; 2 uses
  %i.bam = add i32 %i.asr, %i.ask
  %i.ban = add i32 %i.bam, %i.bai
  %i.bao = add i32 %i.ban, %i.baj
  %i.bap = shl nsw i32 %i.baj, 2
  %i.baq = add nsw i32 %i.bap, %i.bai
  %i.bar = shl nsw i32 %i.bal, 3
  %i.bas = add i32 %i.bar, %i.bak
  %i.bat = add i32 %i.bas, %i.awz
  %i.bau = add i32 %i.bat, %i.awy
  %i.bav = sdiv i32 %i.bao, 576
  %i.baw = sdiv i32 %i.baq, 576
  %i.bax = sdiv i32 %i.bau, 576
  store i32 %i.bav, ptr %.1.us.1.i, align 4, !tbaa !9
  br i1 %i.axn, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.bay = shl nsw i32 %i.bal, 1
  %i.baz = add nsw i32 %i.bay, %i.bak
  %i.bba = sdiv i32 %i.baz, 576
  %i.bbb = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store i32 %i.bba, ptr %i.bbb, align 4, !tbaa !9
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  br i1 %i.axp, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.bbc = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store i32 %i.baw, ptr %i.bbc, align 4, !tbaa !9
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br i1 %i.axr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.bbd = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store i32 %i.bax, ptr %i.bbd, align 4, !tbaa !9
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.bbe = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.ars
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.br
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.br ], [ %i.bbe, %bb.by ] ; 4 uses
  %i.bbf = or disjoint i32 %i.axe, 3
  %.not.us.3.i = icmp slt i32 %i.bbf, %i.fl
  br i1 %.not.us.3.i, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.bbg = add nsw i32 %i.aum, %i.atq             ; 2 uses
  %i.bbh = add nsw i32 %i.awe, %i.avi             ; 2 uses
  %i.bbi = sub nsw i32 %i.atq, %i.aum             ; 2 uses
  %i.bbj = sub nsw i32 %i.avi, %i.awe             ; 2 uses
  %i.bbk = add i32 %i.ass, %i.aso
  %i.bbl = add i32 %i.bbk, %i.asu
  %i.bbm = add i32 %i.bbl, %i.bbg
  %i.bbn = add i32 %i.bbm, %i.bbh
  %i.bbo = shl nsw i32 %i.bbh, 2
  %i.bbp = add nsw i32 %i.bbo, %i.bbg
  %i.bbq = shl nsw i32 %i.bbj, 3
  %i.bbr = add i32 %i.bbq, %i.bbi
  %i.bbs = add i32 %i.bbr, %i.awx
  %i.bbt = add i32 %i.bbs, %i.axb
  %i.bbu = add i32 %i.bbt, %i.axa
  %i.bbv = sdiv i32 %i.bbn, 576
  %i.bbw = sdiv i32 %i.bbp, 576
  %i.bbx = sdiv i32 %i.bbu, 576
  store i32 %i.bbv, ptr %.1.us.2.i, align 4, !tbaa !9
  br i1 %i.axn, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.bby = shl nsw i32 %i.bbj, 1
  %i.bbz = add nsw i32 %i.bby, %i.bbi
  %i.bca = sdiv i32 %i.bbz, 576
  %i.bcb = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store i32 %i.bca, ptr %i.bcb, align 4, !tbaa !9
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  br i1 %i.axp, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.bcc = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store i32 %i.bbw, ptr %i.bcc, align 4, !tbaa !9
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  br i1 %i.axr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.bcd = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store i32 %i.bbx, ptr %i.bcd, align 4, !tbaa !9
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.bz
  %indvars.iv.next409.i = add nuw nsw i64 %indvars.iv408.i, 1 ; 2 uses
  %exitcond412.not.i = icmp eq i64 %indvars.iv.next409.i, %33
  br i1 %exitcond412.not.i, label %._crit_edge.us298.i, label %.preheader.us.i, !llvm.loop !595

._crit_edge.us298.i:                              ; preds = %bb.cg
  %indvars.iv.next414.i = add nuw nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %exitcond417.not.i = icmp eq i64 %indvars.iv.next414.i, %i.fb
  br i1 %exitcond417.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us297.i, !llvm.loop !596

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.bce = phi i32 [ %i.bed, %.noexc52 ], [ %.pre138, %.noexc52.preheader ] ; 3 uses
  %i.bcf = phi i32 [ %i.bef, %.noexc52 ], [ %i.fi, %.noexc52.preheader ] ; 2 uses
  %.0130 = phi i32 [ %i.bee, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.bcg = sub nsw i32 %i.bcf, %.0130
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bce, i32 %i.bcg)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #3
  %i.bch = load i32, ptr %3, align 4, !tbaa !9
  %i.bci = sdiv i32 %i.ek, %i.bch
  %i.bcj = load ptr, ptr %10, align 8, !tbaa !32, !noalias !597
  %i.bck = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !597
  %i.bcl = sext i32 %i.bci to i64
  %i.bcm = mul i64 %i.bck, %i.bcl
  %i.bcn = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !597 ; 3 uses
  %i.bco = mul i64 %i.bcm, %i.bcn
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcj, i64 %i.bco
  %i.bcq = load i32, ptr %i.u, align 8, !tbaa !16, !noalias !597
  %i.bcr = load ptr, ptr %i.v, align 8, !tbaa !381, !noalias !597
  %i.bcs = sdiv i32 %.0130, %i.bce
  %i.bct = sext i32 %i.bcs to i64                 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !382
  store i64 %i.bcn, ptr %i.x, align 8, !tbaa !36
  store i32 %i.bcq, ptr %i.y, align 8, !tbaa !16
  store ptr %i.bcr, ptr %i.z, align 8, !tbaa !381
  store i32 2, ptr %i.aa, align 8, !tbaa !383
  %i.bcu = load <2 x i32>, ptr %i.q, align 4, !tbaa !9, !noalias !597
  %i.bcv = load i32, ptr %i.r, align 8, !tbaa !19, !noalias !597
  %i.bcw = load i32, ptr %i.q, align 4, !tbaa !10, !noalias !597
  %i.bcx = sext i32 %i.bcw to i64
  %i.bcy = sext i32 %i.bcv to i64
  %i.bcz = mul nsw i64 %i.bcy, %i.bcx             ; 2 uses
  %i.bda = mul i64 %i.bcn, %i.bcz
  %i.bdb = mul i64 %i.bda, %i.bct
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bcp, i64 %i.bdb
  store ptr %i.bdc, ptr %13, align 8, !tbaa !32
  %i.bdd = shufflevector <2 x i32> %i.bcu, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bde = shufflevector <4 x i32> %i.bdd, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bde, ptr %i.ab, align 4, !tbaa !9
  store i64 %i.bcz, ptr %i.ac, align 8, !tbaa !18, !alias.scope !600
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #3
  %i.bdf = load i32, ptr %7, align 4, !tbaa !9
  %i.bdg = sdiv i32 %.044131, %i.bdf
  %i.bdh = load ptr, ptr %11, align 8, !tbaa !32, !noalias !603
  %i.bdi = load i64, ptr %i.af, align 8, !tbaa !18, !noalias !603
  %i.bdj = sext i32 %i.bdg to i64
  %i.bdk = mul i64 %i.bdi, %i.bdj
  %i.bdl = load i64, ptr %i.ag, align 8, !tbaa !36, !noalias !603 ; 3 uses
  %i.bdm = mul i64 %i.bdk, %i.bdl
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdh, i64 %i.bdm
  %i.bdo = load i32, ptr %i.ah, align 8, !tbaa !16, !noalias !603
  %i.bdp = load ptr, ptr %i.ai, align 8, !tbaa !381, !noalias !603
  store ptr null, ptr %i.aj, align 8, !tbaa !382
  store i64 %i.bdl, ptr %i.ak, align 8, !tbaa !36
  store i32 %i.bdo, ptr %i.al, align 8, !tbaa !16
  store ptr %i.bdp, ptr %i.am, align 8, !tbaa !381
  store i32 2, ptr %i.an, align 8, !tbaa !383
  %i.bdq = load <2 x i32>, ptr %i.ad, align 4, !tbaa !9, !noalias !603
  %i.bdr = load i32, ptr %i.ae, align 8, !tbaa !19, !noalias !603
  %i.bds = load i32, ptr %i.ad, align 4, !tbaa !10, !noalias !603
  %i.bdt = sext i32 %i.bds to i64
  %i.bdu = sext i32 %i.bdr to i64
  %i.bdv = mul nsw i64 %i.bdu, %i.bdt             ; 2 uses
  %i.bdw = mul i64 %i.bdl, %i.bdv
  %i.bdx = mul i64 %i.bdw, %i.bct
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdn, i64 %i.bdx
  store ptr %i.bdy, ptr %14, align 8, !tbaa !32
  %i.bdz = shufflevector <2 x i32> %i.bdq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bea = shufflevector <4 x i32> %i.bdz, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bea, ptr %i.ao, align 4, !tbaa !9
  store i64 %i.bdv, ptr %i.ap, align 8, !tbaa !18, !alias.scope !606
  %i.beb = add nsw i32 %i.bce, %.0130
  %i.bec = icmp sge i32 %i.beb, %i.bcf
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.es, i32 noundef 36, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0130, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.bec)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #3
  %i.bed = load i32, ptr %9, align 4, !tbaa !9    ; 2 uses
  %i.bee = add nsw i32 %i.bed, %.0130             ; 2 uses
  %i.bef = load i32, ptr %8, align 4, !tbaa !9    ; 2 uses
  %i.beg = icmp slt i32 %i.bee, %i.bef
  br i1 %i.beg, label %.noexc52, label %._crit_edge, !llvm.loop !609

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us298.i, %.lr.ph295.i, %.preheader75.i
  %i.beh = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.bei = add nsw i32 %i.beh, %.044131           ; 2 uses
  %i.bej = load i32, ptr %6, align 4, !tbaa !9    ; 2 uses
  %i.bek = icmp slt i32 %i.bei, %i.bej
  br i1 %i.bek, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !610

._crit_edge136:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %bb.ch

bb.ch:                                            ; preds = %._crit_edge136, %bb.a
  ret void

bb.ci:                                            ; preds = %bb.c
  %i.bel = landingpad { ptr, i32 }
          catch ptr null
  %i.bem = extractvalue { ptr, i32 } %i.bel, 0
  call void @__clang_call_terminate(ptr %i.bem) #25
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.dy

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not260 = icmp sgt i32 %i.k, %i.j
  br i1 %.not260, label %._crit_edge263, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !9      ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge263

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.anl, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0261 = phi i32 [ %i.anm, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !9
  %i.s = shl nsw i32 %.0261, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.5
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.ani, %.thread.5 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.5 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !9
  %i.y = load i32, ptr %6, align 4, !tbaa !9      ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !9
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !9     ; 9 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !10, !noalias !611
  %i.ae = load ptr, ptr %7, align 8, !tbaa !32, !noalias !611
  %i.af = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !611
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !36, !noalias !611 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 2                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 6 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 2                    ; 6 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax ; 13 uses
  %i.az = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.ba = load i32, ptr %11, align 4, !tbaa !9    ; 61 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 5 uses
end_hunk_4
