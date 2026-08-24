Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_xop?download=true
inline.NumInlined: 70
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !231
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !233

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.df, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.df) #4
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !226 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dl, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !225 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !231
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !233

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dp, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dp) #4
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.dv = add nsw i32 %.069, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.069, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #24
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not151 = icmp sgt i32 %i.k, %i.j
  br i1 %.not151, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.b
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
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph154, %_ZN4ncnn3MatD2Ev.exit
  %.045152 = phi i32 [ %i.k, %.lr.ph154 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !9
  %i.at = mul nsw i32 %i.as, %.045152             ; 4 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.ad

.noexc46:                                         ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !32, !noalias !258
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !258
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !258
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !9
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !9
  %.sroa.speculated120 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 8 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.bh = icmp sgt i32 %.sroa.speculated120, 3
  %i.bi = and i32 %.sroa.speculated120, 2147483644
  %i.bj = zext nneg i32 %.sroa.speculated120 to i64
  %i.bk = sext i32 %.sroa.speculated120 to i64    ; 2 uses
  %i.bl = sext i32 %i.at to i64                   ; 2 uses
  %invariant.op.i = add nsw i64 %i.bk, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.bm = add nsw i32 %.045152, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.045152, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge155

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.sz, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.tb, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044150 = phi i32 [ 0, %.lr.ph ], [ %i.ta, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.bq = sub nsw i32 %i.bp, %.044150
  %.sroa.speculated116 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 18 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc52.preheader, label %._crit_edge

.noexc52.preheader:                               ; preds = %bb.d
  %.pre156 = load i32, ptr %9, align 4, !tbaa !9
  br label %.noexc52

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !10 ; 7 uses
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !19 ; 7 uses
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !16 ; 6 uses
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.bx = sext i32 %i.bv to i64
  %i.by = mul i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = sdiv i32 %i.bz, 2                       ; 6 uses
  %factor.op.mul381.i = shl i32 %.sroa.speculated116, 4 ; 4 uses
  br i1 %i.bh, label %.lr.ph384.i, label %.preheader372.i

.lr.ph384.i:                                      ; preds = %._crit_edge
  %i.cb = icmp sgt i32 %.sroa.speculated116, 0
  %i.cc = shl nsw i32 %.sroa.speculated116, 2
  %15 = zext nneg i32 %i.cc to i64
  %i.cd = shl nsw i32 %.sroa.speculated116, 3
  %16 = zext nneg i32 %i.cd to i64
  %i.ce = mul nsw i32 %.sroa.speculated116, 12
  %17 = zext nneg i32 %i.ce to i64
  %18 = zext nneg i32 %factor.op.mul381.i to i64  ; 12 uses
  %.idx.i = shl i64 %i.by, 3                      ; 2 uses
  %.idx300.i = mul i64 %i.by, 12                  ; 2 uses
  %i.cf = mul nsw i32 %i.bv, %i.bt
  %i.cg = sext i32 %i.cf to i64
  br i1 %i.cb, label %.lr.ph.us.preheader.i, label %.preheader372.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph384.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv435.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next436.i, %._crit_edge.us.i ] ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv435.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul381.i, %i.ch
  %i.ci = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cj = add i32 %i.at, %i.ch
  %i.ck = sdiv i32 %i.cj, %i.bv
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ci
  br label %_ZN4ncnn3MatD2Ev.exit304.us.i

_ZN4ncnn3MatD2Ev.exit304.us.i:                    ; preds = %bb.q, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %.idx494.i.a = shl nuw nsw i64 %indvars.iv.i, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx494.i.a ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %15 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %16 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %17 ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.co, align 16, !tbaa !46 ; 2 uses
  %i.cs = load <4 x i32>, ptr %i.cp, align 16, !tbaa !46 ; 2 uses
  %i.ct = load <4 x i32>, ptr %i.cq, align 16, !tbaa !46
  %i.cu = sub <4 x i32> %i.cr, %i.cs
  %i.cv = add <4 x i32> %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %18 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %18 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %18 ; 2 uses
  %i.cz = load <4 x i32>, ptr %i.cw, align 16, !tbaa !46 ; 2 uses
  %i.da = load <4 x i32>, ptr %i.cx, align 16, !tbaa !46 ; 2 uses
  %i.db = load <4 x i32>, ptr %i.cy, align 16, !tbaa !46
  %i.dc = sub <4 x i32> %i.cz, %i.da
  %i.dd = add <4 x i32> %i.dc, %i.db              ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %18 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %18 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %18 ; 2 uses
  %i.dh = load <4 x i32>, ptr %i.de, align 16, !tbaa !46 ; 2 uses
  %i.di = load <4 x i32>, ptr %i.df, align 16, !tbaa !46 ; 2 uses
  %i.dj = load <4 x i32>, ptr %i.dg, align 16, !tbaa !46
  %i.dk = sub <4 x i32> %i.dh, %i.di
  %i.dl = add <4 x i32> %i.dk, %i.dj              ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %18
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %18
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %18
  %i.dp = load <4 x i32>, ptr %i.dm, align 16, !tbaa !46 ; 2 uses
  %i.dq = load <4 x i32>, ptr %i.dn, align 16, !tbaa !46 ; 2 uses
  %i.dr = load <4 x i32>, ptr %i.do, align 16, !tbaa !46
  %i.ds = trunc i64 %indvars.iv.i to i32
  %i.dt = add i32 %.044150, %i.ds                 ; 2 uses
  %i.du = sdiv i32 %i.dt, %i.ca
  %i.dv = srem i32 %i.dt, %i.ca
  %i.dw = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !261
  %i.dx = load ptr, ptr %12, align 8, !tbaa !32, !noalias !261
  %i.dy = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !261
  %i.dz = mul i64 %i.dy, %i.cl
  %i.ea = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !261 ; 2 uses
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
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.el ; 9 uses
  %i.en = or disjoint i32 %i.ej, 1
  %i.eo = icmp slt i32 %i.en, %i.bt               ; 4 uses
  %.not299.us.i = icmp slt i32 %i.ee, %i.bu
  br i1 %.not299.us.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit304.us.i
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %18 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %18 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %18
  %i.es = load <4 x i32>, ptr %i.er, align 16, !tbaa !46
  %i.et = load <4 x i32>, ptr %i.eq, align 16, !tbaa !46
  %i.eu = add <4 x i32> %i.di, %i.dh
  %i.ev = add <4 x i32> %i.eu, %i.et              ; 2 uses
  %i.ew = load <4 x i32>, ptr %i.ep, align 16, !tbaa !46
  %i.ex = add <4 x i32> %i.da, %i.cz
  %i.ey = add <4 x i32> %i.ex, %i.ew              ; 2 uses
  %i.ez = load <4 x i32>, ptr %i.cn, align 16, !tbaa !46
  %i.fa = add <4 x i32> %i.cs, %i.cr
  %i.fb = add <4 x i32> %i.fa, %i.ez
  %i.fc = add <4 x i32> %i.fb, %i.ev
  %i.fd = add <4 x i32> %i.fc, %i.ey
  %i.fe = add <4 x i32> %i.dq, %i.dp
  %i.ff = add <4 x i32> %i.fe, %i.es
  %i.fg = sub <4 x i32> %i.ff, %i.ev
  %i.fh = add <4 x i32> %i.fg, %i.ey
  %i.fi = ashr <4 x i32> %i.fd, splat (i32 2)     ; 5 uses
  %i.fj = ashr <4 x i32> %i.fh, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.j [
    i32 4, label %bb.h
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.by ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx300.i ; 2 uses
  %.sroa.0343.0.vec.extract.us.i = extractelement <4 x i32> %i.fi, i64 0
  store i32 %.sroa.0343.0.vec.extract.us.i, ptr %i.em, align 4, !tbaa !9
  %.sroa.0343.4.vec.extract.us.i = extractelement <4 x i32> %i.fi, i64 1
  store i32 %.sroa.0343.4.vec.extract.us.i, ptr %i.fk, align 4, !tbaa !9
  %.sroa.0343.8.vec.extract.us.i = extractelement <4 x i32> %i.fi, i64 2
  store i32 %.sroa.0343.8.vec.extract.us.i, ptr %i.fl, align 4, !tbaa !9
  %.sroa.0343.12.vec.extract.us.i = extractelement <4 x i32> %i.fi, i64 3
  store i32 %.sroa.0343.12.vec.extract.us.i, ptr %i.fm, align 4, !tbaa !9
  br i1 %i.eo, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.sroa.7345.16.vec.extract.us.i = extractelement <4 x i32> %i.fj, i64 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %.sroa.7345.16.vec.extract.us.i, ptr %i.fn, align 4, !tbaa !9
  %.sroa.7345.20.vec.extract.us.i = extractelement <4 x i32> %i.fj, i64 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %.sroa.7345.20.vec.extract.us.i, ptr %i.fo, align 4, !tbaa !9
  %.sroa.7345.24.vec.extract.us.i = extractelement <4 x i32> %i.fj, i64 2
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %.sroa.7345.24.vec.extract.us.i, ptr %i.fp, align 4, !tbaa !9
  %.sroa.7345.28.vec.extract.us.i = extractelement <4 x i32> %i.fj, i64 3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 %.sroa.7345.28.vec.extract.us.i, ptr %i.fq, align 4, !tbaa !9
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  store <4 x i32> %i.fi, ptr %i.em, align 16, !tbaa !46
  br i1 %i.eo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <4 x i32> %i.fj, ptr %i.fr, align 16, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.cg
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4ncnn3MatD2Ev.exit304.us.i
  %.1286.us.i = phi ptr [ %i.em, %_ZN4ncnn3MatD2Ev.exit304.us.i ], [ %i.fs, %bb.j ] ; 7 uses
  %i.ft = or disjoint i32 %i.ee, 1
  %.not299.us.1.i = icmp slt i32 %i.ft, %i.bu
  br i1 %.not299.us.1.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.fu = add <4 x i32> %i.cv, %i.dd
  %i.fv = add <4 x i32> %i.fu, %i.dl
  %i.fw = add <4 x i32> %i.dd, %i.dp
  %i.fx = add <4 x i32> %i.dl, %i.dq
  %i.fy = sub <4 x i32> %i.fw, %i.fx
  %i.fz = add <4 x i32> %i.fy, %i.dr
  %i.ga = ashr <4 x i32> %i.fv, splat (i32 2)     ; 5 uses
  %i.gb = ashr <4 x i32> %i.fz, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.q [
    i32 4, label %bb.o
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.1286.us.i, i64 %i.by ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx.i ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx300.i ; 2 uses
  %.sroa.0343.0.vec.extract.us.1.i = extractelement <4 x i32> %i.ga, i64 0
  store i32 %.sroa.0343.0.vec.extract.us.1.i, ptr %.1286.us.i, align 4, !tbaa !9
  %.sroa.0343.4.vec.extract.us.1.i = extractelement <4 x i32> %i.ga, i64 1
  store i32 %.sroa.0343.4.vec.extract.us.1.i, ptr %i.gc, align 4, !tbaa !9
  %.sroa.0343.8.vec.extract.us.1.i = extractelement <4 x i32> %i.ga, i64 2
  store i32 %.sroa.0343.8.vec.extract.us.1.i, ptr %i.gd, align 4, !tbaa !9
  %.sroa.0343.12.vec.extract.us.1.i = extractelement <4 x i32> %i.ga, i64 3
  store i32 %.sroa.0343.12.vec.extract.us.1.i, ptr %i.ge, align 4, !tbaa !9
  br i1 %i.eo, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.7345.16.vec.extract.us.1.i = extractelement <4 x i32> %i.gb, i64 0
  %i.gf = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 4
  store i32 %.sroa.7345.16.vec.extract.us.1.i, ptr %i.gf, align 4, !tbaa !9
  %.sroa.7345.20.vec.extract.us.1.i = extractelement <4 x i32> %i.gb, i64 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %.sroa.7345.20.vec.extract.us.1.i, ptr %i.gg, align 4, !tbaa !9
  %.sroa.7345.24.vec.extract.us.1.i = extractelement <4 x i32> %i.gb, i64 2
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i32 %.sroa.7345.24.vec.extract.us.1.i, ptr %i.gh, align 4, !tbaa !9
  %.sroa.7345.28.vec.extract.us.1.i = extractelement <4 x i32> %i.gb, i64 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 %.sroa.7345.28.vec.extract.us.1.i, ptr %i.gi, align 4, !tbaa !9
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  store <4 x i32> %i.ga, ptr %.1286.us.i, align 16, !tbaa !46
  br i1 %i.eo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gj = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 16
  store <4 x i32> %i.gb, ptr %i.gj, align 16, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit304.us.i, !llvm.loop !264

._crit_edge.us.i:                                 ; preds = %bb.q
  %indvars.iv.next436.i = add nuw nsw i64 %indvars.iv435.i, 4 ; 3 uses
  %i.gk = or disjoint i64 %indvars.iv.next436.i, 3
  %i.gl = icmp samesign ult i64 %i.gk, %i.bj
  br i1 %i.gl, label %.lr.ph.us.i, label %.preheader372.loopexit.i, !llvm.loop !265

.preheader372.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.gm = trunc nuw nsw i64 %indvars.iv.next436.i to i32
  br label %.preheader372.i

.preheader372.i:                                  ; preds = %.lr.ph384.i, %.preheader372.loopexit.i, %._crit_edge
  %.0287.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.gm, %.preheader372.loopexit.i ], [ %i.bi, %.lr.ph384.i ] ; 6 uses
  %i.gn = or disjoint i32 %.0287.lcssa.i, 1
  %i.go = icmp slt i32 %i.gn, %.sroa.speculated120
  br i1 %i.go, label %.lr.ph395.i, label %.preheader.i

.lr.ph395.i:                                      ; preds = %.preheader372.i
  %i.gp = icmp sgt i32 %.sroa.speculated116, 0
  %i.gq = shl nsw i32 %.sroa.speculated116, 1
  %19 = zext nneg i32 %i.gq to i64
  %i.gr = shl nsw i32 %.sroa.speculated116, 2
  %20 = zext nneg i32 %i.gr to i64
  %i.gs = mul nsw i32 %.sroa.speculated116, 6
  %21 = zext nneg i32 %i.gs to i64
  %i.gt = shl nsw i32 %.sroa.speculated116, 3
  %22 = zext nneg i32 %i.gt to i64                ; 12 uses
  %i.gu = sext i32 %i.bt to i64
  br i1 %i.gp, label %.lr.ph395.split.us.i, label %.lr.ph395.split.preheader.i

.lr.ph395.split.preheader.i:                      ; preds = %.lr.ph395.i
  %i.gv = add i32 %.0287.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %i.gv)
  %reass.sub = sub i32 %smax.i, %.0287.lcssa.i
  %i.gw = and i32 %reass.sub, -2
  %i.gx = add i32 %.0287.lcssa.i, %i.gw
  br label %.preheader.i

.lr.ph395.split.us.i:                             ; preds = %.lr.ph395.i
  %i.gy = load ptr, ptr %12, align 8, !tbaa !32, !noalias !266
  %i.gz = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !266
  %i.ha = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !266 ; 2 uses
  %factor.op.mul.i = mul i64 %i.ha, %i.gz
  %i.hb = sext i32 %.0287.lcssa.i to i64
  %wide.trip.count448.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us398.i

.lr.ph.us398.i:                                   ; preds = %._crit_edge.us399.i, %.lr.ph395.split.us.i
  %indvars.iv450.i = phi i64 [ %indvars.iv.next451.i, %._crit_edge.us399.i ], [ %i.hb, %.lr.ph395.split.us.i ] ; 3 uses
  %i.hc = trunc nsw i64 %indvars.iv450.i to i32
  %factor.op.mul.reass.us397.i = mul i32 %factor.op.mul381.i, %i.hc
  %i.hd = sext i32 %factor.op.mul.reass.us397.i to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.hd
  %i.hf = add nsw i64 %indvars.iv450.i, %i.bl
  %.reass.i = mul i64 %factor.op.mul.i, %i.hf
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit303.us.i

_ZN4ncnn3MatD2Ev.exit303.us.i:                    ; preds = %bb.x, %.lr.ph.us398.i
  %indvars.iv445.i = phi i64 [ 0, %.lr.ph.us398.i ], [ %indvars.iv.next446.i, %bb.x ] ; 3 uses
  %.idx495.i = shl nuw nsw i64 %indvars.iv445.i, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx495.i ; 6 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %19 ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %20 ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %21 ; 3 uses
  %i.hl = load i32, ptr %i.hi, align 4, !tbaa !9  ; 2 uses
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !9  ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !9  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !9  ; 2 uses
  %i.hr = sub i32 %i.hl, %i.hm
  %i.hs = load i32, ptr %i.hk, align 4, !tbaa !9
  %i.ht = add nsw i32 %i.hr, %i.hs
  %i.hu = sub i32 %i.ho, %i.hq
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !9
  %i.hx = add nsw i32 %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %22 ; 3 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %22 ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %22 ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %22 ; 3 uses
  %i.ic = load i32, ptr %i.hy, align 4, !tbaa !9
  %i.id = load i32, ptr %i.hz, align 4, !tbaa !9  ; 2 uses
  %i.ie = add nsw i32 %i.id, %i.ic
  %i.if = load i32, ptr %i.ia, align 4, !tbaa !9  ; 2 uses
  %i.ig = add nsw i32 %i.ie, %i.if                ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !9
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !9  ; 2 uses
  %i.il = add nsw i32 %i.ik, %i.ii
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !9  ; 2 uses
  %i.io = add nsw i32 %i.il, %i.in                ; 2 uses
  %i.ip = sub i32 %i.id, %i.if
  %i.iq = load i32, ptr %i.ib, align 4, !tbaa !9
  %i.ir = add nsw i32 %i.iq, %i.ip                ; 2 uses
  %i.is = sub i32 %i.ik, %i.in
  %i.it = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !9
  %i.iv = add nsw i32 %i.iu, %i.is                ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %22 ; 3 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %22 ; 3 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %22 ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %22 ; 3 uses
  %i.ja = load i32, ptr %i.iw, align 4, !tbaa !9
  %i.jb = load i32, ptr %i.ix, align 4, !tbaa !9  ; 2 uses
  %i.jc = add nsw i32 %i.jb, %i.ja
  %i.jd = load i32, ptr %i.iy, align 4, !tbaa !9  ; 2 uses
  %i.je = add nsw i32 %i.jc, %i.jd                ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !9
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !9  ; 2 uses
  %i.jj = add nsw i32 %i.ji, %i.jg
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !9  ; 2 uses
  %i.jm = add nsw i32 %i.jj, %i.jl                ; 2 uses
  %i.jn = sub i32 %i.jb, %i.jd
  %i.jo = load i32, ptr %i.iz, align 4, !tbaa !9
  %i.jp = add nsw i32 %i.jo, %i.jn                ; 2 uses
  %i.jq = sub i32 %i.ji, %i.jl
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !9
  %i.jt = add nsw i32 %i.js, %i.jq                ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %22 ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %22 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %22 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %22 ; 2 uses
  %i.jy = load i32, ptr %i.ju, align 4, !tbaa !9
  %i.jz = load i32, ptr %i.jv, align 4, !tbaa !9  ; 2 uses
  %i.ka = load i32, ptr %i.jw, align 4, !tbaa !9  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !9
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !9  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !9  ; 2 uses
  %i.kh = load i32, ptr %i.jx, align 4, !tbaa !9
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !9
  %i.kk = trunc i64 %indvars.iv445.i to i32
  %i.kl = add i32 %.044150, %i.kk                 ; 2 uses
  %i.km = sdiv i32 %i.kl, %i.ca
  %i.kn = srem i32 %i.kl, %i.ca
  %i.ko = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !266
  %i.kp = sext i32 %i.ko to i64
  %i.kq = shl nsw i32 %i.km, 1                    ; 3 uses
  %i.kr = sext i32 %i.kq to i64
  %i.ks = mul i64 %i.ha, %i.kr
  %i.kt = mul i64 %i.ks, %i.kp
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.kt
  %i.kv = shl nsw i32 %i.kn, 1                    ; 2 uses
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.kw ; 5 uses
  %i.ky = or disjoint i32 %i.kv, 1
  %i.kz = icmp slt i32 %i.ky, %i.bt               ; 2 uses
  %.not298.us.i = icmp slt i32 %i.kq, %i.bu
  br i1 %.not298.us.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit303.us.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !9
  %i.lc = load i32, ptr %i.hh, align 4, !tbaa !9
  %i.ld = add i32 %i.hm, %i.hl
  %i.le = add i32 %i.ld, %i.ig
  %i.lf = add i32 %i.le, %i.je
  %i.lg = add i32 %i.lf, %i.lc
  %i.lh = add i32 %i.hq, %i.ho
  %i.li = add i32 %i.lh, %i.io
  %i.lj = add i32 %i.li, %i.jm
  %i.lk = add i32 %i.lj, %i.lb
  %i.ll = ashr i32 %i.lg, 2
  %i.lm = ashr i32 %i.lk, 2
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.by ; 2 uses
  store i32 %i.ll, ptr %i.kx, align 4, !tbaa !9
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !9
  br i1 %i.kz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.lo = sub i32 %i.io, %i.jm
  %i.lp = add i32 %i.lo, %i.kc
  %i.lq = add i32 %i.lp, %i.ke
  %i.lr = add i32 %i.lq, %i.kg
  %i.ls = ashr i32 %i.lr, 2
  %i.lt = sub i32 %i.ig, %i.je
  %i.lu = add i32 %i.lt, %i.jy
  %i.lv = add i32 %i.lu, %i.jz
  %i.lw = add i32 %i.lv, %i.ka
  %i.lx = ashr i32 %i.lw, 2
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !9
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  store i32 %i.ls, ptr %i.lz, align 4, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.gu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit303.us.i
  %.1277.us.i = phi ptr [ %i.kx, %_ZN4ncnn3MatD2Ev.exit303.us.i ], [ %i.ma, %bb.t ] ; 3 uses
  %i.mb = or disjoint i32 %i.kq, 1
  %.not298.us.1.i = icmp slt i32 %i.mb, %i.bu
  br i1 %.not298.us.1.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.mc = add nsw i32 %i.ht, %i.ir
  %i.md = add nsw i32 %i.mc, %i.jp
  %i.me = add nsw i32 %i.hx, %i.iv
  %i.mf = add nsw i32 %i.me, %i.jt
  %i.mg = ashr i32 %i.md, 2
  %i.mh = ashr i32 %i.mf, 2
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.1277.us.i, i64 %i.by ; 2 uses
  store i32 %i.mg, ptr %.1277.us.i, align 4, !tbaa !9
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !9
  br i1 %i.kz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.mj = add i32 %i.iv, %i.ke
  %i.mk = add i32 %i.jt, %i.kg
  %i.ml = sub i32 %i.mj, %i.mk
  %i.mm = add i32 %i.ml, %i.kj
  %i.mn = ashr i32 %i.mm, 2
  %i.mo = add i32 %i.ir, %i.jz
  %i.mp = add i32 %i.jp, %i.ka
  %i.mq = sub i32 %i.mo, %i.mp
  %i.mr = add i32 %i.mq, %i.kh
  %i.ms = ashr i32 %i.mr, 2
  %i.mt = getelementptr inbounds nuw i8, ptr %.1277.us.i, i64 4
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !9
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %i.mn, ptr %i.mu, align 4, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %indvars.iv.next446.i = add nuw nsw i64 %indvars.iv445.i, 1 ; 2 uses
  %exitcond449.not.i = icmp eq i64 %indvars.iv.next446.i, %wide.trip.count448.i
  br i1 %exitcond449.not.i, label %._crit_edge.us399.i, label %_ZN4ncnn3MatD2Ev.exit303.us.i, !llvm.loop !269

._crit_edge.us399.i:                              ; preds = %bb.x
  %indvars.iv.next451.i = add nuw nsw i64 %indvars.iv450.i, 2 ; 3 uses
  %i.mv = icmp slt i64 %indvars.iv.next451.i, %invariant.op.i
  br i1 %i.mv, label %.lr.ph.us398.i, label %.preheader.loopexit.i, !llvm.loop !270

.preheader.loopexit.i:                            ; preds = %._crit_edge.us399.i
  %i.mw = trunc nsw i64 %indvars.iv.next451.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph395.split.preheader.i, %.preheader372.i
  %.1288.lcssa.i = phi i32 [ %.0287.lcssa.i, %.preheader372.i ], [ %i.mw, %.preheader.loopexit.i ], [ %i.gx, %.lr.ph395.split.preheader.i ] ; 2 uses
  %i.mx = icmp slt i32 %.1288.lcssa.i, %.sroa.speculated120
  br i1 %i.mx, label %.lr.ph413.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph413.i:                                      ; preds = %.preheader.i
  %i.my = icmp sgt i32 %.sroa.speculated116, 0
  %23 = zext i32 %.sroa.speculated116 to i64      ; 2 uses
  %i.mz = shl nsw i32 %.sroa.speculated116, 1
  %24 = zext nneg i32 %i.mz to i64
  %i.na = mul nsw i32 %.sroa.speculated116, 3
  %25 = zext nneg i32 %i.na to i64
  %i.nb = shl nsw i32 %.sroa.speculated116, 2
  %26 = zext nneg i32 %i.nb to i64                ; 12 uses
  %i.nc = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.my, label %.lr.ph413.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph413.split.us.i:                             ; preds = %.lr.ph413.i
  %i.nd = load ptr, ptr %12, align 8, !tbaa !32, !noalias !271
  %i.ne = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !271
  %i.nf = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !271 ; 2 uses
  %factor.op.mul423.i = mul i64 %i.nf, %i.ne
  %i.ng = sext i32 %.1288.lcssa.i to i64
  br label %.lr.ph.us421.i

.lr.ph.us421.i:                                   ; preds = %._crit_edge.us422.i, %.lr.ph413.split.us.i
  %indvars.iv468.i = phi i64 [ %indvars.iv.next469.i, %._crit_edge.us422.i ], [ %i.ng, %.lr.ph413.split.us.i ] ; 3 uses
  %i.nh = trunc nsw i64 %indvars.iv468.i to i32
  %factor.op.mul408.reass.us.i = mul i32 %factor.op.mul381.i, %i.nh
  %i.ni = sext i32 %factor.op.mul408.reass.us.i to i64
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ni
  %i.nk = add nsw i64 %indvars.iv468.i, %i.bl
  %.reass424.i = mul i64 %factor.op.mul423.i, %i.nk
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.reass424.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us419.i, %.lr.ph.us421.i
  %indvars.iv463.i = phi i64 [ 0, %.lr.ph.us421.i ], [ %indvars.iv.next464.i, %.split.us419.i ] ; 3 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv463.i ; 5 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %23 ; 2 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %24 ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %25 ; 2 uses
  %i.nq = load i32, ptr %i.nm, align 4, !tbaa !9
  %i.nr = load i32, ptr %i.nn, align 4, !tbaa !9  ; 2 uses
  %i.ns = add nsw i32 %i.nr, %i.nq
  %i.nt = load i32, ptr %i.no, align 4, !tbaa !9  ; 2 uses
  %i.nu = add nsw i32 %i.ns, %i.nt                ; 2 uses
  %i.nv = sub i32 %i.nr, %i.nt
  %i.nw = load i32, ptr %i.np, align 4, !tbaa !9
  %i.nx = add nsw i32 %i.nv, %i.nw                ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %26 ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %26 ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %26 ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %26 ; 2 uses
  %i.oc = load i32, ptr %i.ny, align 4, !tbaa !9
  %i.od = load i32, ptr %i.nz, align 4, !tbaa !9  ; 2 uses
  %i.oe = add nsw i32 %i.od, %i.oc
  %i.of = load i32, ptr %i.oa, align 4, !tbaa !9  ; 2 uses
  %i.og = add nsw i32 %i.oe, %i.of                ; 3 uses
  %i.oh = sub i32 %i.od, %i.of
  %i.oi = load i32, ptr %i.ob, align 4, !tbaa !9
  %i.oj = add nsw i32 %i.oh, %i.oi                ; 3 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %26 ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %26 ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %26 ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %26 ; 2 uses
  %i.oo = load i32, ptr %i.ok, align 4, !tbaa !9
  %i.op = load i32, ptr %i.ol, align 4, !tbaa !9  ; 2 uses
  %i.oq = add nsw i32 %i.op, %i.oo
  %i.or = load i32, ptr %i.om, align 4, !tbaa !9  ; 2 uses
  %i.os = add nsw i32 %i.oq, %i.or                ; 3 uses
  %i.ot = sub i32 %i.op, %i.or
  %i.ou = load i32, ptr %i.on, align 4, !tbaa !9
  %i.ov = add nsw i32 %i.ot, %i.ou                ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %26
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %26
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %26
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %26
  %i.pa = load i32, ptr %i.ow, align 4, !tbaa !9
  %i.pb = load i32, ptr %i.ox, align 4, !tbaa !9  ; 2 uses
  %i.pc = load i32, ptr %i.oy, align 4, !tbaa !9  ; 2 uses
  %i.pd = load i32, ptr %i.oz, align 4, !tbaa !9
  %i.pe = trunc i64 %indvars.iv463.i to i32
  %i.pf = add i32 %.044150, %i.pe                 ; 2 uses
  %i.pg = sdiv i32 %i.pf, %i.ca
  %i.ph = srem i32 %i.pf, %i.ca
  %i.pi = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !271
  %i.pj = sext i32 %i.pi to i64
  %i.pk = shl nsw i32 %i.pg, 1                    ; 4 uses
  %i.pl = sext i32 %i.pk to i64
  %i.pm = mul i64 %i.nf, %i.pl
  %i.pn = mul i64 %i.pm, %i.pj
  %i.po = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.pn
  %i.pp = shl nsw i32 %i.ph, 1                    ; 2 uses
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.pq ; 7 uses
  %i.ps = or disjoint i32 %i.pp, 1
  %i.pt = icmp slt i32 %i.ps, %i.bt
  %.fr.us.i = freeze i1 %i.pt
  %.not.us.us.i = icmp slt i32 %i.pk, %i.bu       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.y:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i
  %i.pu = add nsw i32 %i.og, %i.nu
  %i.pv = add nsw i32 %i.pu, %i.os
  %i.pw = ashr i32 %i.pv, 2
  store i32 %i.pw, ptr %i.pr, align 4, !tbaa !9
  %i.px = getelementptr inbounds [4 x i8], ptr %i.pr, i64 %i.nc
  br label %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i

_ZN4ncnn3MatD2Ev.exit.split.us420.1.i:            ; preds = %bb.y, %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i
  %.1.us418.i = phi ptr [ %i.pr, %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i ], [ %i.px, %bb.y ]
  %i.py = or disjoint i32 %i.pk, 1
  %.not.us417.1.i = icmp slt i32 %i.py, %i.bu
  br i1 %.not.us417.1.i, label %bb.z, label %.split.us419.i

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i
  %i.pz = add nsw i32 %i.oj, %i.nx
  %i.qa = add nsw i32 %i.pz, %i.ov
  %i.qb = ashr i32 %i.qa, 2
  store i32 %i.qb, ptr %.1.us418.i, align 4, !tbaa !9
  br label %.split.us419.i

.split.us419.i:                                   ; preds = %bb.ab, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.z, %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i
  %indvars.iv.next464.i = add nuw nsw i64 %indvars.iv463.i, 1 ; 2 uses
  %exitcond467.not.i = icmp eq i64 %indvars.iv.next464.i, %23
  br i1 %exitcond467.not.i, label %._crit_edge.us422.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !274

bb.aa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.qc = add nsw i32 %i.og, %i.nu
  %i.qd = add nsw i32 %i.qc, %i.os
  %i.qe = ashr i32 %i.qd, 2
  store i32 %i.qe, ptr %i.pr, align 4, !tbaa !9
  %i.qf = sub i32 %i.og, %i.os
  %i.qg = add i32 %i.qf, %i.pa
  %i.qh = add i32 %i.qg, %i.pb
  %i.qi = add i32 %i.qh, %i.pc
  %i.qj = ashr i32 %i.qi, 2
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !9
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.pr, i64 %i.nc
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.pr, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.ql, %bb.aa ] ; 2 uses
  %i.qm = or disjoint i32 %i.pk, 1
  %.not.us.us.1.i = icmp slt i32 %i.qm, %i.bu
  br i1 %.not.us.us.1.i, label %bb.ab, label %.split.us419.i

bb.ab:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.qn = add nsw i32 %i.oj, %i.nx
  %i.qo = add nsw i32 %i.qn, %i.ov
  %i.qp = ashr i32 %i.qo, 2
  store i32 %i.qp, ptr %.1.us.us.i, align 4, !tbaa !9
  %i.qq = add i32 %i.oj, %i.pb
  %i.qr = add i32 %i.ov, %i.pc
  %i.qs = sub i32 %i.qq, %i.qr
  %i.qt = add i32 %i.qs, %i.pd
  %i.qu = ashr i32 %i.qt, 2
  %i.qv = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.qu, ptr %i.qv, align 4, !tbaa !9
  br label %.split.us419.i

._crit_edge.us422.i:                              ; preds = %.split.us419.i
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond472.not.i = icmp eq i64 %indvars.iv.next469.i, %i.bk
  br i1 %exitcond472.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us421.i, !llvm.loop !275

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.qw = phi i32 [ %i.sv, %.noexc52 ], [ %.pre156, %.noexc52.preheader ] ; 3 uses
  %i.qx = phi i32 [ %i.sx, %.noexc52 ], [ %i.br, %.noexc52.preheader ] ; 2 uses
  %.0149 = phi i32 [ %i.sw, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.qy = sub nsw i32 %i.qx, %.0149
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.qw, i32 %i.qy)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.qz = load i32, ptr %3, align 4, !tbaa !9
  %i.ra = sdiv i32 %i.at, %i.qz
  %i.rb = load ptr, ptr %10, align 8, !tbaa !32, !noalias !276
  %i.rc = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !276
  %i.rd = sext i32 %i.ra to i64
  %i.re = mul i64 %i.rc, %i.rd
  %i.rf = load i64, ptr %i.q, align 8, !tbaa !36, !noalias !276 ; 3 uses
  %i.rg = mul i64 %i.re, %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rg
  %i.ri = load i32, ptr %i.r, align 8, !tbaa !16, !noalias !276
  %i.rj = load ptr, ptr %i.s, align 8, !tbaa !225, !noalias !276
  %i.rk = sdiv i32 %.0149, %i.qw
  %i.rl = sext i32 %i.rk to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !226
  store i64 %i.rf, ptr %i.u, align 8, !tbaa !36
  store i32 %i.ri, ptr %i.v, align 8, !tbaa !16
  store ptr %i.rj, ptr %i.w, align 8, !tbaa !225
  store i32 2, ptr %i.x, align 8, !tbaa !227
  %i.rm = load <2 x i32>, ptr %i.n, align 4, !tbaa !9, !noalias !276
  %i.rn = load i32, ptr %i.o, align 8, !tbaa !19, !noalias !276
  %i.ro = load i32, ptr %i.n, align 4, !tbaa !10, !noalias !276
  %i.rp = sext i32 %i.ro to i64
  %i.rq = sext i32 %i.rn to i64
  %i.rr = mul nsw i64 %i.rq, %i.rp                ; 2 uses
  %i.rs = mul i64 %i.rf, %i.rr
  %i.rt = mul i64 %i.rs, %i.rl
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rt
  store ptr %i.ru, ptr %13, align 8, !tbaa !32
  %i.rv = shufflevector <2 x i32> %i.rm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rw = shufflevector <4 x i32> %i.rv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.rw, ptr %i.y, align 4, !tbaa !9
  store i64 %i.rr, ptr %i.z, align 8, !tbaa !18, !alias.scope !279
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.rx = load i32, ptr %7, align 4, !tbaa !9
  %i.ry = sdiv i32 %.044150, %i.rx
  %i.rz = load ptr, ptr %11, align 8, !tbaa !32, !noalias !282
  %i.sa = load i64, ptr %i.ac, align 8, !tbaa !18, !noalias !282
  %i.sb = sext i32 %i.ry to i64
  %i.sc = mul i64 %i.sa, %i.sb
  %i.sd = load i64, ptr %i.ad, align 8, !tbaa !36, !noalias !282 ; 3 uses
  %i.se = mul i64 %i.sc, %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.se
  %i.sg = load i32, ptr %i.ae, align 8, !tbaa !16, !noalias !282
  %i.sh = load ptr, ptr %i.af, align 8, !tbaa !225, !noalias !282
  store ptr null, ptr %i.ag, align 8, !tbaa !226
  store i64 %i.sd, ptr %i.ah, align 8, !tbaa !36
  store i32 %i.sg, ptr %i.ai, align 8, !tbaa !16
  store ptr %i.sh, ptr %i.aj, align 8, !tbaa !225
  store i32 2, ptr %i.ak, align 8, !tbaa !227
  %i.si = load <2 x i32>, ptr %i.aa, align 4, !tbaa !9, !noalias !282
  %i.sj = load i32, ptr %i.ab, align 8, !tbaa !19, !noalias !282
  %i.sk = load i32, ptr %i.aa, align 4, !tbaa !10, !noalias !282
  %i.sl = sext i32 %i.sk to i64
  %i.sm = sext i32 %i.sj to i64
  %i.sn = mul nsw i64 %i.sm, %i.sl                ; 2 uses
  %i.so = mul i64 %i.sd, %i.sn
  %i.sp = mul i64 %i.so, %i.rl
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.sp
  store ptr %i.sq, ptr %14, align 8, !tbaa !32
  %i.sr = shufflevector <2 x i32> %i.si, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ss = shufflevector <4 x i32> %i.sr, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ss, ptr %i.al, align 4, !tbaa !9
  store i64 %i.sn, ptr %i.am, align 8, !tbaa !18, !alias.scope !285
  %i.st = add nsw i32 %i.qw, %.0149
  %i.su = icmp sge i32 %i.st, %i.qx
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated120, i32 noundef %.sroa.speculated116, i32 noundef %.0149, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.su)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  %i.sv = load i32, ptr %9, align 4, !tbaa !9     ; 2 uses
  %i.sw = add nsw i32 %i.sv, %.0149               ; 2 uses
  %i.sx = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.sy = icmp slt i32 %i.sw, %i.sx
  br i1 %i.sy, label %.noexc52, label %._crit_edge, !llvm.loop !288

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us422.i, %.lr.ph413.i, %.preheader.i
  %i.sz = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.ta = add nsw i32 %i.sz, %.044150             ; 2 uses
  %i.tb = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.tc = icmp slt i32 %i.ta, %i.tb
  br i1 %i.tc, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !289

._crit_edge155:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge155, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.c
  %i.td = landingpad { ptr, i32 }
          catch ptr null
  %i.te = extractvalue { ptr, i32 } %i.td, 0
  call void @__clang_call_terminate(ptr %i.te) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %3, 3
  br i1 %i.a, label %.preheader211.lr.ph, label %.preheader203

.preheader211.lr.ph:                              ; preds = %bb.a
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
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
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
  %lcmp.mod1389 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1398 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1393.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1397 = trunc i32 %i.u to i1
  %xtraiter1402 = and i32 %i.u, 3                 ; 3 uses
  %i.z = icmp ult i32 %i.i, 6
  %unroll_iter1407 = and i32 %i.u, -4
  %lcmp.mod1403.not = icmp eq i32 %xtraiter1402, 0
  %lcmp.mod1406 = icmp ne i32 %xtraiter1402, 0
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.lr.ph, %bb.b
  %indvars.iv749 = phi i64 [ 0, %.preheader211.lr.ph ], [ %indvars.iv.next750, %bb.b ] ; 2 uses
  %.0622360 = phi ptr [ %.0.val, %.preheader211.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.aa = mul nsw i64 %indvars.iv749, %i.s
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #24
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [4 x i32]]], align 16   ; 27 uses
  %i.b = alloca [4 x [6 x [2 x i32]]], align 16   ; 50 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 0, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %i.i, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 1, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 0, ptr %i.f, align 4, !tbaa !9
  %i.j = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, i32 1, i32 1)
  %i.k = load i32, ptr %i.d, align 4, !tbaa !9
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !9
  %i.m = load i32, ptr %i.c, align 4, !tbaa !9    ; 2 uses
  %.not132 = icmp sgt i32 %i.m, %i.l
  br i1 %.not132, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph135, %_ZN4ncnn3MatD2Ev.exit
  %.045133 = phi i32 [ %i.m, %.lr.ph135 ], [ %i.ef, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.dl = load i32, ptr %3, align 4, !tbaa !9
  %i.dm = mul nsw i32 %i.dl, %.045133             ; 4 uses
  %i.dn = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.bl

.noexc46:                                         ; preds = %bb.c
  %i.do = load ptr, ptr %4, align 8, !tbaa !32, !noalias !393
  %i.dp = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !393
  %i.dq = sext i32 %i.dn to i64
  %i.dr = mul i64 %i.dp, %i.dq
  %i.ds = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !393
  %i.dt = mul i64 %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dt ; 4 uses
  %i.dv = load i32, ptr %5, align 4, !tbaa !9
  %i.dw = sub nsw i32 %i.dv, %i.dm
  %i.dx = load i32, ptr %3, align 4, !tbaa !9
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.dx, i32 %i.dw) ; 8 uses
  %i.dy = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.ea = icmp sgt i32 %.sroa.speculated121, 3
  %i.eb = and i32 %.sroa.speculated121, 2147483644
  %i.ec = zext nneg i32 %.sroa.speculated121 to i64
  %i.ed = sext i32 %.sroa.speculated121 to i64    ; 2 uses
  %i.ee = sext i32 %i.dm to i64                   ; 2 uses
  %invariant.op.i = add nsw i64 %i.ed, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.ef = add nsw i32 %.045133, 1
  %i.eg = load i32, ptr %i.d, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.045133, %i.eg
  br i1 %.not.not, label %bb.c, label %._crit_edge136

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.eh = phi i32 [ %.pre, %.lr.ph ], [ %i.arx, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.ei = phi i32 [ %i.dy, %.lr.ph ], [ %i.arz, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044131 = phi i32 [ 0, %.lr.ph ], [ %i.ary, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.ej = sub nsw i32 %i.ei, %.044131
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.eh, i32 %i.ej) ; 25 uses
  %i.ek = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.noexc52.preheader, label %._crit_edge

.noexc52.preheader:                               ; preds = %bb.d
  %.pre137 = load i32, ptr %9, align 4, !tbaa !9
  br label %.noexc52

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.em = load i32, ptr %i.ap, align 4, !tbaa !10 ; 13 uses
  %i.en = load i32, ptr %i.aq, align 8, !tbaa !19 ; 6 uses
  %i.eo = load i32, ptr %i.ar, align 8, !tbaa !16 ; 5 uses
  %i.ep = load i64, ptr %i.as, align 8, !tbaa !18
  %i.eq = sext i32 %i.eo to i64
  %i.er = mul i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = add nsw i32 %i.em, 3
  %i.et = sdiv i32 %i.es, 4                       ; 6 uses
  %factor.op.mul74.i = mul i32 %.sroa.speculated117, 36 ; 3 uses
  br i1 %i.ea, label %.lr.ph77.i, label %.preheader53.i

.lr.ph77.i:                                       ; preds = %._crit_edge
  %i.eu = icmp sgt i32 %.sroa.speculated117, 0
  %i.ev = shl nsw i32 %.sroa.speculated117, 2
  %15 = zext nneg i32 %i.ev to i64
  %i.ew = shl nsw i32 %.sroa.speculated117, 3
  %16 = zext nneg i32 %i.ew to i64
  %i.ex = mul nsw i32 %.sroa.speculated117, 12
  %17 = zext nneg i32 %i.ex to i64
  %i.ey = shl nsw i32 %.sroa.speculated117, 4
  %18 = zext nneg i32 %i.ey to i64
  %i.ez = mul nsw i32 %.sroa.speculated117, 20
  %19 = zext nneg i32 %i.ez to i64
  %i.fa = mul nsw i32 %.sroa.speculated117, 24
  %20 = zext nneg i32 %i.fa to i64                ; 30 uses
  %.idx.i = shl i64 %i.er, 3
  %.idx705.i = mul i64 %i.er, 12
  %i.fb = mul nsw i32 %i.eo, %i.em
  %i.fc = sext i32 %i.fb to i64
  br i1 %i.eu, label %.lr.ph.us.preheader.i, label %.preheader53.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph77.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv277.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next278.i, %._crit_edge.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.fd = trunc nuw nsw i64 %indvars.iv277.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul74.i, %i.fd
  %i.fe = sext i32 %factor.op.mul.reass.us.i to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.fe
  %i.fg = add i32 %i.dm, %i.fd
  %i.fh = sdiv i32 %i.fg, %i.eo
  %i.fi = sext i32 %i.fh to i64
  br label %.preheader54.us.i

.preheader54.us.i:                                ; preds = %bb.u, %.lr.ph.us.i
  %indvars.iv273.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next274.i, %bb.u ] ; 3 uses
  %.idx317.i.a = shl nuw nsw i64 %indvars.iv273.i, 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx317.i.a ; 7 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %15 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %16 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %17 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %18 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %19 ; 2 uses
  %i.fp = load <4 x i32>, ptr %i.fj, align 16, !tbaa !46
  %i.fq = load <4 x i32>, ptr %i.fk, align 16, !tbaa !46 ; 2 uses
  %i.fr = load <4 x i32>, ptr %i.fl, align 16, !tbaa !46 ; 2 uses
  %i.fs = load <4 x i32>, ptr %i.fm, align 16, !tbaa !46 ; 2 uses
  %i.ft = load <4 x i32>, ptr %i.fn, align 16, !tbaa !46 ; 2 uses
  %i.fu = load <4 x i32>, ptr %i.fo, align 16, !tbaa !46
  %i.fv = add <4 x i32> %i.fr, %i.fq              ; 2 uses
  %i.fw = add <4 x i32> %i.ft, %i.fs              ; 2 uses
  %i.fx = sub <4 x i32> %i.fq, %i.fr              ; 2 uses
  %i.fy = sub <4 x i32> %i.fs, %i.ft              ; 2 uses
  %i.fz = add <4 x i32> %i.fv, %i.fp
  %i.ga = add <4 x i32> %i.fz, %i.fw
  %i.gb = shl <4 x i32> %i.fy, splat (i32 1)
  %i.gc = add <4 x i32> %i.gb, %i.fx
  %i.gd = shl <4 x i32> %i.fw, splat (i32 2)
  %i.ge = add <4 x i32> %i.gd, %i.fv
  %i.gf = shl <4 x i32> %i.fy, splat (i32 3)
  %i.gg = add <4 x i32> %i.gf, %i.fx
  %i.gh = shl <4 x i32> %i.fu, splat (i32 2)
  %i.gi = add <4 x i32> %i.gg, %i.gh
  store <4 x i32> %i.ga, ptr %i.a, align 16, !tbaa !46
  store <4 x i32> %i.gc, ptr %i.at, align 16, !tbaa !46
  store <4 x i32> %i.ge, ptr %i.au, align 16, !tbaa !46
  store <4 x i32> %i.gi, ptr %i.av, align 16, !tbaa !46
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %20 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %20 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %20 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %20 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %20 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %20 ; 2 uses
  %i.gp = load <4 x i32>, ptr %i.gj, align 16, !tbaa !46
  %i.gq = load <4 x i32>, ptr %i.gk, align 16, !tbaa !46 ; 2 uses
  %i.gr = load <4 x i32>, ptr %i.gl, align 16, !tbaa !46 ; 2 uses
  %i.gs = load <4 x i32>, ptr %i.gm, align 16, !tbaa !46 ; 2 uses
  %i.gt = load <4 x i32>, ptr %i.gn, align 16, !tbaa !46 ; 2 uses
  %i.gu = load <4 x i32>, ptr %i.go, align 16, !tbaa !46
  %i.gv = add <4 x i32> %i.gr, %i.gq              ; 2 uses
  %i.gw = add <4 x i32> %i.gt, %i.gs              ; 2 uses
  %i.gx = sub <4 x i32> %i.gq, %i.gr              ; 2 uses
  %i.gy = sub <4 x i32> %i.gs, %i.gt              ; 2 uses
  %i.gz = add <4 x i32> %i.gv, %i.gp
  %i.ha = add <4 x i32> %i.gz, %i.gw
  %i.hb = shl <4 x i32> %i.gy, splat (i32 1)
  %i.hc = add <4 x i32> %i.hb, %i.gx
  %i.hd = shl <4 x i32> %i.gw, splat (i32 2)
  %i.he = add <4 x i32> %i.hd, %i.gv
  %i.hf = shl <4 x i32> %i.gy, splat (i32 3)
  %i.hg = add <4 x i32> %i.hf, %i.gx
  %i.hh = shl <4 x i32> %i.gu, splat (i32 2)
  %i.hi = add <4 x i32> %i.hg, %i.hh
  store <4 x i32> %i.ha, ptr %i.bb, align 16, !tbaa !46
  store <4 x i32> %i.hc, ptr %i.bc, align 16, !tbaa !46
  store <4 x i32> %i.he, ptr %i.bd, align 16, !tbaa !46
  store <4 x i32> %i.hi, ptr %i.be, align 16, !tbaa !46
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %20 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %20 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %20 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %20 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %20 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %20 ; 2 uses
  %i.hp = load <4 x i32>, ptr %i.hj, align 16, !tbaa !46
  %i.hq = load <4 x i32>, ptr %i.hk, align 16, !tbaa !46 ; 2 uses
  %i.hr = load <4 x i32>, ptr %i.hl, align 16, !tbaa !46 ; 2 uses
  %i.hs = load <4 x i32>, ptr %i.hm, align 16, !tbaa !46 ; 2 uses
  %i.ht = load <4 x i32>, ptr %i.hn, align 16, !tbaa !46 ; 2 uses
  %i.hu = load <4 x i32>, ptr %i.ho, align 16, !tbaa !46
  %i.hv = add <4 x i32> %i.hr, %i.hq              ; 2 uses
  %i.hw = add <4 x i32> %i.ht, %i.hs              ; 2 uses
  %i.hx = sub <4 x i32> %i.hq, %i.hr              ; 2 uses
  %i.hy = sub <4 x i32> %i.hs, %i.ht              ; 2 uses
  %i.hz = add <4 x i32> %i.hv, %i.hp
  %i.ia = add <4 x i32> %i.hz, %i.hw
  %i.ib = shl <4 x i32> %i.hy, splat (i32 1)
  %i.ic = add <4 x i32> %i.ib, %i.hx
  %i.id = shl <4 x i32> %i.hw, splat (i32 2)
  %i.ie = add <4 x i32> %i.id, %i.hv
  %i.if = shl <4 x i32> %i.hy, splat (i32 3)
  %i.ig = add <4 x i32> %i.if, %i.hx
  %i.ih = shl <4 x i32> %i.hu, splat (i32 2)
  %i.ii = add <4 x i32> %i.ig, %i.ih
  store <4 x i32> %i.ia, ptr %i.bf, align 16, !tbaa !46
  store <4 x i32> %i.ic, ptr %i.bg, align 16, !tbaa !46
  store <4 x i32> %i.ie, ptr %i.bh, align 16, !tbaa !46
  store <4 x i32> %i.ii, ptr %i.bi, align 16, !tbaa !46
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %20 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %20 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %20 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %20 ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %20 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %20 ; 2 uses
  %i.ip = load <4 x i32>, ptr %i.ij, align 16, !tbaa !46
  %i.iq = load <4 x i32>, ptr %i.ik, align 16, !tbaa !46 ; 2 uses
  %i.ir = load <4 x i32>, ptr %i.il, align 16, !tbaa !46 ; 2 uses
  %i.is = load <4 x i32>, ptr %i.im, align 16, !tbaa !46 ; 2 uses
  %i.it = load <4 x i32>, ptr %i.in, align 16, !tbaa !46 ; 2 uses
  %i.iu = load <4 x i32>, ptr %i.io, align 16, !tbaa !46
  %i.iv = add <4 x i32> %i.ir, %i.iq              ; 2 uses
  %i.iw = add <4 x i32> %i.it, %i.is              ; 2 uses
  %i.ix = sub <4 x i32> %i.iq, %i.ir              ; 2 uses
  %i.iy = sub <4 x i32> %i.is, %i.it              ; 2 uses
  %i.iz = add <4 x i32> %i.iv, %i.ip
  %i.ja = add <4 x i32> %i.iz, %i.iw
  %i.jb = shl <4 x i32> %i.iy, splat (i32 1)
  %i.jc = add <4 x i32> %i.jb, %i.ix
  %i.jd = shl <4 x i32> %i.iw, splat (i32 2)
  %i.je = add <4 x i32> %i.jd, %i.iv
  %i.jf = shl <4 x i32> %i.iy, splat (i32 3)
  %i.jg = add <4 x i32> %i.jf, %i.ix
  %i.jh = shl <4 x i32> %i.iu, splat (i32 2)
  %i.ji = add <4 x i32> %i.jg, %i.jh
  store <4 x i32> %i.ja, ptr %i.bj, align 16, !tbaa !46
  store <4 x i32> %i.jc, ptr %i.bk, align 16, !tbaa !46
  store <4 x i32> %i.je, ptr %i.bl, align 16, !tbaa !46
  store <4 x i32> %i.ji, ptr %i.bm, align 16, !tbaa !46
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %20 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %20 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %20 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %20 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %20 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %20 ; 2 uses
  %i.jp = load <4 x i32>, ptr %i.jj, align 16, !tbaa !46
  %i.jq = load <4 x i32>, ptr %i.jk, align 16, !tbaa !46 ; 2 uses
  %i.jr = load <4 x i32>, ptr %i.jl, align 16, !tbaa !46 ; 2 uses
  %i.js = load <4 x i32>, ptr %i.jm, align 16, !tbaa !46 ; 2 uses
  %i.jt = load <4 x i32>, ptr %i.jn, align 16, !tbaa !46 ; 2 uses
  %i.ju = load <4 x i32>, ptr %i.jo, align 16, !tbaa !46
  %i.jv = add <4 x i32> %i.jr, %i.jq              ; 2 uses
  %i.jw = add <4 x i32> %i.jt, %i.js              ; 2 uses
  %i.jx = sub <4 x i32> %i.jq, %i.jr              ; 2 uses
  %i.jy = sub <4 x i32> %i.js, %i.jt              ; 2 uses
  %i.jz = add <4 x i32> %i.jv, %i.jp
  %i.ka = add <4 x i32> %i.jz, %i.jw
  %i.kb = shl <4 x i32> %i.jy, splat (i32 1)
  %i.kc = add <4 x i32> %i.kb, %i.jx
  %i.kd = shl <4 x i32> %i.jw, splat (i32 2)
  %i.ke = add <4 x i32> %i.kd, %i.jv
  %i.kf = shl <4 x i32> %i.jy, splat (i32 3)
  %i.kg = add <4 x i32> %i.kf, %i.jx
  %i.kh = shl <4 x i32> %i.ju, splat (i32 2)
  %i.ki = add <4 x i32> %i.kg, %i.kh
  store <4 x i32> %i.ka, ptr %i.bn, align 16, !tbaa !46
  store <4 x i32> %i.kc, ptr %i.bo, align 16, !tbaa !46
  store <4 x i32> %i.ke, ptr %i.bp, align 16, !tbaa !46
  store <4 x i32> %i.ki, ptr %i.bq, align 16, !tbaa !46
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %20
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %20
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %20
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %20
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %20
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %20
  %i.kp = trunc i64 %indvars.iv273.i to i32
  %i.kq = add i32 %.044131, %i.kp                 ; 2 uses
  %i.kr = sdiv i32 %i.kq, %i.et
  %i.ks = srem i32 %i.kq, %i.et
  %i.kt = load <4 x i32>, ptr %i.kj, align 16, !tbaa !46
  %i.ku = load <4 x i32>, ptr %i.kk, align 16, !tbaa !46 ; 2 uses
  %i.kv = load <4 x i32>, ptr %i.kl, align 16, !tbaa !46 ; 2 uses
  %i.kw = load <4 x i32>, ptr %i.km, align 16, !tbaa !46 ; 2 uses
  %i.kx = load <4 x i32>, ptr %i.kn, align 16, !tbaa !46 ; 2 uses
  %i.ky = load <4 x i32>, ptr %i.ko, align 16, !tbaa !46
  %i.kz = add <4 x i32> %i.kv, %i.ku              ; 2 uses
  %i.la = add <4 x i32> %i.kx, %i.kw              ; 2 uses
  %i.lb = sub <4 x i32> %i.ku, %i.kv
  %i.lc = sub <4 x i32> %i.kw, %i.kx              ; 2 uses
  %i.ld = add <4 x i32> %i.kz, %i.kt
  %i.le = add <4 x i32> %i.ld, %i.la
  %i.lf = shl <4 x i32> %i.le, splat (i32 2)
  %i.lg = shl <4 x i32> %i.lc, splat (i32 3)
  %i.lh = shl <4 x i32> %i.lb, splat (i32 2)      ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.lr = load ptr, ptr %12, align 8, !tbaa !32, !noalias !396
  %i.ls = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !396
  %i.lt = mul i64 %i.ls, %i.fi
  %i.lu = load i64, ptr %i.ba, align 8, !tbaa !36, !noalias !396 ; 2 uses
  %i.lv = mul i64 %i.lt, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lv
  %i.lx = sext i32 %i.lq to i64
  %i.ly = shl nsw i32 %i.kr, 2                    ; 2 uses
  %i.lz = sext i32 %i.ly to i64
  %i.ma = mul nsw i64 %i.lx, %i.lz
  %i.mb = mul i64 %i.ma, %i.lu
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mb
  %i.md = shl nsw i32 %i.ks, 2                    ; 4 uses
  %i.me = mul nsw i32 %i.md, %i.eo
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.mf
  %i.mh = or disjoint i32 %i.md, 1
  %i.mi = icmp slt i32 %i.mh, %i.em               ; 2 uses
  %i.mj = or disjoint i32 %i.md, 2
  %i.mk = icmp slt i32 %i.mj, %i.em               ; 2 uses
  %i.ml = or disjoint i32 %i.md, 3
  %i.mm = icmp slt i32 %i.ml, %i.em               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %.preheader54.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %.preheader54.us.i ] ; 3 uses
  %.068272.us.i = phi ptr [ %.1683.us.i, %bb.t ], [ %i.mg, %.preheader54.us.i ] ; 13 uses
  %i.mn = trunc i64 %indvars.iv.i to i32
  %i.mo = or i32 %i.ly, %i.mn
  %.not704.us.i = icmp slt i32 %i.mo, %i.en
  br i1 %.not704.us.i, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.mp = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %indvars.iv.i ; 6 uses
  %i.mq = load <4 x i32>, ptr %i.mp, align 16, !tbaa !46
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.ms = load <4 x i32>, ptr %i.mr, align 16, !tbaa !46 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %i.mu = load <4 x i32>, ptr %i.mt, align 16, !tbaa !46 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 48
  %i.mw = load <4 x i32>, ptr %i.mv, align 16, !tbaa !46 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.my = load <4 x i32>, ptr %i.mx, align 16, !tbaa !46 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  %i.na = load <4 x i32>, ptr %i.mz, align 16, !tbaa !46
  %i.nb = add <4 x i32> %i.mu, %i.ms              ; 2 uses
  %i.nc = add <4 x i32> %i.my, %i.mw              ; 2 uses
  %i.nd = sub <4 x i32> %i.ms, %i.mu              ; 2 uses
  %i.ne = sub <4 x i32> %i.mw, %i.my              ; 2 uses
  %i.nf = add <4 x i32> %i.nb, %i.mq
  %i.ng = add <4 x i32> %i.nf, %i.nc
  %i.nh = shl <4 x i32> %i.ne, splat (i32 1)
  %i.ni = add <4 x i32> %i.nh, %i.nd
  %i.nj = shl <4 x i32> %i.nc, splat (i32 2)
  %i.nk = add <4 x i32> %i.nj, %i.nb
  %i.nl = shl <4 x i32> %i.ne, splat (i32 3)
  %i.nm = add <4 x i32> %i.na, %i.nd
  %i.nn = add <4 x i32> %i.nm, %i.nl
  %i.no = sitofp fast <4 x i32> %i.ng to <4 x float>
  %i.np = fmul fast <4 x float> %i.no, splat (float f0x3AE38E39)
  %i.nq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.np) ; 5 uses
  %i.nr = sitofp fast <4 x i32> %i.ni to <4 x float>
  %i.ns = fmul fast <4 x float> %i.nr, splat (float f0x3AE38E39)
  %i.nt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ns) ; 5 uses
  %i.nu = sitofp fast <4 x i32> %i.nk to <4 x float>
  %i.nv = fmul fast <4 x float> %i.nu, splat (float f0x3AE38E39)
  %i.nw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nv) ; 5 uses
  %i.nx = sitofp fast <4 x i32> %i.nn to <4 x float>
  %i.ny = fmul fast <4 x float> %i.nx, splat (float f0x3AE38E39)
  %i.nz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ny) ; 5 uses
  switch i32 %i.eo, label %bb.s [
    i32 4, label %bb.m
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.068272.us.i, i64 %i.er ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 %.idx.i ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 %.idx705.i ; 4 uses
  %.sroa.026.0.vec.extract.us.i = extractelement <4 x i32> %i.nq, i64 0
  store i32 %.sroa.026.0.vec.extract.us.i, ptr %.068272.us.i, align 4, !tbaa !9
  %.sroa.026.4.vec.extract.us.i = extractelement <4 x i32> %i.nq, i64 1
  store i32 %.sroa.026.4.vec.extract.us.i, ptr %i.oa, align 4, !tbaa !9
  %.sroa.026.8.vec.extract.us.i = extractelement <4 x i32> %i.nq, i64 2
  store i32 %.sroa.026.8.vec.extract.us.i, ptr %i.ob, align 4, !tbaa !9
  %.sroa.026.12.vec.extract.us.i = extractelement <4 x i32> %i.nq, i64 3
  store i32 %.sroa.026.12.vec.extract.us.i, ptr %i.oc, align 4, !tbaa !9
  br i1 %i.mi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.728.16.vec.extract.us.i = extractelement <4 x i32> %i.nt, i64 0
  %i.od = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 4
  store i32 %.sroa.728.16.vec.extract.us.i, ptr %i.od, align 4, !tbaa !9
  %.sroa.728.20.vec.extract.us.i = extractelement <4 x i32> %i.nt, i64 1
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  store i32 %.sroa.728.20.vec.extract.us.i, ptr %i.oe, align 4, !tbaa !9
  %.sroa.728.24.vec.extract.us.i = extractelement <4 x i32> %i.nt, i64 2
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  store i32 %.sroa.728.24.vec.extract.us.i, ptr %i.of, align 4, !tbaa !9
  %.sroa.728.28.vec.extract.us.i = extractelement <4 x i32> %i.nt, i64 3
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store i32 %.sroa.728.28.vec.extract.us.i, ptr %i.og, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.mk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x i32> %i.nw, i64 0
  %i.oh = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 8
  store i32 %.sroa.12.32.vec.extract.us.i, ptr %i.oh, align 4, !tbaa !9
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x i32> %i.nw, i64 1
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store i32 %.sroa.12.36.vec.extract.us.i, ptr %i.oi, align 4, !tbaa !9
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x i32> %i.nw, i64 2
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store i32 %.sroa.12.40.vec.extract.us.i, ptr %i.oj, align 4, !tbaa !9
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x i32> %i.nw, i64 3
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  store i32 %.sroa.12.44.vec.extract.us.i, ptr %i.ok, align 4, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.mm, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %.sroa.1731.48.vec.extract.us.i = extractelement <4 x i32> %i.nz, i64 0
  %i.ol = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 12
  store i32 %.sroa.1731.48.vec.extract.us.i, ptr %i.ol, align 4, !tbaa !9
  %.sroa.1731.52.vec.extract.us.i = extractelement <4 x i32> %i.nz, i64 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  store i32 %.sroa.1731.52.vec.extract.us.i, ptr %i.om, align 4, !tbaa !9
  %.sroa.1731.56.vec.extract.us.i = extractelement <4 x i32> %i.nz, i64 2
  %i.on = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  store i32 %.sroa.1731.56.vec.extract.us.i, ptr %i.on, align 4, !tbaa !9
  %.sroa.1731.60.vec.extract.us.i = extractelement <4 x i32> %i.nz, i64 3
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  store i32 %.sroa.1731.60.vec.extract.us.i, ptr %i.oo, align 4, !tbaa !9
  br label %bb.s

bb.m:                                             ; preds = %bb.f
  store <4 x i32> %i.nq, ptr %.068272.us.i, align 16, !tbaa !46
  br i1 %i.mi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.op = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 16
  store <4 x i32> %i.nt, ptr %i.op, align 16, !tbaa !46
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.mk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.oq = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 32
  store <4 x i32> %i.nw, ptr %i.oq, align 16, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.mm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.or = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 48
  store <4 x i32> %i.nz, ptr %i.or, align 16, !tbaa !46
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.l, %bb.k, %bb.f
  %i.os = getelementptr inbounds [4 x i8], ptr %.068272.us.i, i64 %i.fc
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  %.1683.us.i = phi ptr [ %.068272.us.i, %bb.e ], [ %i.os, %bb.s ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.u, label %bb.e, !llvm.loop !399

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i, 1 ; 2 uses
  %exitcond276.not.i = icmp eq i64 %indvars.iv.next274.i, %wide.trip.count.i
  br i1 %exitcond276.not.i, label %._crit_edge.us.i, label %.preheader54.us.i, !llvm.loop !400

._crit_edge.us.i:                                 ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %indvars.iv.next278.i = add nuw nsw i64 %indvars.iv277.i, 4 ; 3 uses
  %i.ot = or disjoint i64 %indvars.iv.next278.i, 3
  %i.ou = icmp samesign ult i64 %i.ot, %i.ec
  br i1 %i.ou, label %.lr.ph.us.i, label %.preheader53.loopexit.i, !llvm.loop !401

.preheader53.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.ov = trunc nuw nsw i64 %indvars.iv.next278.i to i32
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.lr.ph77.i, %.preheader53.loopexit.i, %._crit_edge
  %.0647.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.ov, %.preheader53.loopexit.i ], [ %i.eb, %.lr.ph77.i ] ; 6 uses
  %i.ow = or disjoint i32 %.0647.lcssa.i, 1
  %i.ox = icmp slt i32 %i.ow, %.sroa.speculated121
  br i1 %i.ox, label %.lr.ph128.i, label %.preheader51.i

.lr.ph128.i:                                      ; preds = %.preheader53.i
  %i.oy = icmp sgt i32 %.sroa.speculated117, 0
  %i.oz = shl nsw i32 %.sroa.speculated117, 1
  %21 = zext nneg i32 %i.oz to i64
  %i.pa = shl nsw i32 %.sroa.speculated117, 2
  %22 = zext nneg i32 %i.pa to i64
  %i.pb = mul nsw i32 %.sroa.speculated117, 6
  %23 = zext nneg i32 %i.pb to i64
  %i.pc = shl nsw i32 %.sroa.speculated117, 3
  %24 = zext nneg i32 %i.pc to i64
  %i.pd = mul nsw i32 %.sroa.speculated117, 10
  %25 = zext nneg i32 %i.pd to i64
  %i.pe = mul nsw i32 %.sroa.speculated117, 12
  %26 = zext nneg i32 %i.pe to i64                ; 30 uses
  %i.pf = sext i32 %i.em to i64
  br i1 %i.oy, label %.lr.ph128.split.us.i, label %.lr.ph128.split.preheader.i

.lr.ph128.split.preheader.i:                      ; preds = %.lr.ph128.i
  %i.pg = add i32 %.0647.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated121, i32 %i.pg)
  %reass.sub = sub i32 %smax.i, %.0647.lcssa.i
  %i.ph = and i32 %reass.sub, -2
  %i.pi = add i32 %.0647.lcssa.i, %i.ph
  br label %.preheader51.i

.lr.ph128.split.us.i:                             ; preds = %.lr.ph128.i
  %i.pj = load ptr, ptr %12, align 8, !tbaa !32, !noalias !402
  %i.pk = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !402
  %i.pl = load i64, ptr %i.ba, align 8, !tbaa !36, !noalias !402 ; 2 uses
  %factor.op.mul.i = mul i64 %i.pl, %i.pk
  %i.pm = sext i32 %.0647.lcssa.i to i64
  %wide.trip.count291.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us131.i

.lr.ph.us131.i:                                   ; preds = %._crit_edge.us132.i, %.lr.ph128.split.us.i
  %indvars.iv293.i = phi i64 [ %indvars.iv.next294.i, %._crit_edge.us132.i ], [ %i.pm, %.lr.ph128.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.pn = trunc nsw i64 %indvars.iv293.i to i32
  %factor.op.mul.reass.us130.i = mul i32 %factor.op.mul74.i, %i.pn
  %i.po = sext i32 %factor.op.mul.reass.us130.i to i64
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.po
  %i.pq = add nsw i64 %indvars.iv293.i, %i.ee
  %.reass.i = mul i64 %factor.op.mul.i, %i.pq
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.reass.i
  br label %.preheader52.us.i

.preheader52.us.i:                                ; preds = %bb.ae, %.lr.ph.us131.i
  %indvars.iv288.i = phi i64 [ 0, %.lr.ph.us131.i ], [ %indvars.iv.next289.i, %bb.ae ] ; 3 uses
  %.idx318.i = shl nuw nsw i64 %indvars.iv288.i, 3
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.idx318.i ; 8 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %21 ; 3 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %22 ; 3 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %23 ; 3 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %24 ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %25 ; 3 uses
  %i.py = load i32, ptr %i.pt, align 4, !tbaa !9  ; 2 uses
  %i.pz = load i32, ptr %i.pu, align 4, !tbaa !9  ; 2 uses
  %i.qa = add nsw i32 %i.pz, %i.py                ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !9  ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !9  ; 2 uses
  %i.qf = add nsw i32 %i.qe, %i.qc                ; 2 uses
  %i.qg = load i32, ptr %i.pv, align 4, !tbaa !9  ; 2 uses
  %i.qh = load i32, ptr %i.pw, align 4, !tbaa !9  ; 2 uses
  %i.qi = add nsw i32 %i.qh, %i.qg                ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !9  ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !9  ; 2 uses
  %i.qn = add nsw i32 %i.qm, %i.qk                ; 2 uses
  %i.qo = sub nsw i32 %i.py, %i.pz                ; 2 uses
  %i.qp = sub nsw i32 %i.qc, %i.qe                ; 2 uses
  %i.qq = sub nsw i32 %i.qg, %i.qh                ; 2 uses
  %i.qr = sub nsw i32 %i.qk, %i.qm                ; 2 uses
  %i.qs = add nsw i32 %i.qi, %i.qa
  %i.qt = load i32, ptr %i.ps, align 4, !tbaa !9
  %i.qu = add nsw i32 %i.qs, %i.qt
  %i.qv = add nsw i32 %i.qn, %i.qf
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !9
  %i.qy = add nsw i32 %i.qv, %i.qx
  %i.qz = shl nsw i32 %i.qq, 1
  %i.ra = add nsw i32 %i.qz, %i.qo
  %i.rb = shl nsw i32 %i.qr, 1
  %i.rc = add nsw i32 %i.rb, %i.qp
  %i.rd = shl nsw i32 %i.qi, 2
  %i.re = add nsw i32 %i.rd, %i.qa
  %i.rf = shl nsw i32 %i.qn, 2
  %i.rg = add nsw i32 %i.rf, %i.qf
  %i.rh = shl nsw i32 %i.qq, 3
  %i.ri = add nsw i32 %i.rh, %i.qo
  %i.rj = load i32, ptr %i.px, align 4, !tbaa !9
  %i.rk = shl nsw i32 %i.rj, 2
  %i.rl = add nsw i32 %i.ri, %i.rk
  %i.rm = shl nsw i32 %i.qr, 3
  %i.rn = add nsw i32 %i.rm, %i.qp
  %i.ro = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !9
  %i.rq = shl nsw i32 %i.rp, 2
  %i.rr = add nsw i32 %i.rn, %i.rq
  store i32 %i.qu, ptr %i.b, align 16, !tbaa !9
  store i32 %i.qy, ptr %i.cb, align 4, !tbaa !9
  store i32 %i.ra, ptr %i.br, align 16, !tbaa !9
  store i32 %i.rc, ptr %i.cc, align 4, !tbaa !9
  store i32 %i.re, ptr %i.bs, align 16, !tbaa !9
  store i32 %i.rg, ptr %i.cd, align 4, !tbaa !9
  store i32 %i.rl, ptr %i.bt, align 16, !tbaa !9
  store i32 %i.rr, ptr %i.ce, align 4, !tbaa !9
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %26 ; 3 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %26 ; 3 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %26 ; 3 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %26 ; 3 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %26 ; 3 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %26 ; 3 uses
  %i.ry = load i32, ptr %i.rt, align 4, !tbaa !9  ; 2 uses
  %i.rz = load i32, ptr %i.ru, align 4, !tbaa !9  ; 2 uses
  %i.sa = add nsw i32 %i.rz, %i.ry                ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !9  ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !9  ; 2 uses
  %i.sf = add nsw i32 %i.se, %i.sc                ; 2 uses
  %i.sg = load i32, ptr %i.rv, align 4, !tbaa !9  ; 2 uses
  %i.sh = load i32, ptr %i.rw, align 4, !tbaa !9  ; 2 uses
  %i.si = add nsw i32 %i.sh, %i.sg                ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !9  ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !9  ; 2 uses
  %i.sn = add nsw i32 %i.sm, %i.sk                ; 2 uses
  %i.so = sub nsw i32 %i.ry, %i.rz                ; 2 uses
  %i.sp = sub nsw i32 %i.sc, %i.se                ; 2 uses
  %i.sq = sub nsw i32 %i.sg, %i.sh                ; 2 uses
  %i.sr = sub nsw i32 %i.sk, %i.sm                ; 2 uses
  %i.ss = add nsw i32 %i.si, %i.sa
  %i.st = load i32, ptr %i.rs, align 4, !tbaa !9
  %i.su = add nsw i32 %i.ss, %i.st
  %i.sv = add nsw i32 %i.sn, %i.sf
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !9
  %i.sy = add nsw i32 %i.sv, %i.sx
  %i.sz = shl nsw i32 %i.sq, 1
  %i.ta = add nsw i32 %i.sz, %i.so
  %i.tb = shl nsw i32 %i.sr, 1
  %i.tc = add nsw i32 %i.tb, %i.sp
  %i.td = shl nsw i32 %i.si, 2
  %i.te = add nsw i32 %i.td, %i.sa
  %i.tf = shl nsw i32 %i.sn, 2
  %i.tg = add nsw i32 %i.tf, %i.sf
  %i.th = shl nsw i32 %i.sq, 3
  %i.ti = add nsw i32 %i.th, %i.so
  %i.tj = load i32, ptr %i.rx, align 4, !tbaa !9
  %i.tk = shl nsw i32 %i.tj, 2
  %i.tl = add nsw i32 %i.ti, %i.tk
  %i.tm = shl nsw i32 %i.sr, 3
  %i.tn = add nsw i32 %i.tm, %i.sp
  %i.to = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !9
  %i.tq = shl nsw i32 %i.tp, 2
  %i.tr = add nsw i32 %i.tn, %i.tq
  store i32 %i.su, ptr %i.cf, align 8, !tbaa !9
  store i32 %i.sy, ptr %i.cg, align 4, !tbaa !9
  store i32 %i.ta, ptr %i.ch, align 8, !tbaa !9
  store i32 %i.tc, ptr %i.ci, align 4, !tbaa !9
  store i32 %i.te, ptr %i.cj, align 8, !tbaa !9
  store i32 %i.tg, ptr %i.ck, align 4, !tbaa !9
  store i32 %i.tl, ptr %i.cl, align 8, !tbaa !9
  store i32 %i.tr, ptr %i.cm, align 4, !tbaa !9
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %26 ; 3 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %26 ; 3 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %26 ; 3 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %26 ; 3 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %26 ; 3 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %26 ; 3 uses
  %i.ty = load i32, ptr %i.tt, align 4, !tbaa !9  ; 2 uses
  %i.tz = load i32, ptr %i.tu, align 4, !tbaa !9  ; 2 uses
  %i.ua = add nsw i32 %i.tz, %i.ty                ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !9  ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !9  ; 2 uses
  %i.uf = add nsw i32 %i.ue, %i.uc                ; 2 uses
  %i.ug = load i32, ptr %i.tv, align 4, !tbaa !9  ; 2 uses
  %i.uh = load i32, ptr %i.tw, align 4, !tbaa !9  ; 2 uses
  %i.ui = add nsw i32 %i.uh, %i.ug                ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !9  ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !9  ; 2 uses
  %i.un = add nsw i32 %i.um, %i.uk                ; 2 uses
  %i.uo = sub nsw i32 %i.ty, %i.tz                ; 2 uses
  %i.up = sub nsw i32 %i.uc, %i.ue                ; 2 uses
  %i.uq = sub nsw i32 %i.ug, %i.uh                ; 2 uses
  %i.ur = sub nsw i32 %i.uk, %i.um                ; 2 uses
  %i.us = add nsw i32 %i.ui, %i.ua
  %i.ut = load i32, ptr %i.ts, align 4, !tbaa !9
  %i.uu = add nsw i32 %i.us, %i.ut
  %i.uv = add nsw i32 %i.un, %i.uf
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !9
  %i.uy = add nsw i32 %i.uv, %i.ux
  %i.uz = shl nsw i32 %i.uq, 1
  %i.va = add nsw i32 %i.uz, %i.uo
  %i.vb = shl nsw i32 %i.ur, 1
  %i.vc = add nsw i32 %i.vb, %i.up
  %i.vd = shl nsw i32 %i.ui, 2
  %i.ve = add nsw i32 %i.vd, %i.ua
  %i.vf = shl nsw i32 %i.un, 2
  %i.vg = add nsw i32 %i.vf, %i.uf
  %i.vh = shl nsw i32 %i.uq, 3
  %i.vi = add nsw i32 %i.vh, %i.uo
  %i.vj = load i32, ptr %i.tx, align 4, !tbaa !9
  %i.vk = shl nsw i32 %i.vj, 2
end_hunk_2
begin_hunk_3_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.aaf = load <2 x i32>, ptr %i.zt, align 4, !tbaa !9 ; 3 uses
  %i.aag = load <2 x i32>, ptr %i.zu, align 4, !tbaa !9 ; 3 uses
  %foldExtExtBinop = add nsw <2 x i32> %i.aag, %i.aaf
  %i.aah = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop144 = add nsw <2 x i32> %i.aag, %i.aaf
  %i.aai = extractelement <2 x i32> %foldExtExtBinop144, i64 1 ; 2 uses
  %i.aaj = load <2 x i32>, ptr %i.zv, align 4, !tbaa !9 ; 3 uses
  %i.aak = load <2 x i32>, ptr %i.zw, align 4, !tbaa !9 ; 3 uses
  %foldExtExtBinop146 = add nsw <2 x i32> %i.aak, %i.aaj
  %i.aal = extractelement <2 x i32> %foldExtExtBinop146, i64 0 ; 2 uses
  %foldExtExtBinop148 = add nsw <2 x i32> %i.aak, %i.aaj
  %i.aam = extractelement <2 x i32> %foldExtExtBinop148, i64 1 ; 2 uses
  %i.aan = sub nsw <2 x i32> %i.aaf, %i.aag
  %i.aao = sub nsw <2 x i32> %i.aaj, %i.aak       ; 3 uses
  %i.aap = add nsw i32 %i.aal, %i.aah
  %i.aaq = add nsw i32 %i.aap, %i.aac
  %i.aar = add nsw i32 %i.aam, %i.aai
  %i.aas = add nsw i32 %i.aar, %i.aae
  %i.aat = load <2 x i32>, ptr %i.zx, align 4, !tbaa !9
  %i.aau = shl nsw i32 %i.aaq, 2
  %i.aav = shl nsw i32 %i.aas, 2
  %i.aaw = extractelement <2 x i32> %i.aao, i64 0
  %i.aax = shl i32 %i.aaw, 3
  %i.aay = shl <2 x i32> %i.aan, splat (i32 2)    ; 3 uses
  %i.aaz = extractelement <2 x i32> %i.aay, i64 0
  %i.aba = add i32 %i.aax, %i.aaz
  %i.abb = extractelement <2 x i32> %i.aao, i64 1
  %i.abc = shl i32 %i.abb, 3
  %i.abd = extractelement <2 x i32> %i.aay, i64 1
  %i.abe = add i32 %i.abc, %i.abd
  %i.abf = shl i32 %i.aal, 4
  %i.abg = shl i32 %i.aah, 2
  %i.abh = add i32 %i.abf, %i.abg
  %i.abi = shl i32 %i.aam, 4
  %i.abj = shl i32 %i.aai, 2
  %i.abk = add i32 %i.abi, %i.abj
  %i.abl = shl <2 x i32> %i.aat, splat (i32 4)
  %i.abm = shl <2 x i32> %i.aao, splat (i32 5)
  %i.abn = add <2 x i32> %i.abm, %i.aay
  %i.abo = add <2 x i32> %i.abn, %i.abl
  store i32 %i.aau, ptr %i.bu, align 8, !tbaa !9
  store i32 %i.aav, ptr %i.bv, align 4, !tbaa !9
  store i32 %i.aba, ptr %i.bw, align 8, !tbaa !9
  store i32 %i.abe, ptr %i.bx, align 4, !tbaa !9
  store i32 %i.abh, ptr %i.by, align 8, !tbaa !9
  store i32 %i.abk, ptr %i.bz, align 4, !tbaa !9
  store <2 x i32> %i.abo, ptr %i.ca, align 8, !tbaa !9
  %i.abp = load i32, ptr %i.ap, align 4, !tbaa !10, !noalias !402
  %i.abq = sext i32 %i.abp to i64
  %i.abr = shl nsw i32 %i.aaa, 2                  ; 2 uses
  %i.abs = sext i32 %i.abr to i64
  %i.abt = mul i64 %i.pl, %i.abs
  %i.abu = mul i64 %i.abt, %i.abq
  %i.abv = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.abu
  %i.abw = shl nsw i32 %i.aab, 2                  ; 4 uses
  %i.abx = sext i32 %i.abw to i64
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.abx
  %i.abz = or disjoint i32 %i.abw, 1
  %i.aca = icmp slt i32 %i.abz, %i.em
  %i.acb = or disjoint i32 %i.abw, 2
  %i.acc = icmp slt i32 %i.acb, %i.em
  %i.acd = or disjoint i32 %i.abw, 3
  %i.ace = icmp slt i32 %i.acd, %i.em
  br label %bb.v

bb.v:                                             ; preds = %bb.ad, %.preheader52.us.i
  %indvars.iv284.i = phi i64 [ %indvars.iv.next285.i, %bb.ad ], [ 0, %.preheader52.us.i ] ; 3 uses
  %.0679123.us.i = phi ptr [ %.1680.us.i, %bb.ad ], [ %i.aby, %.preheader52.us.i ] ; 7 uses
  %i.acf = trunc i64 %indvars.iv284.i to i32
  %i.acg = or i32 %i.abr, %i.acf
  %.not703.us.i = icmp slt i32 %i.acg, %i.en
  br i1 %.not703.us.i, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.ach = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv284.i ; 8 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 12
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ach, i64 32 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ach, i64 36
  %i.acn = load i32, ptr %i.ach, align 16, !tbaa !9
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !9
  %i.acq = getelementptr inbounds nuw i8, ptr %i.ach, i64 40
  %i.acr = load <2 x i32>, ptr %i.aci, align 8, !tbaa !9
  %i.acs = load i32, ptr %i.ack, align 4, !tbaa !9
  %i.act = load i32, ptr %i.aci, align 8, !tbaa !9
  %i.acu = load <4 x i32>, ptr %i.acj, align 16, !tbaa !9 ; 6 uses
  %i.acv = extractelement <4 x i32> %i.acu, i64 0
  %i.acw = add nsw i32 %i.acv, %i.act             ; 2 uses
  %i.acx = extractelement <4 x i32> %i.acu, i64 1
  %i.acy = add nsw i32 %i.acx, %i.acs             ; 2 uses
  %i.acz = load <2 x i32>, ptr %i.acl, align 16, !tbaa !9
  %i.ada = load i32, ptr %i.acm, align 4, !tbaa !9
  %i.adb = load i32, ptr %i.acl, align 16, !tbaa !9
  %i.adc = shufflevector <2 x i32> %i.acr, <2 x i32> %i.acz, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.add = add nsw <4 x i32> %i.adc, %i.acu       ; 3 uses
  %i.ade = sub nsw <4 x i32> %i.adc, %i.acu       ; 3 uses
  %i.adf = shufflevector <4 x i32> %i.add, <4 x i32> %i.ade, <4 x i32> <i32 2, i32 3, i32 4, i32 5> ; 2 uses
  %i.adg = extractelement <4 x i32> %i.acu, i64 2
  %i.adh = sub nsw i32 %i.adg, %i.adb             ; 2 uses
  %i.adi = extractelement <4 x i32> %i.acu, i64 3
  %i.adj = sub nsw i32 %i.adi, %i.ada             ; 2 uses
  %i.adk = extractelement <4 x i32> %i.add, i64 2
  %i.adl = add nsw i32 %i.adk, %i.acw
  %i.adm = add nsw i32 %i.adl, %i.acn
  %i.adn = extractelement <4 x i32> %i.add, i64 3
  %i.ado = add nsw i32 %i.adn, %i.acy
  %i.adp = add nsw i32 %i.ado, %i.acp
  %i.adq = insertelement <4 x i32> <i32 2, i32 2, i32 poison, i32 poison>, i32 %i.adh, i64 2
  %i.adr = insertelement <4 x i32> %i.adq, i32 %i.adj, i64 3
  %i.ads = shl nsw <4 x i32> %i.adr, <i32 0, i32 0, i32 3, i32 3> ; 2 uses
  %i.adt = shl nsw <4 x i32> %i.adf, %i.ads
  %i.adu = add nsw <4 x i32> %i.adf, %i.ads
  %i.adv = shufflevector <4 x i32> %i.adt, <4 x i32> %i.adu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adw = load <2 x i32>, ptr %i.acq, align 8, !tbaa !9
  %i.adx = insertelement <4 x i32> poison, i32 %i.acw, i64 0
  %i.ady = insertelement <4 x i32> %i.adx, i32 %i.acy, i64 1
  %i.adz = shufflevector <2 x i32> %i.adw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aea = shufflevector <4 x i32> %i.ady, <4 x i32> %i.adz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aeb = add nsw <4 x i32> %i.adv, %i.aea
  %i.aec = sdiv i32 %i.adm, 576
  %i.aed = sdiv i32 %i.adp, 576
  %i.aee = sdiv <4 x i32> %i.aeb, splat (i32 576) ; 4 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.0679123.us.i, i64 %i.er ; 4 uses
  store i32 %i.aec, ptr %.0679123.us.i, align 4, !tbaa !9
  store i32 %i.aed, ptr %i.aef, align 4, !tbaa !9
  br i1 %i.aca, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.aeg = shl nsw i32 %i.adj, 1
  %i.aeh = extractelement <4 x i32> %i.ade, i64 1
  %i.aei = add nsw i32 %i.aeg, %i.aeh
  %i.aej = sdiv i32 %i.aei, 576
  %i.aek = shl nsw i32 %i.adh, 1
  %i.ael = extractelement <4 x i32> %i.ade, i64 0
  %i.aem = add nsw i32 %i.aek, %i.ael
  %i.aen = sdiv i32 %i.aem, 576
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0679123.us.i, i64 4
  store i32 %i.aen, ptr %i.aeo, align 4, !tbaa !9
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aef, i64 4
  store i32 %i.aej, ptr %i.aep, align 4, !tbaa !9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.acc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0679123.us.i, i64 8
  %i.aer = extractelement <4 x i32> %i.aee, i64 0
  store i32 %i.aer, ptr %i.aeq, align 4, !tbaa !9
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  %i.aet = extractelement <4 x i32> %i.aee, i64 1
  store i32 %i.aet, ptr %i.aes, align 4, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.ace, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0679123.us.i, i64 12
  %i.aev = extractelement <4 x i32> %i.aee, i64 2
  store i32 %i.aev, ptr %i.aeu, align 4, !tbaa !9
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aef, i64 12
  %i.aex = extractelement <4 x i32> %i.aee, i64 3
  store i32 %i.aex, ptr %i.aew, align 4, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.aey = getelementptr inbounds [4 x i8], ptr %.0679123.us.i, i64 %i.pf
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.v
  %.1680.us.i = phi ptr [ %.0679123.us.i, %bb.v ], [ %i.aey, %bb.ac ]
  %indvars.iv.next285.i = add nuw nsw i64 %indvars.iv284.i, 1 ; 2 uses
  %exitcond287.not.i = icmp eq i64 %indvars.iv.next285.i, 4
  br i1 %exitcond287.not.i, label %bb.ae, label %bb.v, !llvm.loop !405

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next289.i = add nuw nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %exitcond292.not.i = icmp eq i64 %indvars.iv.next289.i, %wide.trip.count291.i
  br i1 %exitcond292.not.i, label %._crit_edge.us132.i, label %.preheader52.us.i, !llvm.loop !406

._crit_edge.us132.i:                              ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %indvars.iv.next294.i = add nuw nsw i64 %indvars.iv293.i, 2 ; 3 uses
  %i.aez = icmp slt i64 %indvars.iv.next294.i, %invariant.op.i
  br i1 %i.aez, label %.lr.ph.us131.i, label %.preheader51.loopexit.i, !llvm.loop !407

.preheader51.loopexit.i:                          ; preds = %._crit_edge.us132.i
  %i.afa = trunc nsw i64 %indvars.iv.next294.i to i32
  br label %.preheader51.i

.preheader51.i:                                   ; preds = %.preheader51.loopexit.i, %.lr.ph128.split.preheader.i, %.preheader53.i
  %.1648.lcssa.i = phi i32 [ %.0647.lcssa.i, %.preheader53.i ], [ %i.afa, %.preheader51.loopexit.i ], [ %i.pi, %.lr.ph128.split.preheader.i ] ; 2 uses
  %i.afb = icmp slt i32 %.1648.lcssa.i, %.sroa.speculated121
  br i1 %i.afb, label %.lr.ph217.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph217.i:                                      ; preds = %.preheader51.i
  %i.afc = icmp sgt i32 %.sroa.speculated117, 0
  %27 = zext i32 %.sroa.speculated117 to i64      ; 2 uses
  %i.afd = shl nsw i32 %.sroa.speculated117, 1
  %28 = zext nneg i32 %i.afd to i64
  %i.afe = mul nsw i32 %.sroa.speculated117, 3
  %29 = zext nneg i32 %i.afe to i64
  %i.aff = shl nsw i32 %.sroa.speculated117, 2
  %30 = zext nneg i32 %i.aff to i64
  %i.afg = mul nsw i32 %.sroa.speculated117, 5
  %31 = zext nneg i32 %i.afg to i64
  %i.afh = mul nsw i32 %.sroa.speculated117, 6
  %32 = zext nneg i32 %i.afh to i64               ; 30 uses
  %i.afi = sext i32 %i.em to i64                  ; 3 uses
  br i1 %i.afc, label %.lr.ph217.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph217.split.us.i:                             ; preds = %.lr.ph217.i
  %i.afj = load ptr, ptr %12, align 8, !tbaa !32, !noalias !408
  %i.afk = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !408
  %i.afl = load i64, ptr %i.ba, align 8, !tbaa !36, !noalias !408 ; 2 uses
  %factor.op.mul245.i = mul i64 %i.afl, %i.afk
  %i.afm = sext i32 %.1648.lcssa.i to i64
  br label %.lr.ph.us219.i

.lr.ph.us219.i:                                   ; preds = %._crit_edge.us220.i, %.lr.ph217.split.us.i
  %indvars.iv309.i = phi i64 [ %indvars.iv.next310.i, %._crit_edge.us220.i ], [ %i.afm, %.lr.ph217.split.us.i ] ; 3 uses
  %i.afn = trunc nsw i64 %indvars.iv309.i to i32
  %factor.op.mul212.reass.us.i = mul i32 %factor.op.mul74.i, %i.afn
  %i.afo = sext i32 %factor.op.mul212.reass.us.i to i64
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.afo
  %i.afq = add nsw i64 %indvars.iv309.i, %i.ee
  %.reass246.i = mul i64 %factor.op.mul245.i, %i.afq
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afj, i64 %.reass246.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.bj, %.lr.ph.us219.i
  %indvars.iv304.i = phi i64 [ 0, %.lr.ph.us219.i ], [ %indvars.iv.next305.i, %bb.bj ] ; 3 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %indvars.iv304.i ; 7 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %27 ; 2 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %28 ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %29 ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %30 ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %31 ; 2 uses
  %i.afy = load i32, ptr %i.aft, align 4, !tbaa !9 ; 2 uses
  %i.afz = load i32, ptr %i.afu, align 4, !tbaa !9 ; 2 uses
  %i.aga = add nsw i32 %i.afz, %i.afy             ; 2 uses
  %i.agb = load i32, ptr %i.afv, align 4, !tbaa !9 ; 2 uses
  %i.agc = load i32, ptr %i.afw, align 4, !tbaa !9 ; 2 uses
  %i.agd = add nsw i32 %i.agc, %i.agb             ; 2 uses
  %i.age = sub nsw i32 %i.afy, %i.afz             ; 2 uses
  %i.agf = sub nsw i32 %i.agb, %i.agc             ; 2 uses
  %i.agg = shl nsw i32 %i.agf, 1
  %i.agh = shl nsw i32 %i.agd, 2
  %i.agi = shl nsw i32 %i.agf, 3
  %i.agj = load i32, ptr %i.afx, align 4, !tbaa !9
  %i.agk = shl nsw i32 %i.agj, 2
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %32 ; 2 uses
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %32 ; 2 uses
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %32 ; 2 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %32 ; 2 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %32 ; 2 uses
  %i.agq = load i32, ptr %i.agl, align 4, !tbaa !9 ; 2 uses
  %i.agr = load i32, ptr %i.agm, align 4, !tbaa !9 ; 2 uses
  %i.ags = add nsw i32 %i.agr, %i.agq             ; 2 uses
  %i.agt = load i32, ptr %i.agn, align 4, !tbaa !9 ; 2 uses
  %i.agu = load i32, ptr %i.ago, align 4, !tbaa !9 ; 2 uses
  %i.agv = add nsw i32 %i.agu, %i.agt             ; 2 uses
  %i.agw = sub nsw i32 %i.agq, %i.agr             ; 2 uses
  %i.agx = sub nsw i32 %i.agt, %i.agu             ; 2 uses
  %i.agy = shl nsw i32 %i.agx, 1
  %i.agz = add nsw i32 %i.agy, %i.agw             ; 2 uses
  %i.aha = shl nsw i32 %i.agv, 2
  %i.ahb = add nsw i32 %i.aha, %i.ags             ; 2 uses
  %i.ahc = shl nsw i32 %i.agx, 3
  %i.ahd = add nsw i32 %i.ahc, %i.agw
  %i.ahe = load i32, ptr %i.agp, align 4, !tbaa !9
  %i.ahf = shl nsw i32 %i.ahe, 2
  %i.ahg = add nsw i32 %i.ahd, %i.ahf             ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %32 ; 2 uses
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %32 ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %32 ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %32 ; 2 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %32 ; 2 uses
  %i.ahm = load i32, ptr %i.ahh, align 4, !tbaa !9 ; 2 uses
  %i.ahn = load i32, ptr %i.ahi, align 4, !tbaa !9 ; 2 uses
  %i.aho = add nsw i32 %i.ahn, %i.ahm             ; 2 uses
  %i.ahp = load i32, ptr %i.ahj, align 4, !tbaa !9 ; 2 uses
  %i.ahq = load i32, ptr %i.ahk, align 4, !tbaa !9 ; 2 uses
  %i.ahr = add nsw i32 %i.ahq, %i.ahp             ; 2 uses
  %i.ahs = sub nsw i32 %i.ahm, %i.ahn             ; 2 uses
  %i.aht = sub nsw i32 %i.ahp, %i.ahq             ; 2 uses
  %i.ahu = shl nsw i32 %i.aht, 1
  %i.ahv = add nsw i32 %i.ahu, %i.ahs             ; 2 uses
  %i.ahw = shl nsw i32 %i.ahr, 2
  %i.ahx = add nsw i32 %i.ahw, %i.aho             ; 2 uses
  %i.ahy = shl nsw i32 %i.aht, 3
  %i.ahz = add nsw i32 %i.ahy, %i.ahs
  %i.aia = load i32, ptr %i.ahl, align 4, !tbaa !9
  %i.aib = shl nsw i32 %i.aia, 2
  %i.aic = add nsw i32 %i.ahz, %i.aib             ; 2 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %32 ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %32 ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %32 ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %32 ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %32 ; 2 uses
  %i.aii = load i32, ptr %i.aid, align 4, !tbaa !9 ; 2 uses
  %i.aij = load i32, ptr %i.aie, align 4, !tbaa !9 ; 2 uses
  %i.aik = add nsw i32 %i.aij, %i.aii             ; 2 uses
  %i.ail = load i32, ptr %i.aif, align 4, !tbaa !9 ; 2 uses
  %i.aim = load i32, ptr %i.aig, align 4, !tbaa !9 ; 2 uses
  %i.ain = add nsw i32 %i.aim, %i.ail             ; 2 uses
  %i.aio = sub nsw i32 %i.aii, %i.aij             ; 2 uses
  %i.aip = sub nsw i32 %i.ail, %i.aim             ; 2 uses
  %i.aiq = shl nsw i32 %i.aip, 1
  %i.air = add nsw i32 %i.aiq, %i.aio             ; 2 uses
  %i.ais = shl nsw i32 %i.ain, 2
  %i.ait = add nsw i32 %i.ais, %i.aik             ; 2 uses
  %i.aiu = shl nsw i32 %i.aip, 3
  %i.aiv = add nsw i32 %i.aiu, %i.aio
  %i.aiw = load i32, ptr %i.aih, align 4, !tbaa !9
  %i.aix = shl nsw i32 %i.aiw, 2
  %i.aiy = add nsw i32 %i.aiv, %i.aix             ; 2 uses
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %32 ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %32 ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %32 ; 2 uses
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %32 ; 2 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %32 ; 2 uses
  %i.aje = load i32, ptr %i.aiz, align 4, !tbaa !9 ; 2 uses
  %i.ajf = load i32, ptr %i.aja, align 4, !tbaa !9 ; 2 uses
  %i.ajg = add nsw i32 %i.ajf, %i.aje             ; 2 uses
  %i.ajh = load i32, ptr %i.ajb, align 4, !tbaa !9 ; 2 uses
  %i.aji = load i32, ptr %i.ajc, align 4, !tbaa !9 ; 2 uses
  %i.ajj = add nsw i32 %i.aji, %i.ajh             ; 2 uses
  %i.ajk = sub nsw i32 %i.aje, %i.ajf             ; 2 uses
  %i.ajl = sub nsw i32 %i.ajh, %i.aji             ; 2 uses
  %i.ajm = shl nsw i32 %i.ajl, 1
  %i.ajn = add nsw i32 %i.ajm, %i.ajk             ; 2 uses
  %i.ajo = shl nsw i32 %i.ajj, 2
  %i.ajp = add nsw i32 %i.ajo, %i.ajg             ; 2 uses
  %i.ajq = shl nsw i32 %i.ajl, 3
  %i.ajr = add nsw i32 %i.ajq, %i.ajk
  %i.ajs = load i32, ptr %i.ajd, align 4, !tbaa !9
  %i.ajt = shl nsw i32 %i.ajs, 2
  %i.aju = add nsw i32 %i.ajr, %i.ajt             ; 2 uses
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %32
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %32
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %32
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %32
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %32
  %i.aka = trunc i64 %indvars.iv304.i to i32
  %i.akb = add i32 %.044131, %i.aka               ; 2 uses
  %i.akc = sdiv i32 %i.akb, %i.et
  %i.akd = srem i32 %i.akb, %i.et
  %i.ake = load i32, ptr %i.ajv, align 4, !tbaa !9 ; 2 uses
  %i.akf = load i32, ptr %i.ajw, align 4, !tbaa !9 ; 2 uses
  %i.akg = add nsw i32 %i.akf, %i.ake             ; 2 uses
  %i.akh = load i32, ptr %i.ajx, align 4, !tbaa !9 ; 2 uses
  %i.aki = load i32, ptr %i.ajy, align 4, !tbaa !9 ; 2 uses
  %i.akj = add nsw i32 %i.aki, %i.akh             ; 2 uses
  %i.akk = sub nsw i32 %i.ake, %i.akf
  %i.akl = sub nsw i32 %i.akh, %i.aki             ; 2 uses
  %i.akm = load i32, ptr %i.ajz, align 4, !tbaa !9
  %i.akn = shl i32 %i.akk, 2                      ; 2 uses
  %i.ako = shl i32 %i.akj, 4
  %i.akp = shl i32 %i.akg, 2
  %i.akq = shl i32 %i.akm, 4
  %i.akr = shl i32 %i.akl, 5
  %i.aks = load i32, ptr %i.ap, align 4, !tbaa !10, !noalias !408
  %i.akt = sext i32 %i.aks to i64
  %i.aku = shl nsw i32 %i.akc, 2                  ; 5 uses
  %i.akv = sext i32 %i.aku to i64
  %i.akw = mul i64 %i.afl, %i.akv
  %i.akx = mul i64 %i.akw, %i.akt
  %i.aky = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.akx
  %i.akz = shl nsw i32 %i.akd, 2                  ; 4 uses
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.ala ; 6 uses
  %i.alc = or disjoint i32 %i.akz, 1
  %i.ald = icmp slt i32 %i.alc, %i.em             ; 4 uses
  %i.ale = or disjoint i32 %i.akz, 2
  %i.alf = icmp slt i32 %i.ale, %i.em             ; 4 uses
  %i.alg = or disjoint i32 %i.akz, 3
  %i.alh = icmp slt i32 %i.alg, %i.em             ; 4 uses
  %.not.us.i = icmp slt i32 %i.aku, %i.en
  br i1 %.not.us.i, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.preheader.us.i
  %i.ali = add nsw i32 %i.akj, %i.akg
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %32 ; 2 uses
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %32 ; 2 uses
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %32 ; 2 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.all, i64 %32 ; 2 uses
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %32
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !9
  %i.alp = add nsw i32 %i.ali, %i.alo
  %i.alq = shl nsw i32 %i.alp, 2
  %i.alr = add nsw i32 %i.ajj, %i.ajg
  %i.als = load i32, ptr %i.alm, align 4, !tbaa !9
  %i.alt = add nsw i32 %i.alr, %i.als             ; 2 uses
  %i.alu = add nsw i32 %i.ain, %i.aik
  %i.alv = load i32, ptr %i.all, align 4, !tbaa !9
  %i.alw = add nsw i32 %i.alu, %i.alv             ; 2 uses
  %i.alx = add nsw i32 %i.ahr, %i.aho
  %i.aly = load i32, ptr %i.alk, align 4, !tbaa !9
  %i.alz = add nsw i32 %i.alx, %i.aly             ; 2 uses
  %i.ama = add nsw i32 %i.agv, %i.ags
  %i.amb = load i32, ptr %i.alj, align 4, !tbaa !9
  %i.amc = add nsw i32 %i.ama, %i.amb             ; 2 uses
  %i.amd = load i32, ptr %i.afs, align 4, !tbaa !9
  %i.ame = add nsw i32 %i.amc, %i.alz             ; 2 uses
  %i.amf = add nsw i32 %i.alw, %i.alt             ; 2 uses
  %i.amg = sub nsw i32 %i.amc, %i.alz             ; 2 uses
  %i.amh = sub nsw i32 %i.alw, %i.alt             ; 2 uses
  %i.ami = add i32 %i.agd, %i.aga
  %i.amj = add i32 %i.ami, %i.amf
  %i.amk = add i32 %i.amj, %i.amd
  %i.aml = add i32 %i.amk, %i.ame
  %i.amm = shl nsw i32 %i.amf, 2
  %i.amn = add nsw i32 %i.ame, %i.amm
  %i.amo = shl nsw i32 %i.amh, 3
  %i.amp = add i32 %i.amo, %i.alq
  %i.amq = add i32 %i.amp, %i.amg
  %i.amr = sdiv i32 %i.aml, 576
  %i.ams = sdiv i32 %i.amn, 576
  %i.amt = sdiv i32 %i.amq, 576
  store i32 %i.amr, ptr %i.alb, align 4, !tbaa !9
  br i1 %i.ald, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.amu = shl nsw i32 %i.amh, 1
  %i.amv = add nsw i32 %i.amg, %i.amu
  %i.amw = sdiv i32 %i.amv, 576
  %i.amx = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  store i32 %i.amw, ptr %i.amx, align 4, !tbaa !9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.alf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.amy = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  store i32 %i.ams, ptr %i.amy, align 4, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br i1 %i.alh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.amz = getelementptr inbounds nuw i8, ptr %i.alb, i64 12
  store i32 %i.amt, ptr %i.amz, align 4, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ana = getelementptr inbounds [4 x i8], ptr %i.alb, i64 %i.afi
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader.us.i
  %.1.us.i = phi ptr [ %i.alb, %.preheader.us.i ], [ %i.ana, %bb.al ] ; 6 uses
  %i.anb = or disjoint i32 %i.aku, 1
  %.not.us.1.i = icmp slt i32 %i.anb, %i.en
  br i1 %.not.us.1.i, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.anc = add nsw i32 %i.ahv, %i.agz             ; 2 uses
  %i.and = add nsw i32 %i.ajn, %i.air             ; 2 uses
  %i.ane = sub nsw i32 %i.agz, %i.ahv             ; 2 uses
  %i.anf = sub nsw i32 %i.air, %i.ajn             ; 2 uses
  %i.ang = add i32 %i.agg, %i.age
  %i.anh = add i32 %i.ang, %i.anc
  %i.ani = add i32 %i.anh, %i.and
  %i.anj = shl nsw i32 %i.and, 2
  %i.ank = add nsw i32 %i.anj, %i.anc
  %reass.add = add i32 %i.akl, %i.anf
  %reass.mul = shl i32 %reass.add, 3
  %i.anl = add i32 %i.akn, %i.ane
  %i.anm = add i32 %i.anl, %reass.mul
  %i.ann = sdiv i32 %i.ani, 576
  %i.ano = sdiv i32 %i.ank, 576
  %i.anp = sdiv i32 %i.anm, 576
  store i32 %i.ann, ptr %.1.us.i, align 4, !tbaa !9
  br i1 %i.ald, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.anq = shl nsw i32 %i.anf, 1
  %i.anr = add nsw i32 %i.anq, %i.ane
  %i.ans = sdiv i32 %i.anr, 576
  %i.ant = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i32 %i.ans, ptr %i.ant, align 4, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.alf, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.anu = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store i32 %i.ano, ptr %i.anu, align 4, !tbaa !9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.alh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.anv = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store i32 %i.anp, ptr %i.anv, align 4, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.anw = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.afi
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.am
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.am ], [ %i.anw, %bb.at ] ; 6 uses
  %i.anx = or disjoint i32 %i.aku, 2
  %.not.us.2.i = icmp slt i32 %i.anx, %i.en
  br i1 %.not.us.2.i, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.any = add nsw i32 %i.ahx, %i.ahb             ; 2 uses
  %i.anz = add nsw i32 %i.ajp, %i.ait             ; 2 uses
  %i.aoa = sub nsw i32 %i.ahb, %i.ahx             ; 2 uses
  %i.aob = sub nsw i32 %i.ait, %i.ajp             ; 2 uses
  %i.aoc = add i32 %i.agh, %i.aga
  %i.aod = add i32 %i.aoc, %i.any
  %i.aoe = add i32 %i.aod, %i.anz
  %i.aof = shl nsw i32 %i.anz, 2
  %i.aog = add nsw i32 %i.aof, %i.any
  %i.aoh = shl nsw i32 %i.aob, 3
  %i.aoi = add i32 %i.aoh, %i.aoa
  %i.aoj = add i32 %i.aoi, %i.akp
  %i.aok = add i32 %i.aoj, %i.ako
  %i.aol = sdiv i32 %i.aoe, 576
  %i.aom = sdiv i32 %i.aog, 576
  %i.aon = sdiv i32 %i.aok, 576
  store i32 %i.aol, ptr %.1.us.1.i, align 4, !tbaa !9
  br i1 %i.ald, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.aoo = shl nsw i32 %i.aob, 1
  %i.aop = add nsw i32 %i.aoo, %i.aoa
  %i.aoq = sdiv i32 %i.aop, 576
  %i.aor = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store i32 %i.aoq, ptr %i.aor, align 4, !tbaa !9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %i.alf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.aos = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store i32 %i.aom, ptr %i.aos, align 4, !tbaa !9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.alh, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.aot = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store i32 %i.aon, ptr %i.aot, align 4, !tbaa !9
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.aou = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.afi
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.au ], [ %i.aou, %bb.bb ] ; 4 uses
  %i.aov = or disjoint i32 %i.aku, 3
  %.not.us.3.i = icmp slt i32 %i.aov, %i.en
  br i1 %.not.us.3.i, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.aow = add nsw i32 %i.aic, %i.ahg             ; 2 uses
  %i.aox = add nsw i32 %i.aju, %i.aiy             ; 2 uses
  %i.aoy = sub nsw i32 %i.ahg, %i.aic             ; 2 uses
  %i.aoz = sub nsw i32 %i.aiy, %i.aju             ; 2 uses
  %i.apa = add i32 %i.agi, %i.age
  %i.apb = add i32 %i.apa, %i.agk
  %i.apc = add i32 %i.apb, %i.aow
  %i.apd = add i32 %i.apc, %i.aox
  %i.ape = shl nsw i32 %i.aox, 2
  %i.apf = add nsw i32 %i.ape, %i.aow
  %i.apg = shl nsw i32 %i.aoz, 3
  %i.aph = add i32 %i.apg, %i.aoy
  %i.api = add i32 %i.aph, %i.akn
  %i.apj = add i32 %i.api, %i.akr
  %i.apk = add i32 %i.apj, %i.akq
  %i.apl = sdiv i32 %i.apd, 576
  %i.apm = sdiv i32 %i.apf, 576
  %i.apn = sdiv i32 %i.apk, 576
  store i32 %i.apl, ptr %.1.us.2.i, align 4, !tbaa !9
  br i1 %i.ald, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.apo = shl nsw i32 %i.aoz, 1
  %i.app = add nsw i32 %i.apo, %i.aoy
  %i.apq = sdiv i32 %i.app, 576
  %i.apr = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store i32 %i.apq, ptr %i.apr, align 4, !tbaa !9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.alf, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aps = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store i32 %i.apm, ptr %i.aps, align 4, !tbaa !9
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.alh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.apt = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store i32 %i.apn, ptr %i.apt, align 4, !tbaa !9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bc
  %indvars.iv.next305.i = add nuw nsw i64 %indvars.iv304.i, 1 ; 2 uses
  %exitcond308.not.i = icmp eq i64 %indvars.iv.next305.i, %27
  br i1 %exitcond308.not.i, label %._crit_edge.us220.i, label %.preheader.us.i, !llvm.loop !411

._crit_edge.us220.i:                              ; preds = %bb.bj
  %indvars.iv.next310.i = add nuw nsw i64 %indvars.iv309.i, 1 ; 2 uses
  %exitcond313.not.i = icmp eq i64 %indvars.iv.next310.i, %i.ed
  br i1 %exitcond313.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us219.i, !llvm.loop !412

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.apu = phi i32 [ %i.art, %.noexc52 ], [ %.pre137, %.noexc52.preheader ] ; 3 uses
  %i.apv = phi i32 [ %i.arv, %.noexc52 ], [ %i.ek, %.noexc52.preheader ] ; 2 uses
  %.0130 = phi i32 [ %i.aru, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.apw = sub nsw i32 %i.apv, %.0130
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.apu, i32 %i.apw)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.apx = load i32, ptr %3, align 4, !tbaa !9
  %i.apy = sdiv i32 %i.dm, %i.apx
  %i.apz = load ptr, ptr %10, align 8, !tbaa !32, !noalias !413
  %i.aqa = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !413
  %i.aqb = sext i32 %i.apy to i64
  %i.aqc = mul i64 %i.aqa, %i.aqb
  %i.aqd = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !413 ; 3 uses
  %i.aqe = mul i64 %i.aqc, %i.aqd
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apz, i64 %i.aqe
  %i.aqg = load i32, ptr %i.t, align 8, !tbaa !16, !noalias !413
  %i.aqh = load ptr, ptr %i.u, align 8, !tbaa !225, !noalias !413
  %i.aqi = sdiv i32 %.0130, %i.apu
  %i.aqj = sext i32 %i.aqi to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !226
  store i64 %i.aqd, ptr %i.w, align 8, !tbaa !36
  store i32 %i.aqg, ptr %i.x, align 8, !tbaa !16
  store ptr %i.aqh, ptr %i.y, align 8, !tbaa !225
  store i32 2, ptr %i.z, align 8, !tbaa !227
  %i.aqk = load <2 x i32>, ptr %i.p, align 4, !tbaa !9, !noalias !413
  %i.aql = load i32, ptr %i.q, align 8, !tbaa !19, !noalias !413
  %i.aqm = load i32, ptr %i.p, align 4, !tbaa !10, !noalias !413
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = sext i32 %i.aql to i64
  %i.aqp = mul nsw i64 %i.aqo, %i.aqn             ; 2 uses
  %i.aqq = mul i64 %i.aqd, %i.aqp
  %i.aqr = mul i64 %i.aqq, %i.aqj
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqr
  store ptr %i.aqs, ptr %13, align 8, !tbaa !32
  %i.aqt = shufflevector <2 x i32> %i.aqk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aqu = shufflevector <4 x i32> %i.aqt, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.aqu, ptr %i.aa, align 4, !tbaa !9
  store i64 %i.aqp, ptr %i.ab, align 8, !tbaa !18, !alias.scope !416
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.aqv = load i32, ptr %7, align 4, !tbaa !9
  %i.aqw = sdiv i32 %.044131, %i.aqv
  %i.aqx = load ptr, ptr %11, align 8, !tbaa !32, !noalias !419
  %i.aqy = load i64, ptr %i.ae, align 8, !tbaa !18, !noalias !419
  %i.aqz = sext i32 %i.aqw to i64
  %i.ara = mul i64 %i.aqy, %i.aqz
  %i.arb = load i64, ptr %i.af, align 8, !tbaa !36, !noalias !419 ; 3 uses
  %i.arc = mul i64 %i.ara, %i.arb
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqx, i64 %i.arc
  %i.are = load i32, ptr %i.ag, align 8, !tbaa !16, !noalias !419
  %i.arf = load ptr, ptr %i.ah, align 8, !tbaa !225, !noalias !419
  store ptr null, ptr %i.ai, align 8, !tbaa !226
  store i64 %i.arb, ptr %i.aj, align 8, !tbaa !36
  store i32 %i.are, ptr %i.ak, align 8, !tbaa !16
  store ptr %i.arf, ptr %i.al, align 8, !tbaa !225
  store i32 2, ptr %i.am, align 8, !tbaa !227
  %i.arg = load <2 x i32>, ptr %i.ac, align 4, !tbaa !9, !noalias !419
  %i.arh = load i32, ptr %i.ad, align 8, !tbaa !19, !noalias !419
  %i.ari = load i32, ptr %i.ac, align 4, !tbaa !10, !noalias !419
  %i.arj = sext i32 %i.ari to i64
  %i.ark = sext i32 %i.arh to i64
  %i.arl = mul nsw i64 %i.ark, %i.arj             ; 2 uses
  %i.arm = mul i64 %i.arb, %i.arl
  %i.arn = mul i64 %i.arm, %i.aqj
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ard, i64 %i.arn
  store ptr %i.aro, ptr %14, align 8, !tbaa !32
  %i.arp = shufflevector <2 x i32> %i.arg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.arq = shufflevector <4 x i32> %i.arp, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.arq, ptr %i.an, align 4, !tbaa !9
  store i64 %i.arl, ptr %i.ao, align 8, !tbaa !18, !alias.scope !422
  %i.arr = add nsw i32 %i.apu, %.0130
  %i.ars = icmp sge i32 %i.arr, %i.apv
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.du, i32 noundef 36, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0130, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.ars)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  %i.art = load i32, ptr %9, align 4, !tbaa !9    ; 2 uses
  %i.aru = add nsw i32 %i.art, %.0130             ; 2 uses
  %i.arv = load i32, ptr %8, align 4, !tbaa !9    ; 2 uses
  %i.arw = icmp slt i32 %i.aru, %i.arv
  br i1 %i.arw, label %.noexc52, label %._crit_edge, !llvm.loop !425

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us220.i, %.lr.ph217.i, %.preheader51.i
  %i.arx = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.ary = add nsw i32 %i.arx, %.044131           ; 2 uses
  %i.arz = load i32, ptr %6, align 4, !tbaa !9    ; 2 uses
  %i.asa = icmp slt i32 %i.ary, %i.arz
  br i1 %i.asa, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !426

._crit_edge136:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge136, %bb.a
  ret void

bb.bl:                                            ; preds = %bb.c
  %i.asb = landingpad { ptr, i32 }
          catch ptr null
  %i.asc = extractvalue { ptr, i32 } %i.asb, 0
  call void @__clang_call_terminate(ptr %i.asc) #24
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.co

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not287 = icmp sgt i32 %i.k, %i.j
  br i1 %.not287, label %._crit_edge290, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !9      ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge290

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.awi, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.0288 = phi i32 [ %i.awj, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !9
  %i.s = shl nsw i32 %.0288, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.5
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.5 ] ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !9
  %i.x = load i32, ptr %6, align 4, !tbaa !9      ; 2 uses
  %i.y = load i32, ptr %8, align 4, !tbaa !9
  %i.z = add nsw i32 %i.y, %i.t
  %i.aa = load i32, ptr %9, align 4, !tbaa !9     ; 4 uses
  %i.ab = sdiv i32 %i.z, %i.aa
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !10, !noalias !427
  %i.ad = load ptr, ptr %7, align 8, !tbaa !32, !noalias !427
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !427
  %i.af = sext i32 %i.ab to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !36, !noalias !427 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = add nsw i32 %i.w, %i.al                 ; 2 uses
  %i.an = srem i32 %i.am, %i.x
  %i.ao = sdiv i32 %i.am, %i.x
  %i.ap = shl nsw i32 %i.ao, 2                    ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 6 uses
  %i.ar = mul i64 %i.ah, %i.ak
  %i.as = mul i64 %i.ar, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = shl nsw i32 %i.an, 2                    ; 6 uses
  %i.av = mul nsw i32 %i.au, %i.aa
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw ; 15 uses
  %i.ay = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.az = load i32, ptr %11, align 4, !tbaa !9    ; 11 uses
  %i.ba = mul nsw i32 %i.aa, %i.az
  %i.bb = sext i32 %i.ba to i64                   ; 5 uses
  %i.bc = or disjoint i32 %i.au, 1                ; 12 uses
end_hunk_3
