Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK4ncnn17Convolution1D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.dz:                                            ; preds = %bb.dy
  %i.le = load ptr, ptr %i.lc, align 8, !tbaa !9
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  invoke void %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef %i.ld)
          to label %_ZN4ncnn3MatD2Ev.exit54 unwind label %bb.ec, !inline_history !19

bb.ea:                                            ; preds = %bb.dy
  %.not.i101 = icmp eq ptr %i.ld, null
  br i1 %.not.i101, label %_ZN4ncnn3MatD2Ev.exit54, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @free(ptr noundef nonnull %i.ld) #11
  br label %_ZN4ncnn3MatD2Ev.exit54

bb.ec:                                            ; preds = %bb.dz
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit54:                          ; preds = %bb.dx, %bb.dw, %bb.dz, %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.ej

_ZNK4ncnn3Mat5emptyEv.exit121.thread:             ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit121, %_ZN4ncnn3MatD2Ev.exit55
  %.2 = phi i32 [ %.1, %_ZN4ncnn3MatD2Ev.exit55 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit121 ], [ -100, %bb.b ]
  %i.lj = load ptr, ptr %i.k, align 8, !tbaa !11  ; 2 uses
  %.not.i90 = icmp eq ptr %i.lj, null
  br i1 %.not.i90, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.ed

bb.ed:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit121.thread
  %i.lk = atomicrmw add ptr %i.lj, i32 -1 acq_rel, align 4
  %i.ll = icmp eq i32 %i.lk, 1
  br i1 %i.ll, label %bb.ee, label %_ZN4ncnn3MatD2Ev.exit53

bb.ee:                                            ; preds = %bb.ed
  %i.lm = load ptr, ptr %i.n, align 16, !tbaa !17 ; 3 uses
  %.not3.i91 = icmp eq ptr %i.lm, null
  %i.ln = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i91, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.lo = load ptr, ptr %i.lm, align 8, !tbaa !9
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8
  invoke void %i.lq(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef %i.ln)
          to label %_ZN4ncnn3MatD2Ev.exit53 unwind label %bb.ei, !inline_history !19

bb.eg:                                            ; preds = %bb.ee
  %.not.i99 = icmp eq ptr %i.ln, null
  br i1 %.not.i99, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @free(ptr noundef nonnull %i.ln) #11
  br label %_ZN4ncnn3MatD2Ev.exit53

bb.ei:                                            ; preds = %bb.ef
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit53:                          ; preds = %bb.ed, %_ZNK4ncnn3Mat5emptyEv.exit121.thread, %bb.ef, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.2

bb.ej:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit54, %_ZN4ncnn3MatD2Ev.exit60, %bb.c
  %.pn46.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit54 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit60 ], [ %i.z, %bb.c ]
  %i.lt = load ptr, ptr %i.k, align 8, !tbaa !11  ; 2 uses
  %.not.i94 = icmp eq ptr %i.lt, null
  br i1 %.not.i94, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lu = atomicrmw add ptr %i.lt, i32 -1 acq_rel, align 4
  %i.lv = icmp eq i32 %i.lu, 1
  br i1 %i.lv, label %bb.el, label %_ZN4ncnn3MatD2Ev.exit

bb.el:                                            ; preds = %bb.ek
  %i.lw = load ptr, ptr %i.n, align 16, !tbaa !17 ; 3 uses
  %.not3.i95 = icmp eq ptr %i.lw, null
  %i.lx = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i95, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ly = load ptr, ptr %i.lw, align 8, !tbaa !9
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8
  invoke void %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr noundef %i.lx)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ep, !inline_history !19

bb.en:                                            ; preds = %bb.el
  %.not.i98 = icmp eq ptr %i.lx, null
  br i1 %.not.i98, label %_ZN4ncnn3MatD2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @free(ptr noundef nonnull %i.lx) #11
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ep:                                            ; preds = %bb.em
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ek, %bb.ej, %bb.em, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %.pn46.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17Convolution1D_x867forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !39, !range !41, !noundef !42
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !203  ; 4 uses
  br i1 %i.l, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not.i41 = icmp eq i32 %i.n, 0
  br i1 %.not.i41, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %.tr.i = trunc i64 %i.p to i32
  %i.q = shl i32 %.tr.i, 3
  %i.r = sdiv i32 %i.q, %i.n
  %i.s = icmp eq i32 %i.r, 16
  br i1 %i.s, label %bb.c, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.t = tail call noundef i32 @_ZNK4ncnn17Convolution1D_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.aq

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %bb.b, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.u = phi i32 [ %i.n, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.b ], [ %i.n, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !44
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = mul nsw i32 %i.ab, %i.y
  %.neg = xor i32 %i.ac, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ag, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn13Convolution1D12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.al = load ptr, ptr %4, align 8, !tbaa !18
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %_ZNK4ncnn3Mat5emptyEv.exit42

_ZNK4ncnn3Mat5emptyEv.exit42:                     ; preds = %bb.d
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !202
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.an, %i.ap
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %._crit_edge

bb.e:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

._crit_edge:                                      ; preds = %_ZNK4ncnn3Mat5emptyEv.exit42
  %i.at = load i32, ptr %i.ah, align 4, !tbaa !201
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.av = load i8, ptr %i.au, align 1, !tbaa !214, !range !41, !noundef !42
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !45 ; 2 uses
  %i.az = and i32 %i.ay, 3
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = and i1 %i.ba, %i.aw                     ; 2 uses
  %.030 = select i1 %i.bb, i32 4, i32 1           ; 2 uses
  %i.bc = sext i32 %i.u to i64
  %i.bd = udiv i64 %i.w, %i.bc
  %i.be = select i1 %i.bb, i64 2, i64 0
  %i.bf = shl i64 %i.bd, %i.be
  %i.bg = add i32 %i.at, %.neg
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !209
  %i.bj = sdiv i32 %i.bg, %i.bi
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = sdiv i32 %i.ay, %.030
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !215
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bk, i32 noundef %i.bl, i64 noundef %i.bf, i32 noundef %.030, ptr noundef %i.bn)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bo = load ptr, ptr %2, align 8, !tbaa !18
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !202
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.br, %i.bu
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ca = load i32, ptr %i.z, align 4, !tbaa !44
  %i.cb = load i32, ptr %i.x, align 8, !tbaa !208
  %i.cc = load i32, ptr %i.bh, align 4, !tbaa !209
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !213
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cg = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !206
  store i32 %i.cb, ptr %i.b, align 4, !tbaa !206
  store i32 %i.cc, ptr %i.c, align 4, !tbaa !206
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !206
  %i.ch = load i32, ptr %i.af, align 8, !tbaa !203 ; 5 uses
  %i.ci = load i32, ptr %i.ai, align 8, !tbaa !216
  %i.cj = mul i32 %i.ci, %i.ch                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ck = load i32, ptr %i.ah, align 4, !tbaa !201
  %i.cl = mul nsw i32 %i.ck, %i.ch
  store i32 %i.cl, ptr %i.e, align 4, !tbaa !206
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !201 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !203 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !216
  %i.cs = mul nsw i32 %i.cr, %i.cp                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.ct = mul nsw i32 %i.cp, %i.cn
  store i32 %i.ct, ptr %i.f, align 4, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.cu = load ptr, ptr %i.bz, align 8, !tbaa !18
  store ptr %i.cu, ptr %i.g, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store i32 0, ptr %i.i, align 4, !tbaa !206
  %i.cv = sdiv i32 %i.cs, 4
  store i32 %i.cv, ptr %i.h, align 4, !tbaa !206
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !219
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cg, i32 %i.cx)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.by, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.cf, ptr nonnull %i.f)
  %i.cy = load i32, ptr %i.h, align 4, !tbaa !206
  %i.cz = shl nsw i32 %i.cy, 2
  %i.da = load i32, ptr %i.i, align 4, !tbaa !206
  %i.db = add nsw i32 %i.da, %i.cz                ; 4 uses
  %i.dc = sub nsw i32 %i.cs, %i.db                ; 2 uses
  %i.dd = sdiv i32 %i.dc, 2                       ; 2 uses
  %i.de = icmp sgt i32 %i.dc, 1
  br i1 %i.de, label %.lr.ph487.i, label %._crit_edge488.split.i

.lr.ph487.i:                                      ; preds = %bb.h
  %i.df = load i32, ptr %i.af, align 8, !tbaa !203 ; 4 uses
  %i.dg = load i32, ptr %i.ai, align 8, !tbaa !216
  %i.dh = mul i32 %i.dg, %i.df                    ; 8 uses
  %i.di = load i32, ptr %i.cm, align 4, !tbaa !201 ; 3 uses
  %i.dj = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !49
  %i.dn = mul i64 %i.dm, %i.dk                    ; 2 uses
  %i.do = icmp sgt i32 %i.di, 0
  %i.dp = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not249.i = icmp eq ptr %i.dp, null
  %i.dq = icmp sgt i32 %i.dh, 3
  %i.dr = icmp eq i32 %i.df, 4
  %i.ds = icmp ne i32 %i.df, 1
  %i.dt = load i32, ptr %i.d, align 4
  br i1 %i.do, label %.lr.ph487.split.i, label %._crit_edge488.split.i

.lr.ph487.split.i:                                ; preds = %.lr.ph487.i
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dw = load ptr, ptr %i.by, align 8, !tbaa !18, !noalias !220
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !20, !noalias !220
  %i.dy = load i64, ptr %i.du, align 8, !tbaa !49, !noalias !220
  %factor.op.mul490.i = mul i64 %i.dy, %i.dx
  %i.dz = and i32 %i.dh, -4                       ; 3 uses
  %i.ea = sext i32 %i.db to i64
  %wide.trip.count638.i = zext nneg i32 %i.dd to i64
  %wide.trip.count.i = zext nneg i32 %i.di to i64
  %i.eb = sext i32 %i.dh to i64
  %invariant.op = add nsw i64 %i.eb, -3
  br label %.lr.ph481.i

._crit_edge488.split.i:                           ; preds = %._crit_edge482.i, %.lr.ph487.i, %bb.h
  %i.ec = shl nsw i32 %i.dd, 1                    ; 2 uses
  %i.ed = add nsw i32 %i.ec, %i.db
  %i.ee = icmp slt i32 %i.ed, %i.cs
  br i1 %i.ee, label %.lr.ph572.i, label %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph572.i:                                      ; preds = %._crit_edge488.split.i
  %i.ef = load ptr, ptr %2, align 8, !tbaa !18
  %i.eg = load i32, ptr %i.cm, align 4, !tbaa !201
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !49
  %factor.op.mul574.i = mul i64 %i.ej, %i.eh
  %i.ek = icmp sgt i32 %i.cn, 0
  %i.el = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i43 = icmp eq ptr %i.el, null
  %i.em = icmp sgt i32 %i.cj, 3
  %i.en = icmp ne i32 %i.ch, 4
  %i.eo = icmp ne i32 %i.ch, 1
  %i.ep = load i32, ptr %i.d, align 4
  br i1 %i.ek, label %.lr.ph572.split.i, label %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph572.split.i:                                ; preds = %.lr.ph572.i
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.es = load ptr, ptr %i.by, align 8, !tbaa !18, !noalias !223
  %i.et = load i64, ptr %i.er, align 8, !tbaa !20, !noalias !223
  %i.eu = load i64, ptr %i.eq, align 8, !tbaa !49, !noalias !223
  %factor.op.mul576.i = mul i64 %i.eu, %i.et
  %i.ev = and i32 %i.cj, -4                       ; 3 uses
  %i.ew = sext i32 %i.db to i64
  %i.ex = sext i32 %i.ec to i64
  %i.ey = add nsw i64 %i.ex, %i.ew
  %i.ez = sext i32 %i.cs to i64
  %wide.trip.count661.i = zext nneg i32 %i.cn to i64
  %i.fa = sext i32 %i.cj to i64
  %invariant.op168 = add nsw i64 %i.fa, -3
  br label %.lr.ph566.i

.lr.ph481.i:                                      ; preds = %._crit_edge482.i, %.lr.ph487.split.i
  %indvars.iv635.i = phi i64 [ 0, %.lr.ph487.split.i ], [ %indvars.iv.next636.i, %._crit_edge482.i ] ; 2 uses
  %i.fb = shl nuw nsw i64 %indvars.iv635.i, 1
  %i.fc = add nsw i64 %i.fb, %i.ea                ; 4 uses
  %i.fd = mul i64 %i.fc, %i.dn
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.fd
  %i.ff = add nsw i64 %i.fc, 1
  %i.fg = mul i64 %i.ff, %i.dn
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.fg
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.fc
  %i.fj = trunc nsw i64 %i.fc to i32              ; 2 uses
  %i.fk = sdiv i32 %i.fj, 4
  %i.fl = srem i32 %i.fj, 4
  %.lhs.trunc.i = trunc nsw i32 %i.fl to i8
  %i.fm = sdiv i8 %.lhs.trunc.i, 2
  %.sext.i = sext i8 %i.fm to i32
  %i.fn = add nsw i32 %i.fk, %.sext.i
  %i.fo = sext i32 %i.fn to i64
  %.reass491.i = mul i64 %factor.op.mul490.i, %i.fo
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.reass491.i ; 4 uses
  %i.fq = load i32, ptr %i.c, align 4             ; 2 uses
  %factor.op.mul483.i = mul i32 %i.fq, %i.df
  %i.fr = load i32, ptr %i.a, align 4             ; 9 uses
  %i.fs = icmp sgt i32 %i.fr, 0                   ; 2 uses
  %i.ft = add i32 %i.fr, -1
  %i.fu = zext i32 %i.ft to i64                   ; 2 uses
  %i.fv = shl nuw nsw i64 %i.fu, 4
  %i.fw = shl nuw nsw i64 %i.fu, 3
  %i.fx = sext i32 %i.fq to i64                   ; 2 uses
  %i.fy = load ptr, ptr %4, align 8               ; 3 uses
  %i.fz = load i32, ptr %i.ah, align 4
  %i.ga = sext i32 %i.fz to i64
  %i.gb = load i64, ptr %i.ae, align 8
  %factor.op.mul.i = mul i64 %i.gb, %i.ga         ; 4 uses
  %xtraiter200 = and i32 %i.fr, 1
  %i.gc = icmp eq i32 %i.fr, 1
  %unroll_iter204 = and i32 %i.fr, 2147483646
  %lcmp.mod201.not = icmp eq i32 %xtraiter200, 0
  %lcmp.mod203 = trunc i32 %i.fr to i1
  %xtraiter207 = and i32 %i.fr, 3                 ; 3 uses
  %i.gd = icmp ult i32 %i.fr, 4
  %unroll_iter213 = and i32 %i.fr, 2147483644
  %lcmp.mod210.not = icmp eq i32 %xtraiter207, 0
  %lcmp.mod212 = icmp ne i32 %xtraiter207, 0
  br label %bb.i

._crit_edge482.i:                                 ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i
  %indvars.iv.next636.i = add nuw nsw i64 %indvars.iv635.i, 1 ; 2 uses
  %exitcond639.not.i = icmp eq i64 %indvars.iv.next636.i, %wide.trip.count638.i
end_hunk_0
begin_hunk_1_@_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.xw = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 2
  %i.xx = load i32, ptr %i.xv, align 4, !tbaa !53
  %i.xy = lshr i32 %i.xx, 16
  %i.xz = trunc nuw i32 %i.xy to i16
  store i16 %i.xz, ptr %i.xw, align 2, !tbaa !256
  %i.ya = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 4 ; 2 uses
  %indvars.iv.next781.i = add nuw nsw i64 %indvars.iv780.i, 1 ; 2 uses
  %exitcond784.not.i = icmp eq i64 %indvars.iv.next781.i, %wide.trip.count777.i
  br i1 %exitcond784.not.i, label %.preheader475.i.loopexit, label %.preheader473.us.i, !llvm.loop !286

.preheader475.i.loopexit:                         ; preds = %.preheader473.us.i, %middle.block152
  %.lcssa103 = phi ptr [ %i.xk, %middle.block152 ], [ %i.ya, %.preheader473.us.i ]
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %i.ml
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.i.loopexit, %_ZN4ncnn3MatD2Ev.exit.i
  %.1348.lcssa.i = phi ptr [ %i.xb, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.yb, %.preheader475.i.loopexit ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %i.xj, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa103, %.preheader475.i.loopexit ]
  %.1342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.rg, %.preheader475.i.loopexit ] ; 2 uses
  %i.yc = icmp sge i32 %.1342.lcssa.i, %i.h
  %brmerge645.i = or i1 %i.mm, %i.yc
  br i1 %brmerge645.i, label %._crit_edge634.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader475.i, %._crit_edge630.i
  %.2343633.i = phi i32 [ %i.yn, %._crit_edge630.i ], [ %.1342.lcssa.i, %.preheader475.i ]
  %.6632.i = phi ptr [ %.lcssa104, %._crit_edge630.i ], [ %.3.lcssa.i, %.preheader475.i ] ; 3 uses
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %.preheader.i
  %i.yd = getelementptr i8, ptr %.6632.i, i64 %i.ri ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body131 ] ; 3 uses
  %i.ye = shl i64 %index132, 1
  %next.gep133 = getelementptr i8, ptr %.6632.i, i64 %i.ye ; 2 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %index132 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %wide.load134 = load <4 x i32>, ptr %i.yf, align 4, !tbaa !53
  %wide.load135 = load <4 x i32>, ptr %i.yg, align 4, !tbaa !53
  %i.yh = lshr <4 x i32> %wide.load134, splat (i32 16)
  %i.yi = lshr <4 x i32> %wide.load135, splat (i32 16)
  %i.yj = trunc nuw <4 x i32> %i.yh to <4 x i16>
  %i.yk = trunc nuw <4 x i32> %i.yi to <4 x i16>
  %i.yl = getelementptr i8, ptr %next.gep133, i64 8
  store <4 x i16> %i.yj, ptr %next.gep133, align 2, !tbaa !256
  store <4 x i16> %i.yk, ptr %i.yl, align 2, !tbaa !256
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.ym = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.ym, label %middle.block137, label %vector.body131, !llvm.loop !287

middle.block137:                                  ; preds = %vector.body131
  br i1 %cmp.n138, label %._crit_edge630.i, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %.preheader.i, %middle.block137
  %indvars.iv785.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec130, %middle.block137 ]
  %.7628.i.ph = phi ptr [ %.6632.i, %.preheader.i ], [ %i.yd, %middle.block137 ]
  br label %scalar.ph127

._crit_edge630.i:                                 ; preds = %scalar.ph127, %middle.block137
  %.lcssa104 = phi ptr [ %i.yd, %middle.block137 ], [ %i.ys, %scalar.ph127 ]
  %i.yn = add nuw nsw i32 %.2343633.i, 1          ; 2 uses
  %exitcond790.not.i = icmp eq i32 %i.yn, %i.h
  br i1 %exitcond790.not.i, label %._crit_edge634.split.i, label %.preheader.i, !llvm.loop !275

scalar.ph127:                                     ; preds = %scalar.ph127.preheader, %scalar.ph127
  %indvars.iv785.i = phi i64 [ %indvars.iv.next786.i, %scalar.ph127 ], [ %indvars.iv785.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %.7628.i = phi ptr [ %i.ys, %scalar.ph127 ], [ %.7628.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !53
  %i.yq = lshr i32 %i.yp, 16
  %i.yr = trunc nuw i32 %i.yq to i16
  store i16 %i.yr, ptr %.7628.i, align 2, !tbaa !256
  %i.ys = getelementptr inbounds nuw i8, ptr %.7628.i, i64 2 ; 2 uses
  %indvars.iv.next786.i = add nuw nsw i64 %indvars.iv785.i, 1 ; 2 uses
  %exitcond789.not.i = icmp eq i64 %indvars.iv.next786.i, %wide.trip.count777.i
  br i1 %exitcond789.not.i, label %._crit_edge630.i, label %scalar.ph127, !llvm.loop !288

._crit_edge634.split.i:                           ; preds = %._crit_edge630.i, %.preheader475.i, %.preheader473.lr.ph.i
  %indvars.iv.next792.i = add nuw nsw i64 %indvars.iv791.i, 1 ; 2 uses
  %exitcond795.not.i = icmp eq i64 %indvars.iv.next792.i, %wide.trip.count794.i
  br i1 %exitcond795.not.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !276

_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit: ; preds = %._crit_edge634.split.i, %._crit_edge634.split.i.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us, %.preheader477.i
  %i.yt = load i8, ptr %1, align 8, !tbaa !199, !range !41, !noundef !42
  %i.yu = trunc nuw i8 %i.yt to i1
  br i1 %i.yu, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.yw, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.yx = atomicrmw add ptr %i.yw, i32 -1 acq_rel, align 4
  %i.yy = icmp eq i32 %i.yx, 1
  br i1 %i.yy, label %bb.w, label %_ZN4ncnn3Mat7releaseEv.exit

bb.w:                                             ; preds = %bb.v
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.za, null
  %i.zb = load ptr, ptr %i.i, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.zc = load ptr, ptr %i.za, align 8, !tbaa !9
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.ze = load ptr, ptr %i.zd, align 8
  tail call void %i.ze(ptr noundef nonnull align 8 dereferenceable(8) %i.za, ptr noundef %i.zb), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.y:                                             ; preds = %bb.w
  %.not.i2 = icmp eq ptr %i.zb, null
  br i1 %.not.i2, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.zb) #11
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.z, %bb.y, %bb.u, %bb.v, %bb.x
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.zg, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.zf, i8 0, i64 20, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17Convolution1D_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44
  %i.n = add nsw i32 %i.m, -1
  %i.o = mul nsw i32 %i.n, %i.k
  %.neg = xor i32 %i.o, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn13Convolution1D12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %4, align 8, !tbaa !18
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK4ncnn3Mat5emptyEv.exit32.thread, label %_ZNK4ncnn3Mat5emptyEv.exit32

_ZNK4ncnn3Mat5emptyEv.exit32:                     ; preds = %bb.b
  %i.z = load i64, ptr %i.w, align 8, !tbaa !20
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !202
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.z, %i.ab
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNK4ncnn3Mat5emptyEv.exit32.thread, label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

._crit_edge:                                      ; preds = %_ZNK4ncnn3Mat5emptyEv.exit32
  %i.af = load i32, ptr %i.t, align 4, !tbaa !201
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !214, !range !41, !noundef !42
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !45 ; 2 uses
  %i.al = and i32 %i.ak, 3
  %i.am = icmp eq i32 %i.al, 0
  %i.an = and i1 %i.am, %i.ai
  %.021 = select i1 %i.an, i32 4, i32 1           ; 3 uses
  %i.ao = shl nuw nsw i32 %.021, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add i32 %i.af, %.neg
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !209
  %i.at = sdiv i32 %i.aq, %i.as
  %i.au = add nsw i32 %i.at, 1
  %i.av = sdiv i32 %i.ak, %.021
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !215
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.au, i32 noundef %i.av, i64 noundef %i.ap, i32 noundef %.021, ptr noundef %i.ax)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ay = load ptr, ptr %2, align 8, !tbaa !18
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK4ncnn3Mat5emptyEv.exit32.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !202
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.bb, %i.be
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZNK4ncnn3Mat5emptyEv.exit32.thread, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !44
  %i.bl = load i32, ptr %i.j, align 8, !tbaa !208
  %i.bm = load i32, ptr %i.ar, align 4, !tbaa !209
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !213
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bq = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !206
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !206
  store i32 %i.bm, ptr %i.c, align 4, !tbaa !206
  store i32 %i.bo, ptr %i.d, align 4, !tbaa !206
  %i.br = load i32, ptr %i.r, align 8, !tbaa !203 ; 5 uses
  %i.bs = load i32, ptr %i.u, align 8, !tbaa !216
  %i.bt = mul i32 %i.bs, %i.br                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.bu = load i32, ptr %i.t, align 4, !tbaa !201
  %i.bv = mul nsw i32 %i.bu, %i.br
  store i32 %i.bv, ptr %i.e, align 4, !tbaa !206
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !201 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !203 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !216
  %i.cc = mul nsw i32 %i.cb, %i.bz                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.cd = mul nsw i32 %i.bz, %i.bx
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.ce = load ptr, ptr %i.bj, align 8, !tbaa !18
  store ptr %i.ce, ptr %i.g, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store i32 0, ptr %i.i, align 4, !tbaa !206
  %i.cf = sdiv i32 %i.cc, 4
  store i32 %i.cf, ptr %i.h, align 4, !tbaa !206
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !219
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bq, i32 %i.ch)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.bi, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.bp, ptr nonnull %i.f)
  %i.ci = load i32, ptr %i.h, align 4, !tbaa !206
  %i.cj = shl nsw i32 %i.ci, 2
  %i.ck = load i32, ptr %i.i, align 4, !tbaa !206
  %i.cl = add nsw i32 %i.ck, %i.cj                ; 4 uses
  %i.cm = sub nsw i32 %i.cc, %i.cl                ; 2 uses
  %i.cn = sdiv i32 %i.cm, 2                       ; 2 uses
  %i.co = icmp sgt i32 %i.cm, 1
  br i1 %i.co, label %.lr.ph495.i, label %._crit_edge496.split.i

.lr.ph495.i:                                      ; preds = %bb.f
  %i.cp = load i32, ptr %i.r, align 8, !tbaa !203 ; 4 uses
  %i.cq = load i32, ptr %i.u, align 8, !tbaa !216
  %i.cr = mul i32 %i.cq, %i.cp                    ; 8 uses
  %i.cs = load i32, ptr %i.bw, align 4, !tbaa !201 ; 3 uses
  %i.ct = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.cu = sext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !49
  %i.cx = mul i64 %i.cw, %i.cu                    ; 2 uses
  %i.cy = icmp sgt i32 %i.cs, 0
  %i.cz = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not249.i = icmp eq ptr %i.cz, null
  %i.da = icmp sgt i32 %i.cr, 3
  %i.db = icmp eq i32 %i.cp, 4
  %i.dc = icmp ne i32 %i.cp, 1
  %i.dd = load i32, ptr %i.d, align 4
  br i1 %i.cy, label %.lr.ph495.split.i, label %._crit_edge496.split.i

.lr.ph495.split.i:                                ; preds = %.lr.ph495.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dg = load ptr, ptr %i.bi, align 8, !tbaa !18, !noalias !289
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !20, !noalias !289
  %i.di = load i64, ptr %i.de, align 8, !tbaa !49, !noalias !289
  %factor.op.mul498.i = mul i64 %i.di, %i.dh
  %i.dj = and i32 %i.cr, -4                       ; 3 uses
  %i.dk = sext i32 %i.cl to i64
  %wide.trip.count646.i = zext nneg i32 %i.cn to i64
  %wide.trip.count.i = zext nneg i32 %i.cs to i64
  %i.dl = sext i32 %i.cr to i64
  %invariant.op = add nsw i64 %i.dl, -3
  br label %.lr.ph489.i

._crit_edge496.split.i:                           ; preds = %._crit_edge490.i, %.lr.ph495.i, %bb.f
  %i.dm = shl nsw i32 %i.cn, 1                    ; 2 uses
  %i.dn = add nsw i32 %i.dm, %i.cl
  %i.do = icmp slt i32 %i.dn, %i.cc
  br i1 %i.do, label %.lr.ph580.i, label %_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph580.i:                                      ; preds = %._crit_edge496.split.i
  %i.dp = load ptr, ptr %2, align 8, !tbaa !18
  %i.dq = load i32, ptr %i.bw, align 4, !tbaa !201
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !49
  %factor.op.mul582.i = mul i64 %i.dt, %i.dr
  %i.du = icmp sgt i32 %i.bx, 0
  %i.dv = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i33 = icmp eq ptr %i.dv, null
  %i.dw = icmp sgt i32 %i.bt, 3
  %i.dx = icmp ne i32 %i.br, 4
  %i.dy = icmp ne i32 %i.br, 1
  %i.dz = load i32, ptr %i.d, align 4
  br i1 %i.du, label %.lr.ph580.split.i, label %_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph580.split.i:                                ; preds = %.lr.ph580.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ec = load ptr, ptr %i.bi, align 8, !tbaa !18, !noalias !292
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !20, !noalias !292
  %i.ee = load i64, ptr %i.ea, align 8, !tbaa !49, !noalias !292
  %factor.op.mul584.i = mul i64 %i.ee, %i.ed
  %i.ef = and i32 %i.bt, -4                       ; 3 uses
  %i.eg = sext i32 %i.cl to i64
  %i.eh = sext i32 %i.dm to i64
  %i.ei = add nsw i64 %i.eh, %i.eg
  %i.ej = sext i32 %i.cc to i64
  %wide.trip.count669.i = zext nneg i32 %i.bx to i64
  %i.ek = sext i32 %i.bt to i64
  %invariant.op154 = add nsw i64 %i.ek, -3
  br label %.lr.ph574.i

.lr.ph489.i:                                      ; preds = %._crit_edge490.i, %.lr.ph495.split.i
  %indvars.iv643.i = phi i64 [ 0, %.lr.ph495.split.i ], [ %indvars.iv.next644.i, %._crit_edge490.i ] ; 2 uses
  %i.el = shl nuw nsw i64 %indvars.iv643.i, 1
  %i.em = add nsw i64 %i.el, %i.dk                ; 4 uses
  %i.en = mul i64 %i.em, %i.cx
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.en
  %i.ep = add nsw i64 %i.em, 1
  %i.eq = mul i64 %i.ep, %i.cx
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.em
  %i.et = trunc nsw i64 %i.em to i32              ; 2 uses
  %i.eu = sdiv i32 %i.et, 4
  %i.ev = srem i32 %i.et, 4
  %.lhs.trunc.i = trunc nsw i32 %i.ev to i8
  %i.ew = sdiv i8 %.lhs.trunc.i, 2
  %.sext.i = sext i8 %i.ew to i32
  %i.ex = add nsw i32 %i.eu, %.sext.i
  %i.ey = sext i32 %i.ex to i64
  %.reass499.i = mul i64 %factor.op.mul498.i, %i.ey
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.reass499.i ; 4 uses
  %i.fa = load i32, ptr %i.c, align 4             ; 2 uses
  %factor.op.mul491.i = mul i32 %i.fa, %i.cp
  %i.fb = load i32, ptr %i.a, align 4             ; 7 uses
  %i.fc = icmp sgt i32 %i.fb, 0                   ; 2 uses
  %i.fd = add i32 %i.fb, -1
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = shl nuw nsw i64 %i.fe, 2
  %i.fh = sext i32 %i.fa to i64                   ; 2 uses
  %i.fi = load ptr, ptr %4, align 8               ; 3 uses
  %i.fj = load i32, ptr %i.t, align 4
  %i.fk = sext i32 %i.fj to i64
  %i.fl = load i64, ptr %i.q, align 8
  %factor.op.mul.i = mul i64 %i.fl, %i.fk         ; 4 uses
  %xtraiter = and i32 %i.fb, 1
  %i.fm = icmp eq i32 %i.fb, 1
  %unroll_iter = and i32 %i.fb, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod184 = trunc i32 %i.fb to i1
  br label %bb.g

._crit_edge490.i:                                 ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i
  %indvars.iv.next644.i = add nuw nsw i64 %indvars.iv643.i, 1 ; 2 uses
  %exitcond647.not.i = icmp eq i64 %indvars.iv.next644.i, %wide.trip.count646.i
  br i1 %exitcond647.not.i, label %._crit_edge496.split.i, label %.lr.ph489.i, !llvm.loop !295

bb.g:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i, %.lr.ph489.i
  %indvars.iv639.i = phi i64 [ 0, %.lr.ph489.i ], [ %indvars.iv.next640.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i ] ; 4 uses
  %.0242486.i = phi ptr [ %i.er, %.lr.ph489.i ], [ %i.ox, %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i ] ; 2 uses
end_hunk_1
