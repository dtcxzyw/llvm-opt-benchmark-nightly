Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4ncnn17Deconvolution_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.ey:                                            ; preds = %bb.ex
  call void @free(ptr noundef nonnull %i.ox) #10
  br label %_ZN4ncnn3MatD2Ev.exit107

bb.ez:                                            ; preds = %bb.ew
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit107:                         ; preds = %bb.eu, %bb.et, %bb.ew, %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.fg

_ZNK4ncnn3Mat5emptyEv.exit212.thread:             ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit212, %_ZN4ncnn3MatD2Ev.exit108
  %.3 = phi i32 [ %.2, %_ZN4ncnn3MatD2Ev.exit108 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit212 ], [ -100, %bb.b ]
  %i.pd = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %.not.i153 = icmp eq ptr %i.pd, null
  br i1 %.not.i153, label %_ZN4ncnn3MatD2Ev.exit106, label %bb.fa

bb.fa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit212.thread
  %i.pe = atomicrmw add ptr %i.pd, i32 -1 acq_rel, align 4
  %i.pf = icmp eq i32 %i.pe, 1
  br i1 %i.pf, label %bb.fb, label %_ZN4ncnn3MatD2Ev.exit106

bb.fb:                                            ; preds = %bb.fa
  %i.pg = load ptr, ptr %i.r, align 16, !tbaa !17 ; 3 uses
  %.not3.i154 = icmp eq ptr %i.pg, null
  %i.ph = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i154, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pi = load ptr, ptr %i.pg, align 8, !tbaa !9
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.pk = load ptr, ptr %i.pj, align 8
  invoke void %i.pk(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, ptr noundef %i.ph)
          to label %_ZN4ncnn3MatD2Ev.exit106 unwind label %bb.ff, !inline_history !19

bb.fd:                                            ; preds = %bb.fb
  %.not.i162 = icmp eq ptr %i.ph, null
  br i1 %.not.i162, label %_ZN4ncnn3MatD2Ev.exit106, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @free(ptr noundef nonnull %i.ph) #10
  br label %_ZN4ncnn3MatD2Ev.exit106

bb.ff:                                            ; preds = %bb.fc
  %i.pl = landingpad { ptr, i32 }
          catch ptr null
  %i.pm = extractvalue { ptr, i32 } %i.pl, 0
  call void @__clang_call_terminate(ptr %i.pm) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit106:                         ; preds = %bb.fa, %_ZNK4ncnn3Mat5emptyEv.exit212.thread, %bb.fc, %bb.fd, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.3

bb.fg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit107, %_ZN4ncnn3MatD2Ev.exit115, %bb.c
  %.pn98.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit107 ], [ %i.bq, %_ZN4ncnn3MatD2Ev.exit115 ], [ %i.ad, %bb.c ]
  %i.pn = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %.not.i157 = icmp eq ptr %i.pn, null
  br i1 %.not.i157, label %_ZN4ncnn3MatD2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.po = atomicrmw add ptr %i.pn, i32 -1 acq_rel, align 4
  %i.pp = icmp eq i32 %i.po, 1
  br i1 %i.pp, label %bb.fi, label %_ZN4ncnn3MatD2Ev.exit

bb.fi:                                            ; preds = %bb.fh
  %i.pq = load ptr, ptr %i.r, align 16, !tbaa !17 ; 3 uses
  %.not3.i158 = icmp eq ptr %i.pq, null
  %i.pr = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i158, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ps = load ptr, ptr %i.pq, align 8, !tbaa !9
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  %i.pu = load ptr, ptr %i.pt, align 8
  invoke void %i.pu(ptr noundef nonnull align 8 dereferenceable(8) %i.pq, ptr noundef %i.pr)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.fm, !inline_history !19

bb.fk:                                            ; preds = %bb.fi
  %.not.i161 = icmp eq ptr %i.pr, null
  br i1 %.not.i161, label %_ZN4ncnn3MatD2Ev.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @free(ptr noundef nonnull %i.pr) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.fm:                                            ; preds = %bb.fj
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  %i.pw = extractvalue { ptr, i32 } %i.pv, 0
  call void @__clang_call_terminate(ptr %i.pw) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.fh, %bb.fg, %bb.fj, %bb.fk, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %.pn98.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 10 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 25 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 18 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !45, !range !47, !noundef !48
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !67   ; 4 uses
  br i1 %i.w, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not.i115 = icmp eq i32 %i.y, 0
  br i1 %.not.i115, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57
  %.tr.i = trunc i64 %i.aa to i32
  %i.ab = shl i32 %.tr.i, 3
  %i.ac = sdiv i32 %i.ab, %i.y
  %i.ad = icmp eq i32 %i.ac, 16
  br i1 %i.ad, label %bb.c, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.ae = tail call noundef i32 @_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.dz

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %bb.b, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.af = phi i32 [ %i.y, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.b ], [ %i.y, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56 ; 2 uses
  store i32 %i.ah, ptr %i.o, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !216 ; 2 uses
  store i32 %i.aj, ptr %i.p, align 4, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = mul nsw i32 %i.ar, %i.ao
  %i.at = add nsw i32 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !231
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !50
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = add nsw i32 %i.az, 1
  %i.bb = add nsw i32 %i.ah, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !232
  %i.be = mul nsw i32 %i.bd, %i.bb
  %i.bf = add nsw i32 %i.at, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !238
  %i.bi = add nsw i32 %i.bf, %i.bh                ; 2 uses
  %i.bj = add nsw i32 %i.aj, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !233
  %i.bm = mul nsw i32 %i.bl, %i.bj
  %i.bn = add nsw i32 %i.ba, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !239
  %i.bq = add nsw i32 %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !53, !range !47, !noundef !48
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !52 ; 2 uses
  %i.bw = and i32 %i.bv, 3
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = select i1 %i.bt, i1 %i.bx, i1 false     ; 4 uses
  %.057 = select i1 %i.by, i32 4, i32 1           ; 2 uses
  %i.bz = sext i32 %i.af to i64
  %i.ca = udiv i64 %i.al, %i.bz
  %i.cb = select i1 %i.by, i64 2, i64 0
  %i.cc = shl i64 %i.ca, %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #10
  %i.cd = sdiv i32 %i.bv, %.057                   ; 6 uses
  store i32 %i.cd, ptr %i.q, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 5 uses
  store i64 0, ptr %i.cm, align 16, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ch, i8 0, i64 28, i1 false)
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !234
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.thread.invoke, label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !235
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.thread.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !236
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.thread.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !237
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.thread.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !240
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !241
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.thread.invoke, label %bb.j

bb.i:                                             ; preds = %.thread.invoke, %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !11 ; 2 uses
  %.not.i113 = icmp eq ptr %i.dh, null
  br i1 %.not.i113, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.di = atomicrmw add ptr %i.dh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre184 = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre184, null
  br i1 %.not.i.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = atomicrmw add ptr %.pre184, i32 -1 acq_rel, align 4
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.dl = load ptr, ptr %i.ch, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.dl, null
  %i.dm = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.dm)
          to label %.thread unwind label %bb.i, !inline_history !65

bb.o:                                             ; preds = %bb.m
  %.not.i18.i = icmp eq ptr %i.dm, null
  br i1 %.not.i18.i, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.dm) #10
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.l, %bb.k, %bb.n, %bb.p, %bb.o
  %i.dq = load <2 x ptr>, ptr %2, align 8, !tbaa !66
  store <2 x ptr> %i.dq, ptr %4, align 16, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !57
  store i64 %i.ds, ptr %i.cf, align 16, !tbaa !57
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !67
  store i32 %i.du, ptr %i.cg, align 8, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !17
  store ptr %i.dw, ptr %i.ch, align 16, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dy = load <4 x i32>, ptr %i.dx, align 8, !tbaa !68
  store <4 x i32> %i.dy, ptr %i.ci, align 8, !tbaa !68
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !69
  store i32 %i.ea, ptr %i.cl, align 8, !tbaa !69
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !20
  store i64 %i.ec, ptr %i.cm, align 16, !tbaa !20
  %i.ed = load i32, ptr %i.q, align 4, !tbaa !68
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.d, %bb.e, %bb.f, %bb.h, %.thread
  %.sink261 = phi i64 [ 8, %.thread ], [ 16, %bb.h ], [ 16, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ]
  %i.ee = phi i32 [ %i.ed, %.thread ], [ %i.cd, %bb.h ], [ %i.cd, %bb.f ], [ %i.cd, %bb.e ], [ %i.cd, %bb.d ], [ %i.cd, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ]
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 %.sink261
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !242
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.bi, i32 noundef %i.bq, i32 noundef %i.ee, i64 noundef %i.cc, i32 noundef %.057, ptr noundef %i.eg)
          to label %bb.q unwind label %bb.i

bb.q:                                             ; preds = %.thread.invoke
  %i.eh = load ptr, ptr %4, align 16, !tbaa !18
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZNK4ncnn3Mat5emptyEv.exit116.thread, label %_ZNK4ncnn3Mat5emptyEv.exit116

_ZNK4ncnn3Mat5emptyEv.exit116:                    ; preds = %bb.q
  %i.ej = load i64, ptr %i.cm, align 16, !tbaa !20 ; 2 uses
  %i.ek = load i32, ptr %i.cl, align 8, !tbaa !69 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = mul i64 %i.ej, %i.el
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %_ZNK4ncnn3Mat5emptyEv.exit116.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #10
  %i.eo = load i32, ptr %i.ap, align 4, !tbaa !49 ; 3 uses
  %i.ep = load i32, ptr %i.aw, align 8, !tbaa !50 ; 3 uses
  %i.eq = mul nsw i32 %i.ep, %i.eo                ; 2 uses
  store i32 %i.eq, ptr %i.r, align 4, !tbaa !68
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.es = load i8, ptr %i.er, align 1, !tbaa !54, !range !47, !noundef !48
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.s, label %bb.ax

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !11 ; 2 uses
  %i.ex = load <2 x ptr>, ptr %1, align 8, !tbaa !66
  store <2 x ptr> %i.ex, ptr %5, align 16, !tbaa !66
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ez = load i64, ptr %i.ak, align 8, !tbaa !57
  store i64 %i.ez, ptr %i.ey, align 16, !tbaa !57
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fb = load i32, ptr %i.am, align 8, !tbaa !67
  store i32 %i.fb, ptr %i.fa, align 8, !tbaa !67
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !17
  store ptr %i.fe, ptr %i.fc, align 16, !tbaa !17
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fj = load <4 x i32>, ptr %i.fg, align 8, !tbaa !68 ; 3 uses
  store <4 x i32> %i.fj, ptr %i.ff, align 8, !tbaa !68
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !69
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !69
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !20
  store i64 %i.fp, ptr %i.fn, align 16, !tbaa !20
  %.not.i117 = icmp eq ptr %i.ew, null
  %i.fq = extractelement <4 x i32> %i.fj, i64 1
  %i.fr = extractelement <4 x i32> %i.fj, i64 2
  br i1 %.not.i117, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = atomicrmw add ptr %i.ew, i32 1 acq_rel, align 4 ; 0 uses
  %.pre185 = load i32, ptr %i.ag, align 4, !tbaa !56
  %.pre186 = load i32, ptr %i.ai, align 8, !tbaa !216
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.t, %bb.s
  %i.ft = phi i32 [ %.pre186, %bb.t ], [ %i.fr, %bb.s ]
  %i.fu = phi i32 [ %.pre185, %bb.t ], [ %i.fq, %bb.s ]
  %i.fv = mul nsw i32 %i.ft, %i.fu
  store i32 %i.fv, ptr %i.fh, align 4, !tbaa !56
  store i32 1, ptr %i.fi, align 16, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.fy, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fx, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !243
  %i.fz = load ptr, ptr %i.ch, align 16, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !246
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !55 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !9
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = invoke noundef i32 %i.gf(ptr noundef nonnull align 8 dereferenceable(208) %i.gc, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %.not = icmp eq i32 %i.gg, 0
  br i1 %.not, label %bb.ai, label %.critedge

bb.v:                                             ; preds = %bb.aj, %_ZN4ncnn3Mat6addrefEv.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.gi = load ptr, ptr %i.fw, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.gi, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit69, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gj = atomicrmw add ptr %i.gi, i32 -1 acq_rel, align 4
  %i.gk = icmp eq i32 %i.gj, 1
  br i1 %i.gk, label %bb.x, label %_ZN4ncnn3MatD2Ev.exit69

bb.x:                                             ; preds = %bb.w
  %i.gl = load ptr, ptr %i.fx, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef %i.gm)
          to label %_ZN4ncnn3MatD2Ev.exit69 unwind label %bb.ab, !inline_history !19

bb.z:                                             ; preds = %bb.x
  %.not.i111 = icmp eq ptr %i.gm, null
  br i1 %.not.i111, label %_ZN4ncnn3MatD2Ev.exit69, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.gm) #10
  br label %_ZN4ncnn3MatD2Ev.exit69

bb.ab:                                            ; preds = %bb.y
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit69:                          ; preds = %bb.w, %bb.v, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.gs = load ptr, ptr %i.eu, align 8, !tbaa !11 ; 2 uses
  %.not.i78 = icmp eq ptr %i.gs, null
  br i1 %.not.i78, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.ac

bb.ac:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit69
  %i.gt = atomicrmw add ptr %i.gs, i32 -1 acq_rel, align 4
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit66

bb.ad:                                            ; preds = %bb.ac
  %i.gv = load ptr, ptr %i.fc, align 16, !tbaa !17 ; 3 uses
  %.not3.i79 = icmp eq ptr %i.gv, null
  %i.gw = load ptr, ptr %5, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i79, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !9
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef %i.gw)
          to label %_ZN4ncnn3MatD2Ev.exit66 unwind label %bb.ah, !inline_history !19

bb.af:                                            ; preds = %bb.ad
  %.not.i105 = icmp eq ptr %i.gw, null
  br i1 %.not.i105, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.gw) #10
  br label %_ZN4ncnn3MatD2Ev.exit66

bb.ah:                                            ; preds = %bb.ae
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit66:                          ; preds = %bb.ac, %_ZN4ncnn3MatD2Ev.exit69, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.dl

bb.ai:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #10
  %i.hc = load i32, ptr %i.bk, align 8, !tbaa !233
  %i.hd = mul nsw i32 %i.hc, %i.bi
  %i.he = load i32, ptr %i.o, align 4, !tbaa !68
  %i.hf = load i32, ptr %i.bc, align 4, !tbaa !232
  %i.hg = mul nsw i32 %i.hf, %i.he
  %i.hh = sub nsw i32 %i.hd, %i.hg
  %i.hi = select i1 %i.by, i32 2, i32 0
  %i.hj = shl i32 %i.hh, %i.hi
  store i32 %i.hj, ptr %i.s, align 4, !tbaa !68
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !247
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.t, i32 %i.hl)
  %_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined._ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1 = select i1 %i.by, ptr @_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr @_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1
end_hunk_0
begin_hunk_1_@_ZN4ncnn17Deconvolution_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.zd = load ptr, ptr %i.zc, align 8
  invoke void %i.zd(ptr noundef nonnull align 8 dereferenceable(8) %i.yz, ptr noundef %i.za)
          to label %_ZN4ncnn3MatD2Ev.exit343.i unwind label %bb.ak, !inline_history !19

bb.ai:                                            ; preds = %bb.ag
  %.not.i419.i = icmp eq ptr %i.za, null
  br i1 %.not.i419.i, label %_ZN4ncnn3MatD2Ev.exit343.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.za) #10
  br label %_ZN4ncnn3MatD2Ev.exit343.i

bb.ak:                                            ; preds = %bb.ah
  %i.ze = landingpad { ptr, i32 }
          catch ptr null
  %i.zf = extractvalue { ptr, i32 } %i.ze, 0
  call void @__clang_call_terminate(ptr %i.zf) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit343.i:                       ; preds = %bb.f, %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.e
  %.pn337.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ca, %bb.e ], [ %i.cb, %bb.aj ], [ %i.cb, %bb.ai ], [ %i.cb, %bb.ah ], [ %i.cb, %bb.af ], [ %i.cb, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.zg = load ptr, ptr %i.p, align 8, !tbaa !11  ; 2 uses
  %.not.i414.i = icmp eq ptr %i.zg, null
  br i1 %.not.i414.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit343.i
  %i.zh = atomicrmw add ptr %i.zg, i32 -1 acq_rel, align 4
  %i.zi = icmp eq i32 %i.zh, 1
  br i1 %i.zi, label %bb.am, label %_ZN4ncnn3MatD2Ev.exit.i

bb.am:                                            ; preds = %bb.al
  %i.zj = load ptr, ptr %i.q, align 8, !tbaa !17  ; 3 uses
  %.not3.i415.i = icmp eq ptr %i.zj, null
  %i.zk = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i415.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.zl = load ptr, ptr %i.zj, align 8, !tbaa !9
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 24
  %i.zn = load ptr, ptr %i.zm, align 8
  invoke void %i.zn(ptr noundef nonnull align 8 dereferenceable(8) %i.zj, ptr noundef %i.zk)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.aq, !inline_history !19

bb.ao:                                            ; preds = %bb.am
  %.not.i418.i = icmp eq ptr %i.zk, null
  br i1 %.not.i418.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.zk) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.aq:                                            ; preds = %bb.an
  %i.zo = landingpad { ptr, i32 }
          catch ptr null
  %i.zp = extractvalue { ptr, i32 } %i.zo, 0
  call void @__clang_call_terminate(ptr %i.zp) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al, %_ZN4ncnn3MatD2Ev.exit343.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %.pn337.pn.pn.pn.pn.i

_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit345.i, %bb.z, %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.zq = load i8, ptr %1, align 8, !tbaa !214, !range !47, !noundef !48
  %i.zr = trunc nuw i8 %i.zq to i1
  br i1 %i.zr, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.zt, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.zu = atomicrmw add ptr %i.zt, i32 -1 acq_rel, align 4
  %i.zv = icmp eq i32 %i.zu, 1
  br i1 %i.zv, label %bb.at, label %_ZN4ncnn3Mat7releaseEv.exit

bb.at:                                            ; preds = %bb.as
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.zx, null
  %i.zy = load ptr, ptr %i.l, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.zz = load ptr, ptr %i.zx, align 8, !tbaa !9
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 24
  %i.aab = load ptr, ptr %i.aaa, align 8
  call void %i.aab(ptr noundef nonnull align 8 dereferenceable(8) %i.zx, ptr noundef %i.zy), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.av:                                            ; preds = %bb.at
  %.not.i3 = icmp eq ptr %i.zy, null
  br i1 %.not.i3, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.zy) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.aw, %bb.av, %bb.ar, %bb.as, %bb.au
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.aad, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aac, i8 0, i64 20, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 10 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 23 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !216
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !230
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49
  %i.w = add nsw i32 %i.v, -1
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !231
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !50
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = mul nsw i32 %i.ad, %i.aa
  %i.af = add nsw i32 %i.ae, 1
  %i.ag = add nsw i32 %i.p, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232
  %i.aj = mul nsw i32 %i.ai, %i.ag
  %i.ak = add nsw i32 %i.y, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.am = load i32, ptr %i.al, align 4, !tbaa !238
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = add nsw i32 %i.r, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !233
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %i.as = add nsw i32 %i.af, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.au = load i32, ptr %i.at, align 8, !tbaa !239
  %i.av = add nsw i32 %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !53, !range !47, !noundef !48
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !52 ; 2 uses
  %i.bb = and i32 %i.ba, 3
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = select i1 %i.ay, i1 %i.bc, i1 false
  %.031 = select i1 %i.bd, i32 4, i32 1           ; 3 uses
  %i.be = shl nuw nsw i32 %.031, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = sdiv i32 %i.ba, %.031
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  store i64 0, ptr %i.bp, align 16, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.bk, i8 0, i64 28, i1 false)
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !234
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.thread.invoke, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !235
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.thread.invoke, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !236
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.thread.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !237
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.thread.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !240
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !241
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.thread.invoke, label %bb.m

bb.f:                                             ; preds = %.thread.invoke, %bb.q, %.loopexit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit32, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = atomicrmw add ptr %i.cj, i32 -1 acq_rel, align 4
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit32

bb.h:                                             ; preds = %bb.g
  %i.cm = load ptr, ptr %i.bk, align 16, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.cm, null
  %i.cn = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef %i.cn)
          to label %_ZN4ncnn3MatD2Ev.exit32 unwind label %bb.l, !inline_history !19

bb.j:                                             ; preds = %bb.h
  %.not.i38 = icmp eq ptr %i.cn, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit32, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.cn) #10
  br label %_ZN4ncnn3MatD2Ev.exit32

bb.l:                                             ; preds = %bb.i
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit32:                          ; preds = %bb.g, %bb.f, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %i.ci

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !11 ; 2 uses
  %.not.i40 = icmp eq ptr %i.cu, null
  br i1 %.not.i40, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = atomicrmw add ptr %i.cu, i32 1 acq_rel, align 4 ; 0 uses
  %.pre107 = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre107, null
  br i1 %.not.i.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = atomicrmw add ptr %.pre107, i32 -1 acq_rel, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.bk, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.cy, null
  %i.cz = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef %i.cz)
          to label %.thread unwind label %bb.f, !inline_history !65

bb.r:                                             ; preds = %bb.p
  %.not.i18.i = icmp eq ptr %i.cz, null
  br i1 %.not.i18.i, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.cz) #10
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.o, %bb.n, %bb.q, %bb.s, %bb.r
  %i.dd = load <2 x ptr>, ptr %2, align 8, !tbaa !66
  store <2 x ptr> %i.dd, ptr %4, align 16, !tbaa !66
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !57
  store i64 %i.df, ptr %i.bi, align 16, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !67
  store i32 %i.dh, ptr %i.bj, align 8, !tbaa !67
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !17
  store ptr %i.dj, ptr %i.bk, align 16, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dl = load <4 x i32>, ptr %i.dk, align 8, !tbaa !68
  store <4 x i32> %i.dl, ptr %i.bl, align 8, !tbaa !68
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !69
  store i32 %i.dn, ptr %i.bo, align 8, !tbaa !69
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !20
  store i64 %i.dp, ptr %i.bp, align 16, !tbaa !20
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.e, %.thread
  %.sink160 = phi i64 [ 8, %.thread ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %bb.b ], [ 16, %bb.a ], [ 16, %._crit_edge ]
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %.sink160
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !242
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.an, i32 noundef %i.av, i32 noundef %i.bg, i64 noundef %i.bf, i32 noundef %.031, ptr noundef %i.dr)
          to label %bb.t unwind label %bb.f

bb.t:                                             ; preds = %.thread.invoke
  %i.ds = load ptr, ptr %4, align 16, !tbaa !18
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %_ZNK4ncnn3Mat5emptyEv.exit42

_ZNK4ncnn3Mat5emptyEv.exit42:                     ; preds = %bb.t
  %i.du = load i64, ptr %i.bp, align 16, !tbaa !20
  %i.dv = load i32, ptr %i.bo, align 8, !tbaa !69
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.du, %i.dw
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit42
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.eb = load i32, ptr %i.u, align 4, !tbaa !49  ; 3 uses
  %i.ec = load i32, ptr %i.ab, align 8, !tbaa !50 ; 3 uses
  %i.ed = load i32, ptr %i.s, align 4, !tbaa !230 ; 2 uses
  %i.ee = load i32, ptr %i.z, align 8, !tbaa !231 ; 2 uses
  %i.ef = load i32, ptr %i.ah, align 4, !tbaa !232
  %i.eg = load i32, ptr %i.ap, align 8, !tbaa !233
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ek = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !68
  store i32 %i.ec, ptr %i.b, align 4, !tbaa !68
  store i32 %i.ed, ptr %i.c, align 4, !tbaa !68
  store i32 %i.ee, ptr %i.d, align 4, !tbaa !68
  store i32 %i.ef, ptr %i.e, align 4, !tbaa !68
  store i32 %i.eg, ptr %i.f, align 4, !tbaa !68
  store i32 %i.ei, ptr %i.g, align 4, !tbaa !68
  %i.el = load i32, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.em = load i32, ptr %i.bo, align 8, !tbaa !69
  %i.en = mul nsw i32 %i.em, %i.el                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.eo = load i64, ptr %i.bp, align 16, !tbaa !20
  %i.ep = sext i32 %i.el to i64
  %i.eq = mul i64 %i.eo, %i.ep
  store i64 %i.eq, ptr %i.h, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.er = add nsw i32 %i.eb, -1
  %i.es = mul nsw i32 %i.ed, %i.er
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.i, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.eu = add nsw i32 %i.ec, -1
  %i.ev = mul nsw i32 %i.ee, %i.eu
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.j, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.ex = mul nsw i32 %i.ec, %i.eb
  store i32 %i.ex, ptr %i.k, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.ey = load ptr, ptr %i.ea, align 8, !tbaa !18
  store ptr %i.ey, ptr %i.l, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  store i32 0, ptr %i.n, align 4, !tbaa !68
  %i.ez = sdiv i32 %i.en, 4
  store i32 %i.ez, ptr %i.m, align 4, !tbaa !68
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !247
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.ek, i32 %i.fb)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 18, ptr nonnull @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %i.n, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %i.dz, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.ej, ptr nonnull %i.h)
  %i.fc = load i32, ptr %i.m, align 4, !tbaa !68
  %i.fd = shl nsw i32 %i.fc, 2
  %i.fe = load i32, ptr %i.n, align 4, !tbaa !68
  %i.ff = add nsw i32 %i.fe, %i.fd                ; 5 uses
  store i32 %i.ff, ptr %i.n, align 4, !tbaa !68
  %i.fg = sub nsw i32 %i.en, %i.ff                ; 2 uses
  %i.fh = sdiv i32 %i.fg, 2                       ; 3 uses
  store i32 %i.fh, ptr %i.m, align 4, !tbaa !68
  %i.fi = icmp sgt i32 %i.fg, 1
  br i1 %i.fi, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, label %._crit_edge1072.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.i:                 ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !67
  %.fr.i = freeze i32 %i.fk                       ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !69
  %i.fn = mul i32 %i.fm, %.fr.i                   ; 10 uses
  %i.fo = load i32, ptr %i.o, align 4, !tbaa !56  ; 5 uses
  %i.fp = load i32, ptr %i.q, align 8, !tbaa !216 ; 4 uses
  %i.fq = load i32, ptr %i.bm, align 4, !tbaa !56 ; 2 uses
  %i.fr = load i32, ptr %i.bn, align 16, !tbaa !216 ; 2 uses
  %i.fs = load ptr, ptr %4, align 16, !tbaa !18, !noalias !357 ; 2 uses
  %i.ft = load i64, ptr %i.bp, align 16, !tbaa !20, !noalias !357
  %i.fu = load i64, ptr %i.bi, align 16, !tbaa !57, !noalias !357
  %factor.op.mul.i = mul i64 %i.fu, %i.ft         ; 2 uses
  %i.fv = icmp slt i32 %i.fr, 1
  %i.fw = icmp slt i32 %i.fq, 1
  %i.fx = icmp sgt i32 %i.fn, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %brmerge.i = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %brmerge.i, label %._crit_edge1072.split.i, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gc = load ptr, ptr %i.dz, align 8, !tbaa !18, !noalias !360
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !20, !noalias !360
  %i.ge = load i64, ptr %i.ga, align 8, !tbaa !57, !noalias !360
  %factor.op.mul1078.i = mul i64 %i.ge, %i.gd
  %i.gf = add i32 %i.fn, -4                       ; 2 uses
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = and i32 %i.gg, 2147483646
  %narrow.i = add nuw i32 %i.gh, 2
  %i.gi = zext i32 %narrow.i to i64
  %i.gj = and i32 %i.gf, -4
  %i.gk = add i32 %i.gj, 4
  %i.gl = sext i32 %i.fn to i64
  %i.gm = sext i32 %i.ff to i64
  %wide.trip.count1337.i = zext nneg i32 %i.fh to i64
  %invariant.op1449.i = add nsw i64 %i.gl, -3
  %i.gn = sext i32 %i.fo to i64                   ; 4 uses
  %i.go = and i32 %i.fn, -4
  br label %_ZN4ncnn3MatD2Ev.exit457.i

._crit_edge1072.split.i:                          ; preds = %._crit_edge1070.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, %bb.u
  %i.gp = shl nsw i32 %i.fh, 1                    ; 2 uses
  %i.gq = add nsw i32 %i.gp, %i.ff
  %i.gr = icmp slt i32 %i.gq, %i.en
  br i1 %i.gr, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i, label %.loopexit

_ZN4ncnn3MatD2Ev.exit450.lr.ph.i:                 ; preds = %._crit_edge1072.split.i
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !67
  %.fr1100.i = freeze i32 %i.gt                   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !69
  %i.gw = mul i32 %i.gv, %.fr1100.i               ; 10 uses
  %i.gx = load i32, ptr %i.o, align 4, !tbaa !56  ; 5 uses
  %i.gy = load i32, ptr %i.q, align 8, !tbaa !216 ; 4 uses
  %i.gz = load i32, ptr %i.bm, align 4, !tbaa !56 ; 2 uses
  %i.ha = load i32, ptr %i.bn, align 16, !tbaa !216 ; 2 uses
  %i.hb = load ptr, ptr %4, align 16, !tbaa !18, !noalias !363
  %i.hc = load i64, ptr %i.bp, align 16, !tbaa !20, !noalias !363
  %i.hd = load i64, ptr %i.bi, align 16, !tbaa !57, !noalias !363
  %factor.op.mul1221.i = mul i64 %i.hd, %i.hc
  %i.he = icmp slt i32 %i.ha, 1
  %i.hf = icmp slt i32 %i.gz, 1
  %i.hg = icmp sgt i32 %i.gw, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %brmerge1230.i = select i1 %i.he, i1 true, i1 %i.hf
  br i1 %brmerge1230.i, label %.loopexit, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hl = load ptr, ptr %i.dz, align 8, !tbaa !18, !noalias !366
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !20, !noalias !366
  %i.hn = load i64, ptr %i.hj, align 8, !tbaa !57, !noalias !366
  %factor.op.mul1224.i = mul i64 %i.hn, %i.hm
  %i.ho = add i32 %i.gw, -4                       ; 2 uses
  %i.hp = lshr i32 %i.ho, 1
  %i.hq = and i32 %i.hp, 2147483646
  %narrow1439.i = add nuw i32 %i.hq, 2
  %i.hr = zext i32 %narrow1439.i to i64
  %i.hs = and i32 %i.ho, -4
  %i.ht = add i32 %i.hs, 4
  %i.hu = sext i32 %i.gw to i64
  %i.hv = sext i32 %i.ff to i64
  %i.hw = sext i32 %i.gp to i64
  %i.hx = add nsw i64 %i.hw, %i.hv
  %i.hy = sext i32 %i.en to i64
  %invariant.op1450.i = add nsw i64 %i.hu, -3
  %i.hz = sext i32 %i.gx to i64                   ; 4 uses
  %i.ia = and i32 %i.gw, -4
  br label %_ZN4ncnn3MatD2Ev.exit450.i

_ZN4ncnn3MatD2Ev.exit457.i:                       ; preds = %._crit_edge1070.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i
  %indvars.iv1334.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i ], [ %indvars.iv.next1335.i, %._crit_edge1070.i ] ; 2 uses
  %i.ib = shl nuw nsw i64 %indvars.iv1334.i, 1
  %i.ic = add nsw i64 %i.ib, %i.gm                ; 4 uses
  %.reass.i = mul i64 %i.ic, %factor.op.mul.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass.i
  %i.ie = add nsw i64 %i.ic, 1
  %.reass1075.i = mul i64 %i.ie, %factor.op.mul.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass1075.i
  %i.ig = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not433.i = icmp eq ptr %i.ig, null
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ic
  %i.ii = trunc nsw i64 %i.ic to i32              ; 2 uses
  %i.ij = sdiv i32 %i.ii, 4
  %i.ik = srem i32 %i.ii, 4
  %.lhs.trunc.i = trunc nsw i32 %i.ik to i8
end_hunk_1
