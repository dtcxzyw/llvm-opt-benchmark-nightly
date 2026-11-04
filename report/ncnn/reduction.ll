Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/reduction?download=true
inline.NumInlined: 135
inline.NumDeleted: 71
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN4ncnn9Reduction10load_paramERKNS_9ParamDictE:bb.a
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.ce)
          to label %_ZN4ncnn3MatD2Ev.exit14 unwind label %bb.af, !inline_history !0

bb.ad:                                            ; preds = %bb.ab
  %.not.i37 = icmp eq ptr %i.ce, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit14, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.ce) #14
  br label %_ZN4ncnn3MatD2Ev.exit14

bb.af:                                            ; preds = %bb.ac
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit14:                          ; preds = %bb.aa, %bb.z, %bb.ac, %bb.ad, %bb.ae
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.cl, align 16, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ck, i8 0, i64 20, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit14, %bb.y
  %.pn = phi { ptr, i32 } [ %i.by, %_ZN4ncnn3MatD2Ev.exit14 ], [ %i.bx, %bb.y ]
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !45  ; 2 uses
  %.not.i26 = icmp eq ptr %i.cm, null
  br i1 %.not.i26, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = atomicrmw add ptr %i.cm, i32 -1 acq_rel, align 4
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.ai, label %_ZN4ncnn3MatD2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !46  ; 3 uses
  %.not3.i27 = icmp eq ptr %i.cp, null
  %i.cq = load ptr, ptr %3, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i27, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !39
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef %i.cq)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.am, !inline_history !0

bb.ak:                                            ; preds = %bb.ai
  %.not.i35 = icmp eq ptr %i.cq, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef nonnull %i.cq) #14
  br label %_ZN4ncnn3MatD2Ev.exit

bb.am:                                            ; preds = %bb.aj
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ah, %bb.ag, %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %.pn

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.w, %_ZN4ncnn3MatD2Ev.exit15, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.x
  %.011 = phi i32 [ -1, %bb.x ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %_ZN4ncnn3MatD2Ev.exit15 ], [ 0, %bb.w ]
  ret i32 %.011
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn9Reduction7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(300) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %i.c = alloca i32, align 4                      ; 34 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca float, align 4                    ; 35 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = alloca i32, align 4                      ; 12 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.l = alloca i32, align 4                      ; 17 uses
  %i.m = alloca i32, align 4                      ; 18 uses
  %i.n = alloca i32, align 4                      ; 17 uses
  %i.o = alloca i32, align 4                      ; 21 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %i.u = alloca i8, align 1                       ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 7 uses
  %i.z = alloca i32, align 4                      ; 6 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #14
  call void @_ZNK4ncnn9Reduction37resolve_reduce_flags_and_output_shapeERKNS_3MatERbS4_S4_S4_RiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68 ; 5 uses
  %i.ae = load i32, ptr %i.x, align 4, !tbaa !69
  switch i32 %i.ae, label %.thread26 [
    i32 0, label %.thread
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

.thread:                                          ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !92
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 1, i64 noundef %i.ad, ptr noundef %i.ag)
  br label %.thread26

bb.b:                                             ; preds = %bb.a
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !92
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ah, i64 noundef %i.ad, ptr noundef %i.aj)
  br label %.thread26

bb.c:                                             ; preds = %bb.a
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !69
  %i.al = load i32, ptr %i.z, align 4, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92
  tail call void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ak, i32 noundef %i.al, i64 noundef %i.ad, ptr noundef %i.an)
  br label %.thread26

bb.d:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %i.y, align 4, !tbaa !69
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !69
  %i.aq = load i32, ptr %i.ab, align 4, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !92
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.aq, i64 noundef %i.ad, ptr noundef %i.as)
  br label %.thread26

bb.e:                                             ; preds = %bb.a
  %i.at = load i32, ptr %i.y, align 4, !tbaa !69
  %i.au = load i32, ptr %i.z, align 4, !tbaa !69
  %i.av = load i32, ptr %i.aa, align 4, !tbaa !69
  %i.aw = load i32, ptr %i.ab, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !92
  tail call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.at, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.aw, i64 noundef %i.ad, ptr noundef %i.ay)
  br label %.thread26

.thread26:                                        ; preds = %bb.a, %bb.b, %.thread, %bb.c, %bb.d, %bb.e
  %i.az = load ptr, ptr %2, align 8, !tbaa !47
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %.thread26
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !70
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bc, %i.bf
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.bi = load i8, ptr %i.t, align 1, !tbaa !72, !range !73, !noundef !74 ; 6 uses
  %i.bj = trunc nuw i8 %i.bi to i1                ; 6 uses
  %i.bk = load i8, ptr %i.u, align 1, !tbaa !72, !range !73, !noundef !74 ; 6 uses
  %i.bl = trunc nuw i8 %i.bk to i1                ; 9 uses
  %i.bm = load i8, ptr %i.v, align 1, !tbaa !72, !range !73, !noundef !74
  %i.bn = trunc nuw i8 %i.bm to i1                ; 12 uses
  %i.bo = load i8, ptr %i.w, align 1, !tbaa !72, !range !73, !noundef !74
  %i.bp = trunc nuw i8 %i.bo to i1                ; 24 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !71
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !65 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bw = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 29 uses
  store i32 %i.br, ptr %i.a, align 4, !tbaa !69
  store float %i.bv, ptr %i.b, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !75
  switch i32 %i.bt, label %bb.m [
    i32 10, label %bb.l
    i32 6, label %bb.k
    i32 5, label %bb.j
    i32 1, label %bb.g
    i32 7, label %bb.g
    i32 2, label %bb.h
    i32 8, label %bb.h
    i32 4, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  store i32 1, ptr %i.c, align 4, !tbaa !69
  br label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.f
  store i32 2, ptr %i.c, align 4, !tbaa !69
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  store i32 4, ptr %i.c, align 4, !tbaa !69
  store i32 4, ptr %i.d, align 4, !tbaa !69
  store float f0xFF7FFFFF, ptr %i.e, align 4, !tbaa !75
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  store i32 5, ptr %i.c, align 4, !tbaa !69
  store i32 5, ptr %i.d, align 4, !tbaa !69
  store float f0x7F7FFFFF, ptr %i.e, align 4, !tbaa !75
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  store i32 6, ptr %i.c, align 4, !tbaa !69
  store i32 6, ptr %i.d, align 4, !tbaa !69
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !75
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  store i32 10, ptr %i.c, align 4, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.bx = phi i32 [ 0, %bb.f ], [ 10, %bb.l ], [ 6, %bb.k ], [ 5, %bb.j ], [ 4, %bb.i ], [ 2, %bb.h ], [ 1, %bb.g ]
  %i.by = phi float [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.l ], [ 1.000000e+00, %bb.k ], [ f0x7F7FFFFF, %bb.j ], [ f0xFF7FFFFF, %bb.i ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.bz = load i64, ptr %i.ac, align 8, !tbaa !68 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !76 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 1                    ; 2 uses
  br i1 %i.cc, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !77
  %i.cf = load ptr, ptr %1, align 8, !tbaa !47
  %i.cg = tail call fast fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL9reductionEfPKfii(float noundef nofpclass(nan inf) %i.by, ptr noundef %i.cf, i32 noundef %i.ce, i32 noundef %i.bx)
  %i.ch = load ptr, ptr %2, align 8, !tbaa !47
  store float %i.cg, ptr %i.ch, align 4, !tbaa !75
  br label %.thread510.i

bb.n:                                             ; preds = %bb.m
  switch i32 %i.cb, label %.thread510.i [
    i32 2, label %bb.o
    i32 3, label %bb.ah
    i32 4, label %bb.bd
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !77
  store i32 %i.cj, ptr %i.f, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !78 ; 2 uses
  store i32 %i.cl, ptr %i.g, align 4, !tbaa !69
  %i.cm = and i8 %i.bk, %i.bi
  %or.cond.i.not = icmp eq i8 %i.cm, 0
  br i1 %or.cond.i.not, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !93
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.cr, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cq, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.cl, i64 noundef %i.bz, ptr noundef %i.co)
  %i.cs = load ptr, ptr %4, align 8, !tbaa !47
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.critedge.i, label %_ZNK4ncnn3Mat5emptyEv.exit438.i

_ZNK4ncnn3Mat5emptyEv.exit438.i:                  ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cv = load i64, ptr %i.cr, align 8, !tbaa !48
  %i.cw = load i32, ptr %i.cu, align 8, !tbaa !70
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %i.cv, %i.cx
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit438.i
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.db)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %4, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.c)
  %i.dc = load float, ptr %i.e, align 4, !tbaa !75
  %i.dd = load ptr, ptr %4, align 8, !tbaa !47
  %i.de = load i32, ptr %i.g, align 4, !tbaa !69
  %i.df = load i32, ptr %i.d, align 4, !tbaa !69
  %i.dg = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL9reductionEfPKfii(float noundef nofpclass(nan inf) %i.dc, ptr noundef %i.dd, i32 noundef %i.de, i32 noundef %i.df)
  %i.dh = load ptr, ptr %2, align 8, !tbaa !47
  store float %i.dg, ptr %i.dh, align 4, !tbaa !75
  %i.di = load ptr, ptr %i.cp, align 8, !tbaa !45 ; 2 uses
  %.not.i439.i = icmp eq ptr %i.di, null
  br i1 %.not.i439.i, label %.thread27, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = atomicrmw add ptr %i.di, i32 -1 acq_rel, align 4
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.s, label %.thread27

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !46 ; 3 uses
  %.not3.i440.i = icmp eq ptr %i.dl, null
  %i.dm = load ptr, ptr %4, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i440.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.dm)
          to label %.thread27 unwind label %bb.w, !inline_history !0

bb.u:                                             ; preds = %bb.s
  %.not.i502.i = icmp eq ptr %i.dm, null
  br i1 %.not.i502.i, label %.thread27, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.dm) #14
  br label %.thread27

bb.w:                                             ; preds = %bb.t
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #18
  unreachable

.thread27:                                        ; preds = %bb.q, %bb.r, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.thread32

bb.x:                                             ; preds = %bb.o
  %.not.i = xor i1 %i.bj, true                    ; 2 uses
  %or.cond9.i = or i1 %.not.i, %i.bl
  br i1 %or.cond9.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.dt)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.3, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.c)
  br label %.thread32

bb.z:                                             ; preds = %bb.x
  %or.cond12.i = and i1 %.not.i, %i.bl
  br i1 %or.cond12.i, label %bb.aa, label %.thread32

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.dv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.4, ptr nonnull %i.f, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.g, ptr nonnull %i.c)
  br label %.thread32

.critedge.i:                                      ; preds = %_ZNK4ncnn3Mat5emptyEv.exit438.i, %bb.p
  %i.dw = load ptr, ptr %i.cp, align 8, !tbaa !45 ; 2 uses
  %.not.i467.i = icmp eq ptr %i.dw, null
  br i1 %.not.i467.i, label %.critedge414.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i
  %i.dx = atomicrmw add ptr %i.dw, i32 -1 acq_rel, align 4
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.ac, label %.critedge414.i

bb.ac:                                            ; preds = %bb.ab
  %i.dz = load ptr, ptr %i.cq, align 8, !tbaa !46 ; 3 uses
  %.not3.i468.i = icmp eq ptr %i.dz, null
  %i.ea = load ptr, ptr %4, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i468.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !39
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef %i.ea)
          to label %.critedge414.i unwind label %bb.ag, !inline_history !0

bb.ae:                                            ; preds = %bb.ac
  %.not.i488.i = icmp eq ptr %i.ea, null
  br i1 %.not.i488.i, label %.critedge414.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.ea) #14
  br label %.critedge414.i

bb.ag:                                            ; preds = %bb.ad
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #18
  unreachable

.thread32:                                        ; preds = %.thread27, %bb.y, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.thread510.i

bb.ah:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !77 ; 2 uses
  store i32 %i.eh, ptr %i.h, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !78 ; 2 uses
  store i32 %i.ej, ptr %i.i, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !70 ; 2 uses
  store i32 %i.el, ptr %i.j, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.em = mul nsw i32 %i.ej, %i.eh
  store i32 %i.em, ptr %i.k, align 4, !tbaa !69
  %i.en = and i8 %i.bk, %i.bi
  %or.cond14.i = icmp ne i8 %i.en, 0              ; 2 uses
  %or.cond16.i = and i1 %or.cond14.i, %i.bp
  br i1 %or.cond16.i, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !93
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.es, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.er, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.el, i64 noundef %i.bz, ptr noundef %i.ep)
  %i.et = load ptr, ptr %5, align 8, !tbaa !47
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %.critedge416.i, label %_ZNK4ncnn3Mat5emptyEv.exit437.i

_ZNK4ncnn3Mat5emptyEv.exit437.i:                  ; preds = %bb.ai
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ew = load i64, ptr %i.es, align 8, !tbaa !48
  %i.ex = load i32, ptr %i.ev, align 8, !tbaa !70
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul i64 %i.ew, %i.ey
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %.critedge416.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit437.i
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.fc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.5, ptr nonnull %i.j, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %5, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.c)
  %i.fd = load float, ptr %i.e, align 4, !tbaa !75
  %i.fe = load ptr, ptr %5, align 8, !tbaa !47
  %i.ff = load i32, ptr %i.j, align 4, !tbaa !69
  %i.fg = load i32, ptr %i.d, align 4, !tbaa !69
  %i.fh = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL9reductionEfPKfii(float noundef nofpclass(nan inf) %i.fd, ptr noundef %i.fe, i32 noundef %i.ff, i32 noundef %i.fg)
  %i.fi = load ptr, ptr %2, align 8, !tbaa !47
  store float %i.fh, ptr %i.fi, align 4, !tbaa !75
  %i.fj = load ptr, ptr %i.eq, align 8, !tbaa !45 ; 2 uses
  %.not.i447.i = icmp eq ptr %i.fj, null
  br i1 %.not.i447.i, label %.thread35, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fk = atomicrmw add ptr %i.fj, i32 -1 acq_rel, align 4
  %i.fl = icmp eq i32 %i.fk, 1
  br i1 %i.fl, label %bb.al, label %.thread35

bb.al:                                            ; preds = %bb.ak
  %i.fm = load ptr, ptr %i.er, align 8, !tbaa !46 ; 3 uses
  %.not3.i448.i = icmp eq ptr %i.fm, null
  %i.fn = load ptr, ptr %5, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i448.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !39
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  invoke void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef %i.fn)
          to label %.thread35 unwind label %bb.ap, !inline_history !0

bb.an:                                            ; preds = %bb.al
  %.not.i498.i = icmp eq ptr %i.fn, null
  br i1 %.not.i498.i, label %.thread35, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef nonnull %i.fn) #14
  br label %.thread35

bb.ap:                                            ; preds = %bb.am
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #18
  unreachable

.thread35:                                        ; preds = %bb.aj, %bb.ak, %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.thread47.thread

bb.aq:                                            ; preds = %bb.ah
  %or.cond18.not.i = xor i1 %or.cond14.i, true
  %or.cond20.i = or i1 %or.cond18.not.i, %i.bp
  br i1 %or.cond20.i, label %bb.ar, label %.thread60.thread298

.thread60.thread298:                              ; preds = %bb.aq
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.fu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.6, ptr nonnull %i.j, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.c)
  br label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  %.not21.i = xor i1 %i.bj, true                  ; 2 uses
  %or.cond23.i = or i1 %.not21.i, %i.bl           ; 2 uses
  %or.cond23.not.i = xor i1 %or.cond23.i, true
  %or.cond25.i = and i1 %or.cond23.not.i, %i.bp
  br i1 %or.cond25.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.fw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.7, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.h, ptr nonnull %i.j, ptr nonnull %i.c)
  br label %.thread47.thread

bb.at:                                            ; preds = %bb.ar
  %or.cond28.i = and i1 %.not21.i, %i.bl          ; 3 uses
  %or.cond30.i = and i1 %or.cond28.i, %i.bp
  br i1 %or.cond30.i, label %.thread60.thread, label %.thread47

.thread60.thread:                                 ; preds = %bb.at
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.fy)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.8, ptr nonnull %i.h, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %i.c)
  br label %bb.bc

.thread47:                                        ; preds = %bb.at
  %or.cond35.i = or i1 %or.cond23.i, %i.bp
  br i1 %or.cond35.i, label %.thread47.thread, label %bb.au

bb.au:                                            ; preds = %.thread47
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.ga)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.9, ptr nonnull %i.j, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.h, ptr nonnull %i.c)
  br label %.thread60

.thread47.thread:                                 ; preds = %bb.as, %.thread35, %.thread47
  %or.cond28.i53284 = phi i1 [ %or.cond28.i, %.thread47 ], [ false, %.thread35 ], [ false, %bb.as ]
  %i.gb = or i8 %i.bk, %i.bi
  %or.cond37.i.not = icmp eq i8 %i.gb, 0
  %or.cond39.i = and i1 %or.cond37.i.not, %i.bp
  br i1 %or.cond39.i, label %.thread66, label %.thread60

.thread66:                                        ; preds = %.thread47.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.gd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.10, ptr nonnull %i.k, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.j, ptr nonnull %i.c)
  br label %bb.bc

.thread60:                                        ; preds = %bb.au, %.thread47.thread
  %or.cond28.i53283 = phi i1 [ %or.cond28.i, %bb.au ], [ %or.cond28.i53284, %.thread47.thread ]
  %or.cond42.not.i = xor i1 %or.cond28.i53283, true
  %or.cond44.i = or i1 %i.bp, %or.cond42.not.i
  br i1 %or.cond44.i, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %.thread60
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.gf)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.11, ptr nonnull %i.j, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.i, ptr nonnull %i.c)
  br label %bb.bc

.critedge416.i:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit437.i, %bb.ai
  %i.gg = load ptr, ptr %i.eq, align 8, !tbaa !45 ; 2 uses
  %.not.i471.i = icmp eq ptr %i.gg, null
  br i1 %.not.i471.i, label %.critedge418.i, label %bb.aw

bb.aw:                                            ; preds = %.critedge416.i
  %i.gh = atomicrmw add ptr %i.gg, i32 -1 acq_rel, align 4
  %i.gi = icmp eq i32 %i.gh, 1
  br i1 %i.gi, label %bb.ax, label %.critedge418.i

bb.ax:                                            ; preds = %bb.aw
  %i.gj = load ptr, ptr %i.er, align 8, !tbaa !46 ; 3 uses
  %.not3.i472.i = icmp eq ptr %i.gj, null
  %i.gk = load ptr, ptr %5, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i472.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !39
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef %i.gk)
          to label %.critedge418.i unwind label %bb.bb, !inline_history !0

bb.az:                                            ; preds = %bb.ax
  %.not.i486.i = icmp eq ptr %i.gk, null
  br i1 %.not.i486.i, label %.critedge418.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.gk) #14
  br label %.critedge418.i

bb.bb:                                            ; preds = %bb.ay
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #18
  unreachable

bb.bc:                                            ; preds = %.thread60.thread298, %.thread60.thread, %.thread66, %bb.av, %.thread60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %.thread510.i

bb.bd:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !77 ; 2 uses
  store i32 %i.gr, ptr %i.l, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !78 ; 3 uses
  store i32 %i.gt, ptr %i.m, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !79 ; 2 uses
  store i32 %i.gv, ptr %i.n, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !70 ; 3 uses
  store i32 %i.gx, ptr %i.o, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.gy = mul nsw i32 %i.gt, %i.gr
  %i.gz = mul nsw i32 %i.gy, %i.gv
  store i32 %i.gz, ptr %i.p, align 4, !tbaa !69
  %i.ha = and i8 %i.bk, %i.bi
  %or.cond46.i = icmp ne i8 %i.ha, 0              ; 2 uses
  %or.cond48.i = and i1 %or.cond46.i, %i.bn       ; 2 uses
  %or.cond50.i = and i1 %or.cond48.i, %i.bp
  br i1 %or.cond50.i, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !93
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.hf, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.he, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.gx, i64 noundef %i.bz, ptr noundef %i.hc)
  %i.hg = load ptr, ptr %6, align 8, !tbaa !47
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %.critedge420.i, label %_ZNK4ncnn3Mat5emptyEv.exit436.i

_ZNK4ncnn3Mat5emptyEv.exit436.i:                  ; preds = %bb.be
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.hj = load i64, ptr %i.hf, align 8, !tbaa !48
  %i.hk = load i32, ptr %i.hi, align 8, !tbaa !70
  %i.hl = sext i32 %i.hk to i64
  %i.hm = mul i64 %i.hj, %i.hl
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %.critedge420.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit436.i
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.hp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.12, ptr nonnull %i.o, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %6, ptr nonnull %i.e, ptr nonnull %i.p, ptr nonnull %i.c)
  %i.hq = load float, ptr %i.e, align 4, !tbaa !75
  %i.hr = load ptr, ptr %6, align 8, !tbaa !47
  %i.hs = load i32, ptr %i.o, align 4, !tbaa !69
  %i.ht = load i32, ptr %i.d, align 4, !tbaa !69
  %i.hu = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL9reductionEfPKfii(float noundef nofpclass(nan inf) %i.hq, ptr noundef %i.hr, i32 noundef %i.hs, i32 noundef %i.ht)
  %i.hv = load ptr, ptr %2, align 8, !tbaa !47
  store float %i.hu, ptr %i.hv, align 4, !tbaa !75
  %i.hw = load ptr, ptr %i.hd, align 8, !tbaa !45 ; 2 uses
  %.not.i455.i = icmp eq ptr %i.hw, null
  br i1 %.not.i455.i, label %.thread70, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hx = atomicrmw add ptr %i.hw, i32 -1 acq_rel, align 4
  %i.hy = icmp eq i32 %i.hx, 1
  br i1 %i.hy, label %bb.bh, label %.thread70

bb.bh:                                            ; preds = %bb.bg
  %i.hz = load ptr, ptr %i.he, align 8, !tbaa !46 ; 3 uses
  %.not3.i456.i = icmp eq ptr %i.hz, null
  %i.ia = load ptr, ptr %6, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i456.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !39
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef %i.ia)
          to label %.thread70 unwind label %bb.bl, !inline_history !0

bb.bj:                                            ; preds = %bb.bh
  %.not.i494.i = icmp eq ptr %i.ia, null
  br i1 %.not.i494.i, label %.thread70, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.ia) #14
  br label %.thread70

bb.bl:                                            ; preds = %bb.bi
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #18
  unreachable

.thread70:                                        ; preds = %bb.bf, %bb.bg, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.thread93.thread.thread

bb.bm:                                            ; preds = %bb.bd
  %or.cond54.not.i = xor i1 %or.cond48.i, true
  %or.cond56.i = or i1 %i.bp, %or.cond54.not.i
  br i1 %or.cond56.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.ih)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.13, ptr nonnull %i.o, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull %i.p, ptr nonnull %i.c)
  br label %.thread93.thread.thread

bb.bo:                                            ; preds = %bb.bm
  %or.cond58.not.i = xor i1 %or.cond46.i, true
  %or.cond60.i = or i1 %i.bn, %or.cond58.not.i    ; 2 uses
  %or.cond60.not.i = xor i1 %or.cond60.i, true
  %or.cond62.i = and i1 %i.bp, %or.cond60.not.i
  br i1 %or.cond62.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.ij)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.14, ptr nonnull %i.n, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.l, ptr nonnull %i.m, ptr nonnull %i.o, ptr nonnull %i.c)
  br label %.thread93.thread.thread

bb.bq:                                            ; preds = %bb.bo
  %.not63.i = xor i1 %i.bj, true                  ; 2 uses
  %or.cond65.i = or i1 %.not63.i, %i.bl           ; 3 uses
  %or.cond65.not.i = xor i1 %or.cond65.i, true
  %or.cond67.i = and i1 %i.bn, %or.cond65.not.i   ; 3 uses
  %or.cond69.i = and i1 %or.cond67.i, %i.bp
  br i1 %or.cond69.i, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !93
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store i64 0, ptr %i.io, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.in, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.gt, i32 noundef 1, i32 noundef %i.gx, i64 noundef %i.bz, ptr noundef %i.il)
  %i.ip = load ptr, ptr %7, align 8, !tbaa !47
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %.critedge422.i, label %_ZNK4ncnn3Mat5emptyEv.exit.i

_ZNK4ncnn3Mat5emptyEv.exit.i:                     ; preds = %bb.br
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.is = load i64, ptr %i.io, align 8, !tbaa !48
  %i.it = load i32, ptr %i.ir, align 8, !tbaa !70
  %i.iu = sext i32 %i.it to i64
  %i.iv = mul i64 %i.is, %i.iu
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %.critedge422.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.iy)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.15, ptr nonnull %i.o, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %7, ptr nonnull %i.m, ptr nonnull %i.e, ptr nonnull %i.l, ptr nonnull %i.n, ptr nonnull %i.c)
  %i.iz = load i32, ptr %i.ix, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.iz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.16, ptr nonnull %i.m, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull %7, ptr nonnull %i.o, ptr nonnull %i.d)
  %i.ja = load ptr, ptr %i.im, align 8, !tbaa !45 ; 2 uses
  %.not.i463.i = icmp eq ptr %i.ja, null
  br i1 %.not.i463.i, label %_ZN4ncnn3MatD2Ev.exit428.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jb = atomicrmw add ptr %i.ja, i32 -1 acq_rel, align 4
  %i.jc = icmp eq i32 %i.jb, 1
  br i1 %i.jc, label %bb.bu, label %_ZN4ncnn3MatD2Ev.exit428.i

bb.bu:                                            ; preds = %bb.bt
  %i.jd = load ptr, ptr %i.in, align 8, !tbaa !46 ; 3 uses
  %.not3.i464.i = icmp eq ptr %i.jd, null
  %i.je = load ptr, ptr %7, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i464.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !39
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef %i.je)
          to label %_ZN4ncnn3MatD2Ev.exit428.i unwind label %bb.by, !inline_history !0

bb.bw:                                            ; preds = %bb.bu
  %.not.i490.i = icmp eq ptr %i.je, null
  br i1 %.not.i490.i, label %_ZN4ncnn3MatD2Ev.exit428.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @free(ptr noundef nonnull %i.je) #14
  br label %_ZN4ncnn3MatD2Ev.exit428.i

bb.by:                                            ; preds = %bb.bv
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit428.i:                       ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.thread93.thread.thread

bb.bz:                                            ; preds = %bb.bq
  %or.cond72.i = and i1 %.not63.i, %i.bl          ; 4 uses
  %or.cond74.i = and i1 %or.cond72.i, %i.bn       ; 4 uses
  %or.cond76.i = and i1 %or.cond74.i, %i.bp
  br i1 %or.cond76.i, label %.thread106, label %.thread93

.thread106:                                       ; preds = %bb.bz
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.jl)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.17, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.m, ptr nonnull %i.n, ptr nonnull %i.o, ptr nonnull %i.c)
  br label %.thread118

.thread93:                                        ; preds = %bb.bz
  %or.cond82.i = or i1 %or.cond60.i, %i.bp
  br i1 %or.cond82.i, label %.thread93.thread, label %bb.ca

bb.ca:                                            ; preds = %.thread93
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.jn)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.18, ptr nonnull %i.o, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.n, ptr nonnull %i.e, ptr nonnull %i.l, ptr nonnull %i.m, ptr nonnull %i.c)
  br label %.thread118

.thread118:                                       ; preds = %bb.ca, %.thread106
  %or.cond72.i104114.ph = phi i1 [ %or.cond72.i, %bb.ca ], [ true, %.thread106 ]
  %or.cond74.i105113.ph = phi i1 [ %or.cond74.i, %bb.ca ], [ true, %.thread106 ]
  %or.cond87.i123 = or i1 %or.cond65.i, %i.bn
  br label %.thread93.thread.thread

.thread93.thread:                                 ; preds = %.thread93
  %or.cond87.i = or i1 %or.cond65.i, %i.bn        ; 2 uses
  %or.cond87.not.i = xor i1 %or.cond87.i, true
  %or.cond89.i = and i1 %i.bp, %or.cond87.not.i
  br i1 %or.cond89.i, label %.thread130, label %.thread93.thread.thread

.thread130:                                       ; preds = %.thread93.thread
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !94
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.jp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.19, ptr nonnull %i.n, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.m, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.l, ptr nonnull %i.o, ptr nonnull %i.c)
  br label %.thread146

.thread93.thread.thread:                          ; preds = %_ZN4ncnn3MatD2Ev.exit428.i, %bb.bp, %.thread70, %bb.bn, %.thread118, %.thread93.thread
  %or.cond87.i129 = phi i1 [ %or.cond87.i123, %.thread118 ], [ %or.cond87.i, %.thread93.thread ], [ true, %bb.bp ], [ true, %bb.bn ], [ true, %.thread70 ], [ %i.bn, %_ZN4ncnn3MatD2Ev.exit428.i ] ; 2 uses
  %or.cond74.i105113128 = phi i1 [ %or.cond74.i105113.ph, %.thread118 ], [ %or.cond74.i, %.thread93.thread ], [ false, %bb.bp ], [ false, %bb.bn ], [ false, %.thread70 ], [ false, %_ZN4ncnn3MatD2Ev.exit428.i ] ; 2 uses
  %or.cond72.i104114127 = phi i1 [ %or.cond72.i104114.ph, %.thread118 ], [ %or.cond72.i, %.thread93.thread ], [ false, %bb.bp ], [ false, %bb.bn ], [ false, %.thread70 ], [ false, %_ZN4ncnn3MatD2Ev.exit428.i ] ; 2 uses
  %or.cond67.i91101116126 = phi i1 [ %or.cond67.i, %.thread118 ], [ %or.cond67.i, %.thread93.thread ], [ false, %bb.bp ], [ false, %bb.bn ], [ false, %.thread70 ], [ true, %_ZN4ncnn3MatD2Ev.exit428.i ]
  %i.jq = or i8 %i.bk, %i.bi
  %or.cond91.i = icmp ne i8 %i.jq, 0              ; 3 uses
  %or.cond91.not.i = xor i1 %or.cond91.i, true
  %or.cond93.i = and i1 %i.bn, %or.cond91.not.i   ; 3 uses
  %or.cond95.i = and i1 %or.cond93.i, %i.bp
  br i1 %or.cond95.i, label %.thread251, label %bb.cb

.thread251:                                       ; preds = %.thread93.thread.thread
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.js)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.20, ptr nonnull %i.m, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.l, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.n, ptr nonnull %i.o, ptr nonnull %i.c)
  br label %bb.cw

bb.cb:                                            ; preds = %.thread93.thread.thread
  %or.cond100.not.i = xor i1 %or.cond67.i91101116126, true
  %or.cond102.i = or i1 %i.bp, %or.cond100.not.i
  br i1 %or.cond102.i, label %.thread146, label %.thread160

.thread160:                                       ; preds = %bb.cb
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.ju)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.21, ptr nonnull %i.o, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.m, ptr nonnull %i.e, ptr nonnull %i.l, ptr nonnull %i.n, ptr nonnull %i.c)
  %or.cond105.not.i166 = xor i1 %or.cond72.i104114127, true
  %or.cond107.i167 = or i1 %i.bn, %or.cond105.not.i166
  br label %bb.cc

.thread146:                                       ; preds = %.thread130, %bb.cb
  %or.cond87.i129139159 = phi i1 [ %or.cond87.i129, %bb.cb ], [ false, %.thread130 ]
  %or.cond74.i105113128140158 = phi i1 [ %or.cond74.i105113128, %bb.cb ], [ %or.cond74.i, %.thread130 ]
  %or.cond72.i104114127141157 = phi i1 [ %or.cond72.i104114127, %bb.cb ], [ %or.cond72.i, %.thread130 ]
  %or.cond91.i143156 = phi i1 [ %or.cond91.i, %bb.cb ], [ true, %.thread130 ] ; 2 uses
  %or.cond93.i144155 = phi i1 [ %or.cond93.i, %bb.cb ], [ false, %.thread130 ] ; 2 uses
  %or.cond105.not.i = xor i1 %or.cond72.i104114127141157, true
  %or.cond107.i = or i1 %i.bn, %or.cond105.not.i  ; 2 uses
  %or.cond107.not.i = xor i1 %or.cond107.i, true
  %or.cond109.i = and i1 %i.bp, %or.cond107.not.i
  br i1 %or.cond109.i, label %.thread187, label %bb.cc

.thread187:                                       ; preds = %.thread146
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.jw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.22, ptr nonnull %i.n, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.l, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.m, ptr nonnull %i.o, ptr nonnull %i.c)
  br label %bb.cf

bb.cc:                                            ; preds = %.thread160, %.thread146
  %or.cond107.i174 = phi i1 [ %or.cond107.i167, %.thread160 ], [ %or.cond107.i, %.thread146 ] ; 2 uses
  %or.cond93.i144155173 = phi i1 [ %or.cond93.i, %.thread160 ], [ %or.cond93.i144155, %.thread146 ] ; 2 uses
  %or.cond91.i143156172 = phi i1 [ %or.cond91.i, %.thread160 ], [ %or.cond91.i143156, %.thread146 ]
  %or.cond74.i105113128140158171 = phi i1 [ %or.cond74.i105113128, %.thread160 ], [ %or.cond74.i105113128140158, %.thread146 ]
  %or.cond87.i129139159170 = phi i1 [ %or.cond87.i129, %.thread160 ], [ %or.cond87.i129139159, %.thread146 ]
  %or.cond114.not.i = xor i1 %or.cond74.i105113128140158171, true
  %or.cond116.i = or i1 %i.bp, %or.cond114.not.i
  br i1 %or.cond116.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.jy)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.23, ptr nonnull %i.o, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.l, ptr nonnull %i.e, ptr nonnull %i.m, ptr nonnull %i.n, ptr nonnull %i.c)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %or.cond123.i = or i1 %or.cond87.i129139159170, %i.bp
  br i1 %or.cond123.i, label %bb.cf, label %.thread196

.thread196:                                       ; preds = %bb.ce
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.ka)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.24, ptr nonnull %i.o, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.n, ptr nonnull %i.m, ptr nonnull %i.e, ptr nonnull %i.l, ptr nonnull %i.c)
  br label %bb.cg

bb.cf:                                            ; preds = %.thread187, %bb.ce
  %or.cond107.i174183195 = phi i1 [ false, %.thread187 ], [ %or.cond107.i174, %bb.ce ]
  %or.cond93.i144155173184194 = phi i1 [ %or.cond93.i144155, %.thread187 ], [ %or.cond93.i144155173, %bb.ce ]
  %or.cond91.i143156172185193 = phi i1 [ %or.cond91.i143156, %.thread187 ], [ %or.cond91.i143156172, %bb.ce ]
  %or.cond127.i = or i1 %or.cond91.i143156172185193, %i.bn
  %or.cond127.not.i = xor i1 %or.cond127.i, true
  %or.cond129.i = and i1 %i.bp, %or.cond127.not.i
  br i1 %or.cond129.i, label %.thread210, label %bb.cg

.thread210:                                       ; preds = %bb.cf
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.kc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.25, ptr nonnull %i.n, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.l, ptr nonnull %i.m, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.o, ptr nonnull %i.c)
  br label %bb.cw

bb.cg:                                            ; preds = %.thread196, %bb.cf
  %or.cond93.i144155173184194204 = phi i1 [ %or.cond93.i144155173, %.thread196 ], [ %or.cond93.i144155173184194, %bb.cf ]
  %or.cond107.i174183195203 = phi i1 [ %or.cond107.i174, %.thread196 ], [ %or.cond107.i174183195, %bb.cf ]
  %or.cond136.i = or i1 %or.cond107.i174183195203, %i.bp
  br i1 %or.cond136.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.ke)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.26, ptr nonnull %i.o, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.n, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.l, ptr nonnull %i.e, ptr nonnull %i.m, ptr nonnull %i.c)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %or.cond140.not.i = xor i1 %or.cond93.i144155173184194204, true
  %or.cond142.i = or i1 %i.bp, %or.cond140.not.i
  br i1 %or.cond142.i, label %bb.cw, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.kg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.27, ptr nonnull %i.o, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.l, ptr nonnull %i.m, ptr nonnull %i.e, ptr nonnull %i.n, ptr nonnull %i.c)
  br label %bb.cw

.critedge420.i:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit436.i, %bb.be
  %i.kh = load ptr, ptr %i.hd, align 8, !tbaa !45 ; 2 uses
  %.not.i475.i = icmp eq ptr %i.kh, null
  br i1 %.not.i475.i, label %_ZN4ncnn3MatD2Ev.exit425.i, label %bb.ck

bb.ck:                                            ; preds = %.critedge420.i
  %i.ki = atomicrmw add ptr %i.kh, i32 -1 acq_rel, align 4
  %i.kj = icmp eq i32 %i.ki, 1
  br i1 %i.kj, label %bb.cl, label %_ZN4ncnn3MatD2Ev.exit425.i

bb.cl:                                            ; preds = %bb.ck
  %i.kk = load ptr, ptr %i.he, align 8, !tbaa !46 ; 3 uses
  %.not3.i476.i = icmp eq ptr %i.kk, null
  %i.kl = load ptr, ptr %6, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i476.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.km = load ptr, ptr %i.kk, align 8, !tbaa !39
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8
  invoke void %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef %i.kl)
          to label %_ZN4ncnn3MatD2Ev.exit425.i unwind label %bb.cp, !inline_history !0

bb.cn:                                            ; preds = %bb.cl
  %.not.i484.i = icmp eq ptr %i.kl, null
  br i1 %.not.i484.i, label %_ZN4ncnn3MatD2Ev.exit425.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @free(ptr noundef nonnull %i.kl) #14
  br label %_ZN4ncnn3MatD2Ev.exit425.i

bb.cp:                                            ; preds = %bb.cm
  %i.kp = landingpad { ptr, i32 }
          catch ptr null
  %i.kq = extractvalue { ptr, i32 } %i.kp, 0
  call void @__clang_call_terminate(ptr %i.kq) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit425.i:                       ; preds = %bb.co, %bb.cn, %bb.cm, %bb.ck, %.critedge420.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.critedge424.i

.critedge422.i:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i, %bb.br
  %i.kr = load ptr, ptr %i.im, align 8, !tbaa !45 ; 2 uses
  %.not.i479.i = icmp eq ptr %i.kr, null
  br i1 %.not.i479.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.cq

bb.cq:                                            ; preds = %.critedge422.i
  %i.ks = atomicrmw add ptr %i.kr, i32 -1 acq_rel, align 4
  %i.kt = icmp eq i32 %i.ks, 1
  br i1 %i.kt, label %bb.cr, label %_ZN4ncnn3MatD2Ev.exit.i

bb.cr:                                            ; preds = %bb.cq
  %i.ku = load ptr, ptr %i.in, align 8, !tbaa !46 ; 3 uses
  %.not3.i480.i = icmp eq ptr %i.ku, null
  %i.kv = load ptr, ptr %7, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i480.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kw = load ptr, ptr %i.ku, align 8, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8
  invoke void %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef %i.kv)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.cv, !inline_history !0

bb.ct:                                            ; preds = %bb.cr
  %.not.i483.i = icmp eq ptr %i.kv, null
  br i1 %.not.i483.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @free(ptr noundef nonnull %i.kv) #14
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.cv:                                            ; preds = %bb.cs
  %i.kz = landingpad { ptr, i32 }
          catch ptr null
  %i.la = extractvalue { ptr, i32 } %i.kz, 0
  call void @__clang_call_terminate(ptr %i.la) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq, %.critedge422.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.critedge424.i

bb.cw:                                            ; preds = %.thread251, %.thread210, %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
end_hunk_0
begin_hunk_1_@_ZNK4ncnn9Reduction7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
bb.dp:                                            ; preds = %bb.do
  br i1 %i.bj, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !77
  %i.mk = mul nsw i32 %i.mj, %.5.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.6.i = phi i32 [ %i.mk, %bb.dq ], [ %.5.i, %bb.dp ] ; 2 uses
  br i1 %i.bl, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !78
  %i.mn = mul nsw i32 %i.mm, %.6.i
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.7.i = phi i32 [ %i.mn, %bb.ds ], [ %.6.i, %bb.dr ] ; 2 uses
  br i1 %i.bn, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !79
  %i.mq = mul nsw i32 %i.mp, %.7.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.8.i = phi i32 [ %i.mq, %bb.du ], [ %.7.i, %bb.dt ] ; 2 uses
  br i1 %i.bp, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !70
  %i.mt = mul nsw i32 %i.ms, %.8.i
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.do
  %.9.i = phi i32 [ %i.mt, %bb.dw ], [ %.8.i, %bb.dv ], [ %.5.i, %bb.do ]
  %i.mu = load float, ptr %i.b, align 4, !tbaa !75
  %i.mv = sitofp fast i32 %.9.i to float
  %i.mw = fdiv fast float %i.mu, %i.mv            ; 2 uses
  store float %i.mw, ptr %i.b, align 4, !tbaa !75
  br label %bb.dy

thread-pre-split.i:                               ; preds = %bb.cz, %bb.cy
  %.pr.i = load float, ptr %i.b, align 4, !tbaa !75
  br label %bb.dy

bb.dy:                                            ; preds = %thread-pre-split.i, %bb.dx
  %i.mx = phi float [ %.pr.i, %thread-pre-split.i ], [ %i.mw, %bb.dx ]
  %i.my = fcmp fast une float %i.mx, 1.000000e+00
  br i1 %i.my, label %bb.dz, label %_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.exit

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  %i.mz = load i64, ptr %i.bb, align 8, !tbaa !48
  %i.na = load i32, ptr %i.bd, align 8, !tbaa !70
  %i.nb = trunc i64 %i.mz to i32
  %i.nc = mul i32 %i.na, %i.nb
  store i32 %i.nc, ptr %i.s, align 4, !tbaa !69
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !94
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bw, i32 %i.ne)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.30, ptr nonnull %i.s, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  br label %_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.exit

.critedge414.i:                                   ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.exit

.critedge418.i:                                   ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw, %.critedge416.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.exit

.critedge424.i:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit425.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.exit

_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.exit: ; preds = %bb.dy, %bb.dz, %.critedge414.i, %.critedge418.i, %.critedge424.i
  %.13.i = phi i32 [ -100, %.critedge414.i ], [ -100, %.critedge424.i ], [ -100, %.critedge418.i ], [ 0, %bb.dz ], [ 0, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %.thread26, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.exit
  %.0 = phi i32 [ %.13.i, %_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %.thread26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn9ReductionC2Ev(ptr noundef nonnull align 8 dereferenceable(300) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn9ReductionE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.d, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.e, align 1, !tbaa !96
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4ncnn9Reduction37resolve_reduce_flags_and_output_shapeERKNS_3MatERbS4_S4_S4_RiS5_S5_S5_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(300) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) initializes((0, 1)) %3, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) initializes((0, 1)) %4, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) initializes((0, 1)) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %10) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !76   ; 7 uses
  store i8 0, ptr %2, align 1, !tbaa !72
  store i8 0, ptr %3, align 1, !tbaa !72
  store i8 0, ptr %4, align 1, !tbaa !72
  store i8 0, ptr %5, align 1, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.e = load i32, ptr %i.d, align 4, !tbaa !66
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1, !tbaa !72
  store i8 1, ptr %3, align 1, !tbaa !72
  store i8 1, ptr %4, align 1, !tbaa !72
  store i8 1, ptr %5, align 1, !tbaa !72
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.i = load i32, ptr %i.h, align 4, !tbaa !98   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.i, 1
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod173 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.m = load i32, ptr %i.l, align 4, !tbaa !69   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  %i.o = select i1 %i.n, i32 %i.c, i32 0
  %spec.select.epil = add nsw i32 %i.o, %i.m
  %i.p = sext i32 %spec.select.epil to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.p
  store i32 1, ptr %i.q, align 4, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  switch i32 %i.c, label %bb.s [
    i32 1, label %.sink.split
    i32 2, label %bb.d
    i32 3, label %bb.g
    i32 4, label %bb.l
  ]

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !69   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = select i1 %i.t, i32 %i.c, i32 0
  %spec.select = add nsw i32 %i.u, %i.s
  %i.v = sext i32 %spec.select to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.v
  store i32 1, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !69   ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = select i1 %i.aa, i32 %i.c, i32 0
  %spec.select.1 = add nsw i32 %i.ab, %i.z
  %i.ac = sext i32 %spec.select.1 to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ac
  store i32 1, ptr %i.ad, align 4, !tbaa !69
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !97

bb.d:                                             ; preds = %._crit_edge
  %i.ae = load i32, ptr %i.a, align 16, !tbaa !69
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %3, align 1, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !69
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split, label %bb.s

bb.g:                                             ; preds = %._crit_edge
  %i.aj = load i32, ptr %i.a, align 16, !tbaa !69
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %5, align 1, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !69
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %3, align 1, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !69
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %.sink.split, label %bb.s

bb.l:                                             ; preds = %._crit_edge
  %i.ar = load i32, ptr %i.a, align 16, !tbaa !69
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %5, align 1, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !69
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %4, align 1, !tbaa !72
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !69
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %3, align 1, !tbaa !72
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !69
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %.sink.split, label %bb.s

.sink.split:                                      ; preds = %bb.r, %bb.k, %bb.f, %._crit_edge
  store i8 1, ptr %2, align 1, !tbaa !72
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.k, %bb.f, %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !71
  %.not80 = icmp eq i32 %i.bd, 0
  br i1 %.not80, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.c, ptr %6, align 4, !tbaa !69
  %i.be = load i8, ptr %2, align 1, !tbaa !72, !range !73, !noundef !74
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !77
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bi = phi i32 [ %i.bh, %bb.v ], [ 1, %bb.u ]
  store i32 %i.bi, ptr %7, align 4, !tbaa !69
  %i.bj = load i8, ptr %3, align 1, !tbaa !72, !range !73, !noundef !74
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !78
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.bn = phi i32 [ %i.bm, %bb.x ], [ 1, %bb.w ]
  store i32 %i.bn, ptr %8, align 4, !tbaa !69
  %i.bo = load i8, ptr %4, align 1, !tbaa !72, !range !73, !noundef !74
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !79
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.bs = phi i32 [ %i.br, %bb.z ], [ 1, %bb.y ]
  store i32 %i.bs, ptr %9, align 4, !tbaa !69
  %i.bt = load i8, ptr %5, align 1, !tbaa !72, !range !73, !noundef !74
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !70
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bx = phi i32 [ %i.bw, %bb.ab ], [ 1, %bb.aa ]
  store i32 %i.bx, ptr %10, align 4, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit114

bb.ad:                                            ; preds = %bb.t
  %i.by = load i8, ptr %2, align 1, !tbaa !72, !range !73, !noundef !74
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.ag, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cb = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #21 ; 3 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !69
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
end_hunk_1
