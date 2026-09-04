Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/squeeze?download=true
inline.NumInlined: 1068
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@"_ZN3jxl9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc":bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %5, ptr %3, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %.preheader.i17.i, label %bb.h

.preheader.i17.i:                                 ; preds = %bb.e, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i"
  %.07.i18.i = phi i32 [ %i.o, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i" ], [ 0, %bb.e ] ; 2 uses
  %i.k = load atomic i32, ptr %i.j seq_cst, align 8
  %.not.i.i19.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i19.i, label %bb.f, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i"

bb.f:                                             ; preds = %.preheader.i17.i
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !65, !nonnull !57, !align !58
  %i.m = call fastcc i32 @"_ZZN3jxl6N_SSE411InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEjm"(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i32 noundef %.07.i18.i) #24
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i32 1, ptr %i.j seq_cst, align 8
  br label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i"

"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i": ; preds = %bb.g, %bb.f, %.preheader.i17.i
  %i.o = add nuw i32 %.07.i18.i, 1                ; 2 uses
  %exitcond.not.i21.i = icmp eq i32 %i.o, %1
  br i1 %exitcond.not.i21.i, label %.sink.split.i15.i, label %.preheader.i17.i, !llvm.loop !106

bb.h:                                             ; preds = %bb.e
  %i.p = call noundef i32 %.val.i(ptr noundef %.val11.i, ptr noundef nonnull %3, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %1) #23, !inline_history !107
  %.not25.i.i = icmp eq i32 %i.p, 0
  br i1 %.not25.i.i, label %.sink.split.i15.i, label %bb.i

.sink.split.i15.i:                                ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i", %bb.h
  %i.q = load atomic i32, ptr %i.j seq_cst, align 8
  %.not5.i16.i = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not5.i16.i to i32
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i15.i, %bb.h
  %.sroa.03.0.shrunk.i.i = phi i32 [ 1, %bb.h ], [ %i.r, %.sink.split.i15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_S6_jjSE_RKT0_SG_.exit"

"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_S6_jjSE_RKT0_SG_.exit": ; preds = %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_.exit.i", %bb.d, %bb.i
  %.sroa.0.0.i = phi i32 [ %.sroa.03.1.i.i, %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_.exit.i" ], [ %.sroa.03.0.shrunk.i.i, %bb.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE410InvSqueezeERNS_5ImageERKNSt3__16vectorINS_13SqueezeParamsENS3_9allocatorIS5_EEEEPNS_10ThreadPoolE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = load ptr, ptr %1, align 8, !tbaa !71
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = trunc i64 %i.g to i32
  %.0120 = add i32 %i.h, -1                       ; 2 uses
  %i.i = icmp sgt i32 %.0120, -1
  br i1 %i.i, label %.lr.ph122, label %.thread

.lr.ph122:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph122, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  %.0121 = phi i32 [ %.0120, %.lr.ph122 ], [ %.0, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit ] ; 3 uses
  %i.l = zext nneg i32 %.0121 to i64
  %i.m = load ptr, ptr %1, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l ; 4 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.p = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 88                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !74   ; 10 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit

_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit: ; preds = %bb.b
  %i.x = trunc i64 %i.t to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !75   ; 3 uses
  %i.aa = add nsw i32 %i.v, -1
  %i.ab = add i32 %i.aa, %i.z                     ; 3 uses
  %i.ac = icmp slt i32 %i.v, %i.x
  %i.ad = icmp sgt i32 %i.ab, -1
  %.not.i = icmp slt i32 %i.ab, %i.x
  %.not23.i.not115 = and i1 %i.ad, %.not.i
  %i.ae = icmp sge i32 %i.ab, %i.v
  %.not113 = and i1 %i.ae, %.not23.i.not115
  %or.cond14.i.not = select i1 %i.ac, i1 %.not113, i1 false
  br i1 %or.cond14.i.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !76, !range !77, !noundef !57
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !78, !range !77, !noundef !57
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = add i32 %i.z, %i.v                      ; 2 uses
  %i.am = add i32 %i.al, -1                       ; 4 uses
  %i.an = zext nneg i32 %i.v to i64               ; 2 uses
  %i.ao = add nsw i64 %i.t, %i.an
  %i.ap = zext i32 %i.am to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = add nsw i64 %i.ao, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %.077 = select i1 %i.ak, i32 %i.al, i32 %i.as   ; 2 uses
  %i.at = load i64, ptr %i.k, align 8, !tbaa !79  ; 3 uses
  %i.au = icmp ugt i64 %i.at, %i.an
  br i1 %i.au, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.av = zext i32 %i.z to i64                    ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ax = sub nuw i64 %i.at, %i.av
  store i64 %i.ax, ptr %i.k, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.not118 = icmp ugt i32 %i.v, %i.am
  br i1 %.not118, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ay = sub i32 %.077, %i.v
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %.078119 = phi i32 [ %i.v, %.lr.ph ], [ %i.bz, %bb.m ] ; 5 uses
  %i.az = add i32 %i.ay, %.078119                 ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.bc = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 88
  %i.bh = icmp ugt i64 %i.bg, %i.ba
  br i1 %i.bh, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bi = zext i32 %.078119 to i64
  %i.bj = getelementptr inbounds nuw [88 x i8], ptr %i.bc, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw [88 x i8], ptr %i.bc, i64 %i.ba ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bp = icmp ult i64 %i.bl, %i.bo
  br i1 %i.bp, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call i32 @_ZN3jxl6N_SSE411InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.078119, i32 noundef %i.az, ptr noundef %2) #24 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bx = tail call i32 @_ZN3jxl6N_SSE411InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.078119, i32 noundef %i.az, ptr noundef %2) #24 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bz = add i32 %.078119, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.bz, %i.am
  br i1 %.not, label %.critedge.loopexit, label %bb.g, !llvm.loop !108

.critedge.loopexit:                               ; preds = %bb.m
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.f
  %i.ca = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.p, %bb.f ]
  %i.cb = zext i32 %.077 to i64
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.ca, i64 %i.cb ; 5 uses
  %i.cd = sub i32 %i.am, %i.v
  %i.ce = add i32 %i.cd, 1                        ; 2 uses
  %i.cf = ptrtoint ptr %i.cc to i64               ; 2 uses
  %.not.i81 = icmp eq i32 %i.ce, 0
  br i1 %.not.i81, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.cg = zext i32 %i.ce to i64
  %.idx = mul nuw nsw i64 %i.cg, 88
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx ; 2 uses
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !17  ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %i.cc, %bb.n ] ; 7 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %i.ch, %bb.n ] ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 56
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !tbaa !42
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 72
  %i.co = load <2 x i32>, ptr %i.cm, align 8, !tbaa !43
  store <2 x i32> %i.co, ptr %i.cn, align 8, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 80
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %storemerge9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(84) %.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.cu = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #23 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 48
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !39
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 88 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.ci
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.da = ptrtoint ptr %i.cz to i64
  br label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i

_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i: ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i, %bb.n
  %.pre-phi = phi i64 [ %i.da, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.cf, %bb.n ]
  %i.db = phi ptr [ %.pre.i, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.ci, %bb.n ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.cz, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.cc, %bb.n ] ; 2 uses
  %i.dc = sub i64 %.pre-phi, %i.cf
  %i.dd = getelementptr inbounds i8, ptr %i.cc, i64 %i.dc
  %.not6.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.db
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i ], [ %i.db, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i ] ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -88 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -64
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.df) #23
  %.not.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.de
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i
  store ptr %i.dd, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit: ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, %.critedge
  %.0 = add nsw i32 %.0121, -1
  %i.dg = icmp sgt i32 %.0121, 0
  br i1 %i.dg, label %bb.b, label %.thread, !llvm.loop !109

.thread:                                          ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit, %bb.b, %bb.d, %bb.g, %bb.i, %bb.h, %bb.k, %bb.l, %bb.a
  %.sroa.091.6 = phi i32 [ %i.bx, %bb.l ], [ 0, %bb.a ], [ 1, %bb.g ], [ 1, %bb.h ], [ %i.bv, %bb.k ], [ 1, %bb.i ], [ 1, %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit ], [ 0, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.sroa.091.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !74   ; 4 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75
  %i.f = add nsw i32 %i.b, -1
  %i.g = add i32 %i.f, %i.e                       ; 3 uses
  %i.h = icmp sge i32 %i.b, %1
  %i.i = icmp slt i32 %i.g, 0
  %.not = icmp sge i32 %i.g, %1
  %.not23 = or i1 %i.i, %.not
  %i.j = icmp slt i32 %i.g, %i.b
  %i.k = or i1 %i.j, %.not23
  %or.cond14 = select i1 %i.h, i1 true, i1 %i.k
  %spec.select = zext i1 %or.cond14 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.015.0 = phi i32 [ 1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.sroa.015.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %"class.jxl::StatusOr", align 8     ; 8 uses
  %5 = alloca %"class.jxl::Channel", align 8      ; 10 uses
  %6 = alloca %class.anon.18, align 8             ; 6 uses
  %7 = alloca %class.anon.19, align 8             ; 7 uses
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 88                  ; 2 uses
  %i.i = icmp ugt i64 %i.h, %i.a
  br i1 %i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %2 to i64                       ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %i.a ; 7 uses
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %i.j ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 3 uses
  %i.r = add i64 %i.o, 1
  %i.s = add i64 %i.r, %i.q
  %i.t = lshr i64 %i.s, 1
  %i.u = icmp eq i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %i.q, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !27
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !27
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ag = add i64 %i.q, %i.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !35
  call void @_ZN3jxl7Channel6CreateEP22JxlMemoryManagerStructmmii(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %4, ptr noundef %i.af, i64 noundef %i.ag, i64 noundef %i.w, i32 noundef %i.aj, i32 noundef %i.al) #23
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %5, ptr noundef nonnull align 8 dereferenceable(92) %4, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !39, !noalias !112
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !39, !alias.scope !112
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, ptr noundef nonnull align 8 dereferenceable(28) %i.av, i64 28, i1 false)
  %i.aw = load i64, ptr %i.x, align 8, !tbaa !26
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %0, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw [88 x i8], ptr %i.ay, i64 %i.a
  %i.ba = call noundef nonnull align 8 dereferenceable(84) ptr @_ZN3jxl7ChannelaSEOS0_(ptr noundef nonnull align 8 dereferenceable(84) %i.az, ptr noundef nonnull align 8 dereferenceable(84) %5) #23 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.m, ptr %6, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.l, ptr %i.bb, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %5, ptr %i.bc, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.l, ptr %7, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.m, ptr %i.bd, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %5, ptr %i.be, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.bf, align 8, !tbaa !41
  %i.bg = load i64, ptr %i.v, align 8, !tbaa !26
  %i.bh = add i64 %i.bg, 7
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = call fastcc i32 @"_ZN3jxl9RunOnPoolIZNS_6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_1EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc"(ptr noundef %3, i32 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %7) #24
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %0, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw [88 x i8], ptr %i.bm, i64 %i.a
  %i.bo = call noundef nonnull align 8 dereferenceable(84) ptr @_ZN3jxl7ChannelaSEOS0_(ptr noundef nonnull align 8 dereferenceable(84) %i.bn, ptr noundef nonnull align 8 dereferenceable(84) %5) #23 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.044.0 = phi i32 [ 0, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.sroa.044.1 = phi i32 [ 0, %bb.i ], [ %.sroa.044.0, %bb.l ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pr = load i32, ptr %i.am, align 8, !tbaa !38
  %i.bp = icmp eq i32 %.pr, 0
  br i1 %i.bp, label %bb.n, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aq) #23
  br label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit

_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit:          ; preds = %bb.g, %bb.m, %bb.n
  %.sroa.044.252 = phi i32 [ %.sroa.044.1, %bb.n ], [ %.sroa.044.1, %bb.m ], [ %i.an, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit, %bb.f
  %.sroa.044.3 = phi i32 [ 0, %bb.f ], [ %.sroa.044.252, %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %bb.d ]
  ret i32 %.sroa.044.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @"_ZN3jxl9RunOnPoolIZNS_6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_1EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc"(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.jxl::ThreadPool::RunCallState.48", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@"_ZN3jxl9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc":bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %5, ptr %3, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %.preheader.i17.i, label %bb.h

.preheader.i17.i:                                 ; preds = %bb.e, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i"
  %.07.i18.i = phi i32 [ %i.o, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i" ], [ 0, %bb.e ] ; 2 uses
  %i.k = load atomic i32, ptr %i.j seq_cst, align 8
  %.not.i.i19.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i19.i, label %bb.f, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i"

bb.f:                                             ; preds = %.preheader.i17.i
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !83, !nonnull !57, !align !58
  %i.m = call fastcc i32 @"_ZZN3jxl6N_AVX211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEjm"(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i32 noundef %.07.i18.i) #24
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i32 1, ptr %i.j seq_cst, align 8
  br label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i"

"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i": ; preds = %bb.g, %bb.f, %.preheader.i17.i
  %i.o = add nuw i32 %.07.i18.i, 1                ; 2 uses
  %exitcond.not.i21.i = icmp eq i32 %i.o, %1
  br i1 %exitcond.not.i21.i, label %.sink.split.i15.i, label %.preheader.i17.i, !llvm.loop !123

bb.h:                                             ; preds = %bb.e
  %i.p = call noundef i32 %.val.i(ptr noundef %.val11.i, ptr noundef nonnull %3, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %1) #23, !inline_history !124
  %.not25.i.i = icmp eq i32 %i.p, 0
  br i1 %.not25.i.i, label %.sink.split.i15.i, label %bb.i

.sink.split.i15.i:                                ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i", %bb.h
  %i.q = load atomic i32, ptr %i.j seq_cst, align 8
  %.not5.i16.i = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not5.i16.i to i32
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i15.i, %bb.h
  %.sroa.03.0.shrunk.i.i = phi i32 [ 1, %bb.h ], [ %i.r, %.sink.split.i15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_S6_jjSE_RKT0_SG_.exit"

"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_S6_jjSE_RKT0_SG_.exit": ; preds = %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_.exit.i", %bb.d, %bb.i
  %.sroa.0.0.i = phi i32 [ %.sroa.03.1.i.i, %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_.exit.i" ], [ %.sroa.03.0.shrunk.i.i, %bb.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_AVX210InvSqueezeERNS_5ImageERKNSt3__16vectorINS_13SqueezeParamsENS3_9allocatorIS5_EEEEPNS_10ThreadPoolE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(address_is_null) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = load ptr, ptr %1, align 8, !tbaa !71
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = trunc i64 %i.g to i32
  %.0120 = add i32 %i.h, -1                       ; 2 uses
  %i.i = icmp sgt i32 %.0120, -1
  br i1 %i.i, label %.lr.ph122, label %.thread

.lr.ph122:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph122, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  %.0121 = phi i32 [ %.0120, %.lr.ph122 ], [ %.0, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit ] ; 3 uses
  %i.l = zext nneg i32 %.0121 to i64
  %i.m = load ptr, ptr %1, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l ; 4 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.p = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 88                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !74   ; 10 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit

_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit: ; preds = %bb.b
  %i.x = trunc i64 %i.t to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !75   ; 3 uses
  %i.aa = add nsw i32 %i.v, -1
  %i.ab = add i32 %i.aa, %i.z                     ; 3 uses
  %i.ac = icmp slt i32 %i.v, %i.x
  %i.ad = icmp sgt i32 %i.ab, -1
  %.not.i = icmp slt i32 %i.ab, %i.x
  %.not23.i.not115 = and i1 %i.ad, %.not.i
  %i.ae = icmp sge i32 %i.ab, %i.v
  %.not113 = and i1 %i.ae, %.not23.i.not115
  %or.cond14.i.not = select i1 %i.ac, i1 %.not113, i1 false
  br i1 %or.cond14.i.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !76, !range !77, !noundef !57
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !78, !range !77, !noundef !57
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = add i32 %i.z, %i.v                      ; 2 uses
  %i.am = add i32 %i.al, -1                       ; 4 uses
  %i.an = zext nneg i32 %i.v to i64               ; 2 uses
  %i.ao = add nsw i64 %i.t, %i.an
  %i.ap = zext i32 %i.am to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = add nsw i64 %i.ao, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %.077 = select i1 %i.ak, i32 %i.al, i32 %i.as   ; 2 uses
  %i.at = load i64, ptr %i.k, align 8, !tbaa !79  ; 3 uses
  %i.au = icmp ugt i64 %i.at, %i.an
  br i1 %i.au, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.av = zext i32 %i.z to i64                    ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ax = sub nuw i64 %i.at, %i.av
  store i64 %i.ax, ptr %i.k, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.not118 = icmp ugt i32 %i.v, %i.am
  br i1 %.not118, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ay = sub i32 %.077, %i.v
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %.078119 = phi i32 [ %i.v, %.lr.ph ], [ %i.bz, %bb.m ] ; 5 uses
  %i.az = add i32 %i.ay, %.078119                 ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.bc = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 88
  %i.bh = icmp ugt i64 %i.bg, %i.ba
  br i1 %i.bh, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bi = zext i32 %.078119 to i64
  %i.bj = getelementptr inbounds nuw [88 x i8], ptr %i.bc, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw [88 x i8], ptr %i.bc, i64 %i.ba ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bp = icmp ult i64 %i.bl, %i.bo
  br i1 %i.bp, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call i32 @_ZN3jxl6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.078119, i32 noundef %i.az, ptr noundef %2) #24 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bx = tail call i32 @_ZN3jxl6N_AVX211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.078119, i32 noundef %i.az, ptr noundef %2) #24 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bz = add i32 %.078119, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.bz, %i.am
  br i1 %.not, label %.critedge.loopexit, label %bb.g, !llvm.loop !125

.critedge.loopexit:                               ; preds = %bb.m
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.f
  %i.ca = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.p, %bb.f ]
  %i.cb = zext i32 %.077 to i64
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.ca, i64 %i.cb ; 5 uses
  %i.cd = sub i32 %i.am, %i.v
  %i.ce = add i32 %i.cd, 1                        ; 2 uses
  %i.cf = ptrtoint ptr %i.cc to i64               ; 2 uses
  %.not.i81 = icmp eq i32 %i.ce, 0
  br i1 %.not.i81, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.cg = zext i32 %i.ce to i64
  %.idx = mul nuw nsw i64 %i.cg, 88
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx ; 2 uses
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !17  ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %i.cc, %bb.n ] ; 7 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %i.ch, %bb.n ] ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 56
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !tbaa !42
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 72
  %i.co = load <2 x i32>, ptr %i.cm, align 8, !tbaa !43
  store <2 x i32> %i.co, ptr %i.cn, align 8, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 80
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %storemerge9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(84) %.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.cu = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #23 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 48
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !39
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 88 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.ci
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.da = ptrtoint ptr %i.cz to i64
  br label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i

_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i: ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i, %bb.n
  %.pre-phi = phi i64 [ %i.da, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.cf, %bb.n ]
  %i.db = phi ptr [ %.pre.i, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.ci, %bb.n ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.cz, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.cc, %bb.n ] ; 2 uses
  %i.dc = sub i64 %.pre-phi, %i.cf
  %i.dd = getelementptr inbounds i8, ptr %i.cc, i64 %i.dc
  %.not6.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.db
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i ], [ %i.db, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i ] ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -88 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -64
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.df) #23
  %.not.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.de
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i
  store ptr %i.dd, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit: ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, %.critedge
  %.0 = add nsw i32 %.0121, -1
  %i.dg = icmp sgt i32 %.0121, 0
  br i1 %i.dg, label %bb.b, label %.thread, !llvm.loop !126

.thread:                                          ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit, %bb.b, %bb.d, %bb.g, %bb.i, %bb.h, %bb.k, %bb.l, %bb.a
  %.sroa.091.6 = phi i32 [ %i.bx, %bb.l ], [ 0, %bb.a ], [ 1, %bb.g ], [ 1, %bb.h ], [ %i.bv, %bb.k ], [ 1, %bb.i ], [ 1, %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit ], [ 0, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.sroa.091.6
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.jxl::StatusOr", align 8     ; 8 uses
  %5 = alloca %"class.jxl::Channel", align 8      ; 10 uses
  %6 = alloca %class.anon.21, align 8             ; 6 uses
  %7 = alloca %class.anon.22, align 8             ; 7 uses
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 88                  ; 2 uses
  %i.i = icmp ugt i64 %i.h, %i.a
  br i1 %i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %2 to i64                       ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %i.a ; 7 uses
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %i.j ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 3 uses
  %i.r = add i64 %i.o, 1
  %i.s = add i64 %i.r, %i.q
  %i.t = lshr i64 %i.s, 1
  %i.u = icmp eq i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %i.q, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !27
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !27
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ag = add i64 %i.q, %i.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !35
  call void @_ZN3jxl7Channel6CreateEP22JxlMemoryManagerStructmmii(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %4, ptr noundef %i.af, i64 noundef %i.ag, i64 noundef %i.w, i32 noundef %i.aj, i32 noundef %i.al) #23
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %5, ptr noundef nonnull align 8 dereferenceable(92) %4, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !39, !noalias !129
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !39, !alias.scope !129
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, ptr noundef nonnull align 8 dereferenceable(28) %i.av, i64 28, i1 false)
  %i.aw = load i64, ptr %i.x, align 8, !tbaa !26
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %0, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw [88 x i8], ptr %i.ay, i64 %i.a
  %i.ba = call noundef nonnull align 8 dereferenceable(84) ptr @_ZN3jxl7ChannelaSEOS0_(ptr noundef nonnull align 8 dereferenceable(84) %i.az, ptr noundef nonnull align 8 dereferenceable(84) %5) #23 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.m, ptr %6, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.l, ptr %i.bb, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %5, ptr %i.bc, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.l, ptr %7, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.m, ptr %i.bd, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %5, ptr %i.be, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.bf, align 8, !tbaa !41
  %i.bg = load i64, ptr %i.v, align 8, !tbaa !26
  %i.bh = add i64 %i.bg, 7
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = call fastcc i32 @"_ZN3jxl9RunOnPoolIZNS_6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_1EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc"(ptr noundef %3, i32 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %7) #24
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %0, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw [88 x i8], ptr %i.bm, i64 %i.a
  %i.bo = call noundef nonnull align 8 dereferenceable(84) ptr @_ZN3jxl7ChannelaSEOS0_(ptr noundef nonnull align 8 dereferenceable(84) %i.bn, ptr noundef nonnull align 8 dereferenceable(84) %5) #23 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.044.0 = phi i32 [ 0, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.sroa.044.1 = phi i32 [ 0, %bb.i ], [ %.sroa.044.0, %bb.l ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pr = load i32, ptr %i.am, align 8, !tbaa !38
  %i.bp = icmp eq i32 %.pr, 0
  br i1 %i.bp, label %bb.n, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aq) #23
  br label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit

_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit:          ; preds = %bb.g, %bb.m, %bb.n
  %.sroa.044.252 = phi i32 [ %.sroa.044.1, %bb.n ], [ %.sroa.044.1, %bb.m ], [ %i.an, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit, %bb.f
  %.sroa.044.3 = phi i32 [ 0, %bb.f ], [ %.sroa.044.252, %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %bb.d ]
  ret i32 %.sroa.044.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @"_ZN3jxl9RunOnPoolIZNS_6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_1EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc"(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.jxl::ThreadPool::RunCallState.68", align 8 ; 7 uses
  %4 = alloca %"class.jxl::ThreadPool::RunCallState.68", align 8 ; 6 uses
  %5 = alloca %"class.jxl::ThreadPool", align 8   ; 5 uses
  %6 = alloca %class.anon.66, align 1             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.b, align 8, !tbaa !47
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE211InvHSqueezeERNS_5ImageEjjPS0_E3$_1EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %6, ptr %4, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !50
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.c
  %.07.i.i = phi i32 [ %i.f, %.preheader.i.i ], [ 0, %bb.c ] ; 2 uses
  call void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE211InvHSqueezeERNS_5ImageEjjPS0_E3$_1EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm"(ptr noundef nonnull %4, i32 noundef %.07.i.i, i64 poison) #24
  %i.f = add nuw i32 %.07.i.i, 1                  ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZN3jxl9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_.exit.i"

"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_.exit.i": ; preds = %.sink.split.i.i, %bb.b
  %.sroa.03.1.i.i = phi i32 [ %i.h, %.sink.split.i.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_S6_jjSE_RKT0_SG_.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8             ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 8
  %.val11.i = load ptr, ptr %i.i, align 8
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_S6_jjSE_RKT0_SG_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %6, ptr %3, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %.preheader.i17.i, label %bb.f

.preheader.i17.i:                                 ; preds = %bb.e, %.preheader.i17.i
  %.07.i18.i = phi i32 [ %i.m, %.preheader.i17.i ], [ 0, %bb.e ] ; 2 uses
  call void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm"(ptr noundef nonnull %3, i32 noundef %.07.i18.i, i64 poison) #24
  %i.m = add nuw i32 %.07.i18.i, 1                ; 2 uses
  %exitcond.not.i19.i = icmp eq i32 %i.m, %1
  br i1 %exitcond.not.i19.i, label %.sink.split.i15.i, label %.preheader.i17.i, !llvm.loop !138

bb.f:                                             ; preds = %bb.e
  %i.n = call noundef i32 %.val.i(ptr noundef %.val11.i, ptr noundef nonnull %3, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %1) #23, !inline_history !139
  %.not25.i.i = icmp eq i32 %i.n, 0
  br i1 %.not25.i.i, label %.sink.split.i15.i, label %bb.g

.sink.split.i15.i:                                ; preds = %.preheader.i17.i, %bb.f
  %i.o = load atomic i32, ptr %i.l seq_cst, align 8
  %.not5.i16.i = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not5.i16.i to i32
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i15.i, %bb.f
  %.sroa.03.0.shrunk.i.i = phi i32 [ 1, %bb.f ], [ %i.p, %.sink.split.i15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_S6_jjSE_RKT0_SG_.exit"

"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_S6_jjSE_RKT0_SG_.exit": ; preds = %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_.exit.i", %bb.d, %bb.g
  %.sroa.0.0.i = phi i32 [ %.sroa.03.1.i.i, %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_.exit.i" ], [ %.sroa.03.0.shrunk.i.i, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i32 %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE210InvSqueezeERNS_5ImageERKNSt3__16vectorINS_13SqueezeParamsENS3_9allocatorIS5_EEEEPNS_10ThreadPoolE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(address_is_null) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = load ptr, ptr %1, align 8, !tbaa !71
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = trunc i64 %i.g to i32
  %.0120 = add i32 %i.h, -1                       ; 2 uses
  %i.i = icmp sgt i32 %.0120, -1
  br i1 %i.i, label %.lr.ph122, label %.thread

.lr.ph122:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph122, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  %.0121 = phi i32 [ %.0120, %.lr.ph122 ], [ %.0, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit ] ; 3 uses
  %i.l = zext nneg i32 %.0121 to i64
  %i.m = load ptr, ptr %1, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l ; 4 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.p = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 88                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !74   ; 10 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit

_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit: ; preds = %bb.b
  %i.x = trunc i64 %i.t to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !75   ; 3 uses
  %i.aa = add nsw i32 %i.v, -1
  %i.ab = add i32 %i.aa, %i.z                     ; 3 uses
  %i.ac = icmp slt i32 %i.v, %i.x
  %i.ad = icmp sgt i32 %i.ab, -1
  %.not.i = icmp slt i32 %i.ab, %i.x
  %.not23.i.not115 = and i1 %i.ad, %.not.i
  %i.ae = icmp sge i32 %i.ab, %i.v
  %.not113 = and i1 %i.ae, %.not23.i.not115
  %or.cond14.i.not = select i1 %i.ac, i1 %.not113, i1 false
  br i1 %or.cond14.i.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !76, !range !77, !noundef !57
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !78, !range !77, !noundef !57
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = add i32 %i.z, %i.v                      ; 2 uses
  %i.am = add i32 %i.al, -1                       ; 4 uses
  %i.an = zext nneg i32 %i.v to i64               ; 2 uses
  %i.ao = add nsw i64 %i.t, %i.an
  %i.ap = zext i32 %i.am to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = add nsw i64 %i.ao, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %.077 = select i1 %i.ak, i32 %i.al, i32 %i.as   ; 2 uses
  %i.at = load i64, ptr %i.k, align 8, !tbaa !79  ; 3 uses
  %i.au = icmp ugt i64 %i.at, %i.an
  br i1 %i.au, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.av = zext i32 %i.z to i64                    ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ax = sub nuw i64 %i.at, %i.av
  store i64 %i.ax, ptr %i.k, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.not118 = icmp ugt i32 %i.v, %i.am
  br i1 %.not118, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ay = sub i32 %.077, %i.v
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %.078119 = phi i32 [ %i.v, %.lr.ph ], [ %i.bz, %bb.m ] ; 5 uses
  %i.az = add i32 %i.ay, %.078119                 ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.bc = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 88
  %i.bh = icmp ugt i64 %i.bg, %i.ba
  br i1 %i.bh, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bi = zext i32 %.078119 to i64
  %i.bj = getelementptr inbounds nuw [88 x i8], ptr %i.bc, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw [88 x i8], ptr %i.bc, i64 %i.ba ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bp = icmp ult i64 %i.bl, %i.bo
  br i1 %i.bp, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call i32 @_ZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.078119, i32 noundef %i.az, ptr noundef %2) #24 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bx = tail call i32 @_ZN3jxl6N_SSE211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.078119, i32 noundef %i.az, ptr noundef %2) #24 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bz = add i32 %.078119, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.bz, %i.am
  br i1 %.not, label %.critedge.loopexit, label %bb.g, !llvm.loop !140

.critedge.loopexit:                               ; preds = %bb.m
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.f
  %i.ca = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.p, %bb.f ]
  %i.cb = zext i32 %.077 to i64
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.ca, i64 %i.cb ; 5 uses
  %i.cd = sub i32 %i.am, %i.v
  %i.ce = add i32 %i.cd, 1                        ; 2 uses
  %i.cf = ptrtoint ptr %i.cc to i64               ; 2 uses
  %.not.i81 = icmp eq i32 %i.ce, 0
  br i1 %.not.i81, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.cg = zext i32 %i.ce to i64
  %.idx = mul nuw nsw i64 %i.cg, 88
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx ; 2 uses
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !17  ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %i.cc, %bb.n ] ; 7 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %i.ch, %bb.n ] ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 56
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !tbaa !42
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 72
  %i.co = load <2 x i32>, ptr %i.cm, align 8, !tbaa !43
  store <2 x i32> %i.co, ptr %i.cn, align 8, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 80
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %storemerge9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(84) %.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.cu = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #23 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 48
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !39
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 88 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.ci
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.da = ptrtoint ptr %i.cz to i64
  br label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i

_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i: ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i, %bb.n
  %.pre-phi = phi i64 [ %i.da, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.cf, %bb.n ]
  %i.db = phi ptr [ %.pre.i, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.ci, %bb.n ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.cz, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.cc, %bb.n ] ; 2 uses
  %i.dc = sub i64 %.pre-phi, %i.cf
  %i.dd = getelementptr inbounds i8, ptr %i.cc, i64 %i.dc
  %.not6.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.db
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i ], [ %i.db, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i ] ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -88 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -64
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.df) #23
  %.not.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.de
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.i
  store ptr %i.dd, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit: ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, %.critedge
  %.0 = add nsw i32 %.0121, -1
  %i.dg = icmp sgt i32 %.0121, 0
  br i1 %i.dg, label %bb.b, label %.thread, !llvm.loop !141

.thread:                                          ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit, %bb.b, %bb.d, %bb.g, %bb.i, %bb.h, %bb.k, %bb.l, %bb.a
  %.sroa.091.6 = phi i32 [ %i.bx, %bb.l ], [ 0, %bb.a ], [ 1, %bb.g ], [ 1, %bb.h ], [ %i.bv, %bb.k ], [ 1, %bb.i ], [ 1, %_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi.exit ], [ 0, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.sroa.091.6
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl10InvSqueezeERNS_5ImageERKNSt3__16vectorINS_13SqueezeParamsENS2_9allocatorIS4_EEEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #23
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = and i64 %i.b, 103425
  %i.d = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.c, i1 true)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL30InvSqueezeHighwayDispatchTableE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = tail call i32 %i.f(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #23
  ret i32 %i.g
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl24DefaultSqueezeParametersEPNSt3__16vectorINS_13SqueezeParamsENS0_9allocatorIS2_EEEERKNS_5ImageE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.jxl::SqueezeParams", align 8 ; 9 uses
  %3 = alloca %"struct.jxl::SqueezeParams", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.m, %bb.a ]
  %i.o = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.o) #23, !inline_history !142
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !143

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load i64, ptr %i.h, align 8, !tbaa !79
  %.pre46 = load ptr, ptr %1, align 8, !tbaa !18
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit, %bb.a
  %i.r = phi ptr [ %.pre46, %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit ], [ %i.c, %bb.a ]
  %i.s = phi i64 [ %.pre, %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit ], [ %i.i, %bb.a ]
  store ptr %i.n, ptr %i.l, align 8, !tbaa !70
  %i.t = getelementptr [88 x i8], ptr %i.r, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26   ; 5 uses
  %i.y = icmp ule i64 %i.v, %i.x
  %i.z = icmp sgt i32 %i.k, 2
  br i1 %i.z, label %bb.b, label %bb.i

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit
  %i.aa = getelementptr i8, ptr %i.t, i64 144
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.ac = icmp eq i64 %i.ab, %i.v
  br i1 %i.ac, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr i8, ptr %i.t, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.af = icmp eq i64 %i.ae, %i.x
  br i1 %i.af, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN3jxl13SqueezeParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %2) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i8 1, ptr %i.ag, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !78
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !79
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.am, align 8, !tbaa !75
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !70  ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.aq = icmp ult ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13SqueezeParamsE, i64 16), ptr %i.an, align 8, !tbaa !85
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.ag, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.at = call noundef ptr @_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(20) %2) #24
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.at, %bb.f ] ; 5 uses
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !70
  store i8 0, ptr %i.ag, align 8, !tbaa !76
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.av = icmp ult ptr %.0.i, %i.au
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13SqueezeParamsE, i64 16), ptr %.0.i, align 8, !tbaa !85
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %i.ag, i64 12, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit37

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit
  %i.ay = call noundef ptr @_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(20) %2) #24
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit37

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit37: ; preds = %bb.g, %bb.h
  %.0.i36 = phi ptr [ %i.ax, %bb.g ], [ %i.ay, %bb.h ]
  store ptr %.0.i36, ptr %i.l, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit37, %bb.c, %bb.b, %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN3jxl13SqueezeParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.az = load i64, ptr %i.h, align 8, !tbaa !79
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.k, ptr %i.bc, align 8, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 1, ptr %i.bd, align 1, !tbaa !78
  %i.be = icmp ugt i64 %i.x, 8
  %or.cond = and i1 %i.y, %i.be
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.bf, align 8, !tbaa !76
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !70  ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bj = icmp ult ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13SqueezeParamsE, i64 16), ptr %i.bg, align 8, !tbaa !85
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bk, ptr noundef nonnull align 8 dereferenceable(12) %i.bf, i64 12, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit39

bb.l:                                             ; preds = %bb.j
  %i.bm = call noundef ptr @_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(20) %3) #24
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit39

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit39: ; preds = %bb.k, %bb.l
  %.0.i38 = phi ptr [ %i.bl, %bb.k ], [ %i.bm, %bb.l ]
  store ptr %.0.i38, ptr %i.l, align 8, !tbaa !70
  %i.bn = add i64 %i.x, 1
  %i.bo = lshr i64 %i.bn, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit39, %bb.i
  %.0 = phi i64 [ %i.bo, %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit39 ], [ %i.x, %bb.i ] ; 2 uses
  %i.bp = icmp ugt i64 %i.v, 8                    ; 2 uses
  %i.bq = icmp ugt i64 %.0, 8                     ; 2 uses
  %i.br = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_2
