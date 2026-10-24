Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_avx512?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4ncnn18Softmax_x86_avx512D0Ev:bb.a

declare noundef i32 @_ZN4ncnn7Softmax10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(212), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %i.p = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !63, !range !64, !noundef !65
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !17   ; 4 uses
  br i1 %i.s, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %.tr.i = trunc i64 %i.w to i32
  %i.x = shl i32 %.tr.i, 3
  %i.y = sdiv i32 %i.x, %i.u
  %i.z = icmp eq i32 %i.y, 16
  br i1 %i.z, label %bb.c, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.aa = tail call noundef i32 @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %bb.bs

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %bb.b, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.ab = phi i32 [ %i.u, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.b ], [ %i.u, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !20 ; 5 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !22
  store i32 %i.ah, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !24
  store i32 %i.al, ptr %i.d, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load i32, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  %i.ap = select i1 %i.ao, i32 %i.ad, i32 0
  %i.aq = add nsw i32 %i.ap, %i.an                ; 5 uses
  %i.ar = icmp eq i32 %i.ad, 1
  br i1 %i.ar, label %.thread217, label %bb.d

.thread217:                                       ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.as = load ptr, ptr %1, align 8, !tbaa !40
  %i.at = mul nsw i32 %i.ab, %i.af
  tail call fastcc void @_ZN4ncnnL7softmaxEPfii(ptr noundef %i.as, i32 noundef %i.at, i32 noundef 1)
  %i.au = icmp eq i32 %i.aq, 1
  br label %bb.x

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.av = icmp eq i32 %i.ad, 2                    ; 2 uses
  %i.aw = icmp eq i32 %i.aq, 0                    ; 2 uses
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 %i.af, ptr %i.f, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !41 ; 3 uses
  %i.az = add i32 %i.af, -1
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = sdiv i32 %i.ba, %i.ay                   ; 2 uses
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.bc = sext i32 %i.af to i64
  %i.bd = sext i32 %i.ab to i64
  %i.be = mul nsw i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.h, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %i.bb, i32 noundef 2, i32 noundef %i.ay, i64 noundef 4, ptr noundef %i.bg)
  %i.bk = load ptr, ptr %3, align 8, !tbaa !40
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit104

_ZNK4ncnn3Mat5emptyEv.exit104:                    ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !44
  %i.bo = load i32, ptr %i.bm, align 8, !tbaa !24
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %i.bn, %i.bp
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.bs = load i32, ptr %i.f, align 4, !tbaa !21
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !21  ; 2 uses
  %i.bu = add i32 %i.bs, -1
  %i.bv = add i32 %i.bu, %i.bt
  %i.bw = sdiv i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.i, align 4, !tbaa !21
  %i.bx = load i32, ptr %i.ax, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.bx)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.i, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %3, ptr nonnull %1, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %.not.i117 = icmp eq ptr %i.by, null
  br i1 %.not.i117, label %.thread187, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = atomicrmw add ptr %i.by, i32 -1 acq_rel, align 4
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.h, label %.thread187

bb.h:                                             ; preds = %bb.g
  %i.cb = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 3 uses
  %.not3.i118 = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %3, align 8, !tbaa !40    ; 3 uses
  br i1 %.not3.i118, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %i.cc)
          to label %.thread187 unwind label %bb.l, !inline_history !0

bb.j:                                             ; preds = %bb.h
  %.not.i180 = icmp eq ptr %i.cc, null
  br i1 %.not.i180, label %.thread187, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.cc) #7
  br label %.thread187

bb.l:                                             ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #20
  unreachable

.thread187:                                       ; preds = %bb.g, %bb.f, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.x

bb.m:                                             ; preds = %bb.d
  %i.ci = icmp eq i32 %i.aq, 1                    ; 2 uses
  %or.cond6 = select i1 %i.av, i1 %i.ci, i1 false
  br i1 %or.cond6, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !41
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.ck)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %i.e)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %7 = phi i1 [ %i.ci, %bb.m ], [ true, %bb.n ]   ; 2 uses
  %i.cl = icmp eq i32 %i.ad, 3                    ; 2 uses
  %i.cm = icmp eq i32 %i.ad, 4                    ; 2 uses
  %i.cn = add i32 %i.ad, -3
  %or.cond8 = icmp ult i32 %i.cn, 2
  %or.cond10 = select i1 %or.cond8, i1 %i.aw, i1 false
  br i1 %or.cond10, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  %i.co = load i32, ptr %i.a, align 4, !tbaa !21
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !21
  %i.cq = mul nsw i32 %i.cp, %i.co
  %i.cr = load i32, ptr %i.c, align 4, !tbaa !21
  %i.cs = mul nsw i32 %i.cq, %i.cr                ; 2 uses
  store i32 %i.cs, ptr %i.j, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !41 ; 3 uses
  %i.cv = add i32 %i.cs, -1
  %i.cw = add i32 %i.cv, %i.cu
  %i.cx = sdiv i32 %i.cw, %i.cu                   ; 2 uses
  store i32 %i.cx, ptr %i.k, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !44
  %i.da = load i32, ptr %i.e, align 4, !tbaa !21
  %i.db = sext i32 %i.da to i64
  %i.dc = mul i64 %i.cz, %i.db
  store i64 %i.dc, ptr %i.l, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.dh, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dg, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.cx, i32 noundef 2, i32 noundef %i.cu, i64 noundef 4, ptr noundef %i.de)
  %i.di = load ptr, ptr %4, align 8, !tbaa !40
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.critedge96, label %_ZNK4ncnn3Mat5emptyEv.exit103

_ZNK4ncnn3Mat5emptyEv.exit103:                    ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dl = load i64, ptr %i.dh, align 8, !tbaa !44
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !24
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul i64 %i.dl, %i.dn
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.critedge96, label %bb.q

bb.q:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  %i.dq = load i32, ptr %i.j, align 4, !tbaa !21
  %i.dr = load i32, ptr %i.k, align 4, !tbaa !21  ; 2 uses
  %i.ds = add i32 %i.dq, -1
  %i.dt = add i32 %i.ds, %i.dr
  %i.du = sdiv i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.m, align 4, !tbaa !21
  %i.dv = load i32, ptr %i.ct, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.dv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2, ptr nonnull %i.m, ptr nonnull %i.k, ptr nonnull %i.j, ptr nonnull %4, ptr nonnull %1, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  %i.dw = load ptr, ptr %i.df, align 8, !tbaa !45 ; 2 uses
  %.not.i125 = icmp eq ptr %i.dw, null
  br i1 %.not.i125, label %_ZN4ncnn3MatD2Ev.exit112, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = atomicrmw add ptr %i.dw, i32 -1 acq_rel, align 4
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.s, label %_ZN4ncnn3MatD2Ev.exit112

bb.s:                                             ; preds = %bb.r
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !46 ; 3 uses
  %.not3.i126 = icmp eq ptr %i.dz, null
  %i.ea = load ptr, ptr %4, align 8, !tbaa !40    ; 3 uses
  br i1 %.not3.i126, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef %i.ea)
          to label %_ZN4ncnn3MatD2Ev.exit112 unwind label %bb.w, !inline_history !0

bb.u:                                             ; preds = %bb.s
  %.not.i176 = icmp eq ptr %i.ea, null
  br i1 %.not.i176, label %_ZN4ncnn3MatD2Ev.exit112, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.ea) #7
  br label %_ZN4ncnn3MatD2Ev.exit112

bb.w:                                             ; preds = %bb.t
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit112:                         ; preds = %bb.r, %bb.q, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  br label %bb.x

bb.x:                                             ; preds = %.thread217, %.thread187, %_ZN4ncnn3MatD2Ev.exit112, %bb.o
  %i.eg = phi i1 [ false, %.thread187 ], [ %i.cm, %_ZN4ncnn3MatD2Ev.exit112 ], [ %i.cm, %bb.o ], [ false, %.thread217 ] ; 3 uses
  %i.eh = phi i1 [ false, %.thread187 ], [ %i.cl, %_ZN4ncnn3MatD2Ev.exit112 ], [ %i.cl, %bb.o ], [ false, %.thread217 ] ; 2 uses
  %i.ei = phi i1 [ false, %.thread187 ], [ %7, %_ZN4ncnn3MatD2Ev.exit112 ], [ %7, %bb.o ], [ %i.au, %.thread217 ] ; 2 uses
  %or.cond12 = select i1 %i.eh, i1 %i.ei, i1 false
  %i.ej = icmp eq i32 %i.aq, 2                    ; 2 uses
  %or.cond14 = select i1 %i.eg, i1 %i.ej, i1 false
  %or.cond97 = select i1 %or.cond12, i1 true, i1 %or.cond14
  br i1 %or.cond97, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !21
  %i.el = load i32, ptr %i.e, align 4, !tbaa !21
  %i.em = mul nsw i32 %i.el, %i.ek                ; 2 uses
  store i32 %i.em, ptr %i.n, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !41
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.et, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.es, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.em, i32 noundef 2, i32 noundef %i.eo, i64 noundef 4, ptr noundef %i.eq)
  %i.eu = load ptr, ptr %5, align 8, !tbaa !40
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %.critedge99, label %_ZNK4ncnn3Mat5emptyEv.exit102

_ZNK4ncnn3Mat5emptyEv.exit102:                    ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ex = load i64, ptr %i.et, align 8, !tbaa !44
  %i.ey = load i32, ptr %i.ew, align 8, !tbaa !24
  %i.ez = sext i32 %i.ey to i64
  %i.fa = mul i64 %i.ex, %i.ez
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.critedge99, label %bb.z

bb.z:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit102
  %i.fc = load i32, ptr %i.en, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.fc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.3, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %5, ptr nonnull %i.n, ptr nonnull %i.b)
  %i.fd = load ptr, ptr %i.er, align 8, !tbaa !45 ; 2 uses
  %.not.i133 = icmp eq ptr %i.fd, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit110, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fe = atomicrmw add ptr %i.fd, i32 -1 acq_rel, align 4
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit110

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load ptr, ptr %i.es, align 8, !tbaa !46 ; 3 uses
  %.not3.i134 = icmp eq ptr %i.fg, null
  %i.fh = load ptr, ptr %5, align 8, !tbaa !40    ; 3 uses
  br i1 %.not3.i134, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !48
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  invoke void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef %i.fh)
          to label %_ZN4ncnn3MatD2Ev.exit110 unwind label %bb.af, !inline_history !0

bb.ad:                                            ; preds = %bb.ab
  %.not.i172 = icmp eq ptr %i.fh, null
  br i1 %.not.i172, label %_ZN4ncnn3MatD2Ev.exit110, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.fh) #7
  br label %_ZN4ncnn3MatD2Ev.exit110

bb.af:                                            ; preds = %bb.ac
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit110:                         ; preds = %bb.aa, %bb.z, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit110, %bb.x
  %or.cond16 = select i1 %i.eh, i1 %i.ej, i1 false
  br i1 %or.cond16, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.fo)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.e)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %or.cond18 = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond18, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  %i.fp = load i32, ptr %i.a, align 4, !tbaa !21
  %i.fq = load i32, ptr %i.b, align 4, !tbaa !21
  %i.fr = mul nsw i32 %i.fq, %i.fp
  %i.fs = load i32, ptr %i.e, align 4, !tbaa !21
  %i.ft = mul nsw i32 %i.fr, %i.fs                ; 2 uses
  store i32 %i.ft, ptr %i.o, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !41
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !43
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.ga, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fz, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.ft, i32 noundef 2, i32 noundef %i.fv, i64 noundef 4, ptr noundef %i.fx)
  %i.gb = load ptr, ptr %6, align 8, !tbaa !40
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %.critedge101, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.aj
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ge = load i64, ptr %i.ga, align 8, !tbaa !44
  %i.gf = load i32, ptr %i.gd, align 8, !tbaa !24
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul i64 %i.ge, %i.gg
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %.critedge101, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.gj = load i32, ptr %i.fu, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.gj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.5, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %6, ptr nonnull %i.o, ptr nonnull %i.c)
  %i.gk = load ptr, ptr %i.fy, align 8, !tbaa !45 ; 2 uses
  %.not.i141 = icmp eq ptr %i.gk, null
  br i1 %.not.i141, label %_ZN4ncnn3MatD2Ev.exit108, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gl = atomicrmw add ptr %i.gk, i32 -1 acq_rel, align 4
  %i.gm = icmp eq i32 %i.gl, 1
  br i1 %i.gm, label %bb.am, label %_ZN4ncnn3MatD2Ev.exit108

bb.am:                                            ; preds = %bb.al
  %i.gn = load ptr, ptr %i.fz, align 8, !tbaa !46 ; 3 uses
  %.not3.i142 = icmp eq ptr %i.gn, null
  %i.go = load ptr, ptr %6, align 8, !tbaa !40    ; 3 uses
  br i1 %.not3.i142, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef %i.go)
          to label %_ZN4ncnn3MatD2Ev.exit108 unwind label %bb.aq, !inline_history !0

bb.ao:                                            ; preds = %bb.am
  %.not.i168 = icmp eq ptr %i.go, null
  br i1 %.not.i168, label %_ZN4ncnn3MatD2Ev.exit108, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.go) #7
  br label %_ZN4ncnn3MatD2Ev.exit108

bb.aq:                                            ; preds = %bb.an
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit108:                         ; preds = %bb.al, %bb.ak, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit108, %bb.ai
  %i.gu = icmp eq i32 %i.aq, 3
  %or.cond20 = select i1 %i.eg, i1 %i.gu, i1 false
  br i1 %or.cond20, label %bb.as, label %bb.br

bb.as:                                            ; preds = %bb.ar
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.gw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.6, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.e)
  br label %bb.br

.critedge:                                        ; preds = %bb.e, %_ZNK4ncnn3Mat5emptyEv.exit104
  %i.gx = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %.not.i145 = icmp eq ptr %i.gx, null
  br i1 %.not.i145, label %_ZN4ncnn3MatD2Ev.exit107, label %bb.at

bb.at:                                            ; preds = %.critedge
  %i.gy = atomicrmw add ptr %i.gx, i32 -1 acq_rel, align 4
  %i.gz = icmp eq i32 %i.gy, 1
  br i1 %i.gz, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit107

bb.au:                                            ; preds = %bb.at
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE:bb.a
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bl, %.critedge101, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  br label %bb.br

bb.br:                                            ; preds = %bb.ar, %bb.as, %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit105, %_ZN4ncnn3MatD2Ev.exit106, %_ZN4ncnn3MatD2Ev.exit107
  %.7 = phi i32 [ -100, %_ZN4ncnn3MatD2Ev.exit ], [ -100, %_ZN4ncnn3MatD2Ev.exit106 ], [ -100, %_ZN4ncnn3MatD2Ev.exit105 ], [ 0, %bb.as ], [ 0, %bb.ar ], [ -100, %_ZN4ncnn3MatD2Ev.exit107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.c
  %.8 = phi i32 [ %i.aa, %bb.c ], [ %.7, %bb.br ]
  ret i32 %.8
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn18Softmax_x86_avx512C2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn7SoftmaxC2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn18Softmax_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !67
  ret void
}

declare void @_ZN4ncnn7SoftmaxC2Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %i.p = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !19   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20   ; 5 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !22
  store i32 %i.v, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !23
  store i32 %i.x, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !24
  store i32 %i.z, ptr %i.d, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !17 ; 3 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  %i.af = select i1 %i.ae, i32 %i.r, i32 0
  %i.ag = add nsw i32 %i.af, %i.ad                ; 5 uses
  %i.ah = icmp eq i32 %i.r, 1
  br i1 %i.ah, label %.thread211, label %bb.b

.thread211:                                       ; preds = %bb.a
  %i.ai = load ptr, ptr %1, align 8, !tbaa !40
  %i.aj = mul nsw i32 %i.ab, %i.t
  tail call fastcc void @_ZN4ncnnL17softmax_bf16s_sseEPtii(ptr noundef %i.ai, i32 noundef %i.aj, i32 noundef 1)
  %i.ak = icmp eq i32 %i.ag, 1
  br label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.al = icmp eq i32 %i.r, 2                     ; 2 uses
  %i.am = icmp eq i32 %i.ag, 0                    ; 2 uses
  %or.cond = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 %i.t, ptr %i.f, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !41 ; 3 uses
  %i.ap = add i32 %i.t, -1
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = sdiv i32 %i.aq, %i.ao                   ; 2 uses
  store i32 %i.ar, ptr %i.g, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.as = sext i32 %i.t to i64
  %i.at = sext i32 %i.ab to i64
  %i.au = mul nsw i64 %i.at, %i.as
  store i64 %i.au, ptr %i.h, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ay, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %i.ar, i32 noundef 2, i32 noundef %i.ao, i64 noundef 4, ptr noundef %i.aw)
  %i.ba = load ptr, ptr %3, align 8, !tbaa !40
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit100

_ZNK4ncnn3Mat5emptyEv.exit100:                    ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !44
  %i.be = load i32, ptr %i.bc, align 8, !tbaa !24
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bd, %i.bf
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !21
  %i.bj = load i32, ptr %i.g, align 4, !tbaa !21  ; 2 uses
  %i.bk = add i32 %i.bi, -1
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = sdiv i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.i, align 4, !tbaa !21
  %i.bn = load i32, ptr %i.an, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.bn)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.i, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %3, ptr nonnull %1, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !45 ; 2 uses
  %.not.i112 = icmp eq ptr %i.bo, null
  br i1 %.not.i112, label %.thread182, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = atomicrmw add ptr %i.bo, i32 -1 acq_rel, align 4
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.f, label %.thread182

bb.f:                                             ; preds = %bb.e
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 3 uses
  %.not3.i113 = icmp eq ptr %i.br, null
  %i.bs = load ptr, ptr %3, align 8, !tbaa !40    ; 3 uses
  br i1 %.not3.i113, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bs)
          to label %.thread182 unwind label %bb.j, !inline_history !0

bb.h:                                             ; preds = %bb.f
  %.not.i175 = icmp eq ptr %i.bs, null
  br i1 %.not.i175, label %.thread182, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.bs) #7
  br label %.thread182

bb.j:                                             ; preds = %bb.g
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #20
  unreachable

.thread182:                                       ; preds = %bb.e, %bb.d, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.v

bb.k:                                             ; preds = %bb.b
  %i.by = icmp eq i32 %i.ag, 1                    ; 2 uses
  %or.cond6 = select i1 %i.al, i1 %i.by, i1 false
  br i1 %or.cond6, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !41
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.ca)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.7, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %i.e)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %7 = phi i1 [ %i.by, %bb.k ], [ true, %bb.l ]   ; 2 uses
  %i.cb = icmp eq i32 %i.r, 3                     ; 2 uses
  %i.cc = icmp eq i32 %i.r, 4                     ; 2 uses
  %i.cd = add i32 %i.r, -3
  %or.cond8 = icmp ult i32 %i.cd, 2
  %or.cond10 = select i1 %or.cond8, i1 %i.am, i1 false
  br i1 %or.cond10, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !21
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !21
  %i.cg = mul nsw i32 %i.cf, %i.ce
  %i.ch = load i32, ptr %i.c, align 4, !tbaa !21
  %i.ci = mul nsw i32 %i.cg, %i.ch                ; 2 uses
  store i32 %i.ci, ptr %i.j, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !41 ; 3 uses
  %i.cl = add i32 %i.ci, -1
  %i.cm = add i32 %i.cl, %i.ck
  %i.cn = sdiv i32 %i.cm, %i.ck                   ; 2 uses
  store i32 %i.cn, ptr %i.k, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !44
  %i.cq = load i32, ptr %i.e, align 4, !tbaa !21
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cp, %i.cr
  store i64 %i.cs, ptr %i.l, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.cx, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cw, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.cn, i32 noundef 2, i32 noundef %i.ck, i64 noundef 4, ptr noundef %i.cu)
  %i.cy = load ptr, ptr %4, align 8, !tbaa !40
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.critedge92, label %_ZNK4ncnn3Mat5emptyEv.exit99

_ZNK4ncnn3Mat5emptyEv.exit99:                     ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.db = load i64, ptr %i.cx, align 8, !tbaa !44
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !24
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul i64 %i.db, %i.dd
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %.critedge92, label %bb.o

bb.o:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  %i.dg = load i32, ptr %i.j, align 4, !tbaa !21
  %i.dh = load i32, ptr %i.k, align 4, !tbaa !21  ; 2 uses
  %i.di = add i32 %i.dg, -1
  %i.dj = add i32 %i.di, %i.dh
  %i.dk = sdiv i32 %i.dj, %i.dh
  store i32 %i.dk, ptr %i.m, align 4, !tbaa !21
  %i.dl = load i32, ptr %i.cj, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.dl)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.8, ptr nonnull %i.m, ptr nonnull %i.k, ptr nonnull %i.j, ptr nonnull %4, ptr nonnull %1, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  %i.dm = load ptr, ptr %i.cv, align 8, !tbaa !45 ; 2 uses
  %.not.i120 = icmp eq ptr %i.dm, null
  br i1 %.not.i120, label %_ZN4ncnn3MatD2Ev.exit108, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = atomicrmw add ptr %i.dm, i32 -1 acq_rel, align 4
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit108

bb.q:                                             ; preds = %bb.p
  %i.dp = load ptr, ptr %i.cw, align 8, !tbaa !46 ; 3 uses
  %.not3.i121 = icmp eq ptr %i.dp, null
  %i.dq = load ptr, ptr %4, align 8, !tbaa !40    ; 3 uses
  br i1 %.not3.i121, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef %i.dq)
          to label %_ZN4ncnn3MatD2Ev.exit108 unwind label %bb.u, !inline_history !0

bb.s:                                             ; preds = %bb.q
  %.not.i171 = icmp eq ptr %i.dq, null
  br i1 %.not.i171, label %_ZN4ncnn3MatD2Ev.exit108, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.dq) #7
  br label %_ZN4ncnn3MatD2Ev.exit108

bb.u:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit108:                         ; preds = %bb.p, %bb.o, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  br label %bb.v

bb.v:                                             ; preds = %.thread211, %.thread182, %_ZN4ncnn3MatD2Ev.exit108, %bb.m
  %i.dw = phi i1 [ false, %.thread182 ], [ %i.cc, %_ZN4ncnn3MatD2Ev.exit108 ], [ %i.cc, %bb.m ], [ false, %.thread211 ] ; 3 uses
  %i.dx = phi i1 [ false, %.thread182 ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit108 ], [ %i.cb, %bb.m ], [ false, %.thread211 ] ; 2 uses
  %i.dy = phi i1 [ false, %.thread182 ], [ %7, %_ZN4ncnn3MatD2Ev.exit108 ], [ %7, %bb.m ], [ %i.ak, %.thread211 ] ; 2 uses
  %or.cond12 = select i1 %i.dx, i1 %i.dy, i1 false
  %i.dz = icmp eq i32 %i.ag, 2                    ; 2 uses
  %or.cond14 = select i1 %i.dw, i1 %i.dz, i1 false
  %or.cond93 = select i1 %or.cond12, i1 true, i1 %or.cond14
  br i1 %or.cond93, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !21
  %i.eb = load i32, ptr %i.e, align 4, !tbaa !21
  %i.ec = mul nsw i32 %i.eb, %i.ea                ; 2 uses
  store i32 %i.ec, ptr %i.n, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !43
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.ej, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ei, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.ec, i32 noundef 2, i32 noundef %i.ee, i64 noundef 4, ptr noundef %i.eg)
  %i.ek = load ptr, ptr %5, align 8, !tbaa !40
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.critedge95, label %_ZNK4ncnn3Mat5emptyEv.exit98

_ZNK4ncnn3Mat5emptyEv.exit98:                     ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.en = load i64, ptr %i.ej, align 8, !tbaa !44
  %i.eo = load i32, ptr %i.em, align 8, !tbaa !24
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul i64 %i.en, %i.ep
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.critedge95, label %bb.x

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit98
  %i.es = load i32, ptr %i.ed, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.es)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.9, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %5, ptr nonnull %i.n, ptr nonnull %i.b)
  %i.et = load ptr, ptr %i.eh, align 8, !tbaa !45 ; 2 uses
  %.not.i128 = icmp eq ptr %i.et, null
  br i1 %.not.i128, label %_ZN4ncnn3MatD2Ev.exit106, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eu = atomicrmw add ptr %i.et, i32 -1 acq_rel, align 4
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.z, label %_ZN4ncnn3MatD2Ev.exit106

bb.z:                                             ; preds = %bb.y
  %i.ew = load ptr, ptr %i.ei, align 8, !tbaa !46 ; 3 uses
  %.not3.i129 = icmp eq ptr %i.ew, null
  %i.ex = load ptr, ptr %5, align 8, !tbaa !40    ; 3 uses
  br i1 %.not3.i129, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !48
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef %i.ex)
          to label %_ZN4ncnn3MatD2Ev.exit106 unwind label %bb.ad, !inline_history !0

bb.ab:                                            ; preds = %bb.z
  %.not.i167 = icmp eq ptr %i.ex, null
  br i1 %.not.i167, label %_ZN4ncnn3MatD2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.ex) #7
  br label %_ZN4ncnn3MatD2Ev.exit106

bb.ad:                                            ; preds = %bb.aa
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit106:                         ; preds = %bb.y, %bb.x, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit106, %bb.v
  %or.cond16 = select i1 %i.dx, i1 %i.dz, i1 false
  br i1 %or.cond16, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.fe)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.10, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.e)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %or.cond18 = select i1 %i.dw, i1 %i.dy, i1 false
  br i1 %or.cond18, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  %i.ff = load i32, ptr %i.a, align 4, !tbaa !21
  %i.fg = load i32, ptr %i.b, align 4, !tbaa !21
  %i.fh = mul nsw i32 %i.fg, %i.ff
  %i.fi = load i32, ptr %i.e, align 4, !tbaa !21
  %i.fj = mul nsw i32 %i.fh, %i.fi                ; 2 uses
  store i32 %i.fj, ptr %i.o, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !41
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !43
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.fq, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fp, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.fj, i32 noundef 2, i32 noundef %i.fl, i64 noundef 4, ptr noundef %i.fn)
  %i.fr = load ptr, ptr %6, align 8, !tbaa !40
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %.critedge97, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.fu = load i64, ptr %i.fq, align 8, !tbaa !44
  %i.fv = load i32, ptr %i.ft, align 8, !tbaa !24
  %i.fw = sext i32 %i.fv to i64
  %i.fx = mul i64 %i.fu, %i.fw
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %.critedge97, label %bb.ai

bb.ai:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.fz = load i32, ptr %i.fk, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.fz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.11, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %6, ptr nonnull %i.o, ptr nonnull %i.c)
  %i.ga = load ptr, ptr %i.fo, align 8, !tbaa !45 ; 2 uses
  %.not.i136 = icmp eq ptr %i.ga, null
  br i1 %.not.i136, label %_ZN4ncnn3MatD2Ev.exit104, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gb = atomicrmw add ptr %i.ga, i32 -1 acq_rel, align 4
  %i.gc = icmp eq i32 %i.gb, 1
  br i1 %i.gc, label %bb.ak, label %_ZN4ncnn3MatD2Ev.exit104

bb.ak:                                            ; preds = %bb.aj
  %i.gd = load ptr, ptr %i.fp, align 8, !tbaa !46 ; 3 uses
  %.not3.i137 = icmp eq ptr %i.gd, null
  %i.ge = load ptr, ptr %6, align 8, !tbaa !40    ; 3 uses
  br i1 %.not3.i137, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef %i.ge)
          to label %_ZN4ncnn3MatD2Ev.exit104 unwind label %bb.ao, !inline_history !0

bb.am:                                            ; preds = %bb.ak
  %.not.i163 = icmp eq ptr %i.ge, null
  br i1 %.not.i163, label %_ZN4ncnn3MatD2Ev.exit104, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.ge) #7
  br label %_ZN4ncnn3MatD2Ev.exit104

bb.ao:                                            ; preds = %bb.al
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit104:                         ; preds = %bb.aj, %bb.ai, %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit104, %bb.ag
  %i.gk = icmp eq i32 %i.ag, 3
  %or.cond20 = select i1 %i.dw, i1 %i.gk, i1 false
  br i1 %or.cond20, label %bb.aq, label %bb.bp

bb.aq:                                            ; preds = %bb.ap
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.gm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.12, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.e)
  br label %bb.bp

.critedge:                                        ; preds = %bb.c, %_ZNK4ncnn3Mat5emptyEv.exit100
  %i.gn = load ptr, ptr %i.ax, align 8, !tbaa !45 ; 2 uses
  %.not.i140 = icmp eq ptr %i.gn, null
  br i1 %.not.i140, label %_ZN4ncnn3MatD2Ev.exit103, label %bb.ar

bb.ar:                                            ; preds = %.critedge
  %i.go = atomicrmw add ptr %i.gn, i32 -1 acq_rel, align 4
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %bb.as, label %_ZN4ncnn3MatD2Ev.exit103

bb.as:                                            ; preds = %bb.ar
end_hunk_1
