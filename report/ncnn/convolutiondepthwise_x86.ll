Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86?download=true
inline.NumInlined: 220
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4ncnn24ConvolutionDepthWise_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  br label %bb.cw

_ZNK4ncnn3Mat5emptyEv.exit95.thread:              ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit95, %_ZN4ncnn3MatD2Ev.exit52
  %.2 = phi i32 [ %.1, %_ZN4ncnn3MatD2Ev.exit52 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit95 ], [ -100, %bb.b ]
  %i.id = load ptr, ptr %i.m, align 8, !tbaa !11  ; 2 uses
  %.not.i67 = icmp eq ptr %i.id, null
  br i1 %.not.i67, label %_ZN4ncnn3MatD2Ev.exit50, label %bb.cq

bb.cq:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit95.thread
  %i.ie = atomicrmw add ptr %i.id, i32 -1 acq_rel, align 4
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %bb.cr, label %_ZN4ncnn3MatD2Ev.exit50

bb.cr:                                            ; preds = %bb.cq
  %i.ig = load ptr, ptr %i.p, align 16, !tbaa !17 ; 3 uses
  %.not3.i68 = icmp eq ptr %i.ig, null
  %i.ih = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i68, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !9
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.ih)
          to label %_ZN4ncnn3MatD2Ev.exit50 unwind label %bb.cv, !inline_history !19

bb.ct:                                            ; preds = %bb.cr
  %.not.i76 = icmp eq ptr %i.ih, null
  br i1 %.not.i76, label %_ZN4ncnn3MatD2Ev.exit50, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @free(ptr noundef nonnull %i.ih) #13
  br label %_ZN4ncnn3MatD2Ev.exit50

bb.cv:                                            ; preds = %bb.cs
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit50:                          ; preds = %bb.cq, %_ZNK4ncnn3Mat5emptyEv.exit95.thread, %bb.cs, %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.2

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit51, %bb.c
  %.pn43.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit51 ], [ %i.ab, %bb.c ]
  %i.in = load ptr, ptr %i.m, align 8, !tbaa !11  ; 2 uses
  %.not.i71 = icmp eq ptr %i.in, null
  br i1 %.not.i71, label %_ZN4ncnn3MatD2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.io = atomicrmw add ptr %i.in, i32 -1 acq_rel, align 4
  %i.ip = icmp eq i32 %i.io, 1
  br i1 %i.ip, label %bb.cy, label %_ZN4ncnn3MatD2Ev.exit

bb.cy:                                            ; preds = %bb.cx
  %i.iq = load ptr, ptr %i.p, align 16, !tbaa !17 ; 3 uses
  %.not3.i72 = icmp eq ptr %i.iq, null
  %i.ir = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i72, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !9
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  invoke void %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef %i.ir)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.dc, !inline_history !19

bb.da:                                            ; preds = %bb.cy
  %.not.i75 = icmp eq ptr %i.ir, null
  br i1 %.not.i75, label %_ZN4ncnn3MatD2Ev.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @free(ptr noundef nonnull %i.ir) #13
  br label %_ZN4ncnn3MatD2Ev.exit

bb.dc:                                            ; preds = %bb.cz
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.cx, %bb.cw, %bb.cz, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn43.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn24ConvolutionDepthWise_x867forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 26 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::vector", align 8       ; 7 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %8 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %12 = alloca %"class.ncnn::Option", align 8     ; 6 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.h = load i8, ptr %i.g, align 2, !tbaa !53, !range !55, !noundef !56
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.k = load i32, ptr %i.j, align 4, !tbaa !88
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i32 @_ZNK4ncnn24ConvolutionDepthWise_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.eb

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73   ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !71   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 6 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !58
  %i.w = add nsw i32 %i.v, -1
  %i.x = mul nsw i32 %i.w, %i.t
  %.neg = xor i32 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !59
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = mul nsw i32 %i.ac, %i.z
  %.neg152 = xor i32 %i.ad, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  store i64 0, ptr %i.am, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ah, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn20ConvolutionDepthWise12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %4, align 16, !tbaa !18
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZNK4ncnn3Mat5emptyEv.exit240.thread, label %_ZNK4ncnn3Mat5emptyEv.exit240

_ZNK4ncnn3Mat5emptyEv.exit240:                    ; preds = %bb.e
  %i.ap = load i64, ptr %i.am, align 16, !tbaa !20
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !73
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.ap, %i.ar
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK4ncnn3Mat5emptyEv.exit240.thread, label %._crit_edge377

bb.f:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

._crit_edge377:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit240
  %i.av = load i32, ptr %i.aj, align 4, !tbaa !80 ; 2 uses
  %i.aw = load i32, ptr %i.ak, align 16, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ax = add i32 %i.av, %.neg
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !66
  %i.ba = sdiv i32 %i.ax, %i.az
  %i.bb = add nsw i32 %i.ba, 1                    ; 2 uses
  store i32 %i.bb, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.bc = add i32 %i.aw, %.neg152
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 7 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !67
  %i.bf = sdiv i32 %i.bc, %i.be
  %i.bg = add nsw i32 %i.bf, 1                    ; 2 uses
  store i32 %i.bg, ptr %i.c, align 4, !tbaa !72
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 39 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !63, !range !55, !noundef !56
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !62 ; 2 uses
  %i.bm = and i32 %i.bl, 3
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = and i1 %i.bn, %i.bj                     ; 3 uses
  %.0143 = select i1 %i.bo, i32 4, i32 1          ; 4 uses
  %i.bp = sext i32 %i.r to i64
  %i.bq = udiv i64 %i.p, %i.bp
  %i.br = select i1 %i.bo, i64 2, i64 0
  %i.bs = shl i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bu = sdiv i32 %i.bl, %.0143
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bb, i32 noundef %i.bg, i32 noundef %i.bu, i64 noundef %i.bs, i32 noundef %.0143, ptr noundef %i.bw)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge377
  %i.bx = load ptr, ptr %2, align 8, !tbaa !18
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZNK4ncnn3Mat5emptyEv.exit239.thread, label %_ZNK4ncnn3Mat5emptyEv.exit239

_ZNK4ncnn3Mat5emptyEv.exit239:                    ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !73
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.ca, %i.cd
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_ZNK4ncnn3Mat5emptyEv.exit239.thread, label %bb.i

bb.h:                                             ; preds = %.invoke, %._crit_edge377
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.i:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit239
  %i.ch = mul nsw i32 %i.n, %i.r                  ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !61 ; 3 uses
  %i.ck = icmp eq i32 %i.ch, %i.cj
  %.pre385 = load i32, ptr %i.bt, align 8, !tbaa !62 ; 2 uses
  %i.cl = icmp eq i32 %i.ch, %.pre385
  %or.cond = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond, label %bb.j, label %.thread266

bb.j:                                             ; preds = %bb.i
  switch i32 %i.r, label %.thread266 [
    i32 4, label %bb.k
    i32 1, label %bb.ae
  ]

bb.k:                                             ; preds = %bb.j
  %i.cm = load i32, ptr %i.u, align 4, !tbaa !58  ; 2 uses
  %.pre383 = load i32, ptr %i.aa, align 8, !tbaa !59 ; 5 uses
  switch i32 %i.cm, label %.thread245 [
    i32 3, label %bb.l
    i32 5, label %bb.t
  ]

bb.l:                                             ; preds = %bb.k
  %i.cn = icmp eq i32 %.pre383, 3
  br i1 %i.cn, label %bb.m, label %.thread245

bb.m:                                             ; preds = %bb.l
  %i.co = load i32, ptr %i.s, align 4, !tbaa !64
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.n, label %.thread245

bb.n:                                             ; preds = %bb.m
  %i.cq = load i32, ptr %i.y, align 8, !tbaa !65
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %bb.o, label %.thread245

bb.o:                                             ; preds = %bb.n
  %i.cs = load i32, ptr %i.ay, align 4, !tbaa !66
  switch i32 %i.cs, label %.thread245 [
    i32 1, label %bb.p
    i32 2, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.ct = load i32, ptr %i.bd, align 8, !tbaa !67
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.q, label %.thread245

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 432
  call fastcc void @_ZN4ncnnL21convdw3x3s1_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.cv, ptr noundef nonnull align 8 dereferenceable(72) %i.cw, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !47 ; 2 uses
  %.not167 = icmp eq ptr %i.cy, null
  br i1 %.not167, label %_ZNK4ncnn3Mat5emptyEv.exit239.thread, label %.invoke

bb.r:                                             ; preds = %bb.o
  %i.cz = load i32, ptr %i.bd, align 8, !tbaa !67
  %i.da = icmp eq i32 %i.cz, 2
  br i1 %i.da, label %bb.s, label %.thread245

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 432
  call fastcc void @_ZN4ncnnL21convdw3x3s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.db, ptr noundef nonnull align 8 dereferenceable(72) %i.dc, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47 ; 2 uses
  %.not166 = icmp eq ptr %i.de, null
  br i1 %.not166, label %_ZNK4ncnn3Mat5emptyEv.exit239.thread, label %.invoke

bb.t:                                             ; preds = %bb.k
  %i.df = icmp eq i32 %.pre383, 5
  br i1 %i.df, label %bb.u, label %.thread245

bb.u:                                             ; preds = %bb.t
  %i.dg = load i32, ptr %i.s, align 4, !tbaa !64
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.v, label %.thread245

bb.v:                                             ; preds = %bb.u
  %i.di = load i32, ptr %i.y, align 8, !tbaa !65
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.w, label %.thread245

bb.w:                                             ; preds = %bb.v
  %i.dk = load i32, ptr %i.ay, align 4, !tbaa !66
  switch i32 %i.dk, label %.thread245 [
    i32 1, label %bb.x
    i32 2, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.dl = load i32, ptr %i.bd, align 8, !tbaa !67
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.y, label %.thread245

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 432
  call fastcc void @_ZN4ncnnL21convdw5x5s1_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.dn, ptr noundef nonnull align 8 dereferenceable(72) %i.do, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !47 ; 2 uses
  %.not165 = icmp eq ptr %i.dq, null
  br i1 %.not165, label %_ZNK4ncnn3Mat5emptyEv.exit239.thread, label %.invoke

bb.z:                                             ; preds = %bb.w
  %i.dr = load i32, ptr %i.bd, align 8, !tbaa !67
  %i.ds = icmp eq i32 %i.dr, 2
  br i1 %i.ds, label %bb.aa, label %.thread245

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 432
  call fastcc void @_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.dt, ptr noundef nonnull align 8 dereferenceable(72) %i.du, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !47 ; 2 uses
  %.not164 = icmp eq ptr %i.dw, null
  br i1 %.not164, label %_ZNK4ncnn3Mat5emptyEv.exit239.thread, label %.invoke

.thread245:                                       ; preds = %bb.w, %bb.o, %bb.k, %bb.x, %bb.p, %bb.v, %bb.n, %bb.u, %bb.t, %bb.m, %bb.l, %bb.r, %bb.z
  %i.dx = phi i32 [ 5, %bb.x ], [ 5, %bb.w ], [ 3, %bb.p ], [ 3, %bb.r ], [ 5, %bb.z ], [ 5, %bb.u ], [ %.pre383, %bb.t ], [ 3, %bb.m ], [ %.pre383, %bb.l ], [ 3, %bb.o ], [ 3, %bb.n ], [ 5, %bb.v ], [ %.pre383, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.dy = mul nsw i32 %i.dx, %i.cm                ; 2 uses
  store i32 %i.dy, ptr %i.d, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.dz = sext i32 %i.dy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.dz, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %.thread245
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.ea = load ptr, ptr %5, align 8, !tbaa !91    ; 2 uses
  store ptr %i.ea, ptr %i.e, align 8, !tbaa !92
  %i.eb = load i32, ptr %i.y, align 8, !tbaa !65
  %i.ec = mul nsw i32 %i.eb, %i.av
  %i.ed = load i32, ptr %i.u, align 4, !tbaa !58  ; 3 uses
  %i.ee = load i32, ptr %i.s, align 4, !tbaa !64
  %i.ef = mul nsw i32 %i.ee, %i.ed
  %i.eg = sub i32 %i.ec, %i.ef
  %i.eh = load i32, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  %i.ej = icmp sgt i32 %i.ed, 0
  %or.cond449 = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond449, label %.preheader, label %._crit_edge362

.preheader:                                       ; preds = %bb.ab, %._crit_edge
  %i.ek = phi i32 [ %i.ey, %._crit_edge ], [ %i.eh, %bb.ab ]
  %i.el = phi i32 [ %i.ez, %._crit_edge ], [ %i.ed, %bb.ab ] ; 2 uses
  %.0127361 = phi i32 [ %i.fb, %._crit_edge ], [ 0, %bb.ab ]
  %.0136360 = phi i32 [ %i.fa, %._crit_edge ], [ 0, %bb.ab ] ; 2 uses
  %.0138359 = phi i32 [ %.1139.lcssa, %._crit_edge ], [ 0, %bb.ab ] ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.en = sext i32 %.0138359 to i64
  br label %.lr.ph

._crit_edge362:                                   ; preds = %._crit_edge, %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !93
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ep)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn24ConvolutionDepthWise_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.d, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.eq = load ptr, ptr %5, align 8, !tbaa !91    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge362
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !94
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
end_hunk_0
begin_hunk_1_@_ZNK4ncnn24ConvolutionDepthWise_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !45 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.bw = getelementptr i8, ptr %.0196482, i64 %i.bo ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0196482, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !45
  store <4 x float> %broadcast.splat, ptr %i.by, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.1197480.ph = phi ptr [ %.0196482, %.lr.ph ], [ %i.bw, %middle.block ]
  %.0218479.ph = phi i32 [ 0, %.lr.ph ], [ %i.bp, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa668 = phi ptr [ %i.bw, %middle.block ], [ %i.ca, %scalar.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond538.not, label %._crit_edge484.split, label %.lr.ph, !llvm.loop !140

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1197480 = phi ptr [ %i.ca, %scalar.ph ], [ %.1197480.ph, %scalar.ph.preheader ] ; 2 uses
  %.0218479 = phi i32 [ %i.cb, %scalar.ph ], [ %.0218479.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.1197480, i64 4 ; 2 uses
  store float %i.bv, ptr %.1197480, align 4, !tbaa !45
  %i.cb = add nuw nsw i32 %.0218479, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, %i.bd
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !141

bb.f:                                             ; preds = %._crit_edge484.split
  %i.cc = load ptr, ptr %4, align 16, !tbaa !18
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZNK4ncnn3Mat5emptyEv.exit354, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = load i64, ptr %i.av, align 16, !tbaa !20
  %i.cf = load i32, ptr %i.au, align 8, !tbaa !73
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul i64 %i.ce, %i.cg
  %i.ci = icmp eq i64 %i.ch, 0
  br label %_ZNK4ncnn3Mat5emptyEv.exit354

_ZNK4ncnn3Mat5emptyEv.exit354:                    ; preds = %bb.f, %bb.g
  %i.cj = phi i1 [ true, %bb.f ], [ %i.ci, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.ck = load ptr, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %.not.i267 = icmp eq ptr %i.ck, null
  br i1 %.not.i267, label %_ZN4ncnn3MatD2Ev.exit265, label %bb.h

bb.h:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit354
  %i.cl = atomicrmw add ptr %i.ck, i32 -1 acq_rel, align 4
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit265

bb.i:                                             ; preds = %bb.h
  %i.cn = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 3 uses
  %.not3.i268 = icmp eq ptr %i.cn, null
  %i.co = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i268, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.co)
          to label %_ZN4ncnn3MatD2Ev.exit265 unwind label %bb.m, !inline_history !19

bb.k:                                             ; preds = %bb.i
  %.not.i342 = icmp eq ptr %i.co, null
  br i1 %.not.i342, label %_ZN4ncnn3MatD2Ev.exit265, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.co) #13
  br label %_ZN4ncnn3MatD2Ev.exit265

bb.m:                                             ; preds = %bb.j
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit265:                         ; preds = %bb.h, %_ZNK4ncnn3Mat5emptyEv.exit354, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.cj, label %bb.gq, label %bb.u

bb.n:                                             ; preds = %._crit_edge484.split
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.cv = load ptr, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.cv, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit266, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = atomicrmw add ptr %i.cv, i32 -1 acq_rel, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit266

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.cy, null
  %i.cz = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef %i.cz)
          to label %_ZN4ncnn3MatD2Ev.exit266 unwind label %bb.t, !inline_history !19

bb.r:                                             ; preds = %bb.p
  %.not.i344 = icmp eq ptr %i.cz, null
  br i1 %.not.i344, label %_ZN4ncnn3MatD2Ev.exit266, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.cz) #13
  br label %_ZN4ncnn3MatD2Ev.exit266

bb.t:                                             ; preds = %bb.q
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit266:                         ; preds = %bb.s, %bb.r, %bb.q, %bb.n, %bb.o, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.e ], [ %i.cu, %bb.o ], [ %i.cu, %bb.n ], [ %i.cu, %bb.q ], [ %i.cu, %bb.r ], [ %i.cu, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.gx

bb.u:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit265, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 0, ptr %i.dn, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.di, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn20ConvolutionDepthWise12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.do = load ptr, ptr %7, align 16, !tbaa !18
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %_ZNK4ncnn3Mat5emptyEv.exit353

_ZNK4ncnn3Mat5emptyEv.exit353:                    ; preds = %bb.v
  %i.dq = load i64, ptr %i.dn, align 16, !tbaa !20
  %i.dr = load i32, ptr %i.dm, align 8, !tbaa !73 ; 3 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = mul i64 %i.dq, %i.ds
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit353
  %i.dw = load i32, ptr %i.dk, align 4, !tbaa !80 ; 3 uses
  %i.dx = load i32, ptr %i.dl, align 16, !tbaa !81
  store i32 %i.dr, ptr %i.a, align 4, !tbaa !72
  %i.dy = load i32, ptr %i.dh, align 8, !tbaa !71 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.dz = add i32 %i.dw, %.neg
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !66
  %i.ec = sdiv i32 %i.dz, %i.eb
  %i.ed = add nsw i32 %i.ec, 1                    ; 3 uses
  store i32 %i.ed, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ee = add i32 %i.dx, %.neg226
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !67
  %i.eh = sdiv i32 %i.ee, %i.eg
  %i.ei = add nsw i32 %i.eh, 1                    ; 3 uses
  store i32 %i.ei, ptr %i.c, align 4, !tbaa !72
  %i.ej = mul nsw i32 %i.dy, %i.dr                ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 12 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !61
  %i.em = icmp eq i32 %i.ej, %i.el
  br i1 %i.em, label %bb.y, label %bb.ct

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !62
  %i.ep = icmp eq i32 %i.ej, %i.eo
  br i1 %i.ep, label %bb.z, label %bb.ct

bb.z:                                             ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !63, !range !55, !noundef !56
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = and i32 %i.ej, 7
  %i.eu = icmp eq i32 %i.et, 0
  %i.ev = and i1 %i.eu, %i.es
  %.0217 = select i1 %i.ev, i32 8, i32 1          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !88
  %i.ey = icmp sgt i32 %i.ex, 100                 ; 2 uses
  %i.ez = zext i1 %i.ey to i8
  store i8 %i.ez, ptr %i.d, align 1, !tbaa !99
  %i.fa = shl nuw nsw i32 %.0217, 2
  %i.fb = select i1 %i.ey, i32 %.0217, i32 %i.fa
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = sdiv i32 %i.ej, %.0217
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ed, i32 noundef %i.ei, i32 noundef %i.fd, i64 noundef %i.fc, i32 noundef %.0217, ptr noundef %i.ff)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fg = load ptr, ptr %2, align 8, !tbaa !18
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread, label %_ZNK4ncnn3Mat5emptyEv.exit352

_ZNK4ncnn3Mat5emptyEv.exit352:                    ; preds = %bb.aa
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !73
  %i.fm = sext i32 %i.fl to i64
  %i.fn = mul i64 %i.fj, %i.fm
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread, label %bb.ac

bb.ab:                                            ; preds = %.invoke, %bb.z
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit352
  switch i32 %i.dy, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread [
    i32 8, label %bb.ad
    i32 1, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.fq = load i32, ptr %i.y, align 4, !tbaa !58
  %i.fr = load i32, ptr %i.ae, align 8, !tbaa !59
  %i.fs = mul nsw i32 %i.fr, %i.fq                ; 2 uses
  store i32 %i.fs, ptr %i.e, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ft = sext i32 %i.fs to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.fu = load ptr, ptr %8, align 8, !tbaa !91    ; 2 uses
  store ptr %i.fu, ptr %i.f, align 8, !tbaa !92
  %i.fv = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.fw = mul nsw i32 %i.fv, %i.dw
  %i.fx = load i32, ptr %i.y, align 4, !tbaa !58  ; 3 uses
  %i.fy = load i32, ptr %i.w, align 4, !tbaa !64
  %i.fz = mul nsw i32 %i.fy, %i.fx
  %i.ga = sub i32 %i.fw, %i.fz
  %i.gb = load i32, ptr %i.ae, align 8, !tbaa !59 ; 2 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  %i.gd = icmp sgt i32 %i.fx, 0
  %or.cond = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond, label %.preheader396, label %._crit_edge500

.preheader396:                                    ; preds = %bb.ae, %._crit_edge494
  %i.ge = phi i32 [ %i.gs, %._crit_edge494 ], [ %i.gb, %bb.ae ]
  %i.gf = phi i32 [ %i.gt, %._crit_edge494 ], [ %i.fx, %bb.ae ] ; 2 uses
  %.0207499 = phi i32 [ %i.gv, %._crit_edge494 ], [ 0, %bb.ae ]
  %.0209498 = phi i32 [ %i.gu, %._crit_edge494 ], [ 0, %bb.ae ] ; 2 uses
  %.0211497 = phi i32 [ %.1212.lcssa, %._crit_edge494 ], [ 0, %bb.ae ] ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph493.preheader, label %._crit_edge494

.lr.ph493.preheader:                              ; preds = %.preheader396
  %i.gh = sext i32 %.0211497 to i64
  br label %.lr.ph493

._crit_edge500:                                   ; preds = %._crit_edge494, %bb.ae
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !93
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.gj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn24ConvolutionDepthWise_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %7, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.f, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %i.gk = load ptr, ptr %8, align 8, !tbaa !91    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge500
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !94
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge500, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %_ZNK4ncnn3Mat5emptyEv.exit352.thread

bb.ag:                                            ; preds = %bb.ad
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.cs

._crit_edge494.loopexit:                          ; preds = %.lr.ph493
  %i.gr = trunc nsw i64 %indvars.iv.next560 to i32
  %.pre566 = load i32, ptr %i.ae, align 8, !tbaa !59
  br label %._crit_edge494

._crit_edge494:                                   ; preds = %._crit_edge494.loopexit, %.preheader396
  %i.gs = phi i32 [ %i.ge, %.preheader396 ], [ %.pre566, %._crit_edge494.loopexit ] ; 2 uses
  %i.gt = phi i32 [ %i.gf, %.preheader396 ], [ %i.hb, %._crit_edge494.loopexit ]
  %.1212.lcssa = phi i32 [ %.0211497, %.preheader396 ], [ %i.gr, %._crit_edge494.loopexit ]
  %.1210.lcssa = phi i32 [ %.0209498, %.preheader396 ], [ %i.gz, %._crit_edge494.loopexit ]
  %i.gu = add nsw i32 %i.ga, %.1210.lcssa
  %i.gv = add nuw nsw i32 %.0207499, 1            ; 2 uses
  %i.gw = icmp slt i32 %i.gv, %i.gs
  br i1 %i.gw, label %.preheader396, label %._crit_edge500, !llvm.loop !142

.lr.ph493:                                        ; preds = %.lr.ph493.preheader, %.lr.ph493
  %indvars.iv559 = phi i64 [ %i.gh, %.lr.ph493.preheader ], [ %indvars.iv.next560, %.lr.ph493 ] ; 2 uses
  %.0206492 = phi i32 [ 0, %.lr.ph493.preheader ], [ %i.ha, %.lr.ph493 ]
  %.1210491 = phi i32 [ %.0209498, %.lr.ph493.preheader ], [ %i.gz, %.lr.ph493 ] ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %indvars.iv559
  store i32 %.1210491, ptr %i.gx, align 4, !tbaa !72
  %indvars.iv.next560 = add nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.gy = load i32, ptr %i.w, align 4, !tbaa !64
  %i.gz = add nsw i32 %i.gy, %.1210491            ; 2 uses
  %i.ha = add nuw nsw i32 %.0206492, 1            ; 2 uses
  %i.hb = load i32, ptr %i.y, align 4, !tbaa !58  ; 2 uses
  %i.hc = icmp slt i32 %i.ha, %i.hb
  br i1 %i.hc, label %.lr.ph493, label %._crit_edge494.loopexit, !llvm.loop !143

bb.ah:                                            ; preds = %bb.ac
  %i.hd = load i32, ptr %i.y, align 4, !tbaa !58  ; 2 uses
  %i.he = icmp eq i32 %i.hd, 3
  %.pre565 = load i32, ptr %i.ae, align 8, !tbaa !59 ; 2 uses
  %i.hf = icmp eq i32 %.pre565, 3
  %or.cond658 = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %or.cond658, label %bb.ai, label %.thread391

bb.ai:                                            ; preds = %bb.ah
  %i.hg = load i32, ptr %i.ea, align 4, !tbaa !66 ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 1
  br i1 %i.hh, label %bb.aj, label %.thread390

bb.aj:                                            ; preds = %bb.ai
  %i.hi = load i32, ptr %i.ef, align 8, !tbaa !67
  %i.hj = icmp eq i32 %i.hi, 1
  br i1 %i.hj, label %bb.ak, label %.thread390

bb.ak:                                            ; preds = %bb.aj
  %i.hk = load i32, ptr %i.w, align 4, !tbaa !64
  %i.hl = icmp eq i32 %i.hk, 1
  br i1 %i.hl, label %bb.al, label %.thread391

bb.al:                                            ; preds = %bb.ak
  %i.hm = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.hn = icmp eq i32 %i.hm, 1
  br i1 %i.hn, label %bb.am, label %.thread391

bb.am:                                            ; preds = %bb.al
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !44
  %switch = icmp ult i32 %i.hp, 2
  br i1 %switch, label %bb.an, label %.thread390

bb.an:                                            ; preds = %bb.am
  %i.hq = load i8, ptr %i.d, align 1, !tbaa !99, !range !55, !noundef !56
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ao, label %bb.bb

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.hs = load i32, ptr %i.ek, align 8, !tbaa !61
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph526, label %._crit_edge527

.lr.ph526:                                        ; preds = %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.ap

._crit_edge527:                                   ; preds = %bb.at, %bb.ao
  invoke void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.av unwind label %bb.ay

bb.ap:                                            ; preds = %.lr.ph526, %bb.at
  %indvars.iv556 = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next557, %bb.at ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv556
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !45 ; 2 uses
  %i.ia = fcmp fast oeq float %i.hz, 0.000000e+00
  br i1 %i.ia, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv556
  %i.id = load float, ptr %i.ic, align 4, !tbaa !45
end_hunk_1
