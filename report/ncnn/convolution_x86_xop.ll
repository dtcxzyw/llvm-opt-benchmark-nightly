Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_xop?download=true
inline.NumInlined: 70
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
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
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.ta, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.tc, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044150 = phi i32 [ 0, %.lr.ph ], [ %i.tb, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.bq = sub nsw i32 %i.bp, %.044150
  %.sroa.speculated116 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 19 uses
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
  %15 = sext i32 %i.cc to i64
  %i.cd = shl nsw i32 %.sroa.speculated116, 3
  %16 = sext i32 %i.cd to i64
  %i.ce = mul nsw i32 %.sroa.speculated116, 12
  %17 = sext i32 %i.ce to i64
  %18 = sext i32 %factor.op.mul381.i to i64       ; 12 uses
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
  %.idx494.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx494.i ; 5 uses
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
  %19 = sext i32 %i.gq to i64
  %i.gr = shl nsw i32 %.sroa.speculated116, 2
  %20 = sext i32 %i.gr to i64
  %i.gs = mul nsw i32 %.sroa.speculated116, 6
  %21 = sext i32 %i.gs to i64
  %i.gt = shl nsw i32 %.sroa.speculated116, 3
  %22 = sext i32 %i.gt to i64                     ; 12 uses
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
  %i.mz = sext i32 %.sroa.speculated116 to i64
  %i.na = shl nsw i32 %.sroa.speculated116, 1
  %23 = sext i32 %i.na to i64
  %i.nb = mul nsw i32 %.sroa.speculated116, 3
  %24 = sext i32 %i.nb to i64
  %i.nc = shl nsw i32 %.sroa.speculated116, 2
  %25 = sext i32 %i.nc to i64                     ; 12 uses
  %i.nd = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.my, label %.lr.ph413.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph413.split.us.i:                             ; preds = %.lr.ph413.i
  %i.ne = load ptr, ptr %12, align 8, !tbaa !32, !noalias !271
  %i.nf = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !271
  %i.ng = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !271 ; 2 uses
  %factor.op.mul423.i = mul i64 %i.ng, %i.nf
  %i.nh = sext i32 %.1288.lcssa.i to i64
  %wide.trip.count466.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us421.i

.lr.ph.us421.i:                                   ; preds = %._crit_edge.us422.i, %.lr.ph413.split.us.i
  %indvars.iv468.i = phi i64 [ %indvars.iv.next469.i, %._crit_edge.us422.i ], [ %i.nh, %.lr.ph413.split.us.i ] ; 3 uses
  %i.ni = trunc nsw i64 %indvars.iv468.i to i32
  %factor.op.mul408.reass.us.i = mul i32 %factor.op.mul381.i, %i.ni
  %i.nj = sext i32 %factor.op.mul408.reass.us.i to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.nj
  %i.nl = add nsw i64 %indvars.iv468.i, %i.bl
  %.reass424.i = mul i64 %factor.op.mul423.i, %i.nl
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.reass424.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us419.i, %.lr.ph.us421.i
  %indvars.iv463.i = phi i64 [ 0, %.lr.ph.us421.i ], [ %indvars.iv.next464.i, %.split.us419.i ] ; 3 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv463.i ; 5 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.mz ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %23 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %24 ; 2 uses
  %i.nr = load i32, ptr %i.nn, align 4, !tbaa !9
  %i.ns = load i32, ptr %i.no, align 4, !tbaa !9  ; 2 uses
  %i.nt = add nsw i32 %i.ns, %i.nr
  %i.nu = load i32, ptr %i.np, align 4, !tbaa !9  ; 2 uses
  %i.nv = add nsw i32 %i.nt, %i.nu                ; 2 uses
  %i.nw = sub i32 %i.ns, %i.nu
  %i.nx = load i32, ptr %i.nq, align 4, !tbaa !9
  %i.ny = add nsw i32 %i.nw, %i.nx                ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %25 ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %25 ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %25 ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %25 ; 2 uses
  %i.od = load i32, ptr %i.nz, align 4, !tbaa !9
  %i.oe = load i32, ptr %i.oa, align 4, !tbaa !9  ; 2 uses
  %i.of = add nsw i32 %i.oe, %i.od
  %i.og = load i32, ptr %i.ob, align 4, !tbaa !9  ; 2 uses
  %i.oh = add nsw i32 %i.of, %i.og                ; 3 uses
  %i.oi = sub i32 %i.oe, %i.og
  %i.oj = load i32, ptr %i.oc, align 4, !tbaa !9
  %i.ok = add nsw i32 %i.oi, %i.oj                ; 3 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %25 ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %25 ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %25 ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %25 ; 2 uses
  %i.op = load i32, ptr %i.ol, align 4, !tbaa !9
  %i.oq = load i32, ptr %i.om, align 4, !tbaa !9  ; 2 uses
  %i.or = add nsw i32 %i.oq, %i.op
  %i.os = load i32, ptr %i.on, align 4, !tbaa !9  ; 2 uses
  %i.ot = add nsw i32 %i.or, %i.os                ; 3 uses
  %i.ou = sub i32 %i.oq, %i.os
  %i.ov = load i32, ptr %i.oo, align 4, !tbaa !9
  %i.ow = add nsw i32 %i.ou, %i.ov                ; 3 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %25
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %25
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %25
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %25
  %i.pb = load i32, ptr %i.ox, align 4, !tbaa !9
  %i.pc = load i32, ptr %i.oy, align 4, !tbaa !9  ; 2 uses
  %i.pd = load i32, ptr %i.oz, align 4, !tbaa !9  ; 2 uses
  %i.pe = load i32, ptr %i.pa, align 4, !tbaa !9
  %i.pf = trunc i64 %indvars.iv463.i to i32
  %i.pg = add i32 %.044150, %i.pf                 ; 2 uses
  %i.ph = sdiv i32 %i.pg, %i.ca
  %i.pi = srem i32 %i.pg, %i.ca
  %i.pj = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !271
  %i.pk = sext i32 %i.pj to i64
  %i.pl = shl nsw i32 %i.ph, 1                    ; 4 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = mul i64 %i.ng, %i.pm
  %i.po = mul i64 %i.pn, %i.pk
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.po
  %i.pq = shl nsw i32 %i.pi, 1                    ; 2 uses
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.pp, i64 %i.pr ; 7 uses
  %i.pt = or disjoint i32 %i.pq, 1
  %i.pu = icmp slt i32 %i.pt, %i.bt
  %.fr.us.i = freeze i1 %i.pu
  %.not.us.us.i = icmp slt i32 %i.pl, %i.bu       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.y:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i
  %i.pv = add nsw i32 %i.oh, %i.nv
  %i.pw = add nsw i32 %i.pv, %i.ot
  %i.px = ashr i32 %i.pw, 2
  store i32 %i.px, ptr %i.ps, align 4, !tbaa !9
  %i.py = getelementptr inbounds [4 x i8], ptr %i.ps, i64 %i.nd
  br label %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i

_ZN4ncnn3MatD2Ev.exit.split.us420.1.i:            ; preds = %bb.y, %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i
  %.1.us418.i = phi ptr [ %i.ps, %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i ], [ %i.py, %bb.y ]
  %i.pz = or disjoint i32 %i.pl, 1
  %.not.us417.1.i = icmp slt i32 %i.pz, %i.bu
  br i1 %.not.us417.1.i, label %bb.z, label %.split.us419.i

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i
  %i.qa = add nsw i32 %i.ok, %i.ny
  %i.qb = add nsw i32 %i.qa, %i.ow
  %i.qc = ashr i32 %i.qb, 2
  store i32 %i.qc, ptr %.1.us418.i, align 4, !tbaa !9
  br label %.split.us419.i

.split.us419.i:                                   ; preds = %bb.ab, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.z, %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i
  %indvars.iv.next464.i = add nuw nsw i64 %indvars.iv463.i, 1 ; 2 uses
  %exitcond467.not.i = icmp eq i64 %indvars.iv.next464.i, %wide.trip.count466.i
  br i1 %exitcond467.not.i, label %._crit_edge.us422.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !274

bb.aa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.qd = add nsw i32 %i.oh, %i.nv
  %i.qe = add nsw i32 %i.qd, %i.ot
  %i.qf = ashr i32 %i.qe, 2
  store i32 %i.qf, ptr %i.ps, align 4, !tbaa !9
  %i.qg = sub i32 %i.oh, %i.ot
  %i.qh = add i32 %i.qg, %i.pb
  %i.qi = add i32 %i.qh, %i.pc
  %i.qj = add i32 %i.qi, %i.pd
  %i.qk = ashr i32 %i.qj, 2
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store i32 %i.qk, ptr %i.ql, align 4, !tbaa !9
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.ps, i64 %i.nd
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.ps, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.qm, %bb.aa ] ; 2 uses
  %i.qn = or disjoint i32 %i.pl, 1
  %.not.us.us.1.i = icmp slt i32 %i.qn, %i.bu
  br i1 %.not.us.us.1.i, label %bb.ab, label %.split.us419.i

bb.ab:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.qo = add nsw i32 %i.ok, %i.ny
  %i.qp = add nsw i32 %i.qo, %i.ow
  %i.qq = ashr i32 %i.qp, 2
  store i32 %i.qq, ptr %.1.us.us.i, align 4, !tbaa !9
  %i.qr = add i32 %i.ok, %i.pc
  %i.qs = add i32 %i.ow, %i.pd
  %i.qt = sub i32 %i.qr, %i.qs
  %i.qu = add i32 %i.qt, %i.pe
  %i.qv = ashr i32 %i.qu, 2
  %i.qw = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !9
  br label %.split.us419.i

._crit_edge.us422.i:                              ; preds = %.split.us419.i
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond472.not.i = icmp eq i64 %indvars.iv.next469.i, %i.bk
  br i1 %exitcond472.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us421.i, !llvm.loop !275

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.qx = phi i32 [ %i.sw, %.noexc52 ], [ %.pre156, %.noexc52.preheader ] ; 3 uses
  %i.qy = phi i32 [ %i.sy, %.noexc52 ], [ %i.br, %.noexc52.preheader ] ; 2 uses
  %.0149 = phi i32 [ %i.sx, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.qz = sub nsw i32 %i.qy, %.0149
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.qx, i32 %i.qz)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.ra = load i32, ptr %3, align 4, !tbaa !9
  %i.rb = sdiv i32 %i.at, %i.ra
  %i.rc = load ptr, ptr %10, align 8, !tbaa !32, !noalias !276
  %i.rd = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !276
  %i.re = sext i32 %i.rb to i64
  %i.rf = mul i64 %i.rd, %i.re
  %i.rg = load i64, ptr %i.q, align 8, !tbaa !36, !noalias !276 ; 3 uses
  %i.rh = mul i64 %i.rf, %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rh
  %i.rj = load i32, ptr %i.r, align 8, !tbaa !16, !noalias !276
  %i.rk = load ptr, ptr %i.s, align 8, !tbaa !225, !noalias !276
  %i.rl = sdiv i32 %.0149, %i.qx
  %i.rm = sext i32 %i.rl to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !226
  store i64 %i.rg, ptr %i.u, align 8, !tbaa !36
  store i32 %i.rj, ptr %i.v, align 8, !tbaa !16
  store ptr %i.rk, ptr %i.w, align 8, !tbaa !225
  store i32 2, ptr %i.x, align 8, !tbaa !227
  %i.rn = load <2 x i32>, ptr %i.n, align 4, !tbaa !9, !noalias !276
  %i.ro = load i32, ptr %i.o, align 8, !tbaa !19, !noalias !276
  %i.rp = load i32, ptr %i.n, align 4, !tbaa !10, !noalias !276
  %i.rq = sext i32 %i.rp to i64
  %i.rr = sext i32 %i.ro to i64
  %i.rs = mul nsw i64 %i.rr, %i.rq                ; 2 uses
  %i.rt = mul i64 %i.rg, %i.rs
  %i.ru = mul i64 %i.rt, %i.rm
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.ru
  store ptr %i.rv, ptr %13, align 8, !tbaa !32
  %i.rw = shufflevector <2 x i32> %i.rn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rx = shufflevector <4 x i32> %i.rw, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.rx, ptr %i.y, align 4, !tbaa !9
  store i64 %i.rs, ptr %i.z, align 8, !tbaa !18, !alias.scope !279
end_hunk_0
begin_hunk_1_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
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
  %i.eh = phi i32 [ %.pre, %.lr.ph ], [ %i.ary, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.ei = phi i32 [ %i.dy, %.lr.ph ], [ %i.asa, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044131 = phi i32 [ 0, %.lr.ph ], [ %i.arz, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.ej = sub nsw i32 %i.ei, %.044131
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.eh, i32 %i.ej) ; 26 uses
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
  %15 = sext i32 %i.ev to i64
  %i.ew = shl nsw i32 %.sroa.speculated117, 3
  %16 = sext i32 %i.ew to i64
  %i.ex = mul nsw i32 %.sroa.speculated117, 12
  %17 = sext i32 %i.ex to i64
  %i.ey = shl nsw i32 %.sroa.speculated117, 4
  %18 = sext i32 %i.ey to i64
  %i.ez = mul nsw i32 %.sroa.speculated117, 20
  %19 = sext i32 %i.ez to i64
  %i.fa = mul nsw i32 %.sroa.speculated117, 24
  %20 = sext i32 %i.fa to i64                     ; 30 uses
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
  %.idx317.i = shl nuw nsw i64 %indvars.iv273.i, 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx317.i ; 7 uses
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
  %i.lq = load i32, ptr %i.ap, align 4, !tbaa !10, !noalias !396
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
  %21 = sext i32 %i.oz to i64
  %i.pa = shl nsw i32 %.sroa.speculated117, 2
  %22 = sext i32 %i.pa to i64
  %i.pb = mul nsw i32 %.sroa.speculated117, 6
  %23 = sext i32 %i.pb to i64
  %i.pc = shl nsw i32 %.sroa.speculated117, 3
  %24 = sext i32 %i.pc to i64
  %i.pd = mul nsw i32 %.sroa.speculated117, 10
  %25 = sext i32 %i.pd to i64
  %i.pe = mul nsw i32 %.sroa.speculated117, 12
  %26 = sext i32 %i.pe to i64                     ; 30 uses
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
  %i.afd = sext i32 %.sroa.speculated117 to i64
  %i.afe = shl nsw i32 %.sroa.speculated117, 1
  %27 = sext i32 %i.afe to i64
  %i.aff = mul nsw i32 %.sroa.speculated117, 3
  %28 = sext i32 %i.aff to i64
  %i.afg = shl nsw i32 %.sroa.speculated117, 2
  %29 = sext i32 %i.afg to i64
  %i.afh = mul nsw i32 %.sroa.speculated117, 5
  %30 = sext i32 %i.afh to i64
  %i.afi = mul nsw i32 %.sroa.speculated117, 6
  %31 = sext i32 %i.afi to i64                    ; 30 uses
  %i.afj = sext i32 %i.em to i64                  ; 3 uses
  br i1 %i.afc, label %.lr.ph217.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph217.split.us.i:                             ; preds = %.lr.ph217.i
  %i.afk = load ptr, ptr %12, align 8, !tbaa !32, !noalias !408
  %i.afl = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !408
  %i.afm = load i64, ptr %i.ba, align 8, !tbaa !36, !noalias !408 ; 2 uses
  %factor.op.mul245.i = mul i64 %i.afm, %i.afl
  %i.afn = sext i32 %.1648.lcssa.i to i64
  %wide.trip.count307.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us219.i

.lr.ph.us219.i:                                   ; preds = %._crit_edge.us220.i, %.lr.ph217.split.us.i
  %indvars.iv309.i = phi i64 [ %indvars.iv.next310.i, %._crit_edge.us220.i ], [ %i.afn, %.lr.ph217.split.us.i ] ; 3 uses
  %i.afo = trunc nsw i64 %indvars.iv309.i to i32
  %factor.op.mul212.reass.us.i = mul i32 %factor.op.mul74.i, %i.afo
  %i.afp = sext i32 %factor.op.mul212.reass.us.i to i64
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.afp
  %i.afr = add nsw i64 %indvars.iv309.i, %i.ee
  %.reass246.i = mul i64 %factor.op.mul245.i, %i.afr
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afk, i64 %.reass246.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.bj, %.lr.ph.us219.i
  %indvars.iv304.i = phi i64 [ 0, %.lr.ph.us219.i ], [ %indvars.iv.next305.i, %bb.bj ] ; 3 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %indvars.iv304.i ; 7 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.afd ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %27 ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %28 ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %29 ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %30 ; 2 uses
  %i.afz = load i32, ptr %i.afu, align 4, !tbaa !9 ; 2 uses
  %i.aga = load i32, ptr %i.afv, align 4, !tbaa !9 ; 2 uses
  %i.agb = add nsw i32 %i.aga, %i.afz             ; 2 uses
  %i.agc = load i32, ptr %i.afw, align 4, !tbaa !9 ; 2 uses
  %i.agd = load i32, ptr %i.afx, align 4, !tbaa !9 ; 2 uses
  %i.age = add nsw i32 %i.agd, %i.agc             ; 2 uses
  %i.agf = sub nsw i32 %i.afz, %i.aga             ; 2 uses
  %i.agg = sub nsw i32 %i.agc, %i.agd             ; 2 uses
  %i.agh = shl nsw i32 %i.agg, 1
  %i.agi = shl nsw i32 %i.age, 2
  %i.agj = shl nsw i32 %i.agg, 3
  %i.agk = load i32, ptr %i.afy, align 4, !tbaa !9
  %i.agl = shl nsw i32 %i.agk, 2
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %31 ; 2 uses
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %31 ; 2 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %31 ; 2 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %31 ; 2 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %31 ; 2 uses
  %i.agr = load i32, ptr %i.agm, align 4, !tbaa !9 ; 2 uses
  %i.ags = load i32, ptr %i.agn, align 4, !tbaa !9 ; 2 uses
  %i.agt = add nsw i32 %i.ags, %i.agr             ; 2 uses
  %i.agu = load i32, ptr %i.ago, align 4, !tbaa !9 ; 2 uses
  %i.agv = load i32, ptr %i.agp, align 4, !tbaa !9 ; 2 uses
  %i.agw = add nsw i32 %i.agv, %i.agu             ; 2 uses
  %i.agx = sub nsw i32 %i.agr, %i.ags             ; 2 uses
  %i.agy = sub nsw i32 %i.agu, %i.agv             ; 2 uses
  %i.agz = shl nsw i32 %i.agy, 1
  %i.aha = add nsw i32 %i.agz, %i.agx             ; 2 uses
  %i.ahb = shl nsw i32 %i.agw, 2
  %i.ahc = add nsw i32 %i.ahb, %i.agt             ; 2 uses
  %i.ahd = shl nsw i32 %i.agy, 3
  %i.ahe = add nsw i32 %i.ahd, %i.agx
  %i.ahf = load i32, ptr %i.agq, align 4, !tbaa !9
  %i.ahg = shl nsw i32 %i.ahf, 2
  %i.ahh = add nsw i32 %i.ahe, %i.ahg             ; 2 uses
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %31 ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %31 ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %31 ; 2 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %31 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %31 ; 2 uses
  %i.ahn = load i32, ptr %i.ahi, align 4, !tbaa !9 ; 2 uses
  %i.aho = load i32, ptr %i.ahj, align 4, !tbaa !9 ; 2 uses
  %i.ahp = add nsw i32 %i.aho, %i.ahn             ; 2 uses
  %i.ahq = load i32, ptr %i.ahk, align 4, !tbaa !9 ; 2 uses
  %i.ahr = load i32, ptr %i.ahl, align 4, !tbaa !9 ; 2 uses
  %i.ahs = add nsw i32 %i.ahr, %i.ahq             ; 2 uses
  %i.aht = sub nsw i32 %i.ahn, %i.aho             ; 2 uses
  %i.ahu = sub nsw i32 %i.ahq, %i.ahr             ; 2 uses
  %i.ahv = shl nsw i32 %i.ahu, 1
  %i.ahw = add nsw i32 %i.ahv, %i.aht             ; 2 uses
  %i.ahx = shl nsw i32 %i.ahs, 2
  %i.ahy = add nsw i32 %i.ahx, %i.ahp             ; 2 uses
  %i.ahz = shl nsw i32 %i.ahu, 3
  %i.aia = add nsw i32 %i.ahz, %i.aht
  %i.aib = load i32, ptr %i.ahm, align 4, !tbaa !9
  %i.aic = shl nsw i32 %i.aib, 2
  %i.aid = add nsw i32 %i.aia, %i.aic             ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %31 ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %31 ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %31 ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %31 ; 2 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %31 ; 2 uses
  %i.aij = load i32, ptr %i.aie, align 4, !tbaa !9 ; 2 uses
  %i.aik = load i32, ptr %i.aif, align 4, !tbaa !9 ; 2 uses
  %i.ail = add nsw i32 %i.aik, %i.aij             ; 2 uses
  %i.aim = load i32, ptr %i.aig, align 4, !tbaa !9 ; 2 uses
  %i.ain = load i32, ptr %i.aih, align 4, !tbaa !9 ; 2 uses
  %i.aio = add nsw i32 %i.ain, %i.aim             ; 2 uses
  %i.aip = sub nsw i32 %i.aij, %i.aik             ; 2 uses
  %i.aiq = sub nsw i32 %i.aim, %i.ain             ; 2 uses
  %i.air = shl nsw i32 %i.aiq, 1
  %i.ais = add nsw i32 %i.air, %i.aip             ; 2 uses
  %i.ait = shl nsw i32 %i.aio, 2
  %i.aiu = add nsw i32 %i.ait, %i.ail             ; 2 uses
  %i.aiv = shl nsw i32 %i.aiq, 3
  %i.aiw = add nsw i32 %i.aiv, %i.aip
  %i.aix = load i32, ptr %i.aii, align 4, !tbaa !9
  %i.aiy = shl nsw i32 %i.aix, 2
  %i.aiz = add nsw i32 %i.aiw, %i.aiy             ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %31 ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %31 ; 2 uses
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %31 ; 2 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %31 ; 2 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %31 ; 2 uses
  %i.ajf = load i32, ptr %i.aja, align 4, !tbaa !9 ; 2 uses
  %i.ajg = load i32, ptr %i.ajb, align 4, !tbaa !9 ; 2 uses
  %i.ajh = add nsw i32 %i.ajg, %i.ajf             ; 2 uses
  %i.aji = load i32, ptr %i.ajc, align 4, !tbaa !9 ; 2 uses
  %i.ajj = load i32, ptr %i.ajd, align 4, !tbaa !9 ; 2 uses
  %i.ajk = add nsw i32 %i.ajj, %i.aji             ; 2 uses
  %i.ajl = sub nsw i32 %i.ajf, %i.ajg             ; 2 uses
  %i.ajm = sub nsw i32 %i.aji, %i.ajj             ; 2 uses
  %i.ajn = shl nsw i32 %i.ajm, 1
  %i.ajo = add nsw i32 %i.ajn, %i.ajl             ; 2 uses
  %i.ajp = shl nsw i32 %i.ajk, 2
  %i.ajq = add nsw i32 %i.ajp, %i.ajh             ; 2 uses
  %i.ajr = shl nsw i32 %i.ajm, 3
  %i.ajs = add nsw i32 %i.ajr, %i.ajl
  %i.ajt = load i32, ptr %i.aje, align 4, !tbaa !9
  %i.aju = shl nsw i32 %i.ajt, 2
  %i.ajv = add nsw i32 %i.ajs, %i.aju             ; 2 uses
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %31
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %31
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %31
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %31
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %31
  %i.akb = trunc i64 %indvars.iv304.i to i32
  %i.akc = add i32 %.044131, %i.akb               ; 2 uses
  %i.akd = sdiv i32 %i.akc, %i.et
  %i.ake = srem i32 %i.akc, %i.et
  %i.akf = load i32, ptr %i.ajw, align 4, !tbaa !9 ; 2 uses
  %i.akg = load i32, ptr %i.ajx, align 4, !tbaa !9 ; 2 uses
  %i.akh = add nsw i32 %i.akg, %i.akf             ; 2 uses
  %i.aki = load i32, ptr %i.ajy, align 4, !tbaa !9 ; 2 uses
  %i.akj = load i32, ptr %i.ajz, align 4, !tbaa !9 ; 2 uses
  %i.akk = add nsw i32 %i.akj, %i.aki             ; 2 uses
  %i.akl = sub nsw i32 %i.akf, %i.akg
  %i.akm = sub nsw i32 %i.aki, %i.akj             ; 2 uses
  %i.akn = load i32, ptr %i.aka, align 4, !tbaa !9
  %i.ako = shl i32 %i.akl, 2                      ; 2 uses
  %i.akp = shl i32 %i.akk, 4
  %i.akq = shl i32 %i.akh, 2
  %i.akr = shl i32 %i.akn, 4
  %i.aks = shl i32 %i.akm, 5
  %i.akt = load i32, ptr %i.ap, align 4, !tbaa !10, !noalias !408
  %i.aku = sext i32 %i.akt to i64
  %i.akv = shl nsw i32 %i.akd, 2                  ; 5 uses
  %i.akw = sext i32 %i.akv to i64
  %i.akx = mul i64 %i.afm, %i.akw
  %i.aky = mul i64 %i.akx, %i.aku
  %i.akz = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.aky
  %i.ala = shl nsw i32 %i.ake, 2                  ; 4 uses
  %i.alb = sext i32 %i.ala to i64
  %i.alc = getelementptr inbounds [4 x i8], ptr %i.akz, i64 %i.alb ; 6 uses
  %i.ald = or disjoint i32 %i.ala, 1
  %i.ale = icmp slt i32 %i.ald, %i.em             ; 4 uses
  %i.alf = or disjoint i32 %i.ala, 2
  %i.alg = icmp slt i32 %i.alf, %i.em             ; 4 uses
  %i.alh = or disjoint i32 %i.ala, 3
  %i.ali = icmp slt i32 %i.alh, %i.em             ; 4 uses
  %.not.us.i = icmp slt i32 %i.akv, %i.en
  br i1 %.not.us.i, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.preheader.us.i
  %i.alj = add nsw i32 %i.akk, %i.akh
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %31 ; 2 uses
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %31 ; 2 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.all, i64 %31 ; 2 uses
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %31 ; 2 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.aln, i64 %31
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !9
  %i.alq = add nsw i32 %i.alj, %i.alp
  %i.alr = shl nsw i32 %i.alq, 2
  %i.als = add nsw i32 %i.ajk, %i.ajh
  %i.alt = load i32, ptr %i.aln, align 4, !tbaa !9
  %i.alu = add nsw i32 %i.als, %i.alt             ; 2 uses
  %i.alv = add nsw i32 %i.aio, %i.ail
  %i.alw = load i32, ptr %i.alm, align 4, !tbaa !9
  %i.alx = add nsw i32 %i.alv, %i.alw             ; 2 uses
  %i.aly = add nsw i32 %i.ahs, %i.ahp
  %i.alz = load i32, ptr %i.all, align 4, !tbaa !9
  %i.ama = add nsw i32 %i.aly, %i.alz             ; 2 uses
  %i.amb = add nsw i32 %i.agw, %i.agt
  %i.amc = load i32, ptr %i.alk, align 4, !tbaa !9
  %i.amd = add nsw i32 %i.amb, %i.amc             ; 2 uses
  %i.ame = load i32, ptr %i.aft, align 4, !tbaa !9
  %i.amf = add nsw i32 %i.amd, %i.ama             ; 2 uses
  %i.amg = add nsw i32 %i.alx, %i.alu             ; 2 uses
  %i.amh = sub nsw i32 %i.amd, %i.ama             ; 2 uses
end_hunk_3
