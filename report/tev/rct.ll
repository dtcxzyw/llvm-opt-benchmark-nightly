Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rct?download=true
inline.NumInlined: 279
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3jxl6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolE:bb.a
  %i.eu = getelementptr [88 x i8], ptr %i.dm, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !37
  %i.ez = mul i64 %i.ey, %indvars.iv32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fa, i64 64) ]
  %i.fb = add nsw i32 %i.ef, 2
  %.neg.i22 = sdiv i32 %i.ef, -3
  %i.fc = add i32 %i.fb, %.neg.i22
  %i.fd = srem i32 %i.fc, 3
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr [88 x i8], ptr %i.dm, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !37
  %i.fk = mul i64 %i.fj, %indvars.iv32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fl, i64 64) ]
  %i.fm = load i32, ptr %i.d, align 4, !tbaa !24
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr @__const._ZN3jxl6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolE.inv_rct_row, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !38
  %i.fq = load i64, ptr %i.b, align 8, !tbaa !10
  call void %i.fp(ptr noundef %i.ds, ptr noundef %i.dy, ptr noundef %i.ee, ptr noundef %i.eo, ptr noundef %i.fa, ptr noundef %i.fl, i64 noundef %i.fq) #14, !inline_history !101
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next33, %i.dj
  br i1 %exitcond.not.i.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread39", label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i.i.i", !llvm.loop !102

"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread39": ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %.val.i.i = load ptr, ptr %3, align 8           ; 2 uses
  %i.fr = getelementptr i8, ptr %3, i64 8
  %.val11.i.i = load ptr, ptr %i.fr, align 8
  %i.fs = icmp eq i32 %i.df, 0
  br i1 %i.fs, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %6, ptr %4, align 8, !tbaa !38
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %10, ptr %i.ft, align 8, !tbaa !38
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.fu, align 8, !tbaa !41
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %.preheader.i17.i.i.preheader, label %bb.k

.preheader.i17.i.i.preheader:                     ; preds = %bb.i
  %i.fv = and i64 %i.n, 4294967295
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.i.preheader, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i.i"
  %indvars.iv = phi i64 [ 0, %.preheader.i17.i.i.preheader ], [ %indvars.iv.next, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i.i" ] ; 7 uses
  %i.fw = load atomic i32, ptr %i.fu seq_cst, align 8
  %.not.i.i19.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i19.i.i, label %bb.j, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i.i"

bb.j:                                             ; preds = %.preheader.i17.i.i
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !61, !nonnull !48, !align !49 ; 5 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !63, !nonnull !48, !align !49
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !64, !nonnull !48, !align !49
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !10
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !16
  %i.gd = getelementptr [88 x i8], ptr %i.gc, i64 %i.gb ; 9 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !36
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !37
  %i.gi = mul i64 %i.gh, %indvars.iv
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gj, i64 64) ]
  %i.gk = getelementptr i8, ptr %i.gd, i64 128
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !36
  %i.gm = getelementptr i8, ptr %i.gd, i64 104
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !37
  %i.go = mul i64 %i.gn, %indvars.iv
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.go ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gp, i64 64) ]
  %i.gq = getelementptr i8, ptr %i.gd, i64 216
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !36
  %i.gs = getelementptr i8, ptr %i.gd, i64 192
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !37
  %i.gu = mul i64 %i.gt, %indvars.iv
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gv, i64 64) ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !65, !nonnull !48, !align !54
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !24 ; 5 uses
  %i.gz = srem i32 %i.gy, 3
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr [88 x i8], ptr %i.gd, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !36
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !37
  %i.hg = mul i64 %i.hf, %indvars.iv
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hh, i64 64) ]
  %i.hi = add nsw i32 %i.gy, 1
  %i.hj = sdiv i32 %i.gy, 3
  %i.hk = add nsw i32 %i.hi, %i.hj
  %i.hl = srem i32 %i.hk, 3
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr [88 x i8], ptr %i.gd, i64 %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !36
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !37
  %i.hs = mul i64 %i.hr, %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hs ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ht, i64 64) ]
  %i.hu = add nsw i32 %i.gy, 2
  %.neg.i = sdiv i32 %i.gy, -3
  %i.hv = add i32 %i.hu, %.neg.i
  %i.hw = srem i32 %i.hv, 3
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr [88 x i8], ptr %i.gd, i64 %i.hx ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !36
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !37
  %i.id = mul i64 %i.ic, %indvars.iv
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.id ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ie, i64 64) ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !66, !nonnull !48, !align !54
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !24
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr @__const._ZN3jxl6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolE.inv_rct_row, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !38
  %i.il = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !67, !nonnull !48, !align !49
  %i.in = load i64, ptr %i.im, align 8, !tbaa !10
  call void %i.ik(ptr noundef %i.gj, ptr noundef %i.gp, ptr noundef %i.gv, ptr noundef %i.hh, ptr noundef %i.ht, ptr noundef %i.ie, i64 noundef %i.in) #14, !inline_history !101
  br label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i.i"

"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i.i": ; preds = %bb.j, %.preheader.i17.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i21.i.i = icmp eq i64 %indvars.iv.next, %i.fv
  br i1 %exitcond.not.i21.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", label %.preheader.i17.i.i, !llvm.loop !102

bb.k:                                             ; preds = %bb.i
  %i.io = call noundef i32 %.val.i.i(ptr noundef %.val11.i.i, ptr noundef nonnull %4, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %i.df) #14, !inline_history !103
  %.not25.i.i.i = icmp eq i32 %i.io, 0
  br i1 %.not25.i.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", label %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread41"

"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread41": ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.m

"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit": ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit.i20.i.i", %bb.k
  %i.ip = load atomic i32, ptr %i.fu seq_cst, align 8
  %.not5.i16.i.i.not = icmp eq i32 %i.ip, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br i1 %.not5.i16.i.i.not, label %bb.l, label %bb.m

.sink.split:                                      ; preds = %bb.h, %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread39"
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit"
  br label %bb.m

bb.m:                                             ; preds = %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread41", %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", %bb.l
  %.sroa.023.0 = phi i32 [ 0, %bb.l ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit" ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread41" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %.sroa.023.1 = phi i32 [ 0, %bb.e ], [ %.sroa.023.0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n
  %.sroa.023.2 = phi i32 [ %.sroa.023.1, %bb.n ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.o
  %.sroa.023.3 = phi i32 [ %.sroa.023.2, %bb.o ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  %.sroa.023.4 = phi i32 [ %.sroa.023.3, %bb.p ], [ %i.g, %bb.a ]
  ret i32 %.sroa.023.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_AVX29InvRCTRowILi0EEEvPKiS3_S3_PiS4_S4_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) #5 comdat {
bb.a:
  %7 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = insertelement <3 x ptr> poison, ptr %3, i64 0
  %i.d = insertelement <3 x ptr> %i.c, ptr %5, i64 1
  %i.e = insertelement <3 x ptr> %i.d, ptr %4, i64 2
  %i.f = shufflevector <3 x ptr> %i.e, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 1>
  %i.g = ptrtoaddr <8 x ptr> %i.f to <8 x i64>
  %i.h = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %i.i = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.j = insertelement <4 x ptr> %i.i, ptr %1, i64 1
  %i.k = insertelement <4 x ptr> %i.j, ptr %2, i64 2
  %i.l = insertelement <4 x ptr> %i.k, ptr %4, i64 3
  %i.m = shufflevector <4 x ptr> %i.l, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 0>
  %i.n = ptrtoaddr <8 x ptr> %i.m to <8 x i64>
  %i.o = ptrtoaddr ptr %2 to i64
  %i.p = icmp ugt i64 %6, 7
  br i1 %i.p, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.q = add i64 %6, -8                           ; 2 uses
  %i.r = lshr i64 %i.q, 3                         ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.s, 4611686018427387902
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %i.u = and i64 %i.q, 8
  %lcmp.mod.not.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07071.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ck, %.preheader.loopexit.unr-lcssa ] ; 7 uses
  %lcmp.mod133 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.v = add nuw i64 %.07071.epil.init, 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07071.epil.init
  %i.x = load <4 x i64>, ptr %i.w, align 32, !tbaa !57
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07071.epil.init
  %i.z = load <4 x i64>, ptr %i.y, align 32, !tbaa !57
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07071.epil.init
  %i.ab = load <4 x i64>, ptr %i.aa, align 32, !tbaa !57
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07071.epil.init
  store <4 x i64> %i.x, ptr %i.ac, align 32, !tbaa !57
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07071.epil.init
  store <4 x i64> %i.z, ptr %i.ad, align 32, !tbaa !57
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07071.epil.init
  store <4 x i64> %i.ab, ptr %i.ae, align 32, !tbaa !57
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.a
  %.070.lcssa = phi i64 [ 0, %bb.a ], [ %i.ck, %.preheader.loopexit.unr-lcssa ], [ %i.v, %.lr.ph.epil.preheader ] ; 8 uses
  %i.af = icmp ult i64 %.070.lcssa, %6
  br i1 %i.af, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ag = sub nuw i64 %6, %.070.lcssa             ; 7 uses
  %min.iters.check = icmp ult i64 %i.ag, 4
  br i1 %min.iters.check, label %.lr.ph73.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ah = sub i64 %7, %i.a
  %diff.check = icmp ugt i64 %i.ah, -64
  %i.ai = sub i64 %7, %i.h
  %diff.check95 = icmp ugt i64 %i.ai, -64
  %i.aj = sub <8 x i64> %i.n, %i.g
  %i.ak = icmp ugt <8 x i64> %i.aj, splat (i64 -64)
  %i.al = sub i64 %i.b, %i.h
  %diff.check112 = icmp ugt i64 %i.al, -64
  %i.am = sub i64 %i.o, %i.h
  %diff.check114 = icmp ugt i64 %i.am, -64
  %i.an = bitcast <8 x i1> %i.ak to i8
  %i.ao = icmp ne i8 %i.an, 0
  %op.rdx = or i1 %i.ao, %diff.check
  %op.rdx129 = or i1 %diff.check95, %diff.check112
  %op.rdx130 = or i1 %op.rdx, %op.rdx129
  %op.rdx131 = or i1 %op.rdx130, %diff.check114
  br i1 %op.rdx131, label %.lr.ph73.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check116 = icmp ult i64 %i.ag, 16
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ag, 12
  %n.vec = and i64 %i.ag, -16                     ; 4 uses
  %i.aq = add i64 %.070.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = add nuw i64 %.070.lcssa, %index         ; 6 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %wide.load = load <8 x i32>, ptr %i.as, align 4, !tbaa !24
  %wide.load117 = load <8 x i32>, ptr %i.at, align 4, !tbaa !24
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %wide.load118 = load <8 x i32>, ptr %i.au, align 4, !tbaa !24
  %wide.load119 = load <8 x i32>, ptr %i.av, align 4, !tbaa !24
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %wide.load120 = load <8 x i32>, ptr %i.aw, align 4, !tbaa !24
  %wide.load121 = load <8 x i32>, ptr %i.ax, align 4, !tbaa !24
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ar ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store <8 x i32> %wide.load, ptr %i.ay, align 4, !tbaa !24
  store <8 x i32> %wide.load117, ptr %i.az, align 4, !tbaa !24
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ar ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store <8 x i32> %wide.load118, ptr %i.ba, align 4, !tbaa !24
  store <8 x i32> %wide.load119, ptr %i.bb, align 4, !tbaa !24
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ar ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <8 x i32> %wide.load120, ptr %i.bc, align 4, !tbaa !24
  store <8 x i32> %wide.load121, ptr %i.bd, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph73.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ag, -4                   ; 3 uses
  %i.bf = add i64 %.070.lcssa, %n.vec122
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = add nuw i64 %.070.lcssa, %index123      ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  %wide.load124 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bg
  %wide.load125 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !24
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bg
  %wide.load126 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !24
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bg
  store <4 x i32> %wide.load124, ptr %i.bk, align 4, !tbaa !24
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bg
  store <4 x i32> %wide.load125, ptr %i.bl, align 4, !tbaa !24
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bg
  store <4 x i32> %wide.load126, ptr %i.bm, align 4, !tbaa !24
  %index.next127 = add nuw i64 %index123, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %i.ag, %n.vec122
  br i1 %cmp.n128, label %._crit_edge, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.172.ph = phi i64 [ %.070.lcssa, %iter.check ], [ %.070.lcssa, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 10 uses
  %i.bo = sub i64 %6, %.172.ph
  %.neg = add i64 %.172.ph, 1
  %xtraiter134 = and i64 %i.bo, 1
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.172.ph
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !24
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.172.ph
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !24
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.172.ph
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !24
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.172.ph
  store i32 %i.bq, ptr %i.bv, align 4, !tbaa !24
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.172.ph
  store i32 %i.bs, ptr %i.bw, align 4, !tbaa !24
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.172.ph
  store i32 %i.bu, ptr %i.bx, align 4, !tbaa !24
  %i.by = add nuw i64 %.172.ph, 1
  br label %.lr.ph73.prol.loopexit

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %.172.unr = phi i64 [ %.172.ph, %.lr.ph73.preheader ], [ %i.by, %.lr.ph73.prol ]
  %i.bz = icmp eq i64 %6, %.neg
  br i1 %i.bz, label %._crit_edge, label %.lr.ph73

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07071 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ck, %.lr.ph ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ca = or disjoint i64 %.07071, 8              ; 6 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07071
  %i.cc = load <4 x i64>, ptr %i.cb, align 32, !tbaa !57
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07071
  %i.ce = load <4 x i64>, ptr %i.cd, align 32, !tbaa !57
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07071
  %i.cg = load <4 x i64>, ptr %i.cf, align 32, !tbaa !57
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07071
  store <4 x i64> %i.cc, ptr %i.ch, align 32, !tbaa !57
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07071
  store <4 x i64> %i.ce, ptr %i.ci, align 32, !tbaa !57
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07071
  store <4 x i64> %i.cg, ptr %i.cj, align 32, !tbaa !57
  %i.ck = add nuw i64 %.07071, 16                 ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ca
  %i.cm = load <4 x i64>, ptr %i.cl, align 32, !tbaa !57
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ca
  %i.co = load <4 x i64>, ptr %i.cn, align 32, !tbaa !57
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ca
  %i.cq = load <4 x i64>, ptr %i.cp, align 32, !tbaa !57
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ca
  store <4 x i64> %i.cm, ptr %i.cr, align 32, !tbaa !57
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ca
  store <4 x i64> %i.co, ptr %i.cs, align 32, !tbaa !57
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ca
  store <4 x i64> %i.cq, ptr %i.ct, align 32, !tbaa !57
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !106

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %.172 = phi i64 [ %i.dn, %.lr.ph73 ], [ %.172.unr, %.lr.ph73.prol.loopexit ] ; 8 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.172
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !24
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.172
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !24
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.172
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !24
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.172
  store i32 %i.cv, ptr %i.da, align 4, !tbaa !24
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.172
  store i32 %i.cx, ptr %i.db, align 4, !tbaa !24
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.172
  store i32 %i.cz, ptr %i.dc, align 4, !tbaa !24
  %i.dd = add nuw i64 %.172, 1                    ; 6 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !24
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dd
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !24
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dd
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dd
  store i32 %i.df, ptr %i.dk, align 4, !tbaa !24
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dd
  store i32 %i.dh, ptr %i.dl, align 4, !tbaa !24
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dd
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !24
  %i.dn = add nuw i64 %.172, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dn, %6
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph73, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_AVX29InvRCTRowILi1EEEvPKiS3_S3_PiS4_S4_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) #5 comdat {
bb.a:
  %7 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = insertelement <3 x ptr> poison, ptr %3, i64 0
  %i.d = insertelement <3 x ptr> %i.c, ptr %5, i64 1
  %i.e = insertelement <3 x ptr> %i.d, ptr %4, i64 2
  %i.f = shufflevector <3 x ptr> %i.e, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 1>
  %i.g = ptrtoaddr <8 x ptr> %i.f to <8 x i64>
  %i.h = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %i.i = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.j = insertelement <4 x ptr> %i.i, ptr %1, i64 1
  %i.k = insertelement <4 x ptr> %i.j, ptr %2, i64 2
  %i.l = insertelement <4 x ptr> %i.k, ptr %4, i64 3
  %i.m = shufflevector <4 x ptr> %i.l, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 0>
  %i.n = ptrtoaddr <8 x ptr> %i.m to <8 x i64>
  %i.o = ptrtoaddr ptr %2 to i64
  %i.p = icmp ugt i64 %6, 7
  br i1 %i.p, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.q = add i64 %6, -8                           ; 2 uses
  %i.r = lshr i64 %i.q, 3                         ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.s, 4611686018427387902
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %i.u = and i64 %i.q, 8
  %lcmp.mod.not.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07071.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cs, %.preheader.loopexit.unr-lcssa ] ; 7 uses
  %lcmp.mod133 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.v = add nuw i64 %.07071.epil.init, 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07071.epil.init
  %i.x = load <4 x i64>, ptr %i.w, align 32, !tbaa !57 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07071.epil.init
  %i.z = load <4 x i64>, ptr %i.y, align 32, !tbaa !57
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07071.epil.init
  %i.ab = load <8 x i32>, ptr %i.aa, align 32, !tbaa !57
  %i.ac = bitcast <4 x i64> %i.x to <8 x i32>
  %i.ad = add <8 x i32> %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07071.epil.init
  store <4 x i64> %i.x, ptr %i.ae, align 32, !tbaa !57
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07071.epil.init
  store <4 x i64> %i.z, ptr %i.af, align 32, !tbaa !57
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07071.epil.init
  store <8 x i32> %i.ad, ptr %i.ag, align 32, !tbaa !57
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.a
  %.070.lcssa = phi i64 [ 0, %bb.a ], [ %i.cs, %.preheader.loopexit.unr-lcssa ], [ %i.v, %.lr.ph.epil.preheader ] ; 8 uses
  %i.ah = icmp ult i64 %.070.lcssa, %6
  br i1 %i.ah, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ai = sub nuw i64 %6, %.070.lcssa             ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph73.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = sub i64 %7, %i.a
  %diff.check = icmp ugt i64 %i.aj, -64
  %i.ak = sub i64 %7, %i.h
  %diff.check95 = icmp ugt i64 %i.ak, -64
  %i.al = sub <8 x i64> %i.n, %i.g
  %i.am = icmp ugt <8 x i64> %i.al, splat (i64 -64)
  %i.an = sub i64 %i.b, %i.h
  %diff.check112 = icmp ugt i64 %i.an, -64
  %i.ao = sub i64 %i.o, %i.h
  %diff.check114 = icmp ugt i64 %i.ao, -64
  %i.ap = bitcast <8 x i1> %i.am to i8
  %i.aq = icmp ne i8 %i.ap, 0
  %op.rdx = or i1 %i.aq, %diff.check
  %op.rdx129 = or i1 %diff.check95, %diff.check112
  %op.rdx130 = or i1 %op.rdx, %op.rdx129
  %op.rdx131 = or i1 %op.rdx130, %diff.check114
  br i1 %op.rdx131, label %.lr.ph73.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check116 = icmp ult i64 %i.ai, 16
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, -16                     ; 4 uses
  %i.as = add i64 %.070.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add nuw i64 %.070.lcssa, %index         ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %wide.load = load <8 x i32>, ptr %i.au, align 4, !tbaa !24 ; 2 uses
  %wide.load117 = load <8 x i32>, ptr %i.av, align 4, !tbaa !24 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %wide.load118 = load <8 x i32>, ptr %i.aw, align 4, !tbaa !24
  %wide.load119 = load <8 x i32>, ptr %i.ax, align 4, !tbaa !24
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %wide.load120 = load <8 x i32>, ptr %i.ay, align 4, !tbaa !24
  %wide.load121 = load <8 x i32>, ptr %i.az, align 4, !tbaa !24
  %i.ba = add <8 x i32> %wide.load120, %wide.load
  %i.bb = add <8 x i32> %wide.load121, %wide.load117
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.at ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <8 x i32> %wide.load, ptr %i.bc, align 4, !tbaa !24
  store <8 x i32> %wide.load117, ptr %i.bd, align 4, !tbaa !24
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.at ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store <8 x i32> %wide.load118, ptr %i.be, align 4, !tbaa !24
  store <8 x i32> %wide.load119, ptr %i.bf, align 4, !tbaa !24
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.at ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store <8 x i32> %i.ba, ptr %i.bg, align 4, !tbaa !24
  store <8 x i32> %i.bb, ptr %i.bh, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph73.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ai, -4                   ; 3 uses
  %i.bj = add i64 %.070.lcssa, %n.vec122
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = add nuw i64 %.070.lcssa, %index123      ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk
  %wide.load124 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !24 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  %wide.load125 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !24
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bk
  %wide.load126 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !24
  %i.bo = add <4 x i32> %wide.load126, %wide.load124
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bk
  store <4 x i32> %wide.load124, ptr %i.bp, align 4, !tbaa !24
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bk
  store <4 x i32> %wide.load125, ptr %i.bq, align 4, !tbaa !24
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bk
  store <4 x i32> %i.bo, ptr %i.br, align 4, !tbaa !24
  %index.next127 = add nuw i64 %index123, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %i.ai, %n.vec122
  br i1 %cmp.n128, label %._crit_edge, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.172.ph = phi i64 [ %.070.lcssa, %iter.check ], [ %.070.lcssa, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ] ; 10 uses
  %i.bt = sub i64 %6, %.172.ph
  %.neg = add i64 %.172.ph, 1
  %xtraiter134 = and i64 %i.bt, 1
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.172.ph
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !24 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.172.ph
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.172.ph
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !24
  %i.ca = add i32 %i.bz, %i.bv
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.172.ph
  store i32 %i.bv, ptr %i.cb, align 4, !tbaa !24
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.172.ph
  store i32 %i.bx, ptr %i.cc, align 4, !tbaa !24
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.172.ph
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !24
  %i.ce = add nuw i64 %.172.ph, 1
  br label %.lr.ph73.prol.loopexit

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %.172.unr = phi i64 [ %.172.ph, %.lr.ph73.preheader ], [ %i.ce, %.lr.ph73.prol ]
  %i.cf = icmp eq i64 %6, %.neg
  br i1 %i.cf, label %._crit_edge, label %.lr.ph73

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07071 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cs, %.lr.ph ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cg = or disjoint i64 %.07071, 8              ; 6 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07071
  %i.ci = load <4 x i64>, ptr %i.ch, align 32, !tbaa !57 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07071
  %i.ck = load <4 x i64>, ptr %i.cj, align 32, !tbaa !57
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07071
  %i.cm = load <8 x i32>, ptr %i.cl, align 32, !tbaa !57
  %i.cn = bitcast <4 x i64> %i.ci to <8 x i32>
  %i.co = add <8 x i32> %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07071
  store <4 x i64> %i.ci, ptr %i.cp, align 32, !tbaa !57
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07071
  store <4 x i64> %i.ck, ptr %i.cq, align 32, !tbaa !57
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07071
  store <8 x i32> %i.co, ptr %i.cr, align 32, !tbaa !57
  %i.cs = add nuw i64 %.07071, 16                 ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.cu = load <4 x i64>, ptr %i.ct, align 32, !tbaa !57 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cg
  %i.cw = load <4 x i64>, ptr %i.cv, align 32, !tbaa !57
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cg
  %i.cy = load <8 x i32>, ptr %i.cx, align 32, !tbaa !57
  %i.cz = bitcast <4 x i64> %i.cu to <8 x i32>
  %i.da = add <8 x i32> %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cg
  store <4 x i64> %i.cu, ptr %i.db, align 32, !tbaa !57
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cg
  store <4 x i64> %i.cw, ptr %i.dc, align 32, !tbaa !57
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cg
  store <8 x i32> %i.da, ptr %i.dd, align 32, !tbaa !57
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !110

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %.172 = phi i64 [ %i.dz, %.lr.ph73 ], [ %.172.unr, %.lr.ph73.prol.loopexit ] ; 8 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.172
  %i.df = load i32, ptr %i.de, align 4, !tbaa !24 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.172
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !24
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.172
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24
  %i.dk = add i32 %i.dj, %i.df
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.172
  store i32 %i.df, ptr %i.dl, align 4, !tbaa !24
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.172
  store i32 %i.dh, ptr %i.dm, align 4, !tbaa !24
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.172
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !24
  %i.do = add nuw i64 %.172, 1                    ; 6 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !24 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.do
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !24
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.do
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !24
  %i.dv = add i32 %i.du, %i.dq
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.do
  store i32 %i.dq, ptr %i.dw, align 4, !tbaa !24
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.do
  store i32 %i.ds, ptr %i.dx, align 4, !tbaa !24
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.do
  store i32 %i.dv, ptr %i.dy, align 4, !tbaa !24
  %i.dz = add nuw i64 %.172, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dz, %6
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph73, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_AVX29InvRCTRowILi2EEEvPKiS3_S3_PiS4_S4_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) #5 comdat {
bb.a:
  %7 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = insertelement <3 x ptr> poison, ptr %3, i64 0
  %i.d = insertelement <3 x ptr> %i.c, ptr %5, i64 1
  %i.e = insertelement <3 x ptr> %i.d, ptr %4, i64 2
  %i.f = shufflevector <3 x ptr> %i.e, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 1>
  %i.g = ptrtoaddr <8 x ptr> %i.f to <8 x i64>
  %i.h = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %i.i = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.j = insertelement <4 x ptr> %i.i, ptr %1, i64 1
  %i.k = insertelement <4 x ptr> %i.j, ptr %2, i64 2
  %i.l = insertelement <4 x ptr> %i.k, ptr %4, i64 3
  %i.m = shufflevector <4 x ptr> %i.l, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 0>
  %i.n = ptrtoaddr <8 x ptr> %i.m to <8 x i64>
  %i.o = ptrtoaddr ptr %2 to i64
  %i.p = icmp ugt i64 %6, 7
  br i1 %i.p, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.q = add i64 %6, -8                           ; 2 uses
  %i.r = lshr i64 %i.q, 3                         ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.s, 4611686018427387902
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %i.u = and i64 %i.q, 8
  %lcmp.mod.not.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07071.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cs, %.preheader.loopexit.unr-lcssa ] ; 7 uses
  %lcmp.mod133 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.v = add nuw i64 %.07071.epil.init, 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07071.epil.init
  %i.x = load <4 x i64>, ptr %i.w, align 32, !tbaa !57 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07071.epil.init
  %i.z = load <8 x i32>, ptr %i.y, align 32, !tbaa !57
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07071.epil.init
  %i.ab = load <4 x i64>, ptr %i.aa, align 32, !tbaa !57
  %i.ac = bitcast <4 x i64> %i.x to <8 x i32>
  %i.ad = add <8 x i32> %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07071.epil.init
  store <4 x i64> %i.x, ptr %i.ae, align 32, !tbaa !57
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07071.epil.init
  store <8 x i32> %i.ad, ptr %i.af, align 32, !tbaa !57
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07071.epil.init
  store <4 x i64> %i.ab, ptr %i.ag, align 32, !tbaa !57
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.a
  %.070.lcssa = phi i64 [ 0, %bb.a ], [ %i.cs, %.preheader.loopexit.unr-lcssa ], [ %i.v, %.lr.ph.epil.preheader ] ; 8 uses
  %i.ah = icmp ult i64 %.070.lcssa, %6
  br i1 %i.ah, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ai = sub nuw i64 %6, %.070.lcssa             ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph73.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = sub i64 %7, %i.a
  %diff.check = icmp ugt i64 %i.aj, -64
  %i.ak = sub i64 %7, %i.h
  %diff.check95 = icmp ugt i64 %i.ak, -64
  %i.al = sub <8 x i64> %i.n, %i.g
  %i.am = icmp ugt <8 x i64> %i.al, splat (i64 -64)
  %i.an = sub i64 %i.b, %i.h
  %diff.check112 = icmp ugt i64 %i.an, -64
  %i.ao = sub i64 %i.o, %i.h
  %diff.check114 = icmp ugt i64 %i.ao, -64
  %i.ap = bitcast <8 x i1> %i.am to i8
  %i.aq = icmp ne i8 %i.ap, 0
  %op.rdx = or i1 %i.aq, %diff.check
  %op.rdx129 = or i1 %diff.check95, %diff.check112
  %op.rdx130 = or i1 %op.rdx, %op.rdx129
  %op.rdx131 = or i1 %op.rdx130, %diff.check114
  br i1 %op.rdx131, label %.lr.ph73.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check116 = icmp ult i64 %i.ai, 16
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, -16                     ; 4 uses
  %i.as = add i64 %.070.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add nuw i64 %.070.lcssa, %index         ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %wide.load = load <8 x i32>, ptr %i.au, align 4, !tbaa !24 ; 2 uses
  %wide.load117 = load <8 x i32>, ptr %i.av, align 4, !tbaa !24 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %wide.load118 = load <8 x i32>, ptr %i.aw, align 4, !tbaa !24
  %wide.load119 = load <8 x i32>, ptr %i.ax, align 4, !tbaa !24
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %wide.load120 = load <8 x i32>, ptr %i.ay, align 4, !tbaa !24
  %wide.load121 = load <8 x i32>, ptr %i.az, align 4, !tbaa !24
  %i.ba = add <8 x i32> %wide.load118, %wide.load
  %i.bb = add <8 x i32> %wide.load119, %wide.load117
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.at ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <8 x i32> %wide.load, ptr %i.bc, align 4, !tbaa !24
  store <8 x i32> %wide.load117, ptr %i.bd, align 4, !tbaa !24
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.at ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store <8 x i32> %i.ba, ptr %i.be, align 4, !tbaa !24
  store <8 x i32> %i.bb, ptr %i.bf, align 4, !tbaa !24
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.at ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store <8 x i32> %wide.load120, ptr %i.bg, align 4, !tbaa !24
  store <8 x i32> %wide.load121, ptr %i.bh, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph73.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ai, -4                   ; 3 uses
  %i.bj = add i64 %.070.lcssa, %n.vec122
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = add nuw i64 %.070.lcssa, %index123      ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk
  %wide.load124 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !24 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  %wide.load125 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !24
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bk
  %wide.load126 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !24
  %i.bo = add <4 x i32> %wide.load125, %wide.load124
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bk
  store <4 x i32> %wide.load124, ptr %i.bp, align 4, !tbaa !24
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bk
  store <4 x i32> %i.bo, ptr %i.bq, align 4, !tbaa !24
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bk
  store <4 x i32> %wide.load126, ptr %i.br, align 4, !tbaa !24
  %index.next127 = add nuw i64 %index123, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %i.ai, %n.vec122
  br i1 %cmp.n128, label %._crit_edge, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.172.ph = phi i64 [ %.070.lcssa, %iter.check ], [ %.070.lcssa, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ] ; 10 uses
  %i.bt = sub i64 %6, %.172.ph
  %.neg = add i64 %.172.ph, 1
  %xtraiter134 = and i64 %i.bt, 1
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.172.ph
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !24 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.172.ph
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.172.ph
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !24
  %i.ca = add i32 %i.bx, %i.bv
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.172.ph
  store i32 %i.bv, ptr %i.cb, align 4, !tbaa !24
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.172.ph
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !24
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.172.ph
  store i32 %i.bz, ptr %i.cd, align 4, !tbaa !24
  %i.ce = add nuw i64 %.172.ph, 1
  br label %.lr.ph73.prol.loopexit

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %.172.unr = phi i64 [ %.172.ph, %.lr.ph73.preheader ], [ %i.ce, %.lr.ph73.prol ]
  %i.cf = icmp eq i64 %6, %.neg
  br i1 %i.cf, label %._crit_edge, label %.lr.ph73

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07071 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cs, %.lr.ph ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cg = or disjoint i64 %.07071, 8              ; 6 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07071
  %i.ci = load <4 x i64>, ptr %i.ch, align 32, !tbaa !57 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07071
  %i.ck = load <8 x i32>, ptr %i.cj, align 32, !tbaa !57
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07071
  %i.cm = load <4 x i64>, ptr %i.cl, align 32, !tbaa !57
  %i.cn = bitcast <4 x i64> %i.ci to <8 x i32>
  %i.co = add <8 x i32> %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07071
  store <4 x i64> %i.ci, ptr %i.cp, align 32, !tbaa !57
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07071
  store <8 x i32> %i.co, ptr %i.cq, align 32, !tbaa !57
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07071
  store <4 x i64> %i.cm, ptr %i.cr, align 32, !tbaa !57
  %i.cs = add nuw i64 %.07071, 16                 ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.cu = load <4 x i64>, ptr %i.ct, align 32, !tbaa !57 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cg
  %i.cw = load <8 x i32>, ptr %i.cv, align 32, !tbaa !57
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cg
  %i.cy = load <4 x i64>, ptr %i.cx, align 32, !tbaa !57
  %i.cz = bitcast <4 x i64> %i.cu to <8 x i32>
  %i.da = add <8 x i32> %i.cw, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cg
  store <4 x i64> %i.cu, ptr %i.db, align 32, !tbaa !57
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cg
  store <8 x i32> %i.da, ptr %i.dc, align 32, !tbaa !57
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cg
  store <4 x i64> %i.cy, ptr %i.dd, align 32, !tbaa !57
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !114

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %.172 = phi i64 [ %i.dz, %.lr.ph73 ], [ %.172.unr, %.lr.ph73.prol.loopexit ] ; 8 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.172
  %i.df = load i32, ptr %i.de, align 4, !tbaa !24 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.172
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !24
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.172
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24
  %i.dk = add i32 %i.dh, %i.df
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.172
  store i32 %i.df, ptr %i.dl, align 4, !tbaa !24
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.172
  store i32 %i.dk, ptr %i.dm, align 4, !tbaa !24
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.172
  store i32 %i.dj, ptr %i.dn, align 4, !tbaa !24
  %i.do = add nuw i64 %.172, 1                    ; 6 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !24 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.do
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !24
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.do
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !24
  %i.dv = add i32 %i.ds, %i.dq
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.do
  store i32 %i.dq, ptr %i.dw, align 4, !tbaa !24
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.do
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !24
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.do
  store i32 %i.du, ptr %i.dy, align 4, !tbaa !24
  %i.dz = add nuw i64 %.172, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dz, %6
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph73, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_AVX29InvRCTRowILi3EEEvPKiS3_S3_PiS4_S4_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) #5 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
end_hunk_0
