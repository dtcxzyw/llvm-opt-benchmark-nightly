Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK4ncnn16InnerProduct_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  br i1 %i.bi, label %bb.v, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.v:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.bj = tail call noundef i32 @_ZNK4ncnn16InnerProduct_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit90.thread

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.u, %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !46 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !78
  %i.bo = icmp eq i32 %i.bn, 2
  %i.bp = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  br i1 %i.bo, label %bb.w, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread._crit_edge

_ZNK4ncnn3Mat8elembitsEv.exit.thread._crit_edge:  ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !48
  br label %bb.aa

bb.w:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !45
  %i.bs = sdiv i32 %i.br, %i.bl
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !48 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, %i.bs
  br i1 %i.bv, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !79
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !80
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bl, i32 noundef %i.bx, i64 noundef %i.bz, i32 noundef %i.cb, ptr noundef %i.cd)
  %i.ce = load ptr, ptr %2, align 8, !tbaa !18
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZNK4ncnn3Mat5emptyEv.exit90.thread, label %_ZNK4ncnn3Mat5emptyEv.exit90

_ZNK4ncnn3Mat5emptyEv.exit90:                     ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !76
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul i64 %i.ch, %i.ck
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_ZNK4ncnn3Mat5emptyEv.exit90.thread, label %bb.y

bb.y:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit90
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.cq, ptr %i.g, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.cs = load i32, ptr %i.bt, align 4, !tbaa !48
  store i32 %i.cs, ptr %i.h, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.ct = load i32, ptr %i.ca, align 8, !tbaa !74
  store i32 %i.ct, ptr %i.i, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !48 ; 2 uses
  store i32 %i.cv, ptr %i.j, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.cw = load i32, ptr %i.bw, align 8, !tbaa !79
  store i32 %i.cw, ptr %i.k, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !18
  store ptr %i.cx, ptr %i.l, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  store i32 1, ptr %i.m, align 4, !tbaa !75
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !47, !range !41, !noundef !42
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.z, label %_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit

bb.z:                                             ; preds = %bb.y
  %i.db = and i32 %i.cv, 3
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = select i1 %i.dc, i32 4, i32 1
  store i32 %i.dd, ptr %i.m, align 4, !tbaa !75
  br label %_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit

_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit: ; preds = %bb.y, %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !84
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bp, i32 %i.df)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.k, ptr nonnull %i.i, ptr nonnull %i.m, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.j, ptr nonnull align 8 dereferenceable(72) %i.cn, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.l, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZNK4ncnn3Mat5emptyEv.exit90.thread

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread._crit_edge, %bb.w
  %i.dg = phi i32 [ %.pre, %_ZNK4ncnn3Mat8elembitsEv.exit.thread._crit_edge ], [ %i.bu, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !11 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %1, align 8, !tbaa !73
  store <2 x ptr> %i.dk, ptr %5, align 16, !tbaa !73
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !49
  store i64 %i.dn, ptr %i.dl, align 16, !tbaa !49
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !74
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !74
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !17
  store ptr %i.dt, ptr %i.dr, align 16, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dv = load i32, ptr %i.bm, align 8, !tbaa !78 ; 2 uses
  store i32 %i.dv, ptr %i.du, align 8, !tbaa !78
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  store i32 %i.dg, ptr %i.dw, align 4, !tbaa !48
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = load <2 x i32>, ptr %i.dy, align 8, !tbaa !75
  store <2 x i32> %i.dz, ptr %i.dx, align 16, !tbaa !75
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !76
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !76
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !20
  store i64 %i.ef, ptr %i.ed, align 16, !tbaa !20
  %.not.i91 = icmp eq ptr %i.dj, null
  br i1 %.not.i91, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = atomicrmw add ptr %i.dj, i32 1 acq_rel, align 4 ; 0 uses
  %.pre92 = load i32, ptr %i.bm, align 8, !tbaa !78
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.aa, %bb.ab
  %i.eh = phi i32 [ %i.dv, %bb.aa ], [ %.pre92, %bb.ab ]
  %.not57 = icmp eq i32 %i.eh, 1
  br i1 %.not57, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !85
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !88
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !80
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !21 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = invoke noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(208) %i.em, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.ad unwind label %bb.ae     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.er = load ptr, ptr %5, align 16, !tbaa !18
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZNK4ncnn3Mat5emptyEv.exit89.thread, label %_ZNK4ncnn3Mat5emptyEv.exit89

_ZNK4ncnn3Mat5emptyEv.exit89.thread:              ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ae:                                            ; preds = %bb.ac
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ar

_ZNK4ncnn3Mat5emptyEv.exit89:                     ; preds = %bb.ad
  %i.eu = load i64, ptr %i.ed, align 16, !tbaa !20
  %i.ev = load i32, ptr %i.ea, align 8, !tbaa !76
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul i64 %i.eu, %i.ew
  %i.ey = icmp eq i64 %i.ex, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br i1 %i.ey, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.af

bb.af:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit89, %_ZN4ncnn3Mat6addrefEv.exit
  %i.ez = load i64, ptr %i.dl, align 16, !tbaa !49
  %i.fa = load i32, ptr %i.do, align 8, !tbaa !74
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !47, !range !41, !noundef !42
  %i.fd = trunc nuw i8 %i.fc to i1
  %.pre93 = load i32, ptr %i.bk, align 8, !tbaa !46 ; 3 uses
  %i.fe = and i32 %.pre93, 3
  %i.ff = icmp eq i32 %i.fe, 0
  %i.fg = and i1 %i.ff, %i.fd                     ; 3 uses
  %.051 = select i1 %i.fg, i32 4, i32 1
  %i.fh = sext i32 %i.fa to i64
  %i.fi = udiv i64 %i.ez, %i.fh
  %i.fj = select i1 %i.fg, i64 2, i64 0
  %i.fk = shl i64 %i.fi, %i.fj
  %i.fl = sdiv i32 %.pre93, 4
  %7 = select i1 %i.fg, i32 %i.fl, i32 %.pre93
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !80
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %7, i64 noundef %i.fk, i32 noundef %.051, ptr noundef %i.fn)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fo = load ptr, ptr %2, align 8, !tbaa !18
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ag
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !20
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !76
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul i64 %i.fr, %i.fu
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ai:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !81
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.gb, ptr %i.a, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.gd = load i32, ptr %i.dw, align 4, !tbaa !48
  %i.ge = load i32, ptr %i.do, align 8, !tbaa !74
  %i.gf = mul nsw i32 %i.ge, %i.gd
  store i32 %i.gf, ptr %i.b, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !48 ; 2 uses
  store i32 %i.gh, ptr %i.c, align 4, !tbaa !75
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.gk = load ptr, ptr %i.fz, align 8, !tbaa !18
  store ptr %i.gk, ptr %i.d, align 8, !tbaa !82
  switch i32 %i.gj, label %_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit [
    i32 4, label %bb.aj
    i32 1, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !84
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bp, i32 %i.gm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.fy, ptr nonnull align 8 dereferenceable(72) %5, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.gc, ptr nonnull align 8 dereferenceable(72) %2)
  br label %_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 0, ptr %i.e, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.gn = ashr i32 %i.gh, 2
  store i32 %i.gn, ptr %i.f, align 4, !tbaa !75
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !84
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bp, i32 %i.gp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.fy, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %5, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.gc, ptr nonnull align 8 dereferenceable(72) %2)
  %i.gq = load i32, ptr %i.f, align 4, !tbaa !75
  %i.gr = shl i32 %i.gq, 2
  %i.gs = load i32, ptr %i.e, align 4, !tbaa !75
  %i.gt = add nsw i32 %i.gs, %i.gr
  store i32 %i.gt, ptr %i.e, align 4, !tbaa !75
  %i.gu = load i32, ptr %i.go, align 4, !tbaa !84
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bp, i32 %i.gu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.fy, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %5, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.gc, ptr nonnull align 8 dereferenceable(72) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit

_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit: ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.ag, %_ZNK4ncnn3Mat5emptyEv.exit89.thread, %_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit89
  %.3 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit89 ], [ 0, %_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit89.thread ], [ -100, %bb.ag ]
  %i.gv = load ptr, ptr %i.dh, align 8, !tbaa !11 ; 2 uses
  %.not.i70 = icmp eq ptr %i.gv, null
  br i1 %.not.i70, label %_ZN4ncnn3MatD2Ev.exit63, label %bb.al

bb.al:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.gw = atomicrmw add ptr %i.gv, i32 -1 acq_rel, align 4
  %i.gx = icmp eq i32 %i.gw, 1
  br i1 %i.gx, label %bb.am, label %_ZN4ncnn3MatD2Ev.exit63

bb.am:                                            ; preds = %bb.al
  %i.gy = load ptr, ptr %i.dr, align 16, !tbaa !17 ; 3 uses
  %.not3.i71 = icmp eq ptr %i.gy, null
  %i.gz = load ptr, ptr %5, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i71, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !9
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef %i.gz)
          to label %_ZN4ncnn3MatD2Ev.exit63 unwind label %bb.aq, !inline_history !19

bb.ao:                                            ; preds = %bb.am
  %.not.i79 = icmp eq ptr %i.gz, null
  br i1 %.not.i79, label %_ZN4ncnn3MatD2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.gz) #10
  br label %_ZN4ncnn3MatD2Ev.exit63

bb.aq:                                            ; preds = %bb.an
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit63:                          ; preds = %bb.al, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit90.thread

bb.ar:                                            ; preds = %bb.ah, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.fx, %bb.ah ], [ %i.et, %bb.ae ]
  %i.hf = load ptr, ptr %i.dh, align 8, !tbaa !11 ; 2 uses
  %.not.i74 = icmp eq ptr %i.hf, null
  br i1 %.not.i74, label %_ZN4ncnn3MatD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hg = atomicrmw add ptr %i.hf, i32 -1 acq_rel, align 4
  %i.hh = icmp eq i32 %i.hg, 1
  br i1 %i.hh, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit

bb.at:                                            ; preds = %bb.as
  %i.hi = load ptr, ptr %i.dr, align 16, !tbaa !17 ; 3 uses
  %.not3.i75 = icmp eq ptr %i.hi, null
  %i.hj = load ptr, ptr %5, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i75, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !9
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  invoke void %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef %i.hj)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ax, !inline_history !19

bb.av:                                            ; preds = %bb.at
  %.not.i78 = icmp eq ptr %i.hj, null
  br i1 %.not.i78, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.hj) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ax:                                            ; preds = %bb.au
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.as, %bb.ar, %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.ay

_ZNK4ncnn3Mat5emptyEv.exit90.thread:              ; preds = %bb.x, %_ZN4ncnn3MatD2Ev.exit63, %_ZNK4ncnn3Mat5emptyEv.exit90, %_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit, %bb.v, %_ZNK4ncnn3Mat8elembitsEv.exit88.thread, %_ZN4ncnn3MatD2Ev.exit65
  %.5 = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit65 ], [ %i.bb, %_ZNK4ncnn3Mat8elembitsEv.exit88.thread ], [ %i.bj, %bb.v ], [ %.3, %_ZN4ncnn3MatD2Ev.exit63 ], [ 0, %_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit90 ], [ -100, %bb.x ]
  ret i32 %.5

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit64
  %.pn59 = phi { ptr, i32 } [ %i.aq, %_ZN4ncnn3MatD2Ev.exit64 ], [ %.pn, %_ZN4ncnn3MatD2Ev.exit ]
  resume { ptr, i32 } %.pn59
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn16InnerProduct_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(744) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn12InnerProductC2Ev(ptr noundef nonnull align 8 dereferenceable(592) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn16InnerProduct_x86E, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i64 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4ncnn12InnerProductD2Ev:bb.a
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit3:                           ; preds = %bb.h, %_ZN4ncnn3MatD2Ev.exit4, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ag, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit3
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit2

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ak, null
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i10, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.al)
          to label %_ZN4ncnn3MatD2Ev.exit2 unwind label %bb.s, !inline_history !19

bb.q:                                             ; preds = %bb.o
  %.not.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i24, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.al) #10
  br label %_ZN4ncnn3MatD2Ev.exit2

bb.s:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit2:                           ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit3, %bb.p, %bb.q, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %.not.i13 = icmp eq ptr %i.av, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %_ZN4ncnn3MatD2Ev.exit1

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 3 uses
  %.not3.i14 = icmp eq ptr %i.az, null
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i14, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.ba)
          to label %_ZN4ncnn3MatD2Ev.exit1 unwind label %bb.y, !inline_history !19

bb.w:                                             ; preds = %bb.u
  %.not.i22 = icmp eq ptr %i.ba, null
  br i1 %.not.i22, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.ba) #10
  br label %_ZN4ncnn3MatD2Ev.exit1

bb.y:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit2, %bb.v, %bb.w, %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.at, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bk, null
  br i1 %.not.i17, label %_ZN4ncnn3MatD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit1
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !17 ; 3 uses
  %.not3.i18 = icmp eq ptr %i.bo, null
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ae, !inline_history !19

bb.ac:                                            ; preds = %bb.aa
  %.not.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i21, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.bp) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ae:                                            ; preds = %bb.ab
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.z, %_ZN4ncnn3MatD2Ev.exit1, %bb.ab, %bb.ac, %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.bw, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bv, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #10
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn16InnerProduct_x8624create_pipeline_int8_x86ERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = sdiv i32 %i.b, %i.d                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.g = load i8, ptr %i.f, align 1, !tbaa !47, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = and i32 %i.d, 7
  %i.j = icmp eq i32 %i.i, 0
  %i.k = and i1 %i.j, %i.h                        ; 4 uses
  %.036 = select i1 %i.k, i32 8, i32 1            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.o = sdiv i32 %i.n, 8
  %3 = select i1 %i.k, i32 %i.o, i32 %i.n
  %i.p = zext nneg i32 %.036 to i64               ; 4 uses
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i32 noundef %i.e, i32 noundef %3, i64 noundef %i.p, i32 noundef %.036, ptr noundef null)
          to label %.preheader50 unwind label %bb.i

.preheader50:                                     ; preds = %bb.a
  %i.q = add nsw i32 %.036, -1
  %i.r = load i32, ptr %i.c, align 8, !tbaa !46
  %.not = icmp sgt i32 %.036, %i.r
  br i1 %.not, label %._crit_edge56, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader50
  %i.s = select i1 %i.k, i32 3, i32 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.v = icmp sgt i32 %i.e, 0
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br i1 %i.v, label %.preheader.lr.ph.us.preheader, label %._crit_edge56

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph
  %i.y = zext nneg i32 %i.q to i64
  %wide.trip.count64 = zext nneg i32 %i.e to i64
  %xtraiter = and i64 %i.p, 1
  %unroll_iter = and i64 %i.p, 8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = trunc i32 %.036 to i1
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv66 = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next67, %._crit_edge.us ] ; 5 uses
  %i.z = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.aa = lshr i32 %i.z, %i.s
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !48
  %i.ad = sext i32 %i.ac to i64
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = mul nsw i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !49
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  br label %.preheader.us

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.151.us = phi ptr [ %i.be, %.preheader.us.new ], [ %.03453.us, %.preheader.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.aj = add nuw nsw i64 %indvars.iv, %indvars.iv66
  %i.ak = load ptr, ptr %2, align 8, !tbaa !18
  %i.al = load i32, ptr %i.w, align 4, !tbaa !48
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !49
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv61
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %.151.us, i64 1
  store i8 %i.as, ptr %.151.us, align 1, !tbaa !50
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.au = add nuw nsw i64 %indvars.iv.next, %indvars.iv66
  %i.av = load ptr, ptr %2, align 8, !tbaa !18
  %i.aw = load i32, ptr %i.w, align 4, !tbaa !48
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.au, %i.ax
  %i.az = load i64, ptr %i.x, align 8, !tbaa !49
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv61
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %.151.us, i64 2 ; 3 uses
  store i8 %i.bd, ptr %i.at, align 1, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.us.new, !llvm.loop !91

.unr-lcssa:                                       ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.151.us.epil.init = phi ptr [ %.03453.us, %.preheader.us ], [ %i.be, %.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod88)
  %i.bf = add nuw nsw i64 %indvars.iv.epil.init, %indvars.iv66
  %i.bg = load ptr, ptr %2, align 8, !tbaa !18
  %i.bh = load i32, ptr %i.w, align 4, !tbaa !48
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %i.bf, %i.bi
  %i.bk = load i64, ptr %i.x, align 8, !tbaa !49
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv61
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 1
  store i8 %i.bo, ptr %.151.us.epil.init, align 1, !tbaa !50
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.be, %.unr-lcssa ], [ %i.bp, %.epil.preheader ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !92

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %bb.b
  %indvars.iv61 = phi i64 [ 0, %.preheader.lr.ph.us ], [ %indvars.iv.next62, %bb.b ] ; 4 uses
  %.03453.us = phi ptr [ %i.ai, %.preheader.lr.ph.us ], [ %.lcssa, %bb.b ] ; 2 uses
  br i1 %i.k, label %.preheader.us.new, label %.epil.preheader

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, %i.p ; 2 uses
  %i.bq = add nuw nsw i64 %indvars.iv.next67, %i.y
  %i.br = load i32, ptr %i.c, align 8, !tbaa !46
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %i.bq, %i.bs
  br i1 %i.bt, label %.preheader.lr.ph.us, label %._crit_edge56, !llvm.loop !93

._crit_edge56:                                    ; preds = %._crit_edge.us, %.lr.ph, %.preheader50
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.c

bb.c:                                             ; preds = %._crit_edge56
  %i.bw = atomicrmw add ptr %i.bv, i32 -1 acq_rel, align 4
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit37

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.ca)
          to label %_ZN4ncnn3MatD2Ev.exit37 unwind label %bb.h, !inline_history !19

bb.f:                                             ; preds = %bb.d
  %.not.i48 = icmp eq ptr %i.ca, null
  br i1 %.not.i48, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.ca) #10
  br label %_ZN4ncnn3MatD2Ev.exit37

bb.h:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit37:                          ; preds = %bb.c, %._crit_edge56, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.ch = load i32, ptr %i.c, align 8, !tbaa !46
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i32 noundef %i.ch, i64 noundef 4, ptr noundef null)
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !46  ; 4 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit37
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !18 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !18 ; 3 uses
  %wide.trip.count72 = zext nneg i32 %i.ci to i64 ; 2 uses
  %xtraiter90 = and i64 %wide.trip.count72, 1
  %i.co = icmp eq i32 %i.ci, 1
  br i1 %i.co, label %.epil.preheader89, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter93 = and i64 %wide.trip.count72, 2147483646
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !11 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cr, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = atomicrmw add ptr %i.cr, i32 -1 acq_rel, align 4
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.cv, null
  %i.cw = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
end_hunk_1
begin_hunk_2_@_ZN4ncnn16InnerProduct_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.jp = icmp eq i32 %i.jo, 1
  br i1 %i.jp, label %bb.ah, label %_ZN4ncnn3Mat7releaseEv.exit

bb.ah:                                            ; preds = %bb.ag
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.jr, null
  %i.js = load ptr, ptr %i.f, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !9
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef %i.js), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i3 = icmp eq ptr %i.js, null
  br i1 %.not.i3, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.js) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.ak, %bb.aj, %bb.af, %bb.ag, %bb.ai
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.jx, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jw, i8 0, i64 20, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  ret i32 0
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %5 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %9 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46
  %i.j = sdiv i32 %i.g, %i.i
  store i32 %i.j, ptr %i.a, align 4, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !74   ; 3 uses
  %.not.i106 = icmp eq i32 %i.l, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i106, label %_ZNK4ncnn3Mat8elembitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.tr.i = trunc i64 %.pre to i32
  %i.m = shl i32 %.tr.i, 3
  %i.n = sdiv i32 %i.m, %i.l
  %i.o = icmp eq i32 %i.n, 8
  br label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = load <2 x ptr>, ptr %1, align 8, !tbaa !73
  store <2 x ptr> %i.s, ptr %4, align 16, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %.pre, ptr %i.t, align 16, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 %i.l, ptr %i.u, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  store ptr %i.x, ptr %i.v, align 16, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = load <4 x i32>, ptr %i.z, align 8, !tbaa !75
  store <4 x i32> %i.ac, ptr %i.y, align 8, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !76
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20
  store i64 %i.ai, ptr %i.ag, align 16, !tbaa !20
  %.not.i111 = icmp eq ptr %i.r, null
  br i1 %.not.i111, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.aj = atomicrmw add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.c
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !85
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !88
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 520
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %4, align 16, !tbaa !18
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK4ncnn3Mat5emptyEv.exit110.thread, label %_ZNK4ncnn3Mat5emptyEv.exit110

_ZNK4ncnn3Mat5emptyEv.exit110.thread:             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.bj

bb.f:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.bq

_ZNK4ncnn3Mat5emptyEv.exit110:                    ; preds = %bb.e
  %i.ar = load i64, ptr %i.ag, align 16, !tbaa !20
  %i.as = load i32, ptr %i.ad, align 8, !tbaa !76
  %i.at = sext i32 %i.as to i64
  %i.au = mul i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %i.av, label %bb.bj, label %bb.g

bb.g:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit110, %_ZN4ncnn3Mat6addrefEv.exit
  %i.aw = load i32, ptr %i.y, align 8, !tbaa !78  ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 2
  %.pre116 = load i32, ptr %i.aa, align 4, !tbaa !48 ; 2 uses
  %i.ay = load i32, ptr %i.a, align 4
  %i.az = icmp eq i32 %.pre116, %i.ay
  %or.cond147 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond147, label %bb.h, label %bb.ah

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.be, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !85
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !80
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %6, align 8, !tbaa !18
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZNK4ncnn3Mat5emptyEv.exit109.thread, label %_ZNK4ncnn3Mat5emptyEv.exit109

_ZNK4ncnn3Mat5emptyEv.exit109:                    ; preds = %bb.i
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !20
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !76
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %i.bk, %i.bm
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZNK4ncnn3Mat5emptyEv.exit109.thread, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.k:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit109
  %i.bq = load i32, ptr %i.bc, align 8, !tbaa !79 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 39 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !47, !range !41, !noundef !42
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = and i32 %i.bq, 3
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = and i1 %i.bv, %i.bt                     ; 6 uses
  %.0 = select i1 %i.bw, i32 4, i32 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bx = sdiv i32 %i.bq, 4
  %10 = select i1 %i.bw, i32 %i.bx, i32 %i.bq     ; 2 uses
  store i32 %10, ptr %i.b, align 4, !tbaa !75
  %i.by = load i32, ptr %i.h, align 8, !tbaa !46
  %i.bz = shl nuw nsw i32 %.0, 2
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !80
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.by, i32 noundef %10, i64 noundef %i.ca, i32 noundef %.0, ptr noundef %i.cc)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = load ptr, ptr %2, align 8, !tbaa !18
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZNK4ncnn3Mat5emptyEv.exit108.thread, label %_ZNK4ncnn3Mat5emptyEv.exit108

_ZNK4ncnn3Mat5emptyEv.exit108:                    ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !76
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cg, %i.cj
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZNK4ncnn3Mat5emptyEv.exit108.thread, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.aa

bb.n:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !75
  %i.cn = load i8, ptr %i.br, align 1, !tbaa !47, !range !41, !noundef !42
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.o, label %.thread142

bb.o:                                             ; preds = %bb.n
  %i.cp = load i32, ptr %i.h, align 8, !tbaa !46
  %i.cq = and i32 %i.cp, 7
  %i.cr = icmp eq i32 %i.cq, 0                    ; 2 uses
  %i.cs = select i1 %i.cr, i32 8, i32 1           ; 2 uses
  store i32 %i.cs, ptr %i.c, align 4, !tbaa !75
  %or.cond = and i1 %i.bw, %i.cr
  br i1 %or.cond, label %bb.p, label %.thread142

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !84
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.cu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %6, ptr nonnull %i.a)
  %.pre119 = load i32, ptr %i.c, align 4, !tbaa !75
  br label %.thread142

.thread142:                                       ; preds = %bb.n, %bb.p, %bb.o
  %i.cv = phi i32 [ %.pre119, %bb.p ], [ %i.cs, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 1
  %or.cond4 = and i1 %i.bw, %i.cw
  br i1 %or.cond4, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %.thread142
  %i.cx = icmp ne i32 %i.cv, 8
  %or.cond6.not = or i1 %i.bw, %i.cx
  br i1 %or.cond6.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !84
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.cz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %6, ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.da = load i32, ptr %i.c, align 4, !tbaa !75
  %i.db = icmp ne i32 %i.da, 1
  %or.cond8.not = or i1 %i.db, %i.bw
  br i1 %or.cond8.not, label %bb.t, label %.sink.split

.sink.split:                                      ; preds = %bb.s, %.thread142
  %_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5.sink = phi ptr [ @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5, %.thread142 ], [ @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.7, %bb.s ]
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !84
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.dd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull %_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5.sink, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %0, ptr nonnull %6, ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit108.thread

_ZNK4ncnn3Mat5emptyEv.exit108.thread:             ; preds = %bb.l, %_ZNK4ncnn3Mat5emptyEv.exit108, %bb.t
  %.2 = phi i32 [ 0, %bb.t ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit108 ], [ -100, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit109.thread

_ZNK4ncnn3Mat5emptyEv.exit109.thread:             ; preds = %bb.i, %_ZNK4ncnn3Mat5emptyEv.exit109, %_ZNK4ncnn3Mat5emptyEv.exit108.thread
  %.3 = phi i32 [ %.2, %_ZNK4ncnn3Mat5emptyEv.exit108.thread ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit109 ], [ -100, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.de = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.de, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit74, label %bb.u

bb.u:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit109.thread
  %i.df = atomicrmw add ptr %i.de, i32 -1 acq_rel, align 4
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit74

bb.v:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.dh, null
  %i.di = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %i.di)
          to label %_ZN4ncnn3MatD2Ev.exit74 unwind label %bb.z, !inline_history !19

bb.x:                                             ; preds = %bb.v
  %.not.i104 = icmp eq ptr %i.di, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit74, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.di) #10
  br label %_ZN4ncnn3MatD2Ev.exit74

bb.z:                                             ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit74:                          ; preds = %bb.u, %_ZNK4ncnn3Mat5emptyEv.exit109.thread, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.bj

bb.aa:                                            ; preds = %bb.m, %bb.j
  %.pn67 = phi { ptr, i32 } [ %i.cm, %bb.m ], [ %i.bp, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.do = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %.not.i75 = icmp eq ptr %i.do, null
  br i1 %.not.i75, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dp = atomicrmw add ptr %i.do, i32 -1 acq_rel, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.ac, label %_ZN4ncnn3MatD2Ev.exit73

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  %.not3.i76 = icmp eq ptr %i.dr, null
  %i.ds = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i76, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !9
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.ds)
          to label %_ZN4ncnn3MatD2Ev.exit73 unwind label %bb.ag, !inline_history !19

bb.ae:                                            ; preds = %bb.ac
  %.not.i102 = icmp eq ptr %i.ds, null
  br i1 %.not.i102, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.ds) #10
  br label %_ZN4ncnn3MatD2Ev.exit73

bb.ag:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit73:                          ; preds = %bb.ab, %bb.aa, %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.bq

bb.ah:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !11  ; 2 uses
  %i.ea = load <2 x ptr>, ptr %4, align 16, !tbaa !73
  store <2 x ptr> %i.ea, ptr %8, align 16, !tbaa !73
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ec = load i64, ptr %i.t, align 16, !tbaa !49
  store i64 %i.ec, ptr %i.eb, align 16, !tbaa !49
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ee = load i32, ptr %i.u, align 8, !tbaa !74
  store i32 %i.ee, ptr %i.ed, align 8, !tbaa !74
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.eg = load ptr, ptr %i.v, align 16, !tbaa !17
  store ptr %i.eg, ptr %i.ef, align 16, !tbaa !17
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.aw, ptr %i.eh, align 8, !tbaa !78
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %.pre116, ptr %i.ei, align 4, !tbaa !48
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ek = load <2 x i32>, ptr %i.ab, align 16, !tbaa !75
  store <2 x i32> %i.ek, ptr %i.ej, align 16, !tbaa !75
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.em = load i32, ptr %i.ad, align 8, !tbaa !76
end_hunk_2
begin_hunk_3_@_ZNK4ncnn16InnerProduct_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %5 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !78
  %i.r = icmp eq i32 %i.q, 2
  %i.s = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  br i1 %i.r, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !48
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = load i32, ptr %i.t, align 8, !tbaa !45
  %i.v = sdiv i32 %i.u, %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !48   ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.v
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !80
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.o, i32 noundef %i.aa, i64 noundef %i.ac, i32 noundef %i.ae, ptr noundef %i.ag)
  %i.ah = load ptr, ptr %2, align 8, !tbaa !18
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK4ncnn3Mat5emptyEv.exit50.thread, label %_ZNK4ncnn3Mat5emptyEv.exit50

_ZNK4ncnn3Mat5emptyEv.exit50:                     ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.am = load i32, ptr %i.al, align 8, !tbaa !76
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.ak, %i.an
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZNK4ncnn3Mat5emptyEv.exit50.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit50
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.at, ptr %i.g, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.av = load i32, ptr %i.w, align 4, !tbaa !48
  store i32 %i.av, ptr %i.h, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.aw = load i32, ptr %i.ad, align 8, !tbaa !74
  store i32 %i.aw, ptr %i.i, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !48 ; 2 uses
  store i32 %i.ay, ptr %i.j, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.az = load i32, ptr %i.z, align 8, !tbaa !79
  store i32 %i.az, ptr %i.k, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !18
  store ptr %i.ba, ptr %i.l, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  store i32 1, ptr %i.m, align 4, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !47, !range !41, !noundef !42
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.e, label %_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit

bb.e:                                             ; preds = %bb.d
  %i.be = and i32 %i.ay, 3
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = select i1 %i.bf, i32 4, i32 1
  store i32 %i.bg, ptr %i.m, align 4, !tbaa !75
  br label %_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit

_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit: ; preds = %bb.d, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !84
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.s, i32 %i.bi)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.k, ptr nonnull %i.i, ptr nonnull %i.m, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.j, ptr nonnull align 8 dereferenceable(72) %i.aq, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.l, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZNK4ncnn3Mat5emptyEv.exit50.thread

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %i.bj = phi i32 [ %.pre, %._crit_edge ], [ %i.x, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !11 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %1, align 8, !tbaa !73
  store <2 x ptr> %i.bn, ptr %4, align 16, !tbaa !73
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !49
  store i64 %i.bq, ptr %i.bo, align 16, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !74
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !17
  store ptr %i.bw, ptr %i.bu, align 16, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.by = load i32, ptr %i.p, align 8, !tbaa !78  ; 2 uses
  store i32 %i.by, ptr %i.bx, align 8, !tbaa !78
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  store i32 %i.bj, ptr %i.bz, align 4, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load <2 x i32>, ptr %i.cb, align 8, !tbaa !75
  store <2 x i32> %i.cc, ptr %i.ca, align 16, !tbaa !75
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !76
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !76
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !20
  store i64 %i.ci, ptr %i.cg, align 16, !tbaa !20
  %.not.i51 = icmp eq ptr %i.bm, null
  br i1 %.not.i51, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = atomicrmw add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  %.pre52 = load i32, ptr %i.p, align 8, !tbaa !78
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.f, %bb.g
  %i.ck = phi i32 [ %i.by, %bb.f ], [ %.pre52, %bb.g ]
  %.not = icmp eq i32 %i.ck, 1
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !85
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !88
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !21 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(208) %i.cp, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.cu = load ptr, ptr %4, align 16, !tbaa !18
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZNK4ncnn3Mat5emptyEv.exit49.thread, label %_ZNK4ncnn3Mat5emptyEv.exit49

_ZNK4ncnn3Mat5emptyEv.exit49.thread:              ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.w

_ZNK4ncnn3Mat5emptyEv.exit49:                     ; preds = %bb.i
  %i.cx = load i64, ptr %i.cg, align 16, !tbaa !20
  %i.cy = load i32, ptr %i.cd, align 8, !tbaa !76
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul i64 %i.cx, %i.cz
  %i.db = icmp eq i64 %i.da, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %i.db, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit49, %_ZN4ncnn3Mat6addrefEv.exit
  %i.dc = load i64, ptr %i.bo, align 16, !tbaa !49
  %i.dd = load i32, ptr %i.br, align 8, !tbaa !74
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.df = load i8, ptr %i.de, align 1, !tbaa !47, !range !41, !noundef !42
  %i.dg = trunc nuw i8 %i.df to i1
  %.pre53 = load i32, ptr %i.n, align 8, !tbaa !46 ; 3 uses
  %i.dh = and i32 %.pre53, 3
  %i.di = icmp eq i32 %i.dh, 0
  %i.dj = and i1 %i.di, %i.dg                     ; 3 uses
  %.036 = select i1 %i.dj, i32 4, i32 1
  %i.dk = sext i32 %i.dd to i64
  %i.dl = udiv i64 %i.dc, %i.dk
  %i.dm = select i1 %i.dj, i64 2, i64 0
  %i.dn = shl i64 %i.dl, %i.dm
  %i.do = sdiv i32 %.pre53, 4
  %6 = select i1 %i.dj, i32 %i.do, i32 %.pre53
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !80
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %6, i64 noundef %i.dn, i32 noundef %.036, ptr noundef %i.dq)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dr = load ptr, ptr %2, align 8, !tbaa !18
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !76
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul i64 %i.du, %i.dx
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.n:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !81
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ee, ptr %i.a, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.eg = load i32, ptr %i.bz, align 4, !tbaa !48
  %i.eh = load i32, ptr %i.br, align 8, !tbaa !74
  %i.ei = mul nsw i32 %i.eh, %i.eg
  store i32 %i.ei, ptr %i.b, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !48 ; 2 uses
  store i32 %i.ek, ptr %i.c, align 4, !tbaa !75
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.en = load ptr, ptr %i.ec, align 8, !tbaa !18
  store ptr %i.en, ptr %i.d, align 8, !tbaa !82
  switch i32 %i.em, label %_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit [
    i32 4, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !84
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.s, i32 %i.ep)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.eb, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.ef, ptr nonnull align 8 dereferenceable(72) %2)
  br label %_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 0, ptr %i.e, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.eq = ashr i32 %i.ek, 2
  store i32 %i.eq, ptr %i.f, align 4, !tbaa !75
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !84
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.s, i32 %i.es)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.eb, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.ef, ptr nonnull align 8 dereferenceable(72) %2)
  %i.et = load i32, ptr %i.f, align 4, !tbaa !75
  %i.eu = shl i32 %i.et, 2
  %i.ev = load i32, ptr %i.e, align 4, !tbaa !75
  %i.ew = add nsw i32 %i.ev, %i.eu
  store i32 %i.ew, ptr %i.e, align 4, !tbaa !75
  %i.ex = load i32, ptr %i.er, align 4, !tbaa !84
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.s, i32 %i.ex)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.eb, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.ef, ptr nonnull align 8 dereferenceable(72) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit

_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit: ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.l, %_ZNK4ncnn3Mat5emptyEv.exit49.thread, %_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit49
  %.3 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit49 ], [ 0, %_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit49.thread ], [ -100, %bb.l ]
  %i.ey = load ptr, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.ey, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit41, label %bb.q

bb.q:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.ez = atomicrmw add ptr %i.ey, i32 -1 acq_rel, align 4
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %bb.r, label %_ZN4ncnn3MatD2Ev.exit41

bb.r:                                             ; preds = %bb.q
  %i.fb = load ptr, ptr %i.bu, align 16, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.fb, null
  %i.fc = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  invoke void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef %i.fc)
          to label %_ZN4ncnn3MatD2Ev.exit41 unwind label %bb.v, !inline_history !19

bb.t:                                             ; preds = %bb.r
  %.not.i47 = icmp eq ptr %i.fc, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit41, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.fc) #10
  br label %_ZN4ncnn3MatD2Ev.exit41

bb.v:                                             ; preds = %bb.s
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  call void @__clang_call_terminate(ptr %i.fh) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit41:                          ; preds = %bb.q, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit50.thread

bb.w:                                             ; preds = %bb.m, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.m ], [ %i.cw, %bb.j ]
  %i.fi = load ptr, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %.not.i42 = icmp eq ptr %i.fi, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = atomicrmw add ptr %i.fi, i32 -1 acq_rel, align 4
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.fl = load ptr, ptr %i.bu, align 16, !tbaa !17 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.fl, null
  %i.fm = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i43, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef %i.fm)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ac, !inline_history !19

bb.aa:                                            ; preds = %bb.y
  %.not.i46 = icmp eq ptr %i.fm, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fm) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.x, %bb.w, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %.pn

_ZNK4ncnn3Mat5emptyEv.exit50.thread:              ; preds = %bb.c, %_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit50, %_ZN4ncnn3MatD2Ev.exit41
  %.4 = phi i32 [ %.3, %_ZN4ncnn3MatD2Ev.exit41 ], [ 0, %_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit50 ], [ -100, %bb.c ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !75     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !75
end_hunk_3
