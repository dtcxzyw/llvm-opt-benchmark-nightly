Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode?download=true
inline.NumInlined: 105
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 55
begin_hunk_0_@cli_bytecode_load:bb.a
  br label %sigperf_events_init.exit

sigperf_events_init.exit:                         ; preds = %bb.py, %bb.px, %bb.pw, %bb.pu, %bb.pr, %bb.pq, %.critedge
  %i.cer = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ces = load i32, ptr %i.cer, align 4, !tbaa !82 ; 2 uses
  %.not129 = icmp eq i32 %.0103.ph.lcssa1078, %i.ces
  br i1 %.not129, label %bb.qb, label %bb.pz

bb.pz:                                            ; preds = %sigperf_events_init.exit
  %i.cet = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ceu = load i32, ptr %i.cet, align 8, !tbaa !121
  %.not130 = icmp eq i32 %i.ceu, 0
  br i1 %.not130, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.33, i32 noundef %.0103.ph.lcssa1078, i32 noundef %i.ces) #24
  br label %bb.qb

bb.qb:                                            ; preds = %sigperf_events_init.exit, %bb.pz, %bb.qa, %bb.pn, %.loopexit364, %bb.kc, %.loopexit, %._crit_edge.i201.thread, %bb.fw, %bb.eh, %bb.ch, %bb.cf, %bb.d, %bb.b
  %.0106 = phi i32 [ %.0.i.ph.ph, %bb.cf ], [ %.2.i.ph, %bb.eh ], [ %.2.i154.ph, %bb.fw ], [ %.2.i186.ph, %._crit_edge.i201.thread ], [ %.2.i217.ph, %.loopexit ], [ %.058.i.ph, %bb.kc ], [ %.3.i272.ph, %.loopexit364 ], [ 4, %bb.pn ], [ 4, %bb.qa ], [ 2, %bb.b ], [ 20, %bb.ch ], [ 4, %bb.d ], [ 0, %bb.pz ], [ 0, %sigperf_events_init.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #24
  ret i32 %.0106
}

declare ptr @cli_dbgets(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cli_chomp(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @cli_bytecode_run(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cli_bc_inst, align 8        ; 11 uses
  %4 = alloca %struct.cli_bc_func, align 8        ; 7 uses
  %5 = alloca %union.ev_val, align 8              ; 8 uses
  %i.a = alloca i32, align 4                      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %.not144 = icmp eq ptr %i.e, null
  br i1 %.not144, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %.not145 = icmp eq ptr %i.g, null
  br i1 %.not145, label %bb.av, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !72
  %.not146 = icmp eq i32 %i.i, 0
  br i1 %.not146, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %.not147 = icmp eq ptr %i.k, null
  br i1 %.not147, label %bb.av, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %.not148 = icmp eq ptr %i.m, null
  br i1 %.not148, label %bb.av, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.not149 = icmp eq ptr %i.c, null               ; 3 uses
  br i1 %.not149, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1080
  %i.q = load i32, ptr %i.p, align 8, !tbaa !154
  %i.r = icmp eq i32 %i.q, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0128 = phi i1 [ false, %bb.f ], [ %i.r, %bb.g ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !121
  switch i32 %i.t, label %bb.k [
    i32 1, label %bb.i
    i32 4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.34) #24
  br label %bb.av

bb.j:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35) #24
  br label %bb.av

bb.k:                                             ; preds = %bb.h
  br i1 %.not149, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213
  tail call void @cli_event_time_start(ptr noundef %i.v, i32 noundef 12) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1296
  store ptr %i.w, ptr %i.x, align 8, !tbaa !214
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !215
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr @nokind, ptr %i.z, align 8, !tbaa !215
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !155
  %.not10.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr @nomatch, ptr %i.ab, align 8, !tbaa !155
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !156
  %.not11.i = icmp eq ptr %i.ad, null
  br i1 %.not11.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr @nooffsets, ptr %i.y, align 8, !tbaa !156
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !157
  %.not12.i = icmp eq ptr %i.af, null
  br i1 %.not12.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr @nofilesize, ptr %i.ae, align 8, !tbaa !157
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !158
  %.not13.i = icmp eq ptr %i.ah, null
  br i1 %.not13.i, label %bb.v, label %context_safe.exit

bb.v:                                             ; preds = %bb.u
  store ptr @nopedata, ptr %i.ag, align 8, !tbaa !158
  br label %context_safe.exit

context_safe.exit:                                ; preds = %bb.u, %bb.v
  br i1 %.0128, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %context_safe.exit
  %i.ai = tail call ptr @cli_events_new(i32 noundef 16) #24 ; 5 uses
  %i.aj = tail call ptr @cli_events_new(i32 noundef 16) #24 ; 5 uses
  %i.ak = icmp ne ptr %i.ai, null
  %i.al = icmp ne ptr %i.aj, null
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @cli_events_free(ptr noundef %i.ai) #24
  tail call void @cli_events_free(ptr noundef %i.aj) #24
  br label %bb.av

bb.y:                                             ; preds = %bb.w
  %i.am = tail call fastcc i32 @register_events(ptr noundef %i.ai)
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = tail call fastcc i32 @register_events(ptr noundef %i.aj)
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @cli_events_free(ptr noundef nonnull %i.ai) #24
  tail call void @cli_events_free(ptr noundef nonnull %i.aj) #24
  br label %bb.av

bb.ab:                                            ; preds = %bb.z, %context_safe.exit
  %.0130 = phi ptr [ %i.ai, %bb.z ], [ null, %context_safe.exit ] ; 11 uses
  %.0129 = phi ptr [ %i.aj, %bb.z ], [ null, %context_safe.exit ] ; 11 uses
  %i.aq = load ptr, ptr @g_sigevents, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !152
  tail call void @cli_event_time_start(ptr noundef %i.aq, i32 noundef %i.as) #24
  %i.at = load i32, ptr %i.s, align 8, !tbaa !121
  %i.au = icmp eq i32 %i.at, 3
  %or.cond3 = or i1 %.0128, %i.au
  br i1 %or.cond3, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1312
  store ptr %.0129, ptr %i.av, align 8, !tbaa !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %i.aw, align 4, !tbaa !143
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.ax, align 8, !tbaa !144
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !96 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !151
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39
  %i.bd = zext i32 %i.az to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  store i64 0, ptr %i.bf, align 1
  store i32 32, ptr %3, align 8, !tbaa !160
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 -96, ptr %i.bg, align 4, !tbaa !161
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.bh, align 8, !tbaa !162
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 0, ptr %i.bi, align 4, !tbaa !163
  %i.bj = load i32, ptr %i.h, align 4, !tbaa !72
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 34
  store i8 %i.bk, ptr %i.bm, align 2, !tbaa !101
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !73
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 %i.bo, ptr %i.bp, align 8, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !40
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !101
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !101
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !164
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.36, i32 noundef %i.bw) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 1320
  store i32 0, ptr %i.bx, align 8, !tbaa !217
  tail call void @cli_event_time_start(ptr noundef %.0129, i32 noundef 11) #24
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.bz = call i32 @cli_vm_execute(ptr noundef %i.by, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3) #24 ; 4 uses
  call void @cli_event_time_stop(ptr noundef %.0129, i32 noundef 11) #24
  %i.ca = zext i32 %i.bz to i64
  call void @cli_event_int(ptr noundef %.0129, i32 noundef 1, i64 noundef %i.ca) #24
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !165
  call void @cli_event_string(ptr noundef %.0129, i32 noundef 0, ptr noundef %i.cc) #24
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !37
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = icmp ne i32 %i.bz, 1
  %or.cond5 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond5, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ch = call i32 @cli_bcapi_extract_new(ptr noundef nonnull %2, i32 noundef -1) #24 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.0131 = phi i32 [ %i.bz, %bb.ad ], [ %i.bz, %bb.ac ], [ 0, %bb.ab ]
  %i.ci = load i32, ptr %i.s, align 8, !tbaa !121
  %i.cj = icmp eq i32 %i.ci, 2
  %or.cond7 = or i1 %.0128, %i.cj
  br i1 %or.cond7, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  br i1 %.0128, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.ck, align 8, !tbaa !74
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 1312
  store ptr %.0130, ptr %i.cl, align 8, !tbaa !216
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !164
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37, i32 noundef %i.cn) #24
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 1320
  store i32 1, ptr %i.co, align 8, !tbaa !217
  call void @cli_event_time_start(ptr noundef %.0130, i32 noundef 11) #24
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !83
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !73
  %i.ct = zext i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [72 x i8], ptr %i.cq, i64 %i.ct
  %i.cv = call i32 @cli_vm_execute_jit(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.cu) #24 ; 4 uses
  call void @cli_event_time_stop(ptr noundef %.0130, i32 noundef 11) #24
  %i.cw = zext i32 %i.cv to i64
  call void @cli_event_int(ptr noundef %.0130, i32 noundef 1, i64 noundef %i.cw) #24
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !165
  call void @cli_event_string(ptr noundef %.0130, i32 noundef 0, ptr noundef %i.cy) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !37
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = icmp ne i32 %i.cv, 1
  %or.cond9 = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond9, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dd = call i32 @cli_bcapi_extract_new(ptr noundef nonnull %2, i32 noundef -1) #24 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  %.1132 = phi i32 [ %i.cv, %bb.ai ], [ %i.cv, %bb.ah ], [ %.0131, %bb.ae ] ; 2 uses
  %i.de = load ptr, ptr @g_sigevents, align 8, !tbaa !103
  %i.df = load i32, ptr %i.ar, align 8, !tbaa !152
  call void @cli_event_time_stop(ptr noundef %i.de, i32 noundef %i.df) #24
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !165
  %.not150 = icmp eq ptr %i.dh, null
  br i1 %.not150, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = load ptr, ptr @g_sigevents, align 8, !tbaa !103
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !153
  call void @cli_event_count(ptr noundef %i.di, i32 noundef %i.dk) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %.0128, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.dl = call i32 @cli_event_errors(ptr noundef %.0129) #24 ; 2 uses
  %i.dm = call i32 @cli_event_errors(ptr noundef %.0130) #24 ; 2 uses
  %i.dn = icmp eq i32 %i.dl, 0
  %i.do = icmp eq i32 %i.dm, 0
  %or.cond11.not = select i1 %i.dn, i1 %i.do, i1 false ; 3 uses
  br i1 %or.cond11.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !164
  call void (ptr, ptr, ...) @cli_infomsg(ptr noundef %i.c, ptr noundef nonnull @.str.38, i32 noundef %i.dq, i32 noundef %i.dl, i32 noundef %i.dm) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 1324
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !218
  %.not151 = icmp eq i32 %i.ds, 0
  br i1 %.not151, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dt = call i32 @cli_event_diff_all(ptr noundef %.0129, ptr noundef %.0130, ptr noundef null) #24
  %.not152 = icmp eq i32 %i.dt, 0
  br i1 %.not152, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !164
  call void (ptr, ptr, ...) @cli_infomsg(ptr noundef %i.c, ptr noundef nonnull @.str.39, i32 noundef %i.dv) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.1 = phi i1 [ %or.cond11.not, %bb.ao ], [ false, %bb.aq ], [ %or.cond11.not, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !95
  call void @cli_event_get(ptr noundef %.0129, i32 noundef 13, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #24
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !95
  store i32 0, ptr %i.a, align 4, !tbaa !95
  call void @cli_event_get(ptr noundef %.0130, i32 noundef 13, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #24
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !95
  call void @cli_event_get(ptr noundef %.0129, i32 noundef 14, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #24
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !95
  %i.dz = add i32 %i.dy, %i.dw                    ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !95
  call void @cli_event_get(ptr noundef %.0130, i32 noundef 14, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #24
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !95
  %i.eb = add i32 %i.ea, %i.dx                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ec = icmp ne i32 %i.dz, 0
  %i.ed = icmp ne i32 %i.eb, 0
  %or.cond13 = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %or.cond13, label %.critedge156, label %bb.as

.critedge156:                                     ; preds = %bb.ar
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !164
  call void (ptr, ptr, ...) @cli_infomsg(ptr noundef %i.c, ptr noundef nonnull @.str.40, i32 noundef %i.ef, i32 noundef %i.dz, i32 noundef %i.eb) #24
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  br i1 %.1, label %.critedge, label %bb.at

bb.at:                                            ; preds = %.critedge156, %bb.as
  call void @cli_events_free(ptr noundef %.0130) #24
  call void @cli_events_free(ptr noundef %.0129) #24
  br label %bb.av

.critedge:                                        ; preds = %bb.as, %bb.al
  call void @cli_events_free(ptr noundef %.0130) #24
  call void @cli_events_free(ptr noundef %.0129) #24
  br i1 %.not149, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.critedge
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !213
  call void @cli_event_time_stop(ptr noundef %i.eh, i32 noundef 12) #24
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %.critedge, %bb.au, %bb.d, %bb.e, %bb.a, %bb.b, %bb.aa, %bb.x, %bb.j, %bb.i
  %.1134 = phi i32 [ 3, %bb.i ], [ 0, %bb.j ], [ 29, %bb.aa ], [ 2, %bb.d ], [ 29, %bb.at ], [ 20, %bb.x ], [ %.1132, %.critedge ], [ 2, %bb.b ], [ 2, %bb.a ], [ 2, %bb.e ], [ %.1132, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %.1134
}

declare void @cli_event_time_start(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_events_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @register_events(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.358, i32 noundef 1, i32 noundef 0) #24
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.359, i32 noundef 4, i32 noundef 0) #24
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.360, i32 noundef 3, i32 noundef 2) #24
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.361, i32 noundef 4, i32 noundef 2) #24
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.362, i32 noundef 3, i32 noundef 2) #24
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @.str.363, i32 noundef 3, i32 noundef 2) #24
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull @.str.364, i32 noundef 4, i32 noundef 2) #24
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull @.str.365, i32 noundef 3, i32 noundef 2) #24
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull @.str.366, i32 noundef 3, i32 noundef 2) #24
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 9, ptr noundef nonnull @.str.367, i32 noundef 3, i32 noundef 2) #24
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull @.str.368, i32 noundef 4, i32 noundef 2) #24
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 13, ptr noundef nonnull @.str.369, i32 noundef 4, i32 noundef 2) #24
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.370, i32 noundef 4, i32 noundef 2) #24
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i32 @cli_event_define(ptr noundef nonnull %0, i32 noundef 11, ptr noundef nonnull @.str.371, i32 noundef 5, i32 noundef 2) #24
  %i.ab = icmp eq i32 %i.aa, -1
  %spec.select = sext i1 %i.ab to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.07 = phi i32 [ -1, %bb.a ], [ -1, %bb.h ], [ -1, %bb.b ], [ %spec.select, %bb.n ], [ -1, %bb.c ], [ -1, %bb.k ], [ -1, %bb.d ], [ -1, %bb.m ], [ -1, %bb.e ], [ -1, %bb.i ], [ -1, %bb.f ], [ -1, %bb.l ], [ -1, %bb.g ], [ -1, %bb.j ]
  ret i32 %.07
}

declare i32 @cli_vm_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_event_time_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cli_event_int(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @cli_event_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

end_hunk_0
