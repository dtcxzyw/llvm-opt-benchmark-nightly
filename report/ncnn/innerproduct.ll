Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@_ZNK4ncnn12InnerProduct12forward_int8ERKNS_3MatERS1_RKNS_6OptionE:bb.a

bb.i:                                             ; preds = %bb.k, %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.j:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit38
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.bm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn12InnerProduct12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull %4, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit38.thread

bb.k:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ax, i64 noundef 4, ptr noundef %i.bo)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %2, align 8, !tbaa !20
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZNK4ncnn3Mat5emptyEv.exit38.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !46
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul i64 %i.bs, %i.bv
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZNK4ncnn3Mat5emptyEv.exit38.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.bz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn12InnerProduct12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %4)
  br label %_ZNK4ncnn3Mat5emptyEv.exit38.thread

_ZNK4ncnn3Mat5emptyEv.exit38.thread:              ; preds = %bb.l, %bb.h, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit38, %bb.m, %bb.j
  %.027 = phi i32 [ 0, %bb.m ], [ 0, %bb.j ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit38 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.h ], [ -100, %bb.l ]
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit30, label %bb.n

bb.n:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit38.thread
  %i.cb = atomicrmw add ptr %i.ca, i32 -1 acq_rel, align 4
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit30

bb.o:                                             ; preds = %bb.n
  %i.cd = load ptr, ptr %i.x, align 16, !tbaa !19 ; 3 uses
  %.not3.i = icmp eq ptr %i.cd, null
  %i.ce = load ptr, ptr %4, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.ce)
          to label %_ZN4ncnn3MatD2Ev.exit30 unwind label %bb.s, !inline_history !0

bb.q:                                             ; preds = %bb.o
  %.not.i36 = icmp eq ptr %i.ce, null
  br i1 %.not.i36, label %_ZN4ncnn3MatD2Ev.exit30, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.ce) #9
  br label %_ZN4ncnn3MatD2Ev.exit30

bb.s:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit30:                          ; preds = %bb.n, %_ZNK4ncnn3Mat5emptyEv.exit38.thread, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.027

bb.t:                                             ; preds = %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.as, %bb.e ]
  %i.ck = load ptr, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %.not.i31 = icmp eq ptr %i.ck, null
  br i1 %.not.i31, label %_ZN4ncnn3MatD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = atomicrmw add ptr %i.ck, i32 -1 acq_rel, align 4
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr %i.x, align 16, !tbaa !19 ; 3 uses
  %.not3.i32 = icmp eq ptr %i.cn, null
  %i.co = load ptr, ptr %4, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i32, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.co)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.z, !inline_history !0

bb.x:                                             ; preds = %bb.v
  %.not.i35 = icmp eq ptr %i.co, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.co) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.z:                                             ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.u, %bb.t, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %.pn
}

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn12InnerProduct7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not55 = icmp sgt i32 %i.k, %i.j
  br i1 %.not55, label %._crit_edge59.split, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  %factor.op.mul60 = mul i64 %i.w, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.y = load i32, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 376
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 232 ; 3 uses
  br i1 %i.z, label %.lr.ph58.split, label %._crit_edge59.split

.lr.ph58.split:                                   ; preds = %.lr.ph58
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ag = load i32, ptr %6, align 4, !tbaa !45    ; 4 uses
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !38
  %.not35 = icmp eq i32 %i.ah, 0
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !41
  %7 = zext nneg i32 %i.ag to i64
  %i.ak = sext i32 %i.k to i64
  %i.al = add nsw i32 %i.j, 1
  %wide.trip.count66 = zext nneg i32 %i.y to i64
  %wide.trip.count = zext i32 %i.ag to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph58.split, %._crit_edge54
  %indvars.iv68 = phi i64 [ %i.ak, %.lr.ph58.split ], [ %indvars.iv.next69, %._crit_edge54 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv68
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 2 uses
  %.reass61 = mul i64 %factor.op.mul60, %indvars.iv68
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass61
  br label %bb.c

._crit_edge54:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next69 to i32
  %exitcond71.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond71.not, label %._crit_edge59.split, label %.lr.ph53

bb.c:                                             ; preds = %.lr.ph53, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv63 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next64, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 4 uses
  %i.ao = mul nuw nsw i64 %indvars.iv63, %7
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ao ; 2 uses
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv63
  %i.as = load float, ptr %i.ar, align 4, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.032 = phi nsz float [ %i.as, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  br i1 %min.iters.check, label %.lr.ph.preheader82, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.at = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.032, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ %i.at, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi78 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x float>, ptr %i.au, align 4, !tbaa !56
  %wide.load79 = load <4 x float>, ptr %i.av, align 4, !tbaa !56
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load80 = load <4 x float>, ptr %i.aw, align 4, !tbaa !56
  %wide.load81 = load <4 x float>, ptr %i.ax, align 4, !tbaa !56
  %i.ay = fmul fast <4 x float> %wide.load80, %wide.load
  %i.az = fmul fast <4 x float> %wide.load81, %wide.load79
  %i.ba = fadd fast <4 x float> %i.ay, %vec.phi   ; 2 uses
  %i.bb = fadd fast <4 x float> %i.az, %vec.phi78 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.bb, %i.ba
  %i.bd = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader82

.lr.ph.preheader82:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.149.ph = phi float [ %.032, %.lr.ph.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.e
  %.1.lcssa = phi float [ %.032, %bb.e ], [ %i.bd, %middle.block ], [ %i.cq, %.lr.ph ] ; 13 uses
  switch i32 %i.aj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.be = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !56
  %i.bh = fcmp fast ogt float %.1.lcssa, 0.000000e+00
  %i.bi = select fast i1 %i.bh, float 1.000000e+00, float %i.bg
  %i.bj = fmul fast float %i.bi, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge
  %i.bk = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !56 ; 2 uses
  %.047 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1.lcssa, float %i.bl) ; 2 uses
  %i.bo = fcmp fast ogt float %.047, %i.bn
  br i1 %i.bo, label %bb.i, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.h
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge
  %.sroa.speculated38 = call nnan ninf nsz float @llvm.minnum.f32(float %.1.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated38, float f0xC2B0C0A5)
  %i.bp = fneg fast float %.sroa.speculated
  %i.bq = call fast float @llvm.exp.f32(float %i.bp)
  %i.br = fadd fast float %i.bq, 1.000000e+00
  %i.bs = fdiv fast float 1.000000e+00, %i.br
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bt = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1.lcssa)
  %i.bu = fadd fast float %i.bt, 1.000000e+00
  %i.bv = call fast float @llvm.log.f32(float %i.bu)
  %i.bw = call fast float @llvm.tanh.f32(float %i.bv)
  %i.bx = fmul fast float %i.bw, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !56 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !56 ; 2 uses
  %i.cc = fneg fast float %i.cb
  %i.cd = fdiv fast float %i.cc, %i.bz            ; 2 uses
  %i.ce = fcmp fast olt float %.1.lcssa, %i.cd
  br i1 %i.ce, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = fdiv fast float 1.000000e+00, %i.bz
  %i.cg = fadd fast float %i.cd, %i.cf
  %i.ch = fcmp fast ogt float %.1.lcssa, %i.cg
  br i1 %i.ch, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = fmul fast float %i.bz, %.1.lcssa
  %i.cj = fadd fast float %i.ci, %i.cb
  %i.ck = fmul fast float %i.cj, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader82, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader82 ] ; 3 uses
  %.149 = phi float [ %i.cq, %.lr.ph ], [ %.149.ph, %.lr.ph.preheader82 ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !56
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.co = load float, ptr %i.cn, align 4, !tbaa !56
  %i.cp = fmul fast float %i.co, %i.cm
  %i.cq = fadd fast float %i.cp, %.149            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %._crit_edge, %bb.l
  %.148 = phi nsz float [ %.1.lcssa, %._crit_edge ], [ %i.be, %bb.f ], [ %i.bj, %bb.g ], [ %i.bn, %bb.i ], [ %.047, %bb.h ], [ %i.bs, %bb.j ], [ %i.bx, %bb.k ], [ %i.ck, %bb.n ], [ %.1.lcssa, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv63
  store float %.148, ptr %i.cr, align 4, !tbaa !56
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge54, label %bb.c, !llvm.loop !76

._crit_edge59.split:                              ; preds = %._crit_edge54, %.lr.ph58, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge59.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !61 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn12InnerProduct7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.h, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.i = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !45
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZNK4ncnn12InnerProduct7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a

scalar.ph.preheader:                              ; preds = %.noexc36.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.noexc36.us ], [ %n.vec, %middle.block ]
  %.255.us.ph = phi float [ %.157.us, %.noexc36.us ], [ %i.bc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.255.us = phi float [ %i.bi, %scalar.ph ], [ %.255.us.ph, %scalar.ph.preheader ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.be = load float, ptr %i.bd, align 4, !tbaa !56
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !56
  %i.bh = fmul fast float %i.bg, %i.be
  %i.bi = fadd fast float %i.bh, %.255.us         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !80

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi float [ %i.bc, %middle.block ], [ %i.bi, %scalar.ph ] ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge59, label %.noexc36.us, !llvm.loop !81

._crit_edge59:                                    ; preds = %._crit_edge.us, %.noexc36.lr.ph, %bb.e
  %.1.lcssa = phi float [ %.032, %bb.e ], [ %.032, %.noexc36.lr.ph ], [ %.lcssa, %._crit_edge.us ] ; 13 uses
  switch i32 %i.v, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.f:                                             ; preds = %._crit_edge59
  %i.bj = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge59
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !56
  %i.bm = fcmp fast ogt float %.1.lcssa, 0.000000e+00
  %i.bn = select fast i1 %i.bm, float 1.000000e+00, float %i.bl
  %i.bo = fmul fast float %i.bn, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge59
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !20  ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !56 ; 2 uses
  %.053 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1.lcssa, float %i.bq) ; 2 uses
  %i.bt = fcmp fast ogt float %.053, %i.bs
  br i1 %i.bt, label %bb.i, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.h
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge59
  %.sroa.speculated44 = call nnan ninf nsz float @llvm.minnum.f32(float %.1.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated44, float f0xC2B0C0A5)
  %i.bu = fneg fast float %.sroa.speculated
  %i.bv = call fast float @llvm.exp.f32(float %i.bu)
  %i.bw = fadd fast float %i.bv, 1.000000e+00
  %i.bx = fdiv fast float 1.000000e+00, %i.bw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge59
  %i.by = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1.lcssa)
  %i.bz = fadd fast float %i.by, 1.000000e+00
  %i.ca = call fast float @llvm.log.f32(float %i.bz)
  %i.cb = call fast float @llvm.tanh.f32(float %i.ca)
  %i.cc = fmul fast float %i.cb, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %._crit_edge59
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !20  ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !56 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !56 ; 2 uses
  %i.ch = fneg fast float %i.cg
  %i.ci = fdiv fast float %i.ch, %i.ce            ; 2 uses
  %i.cj = fcmp fast olt float %.1.lcssa, %i.ci
  br i1 %i.cj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = fdiv fast float 1.000000e+00, %i.ce
  %i.cl = fadd fast float %i.ci, %i.ck
  %i.cm = fcmp fast ogt float %.1.lcssa, %i.cl
  br i1 %i.cm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = fmul fast float %i.ce, %.1.lcssa
  %i.co = fadd fast float %i.cn, %i.cg
  %i.cp = fmul fast float %i.co, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %._crit_edge59, %bb.l
  %.154 = phi nsz float [ %.1.lcssa, %._crit_edge59 ], [ %i.bj, %bb.f ], [ %i.bo, %bb.g ], [ %i.bs, %bb.i ], [ %.053, %bb.h ], [ %i.bx, %bb.j ], [ %i.cc, %bb.k ], [ %i.cp, %bb.n ], [ %.1.lcssa, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv70
  store float %.154, ptr %i.cq, align 4, !tbaa !56
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next71 to i32
  %exitcond73.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond73.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn12InnerProduct12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not60 = icmp sgt i32 %i.k, %i.j
  br i1 %.not60, label %._crit_edge64.split, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  %factor.op.mul65 = mul i64 %i.w, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.y = load i32, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 520
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 376
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 232 ; 3 uses
  br i1 %i.z, label %.lr.ph63.split, label %._crit_edge64.split

.lr.ph63.split:                                   ; preds = %.lr.ph63
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 448
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = load i32, ptr %6, align 4, !tbaa !45    ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !38
  %.not41 = icmp eq i32 %i.al, 0
  %i.am = load i32, ptr %i.ad, align 8, !tbaa !41
  %7 = zext nneg i32 %i.ai to i64
  %i.an = sext i32 %i.k to i64
  %i.ao = add nsw i32 %i.j, 1
  %wide.trip.count71 = zext nneg i32 %i.y to i64
  %wide.trip.count = zext i32 %i.ai to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ai, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph63.split, %._crit_edge59
  %indvars.iv73 = phi i64 [ %i.an, %.lr.ph63.split ], [ %indvars.iv.next74, %._crit_edge59 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv73
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 2 uses
  %.reass66 = mul i64 %factor.op.mul65, %indvars.iv73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass66
  br label %bb.c

._crit_edge59:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next74 to i32
  %exitcond76.not = icmp eq i32 %i.ao, %lftr.wideiv
  br i1 %exitcond76.not, label %._crit_edge64.split, label %.lr.ph58

bb.c:                                             ; preds = %.lr.ph58, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv68 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next69, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 5 uses
  %i.ar = mul nuw nsw i64 %indvars.iv68, %7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ar ; 2 uses
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %min.iters.check, label %.lr.ph.preheader89, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.bd, %vector.body ], [ zeroinitializer, %.lr.ph.preheader ]
  %vec.phi85 = phi <4 x i32> [ %i.be, %vector.body ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %wide.load = load <4 x i8>, ptr %i.at, align 1, !tbaa !54
  %wide.load86 = load <4 x i8>, ptr %i.au, align 1, !tbaa !54
  %i.av = sext <4 x i8> %wide.load to <4 x i32>
  %i.aw = sext <4 x i8> %wide.load86 to <4 x i32>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %wide.load87 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !54
  %wide.load88 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !54
  %i.az = sext <4 x i8> %wide.load87 to <4 x i32>
  %i.ba = sext <4 x i8> %wide.load88 to <4 x i32>
  %i.bb = mul nsw <4 x i32> %i.az, %i.av
  %i.bc = mul nsw <4 x i32> %i.ba, %i.aw
  %i.bd = add <4 x i32> %i.bb, %vec.phi           ; 2 uses
  %i.be = add <4 x i32> %i.bc, %vec.phi85         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.be, %i.bd
  %i.bg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader89

.lr.ph.preheader89:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03854.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.bg, %middle.block ], [ %i.bs, %.lr.ph ]
  %i.bh = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.038.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.bh, %._crit_edge.loopexit ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv68
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !56 ; 2 uses
  %i.bk = fcmp fast oeq float %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader89, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader89 ] ; 3 uses
  %.03854 = phi i32 [ %i.bs, %.lr.ph ], [ %.03854.ph, %.lr.ph.preheader89 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !54
  %i.bn = sext i8 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !54
  %i.bq = sext i8 %i.bp to i32
  %i.br = mul nsw i32 %i.bq, %i.bn
  %i.bs = add nsw i32 %i.br, %.03854              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !84

bb.d:                                             ; preds = %._crit_edge
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !56
  %i.bv = fmul fast float %i.bu, %i.bj
  %i.bw = fdiv fast float %.038.lcssa, %i.bv
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.036 = phi float [ %i.bw, %bb.d ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  br i1 %.not41, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv68
  %i.bz = load float, ptr %i.by, align 4, !tbaa !56
  %i.ca = fadd fast float %i.bz, %.036
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi nsz float [ %i.ca, %bb.f ], [ %.036, %bb.e ] ; 13 uses
  switch i32 %i.am, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.l
    i32 5, label %bb.m
    i32 6, label %bb.n
  ]

bb.h:                                             ; preds = %bb.g
  %i.cb = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.0, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.g
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !56
  %i.ce = fcmp fast ogt float %.0, 0.000000e+00
  %i.cf = select fast i1 %i.ce, float 1.000000e+00, float %i.cd
  %i.cg = fmul fast float %i.cf, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !56
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !56 ; 2 uses
  %.053 = call nnan ninf nsz float @llvm.maxnum.f32(float %.0, float %i.ci) ; 2 uses
  %i.cl = fcmp fast ogt float %.053, %i.ck
  br i1 %i.cl, label %bb.k, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %bb.j
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %bb.g
  %.sroa.speculated44 = call nnan ninf nsz float @llvm.minnum.f32(float %.0, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated44, float f0xC2B0C0A5)
  %i.cm = fneg fast float %.sroa.speculated
  %i.cn = call fast float @llvm.exp.f32(float %i.cm)
  %i.co = fadd fast float %i.cn, 1.000000e+00
  %i.cp = fdiv fast float 1.000000e+00, %i.co
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.m:                                             ; preds = %bb.g
  %i.cq = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.0)
  %i.cr = fadd fast float %i.cq, 1.000000e+00
  %i.cs = call fast float @llvm.log.f32(float %i.cr)
  %i.ct = call fast float @llvm.tanh.f32(float %i.cs)
  %i.cu = fmul fast float %i.ct, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.n:                                             ; preds = %bb.g
  %i.cv = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !56 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !56 ; 2 uses
  %i.cz = fneg fast float %i.cy
  %i.da = fdiv fast float %i.cz, %i.cw            ; 2 uses
  %i.db = fcmp fast olt float %.0, %i.da
  br i1 %i.db, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = fdiv fast float 1.000000e+00, %i.cw
  %i.dd = fadd fast float %i.da, %i.dc
  %i.de = fcmp fast ogt float %.0, %i.dd
  br i1 %i.de, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = fmul fast float %i.cw, %.0
  %i.dg = fadd fast float %i.df, %i.cy
  %i.dh = fmul fast float %i.dg, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.n
  %.1 = phi nsz float [ %.0, %bb.g ], [ %i.cb, %bb.h ], [ %i.cg, %bb.i ], [ %i.ck, %bb.k ], [ %.053, %bb.j ], [ %i.cp, %bb.l ], [ %i.cu, %bb.m ], [ %i.dh, %bb.p ], [ %.0, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv68
  store float %.1, ptr %i.di, align 4, !tbaa !56
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count71
  br i1 %exitcond72.not, label %._crit_edge59, label %bb.c, !llvm.loop !85

._crit_edge64.split:                              ; preds = %._crit_edge59, %.lr.ph63, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge64.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn12InnerProduct12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.h, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
end_hunk_1
