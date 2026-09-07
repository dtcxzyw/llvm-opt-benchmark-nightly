Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/file_prefetch_buffer?download=true
inline.NumInlined: 1218
inline.NumDeleted: 458
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb18FilePrefetchBuffer17ClearOutdatedDataEmm:bb.a
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.thread, label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph, %bb.b
  %i.u = phi ptr [ %i.q, %bb.b ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.v = phi ptr [ %i.as, %bb.b ], [ %i.e, %.lr.ph ] ; 5 uses
  %i.w = phi ptr [ %i.at, %bb.b ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %.thread, label %_ZN7rocksdb10BufferInfo16IsBufferOutdatedEm.exit

_ZN7rocksdb10BufferInfo16IsBufferOutdatedEm.exit: ; preds = %.lr.ph62
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36
  %i.ab = add i64 %i.aa, %i.y
  %.not28 = icmp ult i64 %1, %i.ab
  br i1 %.not28, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb10BufferInfo16IsBufferOutdatedEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !102 ; 5 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 0, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store i64 0, ptr %i.ae, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store i64 0, ptr %i.af, align 8, !tbaa !96
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.not.i.i = icmp eq ptr %i.v, %i.ah
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE9pop_frontEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !104
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef 512) #20
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.i, align 8, !tbaa !106
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !107 ; 3 uses
  store ptr %i.am, ptr %i.h, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  store ptr %i.an, ptr %i.g, align 8, !tbaa !109
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE9pop_frontEv.exit.i

_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE9pop_frontEv.exit.i: ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.am, %bb.e ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !111
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !110 ; 3 uses
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !112
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %.not.i1.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE9pop_frontEv.exit.i
  store ptr %i.ac, ptr %i.ao, align 8, !tbaa !102
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !110
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE9pop_frontEv.exit.i
  call void @_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE16_M_push_back_auxIJRS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !101
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi ptr [ %.pre, %bb.g ], [ %storemerge.i.i, %bb.f ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !101 ; 3 uses
  %i.au = icmp eq ptr %i.at, %i.as
  br i1 %i.au, label %.thread.thread, label %bb.b

.thread:                                          ; preds = %bb.b, %.lr.ph62, %_ZN7rocksdb10BufferInfo16IsBufferOutdatedEm.exit, %.lr.ph, %bb.a
  %i.av = phi ptr [ %i.e, %bb.a ], [ %i.e, %.lr.ph ], [ %i.v, %_ZN7rocksdb10BufferInfo16IsBufferOutdatedEm.exit ], [ %i.v, %.lr.ph62 ], [ %i.as, %bb.b ] ; 4 uses
  %i.aw = phi ptr [ %i.d, %bb.a ], [ %i.d, %.lr.ph ], [ %i.w, %_ZN7rocksdb10BufferInfo16IsBufferOutdatedEm.exit ], [ %i.w, %.lr.ph62 ], [ %i.at, %bb.b ] ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.av
  br i1 %i.ax, label %.thread.thread, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !106 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !106 ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = icmp ne ptr %i.az, null
  %.neg.i.i.i = sext i1 %i.bg to i64
  %i.bh = add nsw i64 %i.bf, %.neg.i.i.i
  %i.bi = shl nsw i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !108
  %i.bl = ptrtoint ptr %i.aw to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = add nsw i64 %i.bi, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = add nsw i64 %i.bp, %i.bv
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %i.av, align 8, !tbaa !102 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !99, !range !90, !noundef !91
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.thread.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !33 ; 2 uses
  %.not29 = icmp eq i64 %i.cd, 0
  br i1 %.not29, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !36 ; 2 uses
  %.not.i23 = icmp uge i64 %1, %i.cf
  %i.cg = add i64 %i.cf, %i.cd                    ; 3 uses
  %i.ch = icmp ult i64 %1, %i.cg
  %i.ci = and i1 %.not.i23, %i.ch
  br i1 %i.ci, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !108, !noalias !225
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.bt, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 3 uses
  %i.co = add nsw i64 %i.cn, 1                    ; 3 uses
  %i.cp = icmp sgt i64 %i.cn, -2
  br i1 %i.cp, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cq = icmp slt i64 %i.cn, 63
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit

bb.p:                                             ; preds = %bb.n
  %i.cs = lshr i64 %i.co, 6
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ct = ashr i64 %i.co, 6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cu = phi i64 [ %i.cs, %bb.p ], [ %i.ct, %bb.q ] ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !107, !noalias !225
  %i.cx = shl nsw i64 %i.cu, 6
  %i.cy = sub nsw i64 %i.co, %i.cx
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cy
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit

_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit: ; preds = %bb.o, %bb.r
  %storemerge.i.i.i.i = phi ptr [ %i.cz, %bb.r ], [ %i.cr, %bb.o ]
  %i.da = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !102
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !36
  %.not = icmp ne i64 %i.cg, %i.dc
  %i.dd = add i64 %2, %1
  %i.de = icmp ugt i64 %i.dd, %i.cg
  %or.cond = and i1 %i.de, %.not
  br i1 %or.cond, label %bb.s, label %.thread.thread.sink.split

.critedge:                                        ; preds = %bb.l, %bb.k
  store i64 0, ptr %i.cc, align 8, !tbaa !33
  %i.df = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  store i64 0, ptr %i.df, align 8, !tbaa !92
  %i.dg = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  store i64 0, ptr %i.dg, align 8, !tbaa !96
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit, %.critedge
  call void @_ZN7rocksdb18FilePrefetchBuffer11AbortAllIOsEv(ptr noundef nonnull align 8 dereferenceable(320) %0)
  %i.dh = load ptr, ptr %i.ay, align 8, !tbaa !106 ; 2 uses
  %i.di = load ptr, ptr %i.ba, align 8, !tbaa !106 ; 4 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %i.dn = icmp ne ptr %i.dh, null
  %.neg.i.i = sext i1 %i.dn to i64
  %i.do = add nsw i64 %i.dm, %.neg.i.i
  %i.dp = shl nsw i64 %i.do, 6
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.dr = load ptr, ptr %i.bj, align 8, !tbaa !108
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 3
  %i.dw = add nsw i64 %i.dp, %i.dv
  %i.dx = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !101 ; 4 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 3
  %i.ed = add nsw i64 %i.dw, %i.ec                ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, 1
  br i1 %i.ee, label %.lr.ph38, label %.thread.thread.sink.split

.lr.ph38:                                         ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !108, !noalias !226
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.ea, %i.eh
  %i.ej = ashr exact i64 %i.ei, 3                 ; 3 uses
  %i.ek = add i64 %i.ed, -1                       ; 3 uses
  %xtraiter = and i64 %i.ek, 1
  %i.el = icmp eq i64 %i.ed, 2
  br i1 %i.el, label %.epil.preheader, label %.lr.ph38.new

.lr.ph38.new:                                     ; preds = %.lr.ph38
  %unroll_iter = and i64 %i.ek, -2
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.1, %.lr.ph38.new
  %.036 = phi i64 [ 1, %.lr.ph38.new ], [ %i.ft, %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph38.new ], [ %niter.next.1, %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.1 ]
  %i.em = add nsw i64 %i.ej, %.036                ; 5 uses
  %i.en = icmp sgt i64 %i.em, -1
  br i1 %i.en, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.eo = icmp samesign ult i64 %i.em, 64
  br i1 %i.eo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %.036
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25

bb.w:                                             ; preds = %bb.u
  %i.eq = lshr i64 %i.em, 6
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.er = ashr i64 %i.em, 6
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.es = phi i64 [ %i.eq, %bb.w ], [ %i.er, %bb.x ] ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !107, !noalias !226
  %i.ev = shl nsw i64 %i.es, 6
  %i.ew = sub nsw i64 %i.em, %i.ev
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ew
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25

_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25: ; preds = %bb.v, %bb.y
  %storemerge.i.i.i.i24 = phi ptr [ %i.ex, %bb.y ], [ %i.ep, %bb.v ]
  %i.ey = load ptr, ptr %storemerge.i.i.i.i24, align 8, !tbaa !102 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  store i64 0, ptr %i.ez, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 136
  store i64 0, ptr %i.fa, align 8, !tbaa !92
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  store i64 0, ptr %i.fb, align 8, !tbaa !96
  %i.fc = add nuw i64 %.036, 1                    ; 2 uses
  %i.fd = add nsw i64 %i.ej, %i.fc                ; 5 uses
  %i.fe = icmp sgt i64 %i.fd, -1
  br i1 %i.fe, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25
  %i.ff = ashr i64 %i.fd, 6
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25
  %i.fg = icmp samesign ult i64 %i.fd, 64
  br i1 %i.fg, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fh = lshr i64 %i.fd, 6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.fi = phi i64 [ %i.fh, %bb.ab ], [ %i.ff, %bb.z ] ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !107, !noalias !226
  %i.fl = shl nsw i64 %i.fi, 6
  %i.fm = sub nsw i64 %i.fd, %i.fl
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.fm
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.1

bb.ad:                                            ; preds = %bb.aa
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fc
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.1

_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.1: ; preds = %bb.ad, %bb.ac
  %storemerge.i.i.i.i24.1 = phi ptr [ %i.fn, %bb.ac ], [ %i.fo, %bb.ad ]
  %i.fp = load ptr, ptr %storemerge.i.i.i.i24.1, align 8, !tbaa !102 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  store i64 0, ptr %i.fq, align 8, !tbaa !33
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 136
  store i64 0, ptr %i.fr, align 8, !tbaa !92
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  store i64 0, ptr %i.fs, align 8, !tbaa !96
  %i.ft = add nuw i64 %.036, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.thread.sink.split.loopexit.unr-lcssa, label %bb.t, !llvm.loop !224

.thread.thread.sink.split.loopexit.unr-lcssa:     ; preds = %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.thread.sink.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread.thread.sink.split.loopexit.unr-lcssa, %.lr.ph38
  %.036.epil.init = phi i64 [ 1, %.lr.ph38 ], [ %i.ft, %.thread.thread.sink.split.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod70 = trunc i64 %i.ek to i1
  call void @llvm.assume(i1 %lcmp.mod70)
  %i.fu = add nsw i64 %i.ej, %.036.epil.init      ; 5 uses
  %i.fv = icmp sgt i64 %i.fu, -1
  br i1 %i.fv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader
  %i.fw = ashr i64 %i.fu, 6
  br label %bb.ah

bb.af:                                            ; preds = %.epil.preheader
  %i.fx = icmp samesign ult i64 %i.fu, 64
  br i1 %i.fx, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fy = lshr i64 %i.fu, 6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.fz = phi i64 [ %i.fy, %bb.ag ], [ %i.fw, %bb.ae ] ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !107, !noalias !226
  %i.gc = shl nsw i64 %i.fz, 6
  %i.gd = sub nsw i64 %i.fu, %i.gc
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gd
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.epil

bb.ai:                                            ; preds = %bb.af
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %.036.epil.init
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.epil

_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.epil: ; preds = %bb.ai, %bb.ah
  %storemerge.i.i.i.i24.epil = phi ptr [ %i.ge, %bb.ah ], [ %i.gf, %bb.ai ]
  %i.gg = load ptr, ptr %storemerge.i.i.i.i24.epil, align 8, !tbaa !102 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  store i64 0, ptr %i.gh, align 8, !tbaa !33
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 136
  store i64 0, ptr %i.gi, align 8, !tbaa !92
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 80
  store i64 0, ptr %i.gj, align 8, !tbaa !96
  br label %.thread.thread.sink.split

.thread.thread.sink.split:                        ; preds = %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit25.epil, %.thread.thread.sink.split.loopexit.unr-lcssa, %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EEixEm.exit, %bb.s, %bb.j
  call void @_ZN7rocksdb18FilePrefetchBuffer16FreeEmptyBuffersEv(ptr noundef nonnull align 8 dereferenceable(320) %0)
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.h, %.thread.thread.sink.split, %.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb18FilePrefetchBuffer16FreeEmptyBuffersEv(ptr noundef nonnull align 8 dereferenceable(320) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::deque", align 8        ; 15 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIPN7rocksdb10BufferInfoESaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 0)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit
  %i.r = phi ptr [ %i.h, %.lr.ph ], [ %i.as, %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102  ; 2 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !102
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !103
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.not.i = icmp eq ptr %i.r, %i.u
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE9pop_frontEv.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !104
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef 512) #20
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !105
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.l, align 8, !tbaa !106
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107  ; 3 uses
end_hunk_0
