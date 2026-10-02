Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nfs4client?download=true
inline.NumInlined: 139
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@nfs4_session_limit_rwsize:bb.a
  %.not.i.not = icmp eq ptr %.val, null
  br i1 %.not.i.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val, i64 40
  %i.d = getelementptr i8, ptr %.val, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = load i32, ptr @nfs41_maxread_overhead, align 4
  %i.g = sub i32 %i.e, %i.f                       ; 4 uses
  %i.h = load i32, ptr %i.c, align 8
  %i.i = load i32, ptr @nfs41_maxwrite_overhead, align 4
  %i.j = sub i32 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp ugt i32 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp ugt i32 %i.o, %i.g
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.g, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp ugt i32 %i.r, %i.j
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.j, ptr %i.q, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local void @nfs4_session_limit_xasize(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nfs4_create_server(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.rpc_timeout, align 8        ; 7 uses
  %2 = alloca %struct.nfs_client_initdata, align 8 ; 20 uses
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = tail call ptr @nfs_alloc_server() #15    ; 23 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %get_cred.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 168
  store i32 0, ptr %i.e, align 8
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.d, i64 1, ptr nonnull elementtype(i64) %i.d) #17, !srcloc !18
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %i.b, i64 1144
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val, i64 52
  %i.h = load i32, ptr %i.g, align 4
  %.val19 = load ptr, ptr %i.a, align 8           ; 24 uses
  %i.i = getelementptr i8, ptr %0, i64 72
  %.val20 = load ptr, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr i8, ptr %.val19, i64 320
  %i.l = getelementptr i8, ptr %.val19, i64 456
  store i64 0, ptr %2, align 8
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr i8, ptr %.val19, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr i8, ptr %.val19, i64 448
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = getelementptr i8, ptr %.val19, i64 476
  %i.y = load i16, ptr %i.x, align 4
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  store i32 %i.z, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ab = getelementptr i8, ptr %.val19, i64 132
  %i.ac = load i32, ptr %i.ab, align 4
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ae = getelementptr i8, ptr %.val19, i64 478
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  store i32 %i.ag, ptr %i.ad, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ai = getelementptr i8, ptr %.val19, i64 480
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = zext i16 %i.aj to i32
  store i32 %i.ak, ptr %i.ah, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %.val20, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ap = getelementptr i8, ptr %.val19, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef align 4 dereferenceable(12) %i.ap, i64 12, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.ar = getelementptr i8, ptr %.val19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %.val19, i64 20
  %i.au = load i32, ptr %i.at, align 4
  call void @nfs_init_timeout_values(ptr noundef nonnull %1, i32 noundef %i.z, i32 noundef %i.as, i32 noundef %i.au) #15
  %i.av = getelementptr i8, ptr %.val19, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr i8, ptr %i.b, i64 108
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr i8, ptr %.val19, i64 44
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr i8, ptr %i.b, i64 176
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.b, i64 244
  %i.bc = getelementptr i8, ptr %.val19, i64 52   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(52) %i.bb, ptr noundef align 4 dereferenceable(52) %i.bc, i64 52, i1 false)
  %i.bd = load i32, ptr %i.bc, align 4
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %get_cred.exit
  %i.be = getelementptr i8, ptr %.val19, i64 56
  %i.bf = load i32, ptr %i.be, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %get_cred.exit
  %.sink.i = phi i32 [ %i.bf, %bb.d ], [ 1, %get_cred.exit ]
  %i.bg = getelementptr i8, ptr %.val19, i64 104  ; 2 uses
  store i32 %.sink.i, ptr %i.bg, align 8
  %i.bh = call fastcc i32 @nfs4_set_client(ptr noundef nonnull %i.b, ptr noundef nonnull %2) #20, !srcloc !35 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %nfs4_init_server.exit.thread, label %bb.f

nfs4_init_server.exit.thread:                     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr i8, ptr %.val19, i64 48
  %i.bk = load i32, ptr %i.bj, align 8            ; 2 uses
  %.not57.i = icmp eq i32 %i.bk, 0
  br i1 %.not57.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr i8, ptr %i.b, i64 152
  store i32 %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %i.b, i64 112     ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = or i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bp = getelementptr i8, ptr %.val19, i64 8
  %i.bq = load i32, ptr %i.bp, align 8            ; 3 uses
  %.not58.i = icmp eq i32 %i.bq, 0
  br i1 %.not58.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 232
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = icmp ult i32 %i.bq, 1024
  %i.bv = call i32 @llvm.umin.i32(i32 %i.bq, i32 1048576)
  %narrow.i = select i1 %i.bu, i32 4096, i32 %i.bv ; 13 uses
  %i.bw = icmp eq i32 %i.bt, 17
  %i.bx = icmp samesign ult i32 %narrow.i, 4096   ; 2 uses
  %or.cond.i.i = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = call range(i32 1, 22) i32 @llvm.ctpop.i32(i32 %narrow.i)
  %i.bz = icmp samesign ugt i32 %i.by, 1
  br i1 %i.bz, label %.preheader.preheader.i.i.i, label %nfs_io_size.exit.i

.preheader.preheader.i.i.i:                       ; preds = %bb.j
  %.not15.11.i.i.i = icmp samesign ult i32 %narrow.i, 1048576
  br i1 %.not15.11.i.i.i, label %.preheader.12.i.i.i, label %.critedge.i.i.i

.preheader.12.i.i.i:                              ; preds = %.preheader.preheader.i.i.i
  %.not15.12.i.i.i = icmp samesign ult i32 %narrow.i, 524288
  br i1 %.not15.12.i.i.i, label %.preheader.13.i.i.i, label %.critedge.i.i.i

.preheader.13.i.i.i:                              ; preds = %.preheader.12.i.i.i
  %.not15.13.i.i.i = icmp samesign ult i32 %narrow.i, 262144
  br i1 %.not15.13.i.i.i, label %.preheader.14.i.i.i, label %.critedge.i.i.i

.preheader.14.i.i.i:                              ; preds = %.preheader.13.i.i.i
  %.not15.14.i.i.i = icmp samesign ult i32 %narrow.i, 131072
  br i1 %.not15.14.i.i.i, label %.preheader.15.i.i.i, label %.critedge.i.i.i

.preheader.15.i.i.i:                              ; preds = %.preheader.14.i.i.i
  %.not15.15.i.i.i = icmp samesign ult i32 %narrow.i, 65536
  br i1 %.not15.15.i.i.i, label %.preheader.16.i.i.i, label %.critedge.i.i.i

.preheader.16.i.i.i:                              ; preds = %.preheader.15.i.i.i
  %.not15.16.i.i.i = icmp samesign ult i32 %narrow.i, 32768
  br i1 %.not15.16.i.i.i, label %.preheader.17.i.i.i, label %.critedge.i.i.i

.preheader.17.i.i.i:                              ; preds = %.preheader.16.i.i.i
  %.not15.17.i.i.i = icmp samesign ult i32 %narrow.i, 16384
  br i1 %.not15.17.i.i.i, label %.preheader.18.i.i.i, label %.critedge.i.i.i

.preheader.18.i.i.i:                              ; preds = %.preheader.17.i.i.i
  %.not15.18.i.i.i = icmp samesign ult i32 %narrow.i, 8192
  %.mux.i.i = select i1 %.not15.18.i.i.i, i32 12, i32 13
  br i1 %i.bx, label %.preheader.20.i.i.i, label %.critedge.i.i.i

.preheader.20.i.i.i:                              ; preds = %.preheader.18.i.i.i
  %.not15.20.i.i.i = icmp samesign ult i32 %narrow.i, 2048
  %spec.select.i.i.i = select i1 %.not15.20.i.i.i, i32 10, i32 11
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.preheader.20.i.i.i, %.preheader.18.i.i.i, %.preheader.17.i.i.i, %.preheader.16.i.i.i, %.preheader.15.i.i.i, %.preheader.14.i.i.i, %.preheader.13.i.i.i, %.preheader.12.i.i.i, %.preheader.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ 18, %.preheader.13.i.i.i ], [ 20, %.preheader.preheader.i.i.i ], [ %.mux.i.i, %.preheader.18.i.i.i ], [ 17, %.preheader.14.i.i.i ], [ %spec.select.i.i.i, %.preheader.20.i.i.i ], [ 15, %.preheader.16.i.i.i ], [ 16, %.preheader.15.i.i.i ], [ 19, %.preheader.12.i.i.i ], [ 14, %.preheader.17.i.i.i ]
  %i.ca = shl nuw nsw i32 1, %.0.lcssa.i.i.i
  br label %nfs_io_size.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cb = and i32 %narrow.i, 2093056
  br label %nfs_io_size.exit.i

nfs_io_size.exit.i:                               ; preds = %bb.k, %.critedge.i.i.i, %bb.j
  %.0.i.i = phi i32 [ %i.cb, %bb.k ], [ %i.ca, %.critedge.i.i.i ], [ %narrow.i, %bb.j ]
  %i.cc = getelementptr i8, ptr %i.b, i64 128
  store i32 %.0.i.i, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %i.b, i64 112     ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = or i32 %i.ce, 2
  store i32 %i.cf, ptr %i.cd, align 8
  br label %bb.l

bb.l:                                             ; preds = %nfs_io_size.exit.i, %bb.h
  %i.cg = getelementptr i8, ptr %.val19, i64 12
  %i.ch = load i32, ptr %i.cg, align 4            ; 3 uses
  %.not59.i = icmp eq i32 %i.ch, 0
  br i1 %.not59.i, label %nfs4_init_server.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %i.b, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 232
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = icmp ult i32 %i.ch, 1024
  %i.cm = call i32 @llvm.umin.i32(i32 %i.ch, i32 1048576)
  %narrow1.i = select i1 %i.cl, i32 4096, i32 %i.cm ; 13 uses
  %i.cn = icmp eq i32 %i.ck, 17
  %i.co = icmp samesign ult i32 %narrow1.i, 4096  ; 2 uses
  %or.cond.i62.i = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond.i62.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = call range(i32 1, 22) i32 @llvm.ctpop.i32(i32 %narrow1.i)
  %i.cq = icmp samesign ugt i32 %i.cp, 1
  br i1 %i.cq, label %.preheader.preheader.i.i64.i, label %nfs_io_size.exit86.i

.preheader.preheader.i.i64.i:                     ; preds = %bb.n
  %.not15.11.i.i65.i = icmp samesign ult i32 %narrow1.i, 1048576
  br i1 %.not15.11.i.i65.i, label %.preheader.12.i.i68.i, label %.critedge.i.i66.i

.preheader.12.i.i68.i:                            ; preds = %.preheader.preheader.i.i64.i
  %.not15.12.i.i69.i = icmp samesign ult i32 %narrow1.i, 524288
  br i1 %.not15.12.i.i69.i, label %.preheader.13.i.i70.i, label %.critedge.i.i66.i

.preheader.13.i.i70.i:                            ; preds = %.preheader.12.i.i68.i
  %.not15.13.i.i71.i = icmp samesign ult i32 %narrow1.i, 262144
  br i1 %.not15.13.i.i71.i, label %.preheader.14.i.i72.i, label %.critedge.i.i66.i

.preheader.14.i.i72.i:                            ; preds = %.preheader.13.i.i70.i
  %.not15.14.i.i73.i = icmp samesign ult i32 %narrow1.i, 131072
  br i1 %.not15.14.i.i73.i, label %.preheader.15.i.i74.i, label %.critedge.i.i66.i

.preheader.15.i.i74.i:                            ; preds = %.preheader.14.i.i72.i
  %.not15.15.i.i75.i = icmp samesign ult i32 %narrow1.i, 65536
  br i1 %.not15.15.i.i75.i, label %.preheader.16.i.i76.i, label %.critedge.i.i66.i

.preheader.16.i.i76.i:                            ; preds = %.preheader.15.i.i74.i
  %.not15.16.i.i77.i = icmp samesign ult i32 %narrow1.i, 32768
  br i1 %.not15.16.i.i77.i, label %.preheader.17.i.i78.i, label %.critedge.i.i66.i

.preheader.17.i.i78.i:                            ; preds = %.preheader.16.i.i76.i
  %.not15.17.i.i79.i = icmp samesign ult i32 %narrow1.i, 16384
  br i1 %.not15.17.i.i79.i, label %.preheader.18.i.i80.i, label %.critedge.i.i66.i

.preheader.18.i.i80.i:                            ; preds = %.preheader.17.i.i78.i
  %.not15.18.i.i81.i = icmp samesign ult i32 %narrow1.i, 8192
  %.mux.i82.i = select i1 %.not15.18.i.i81.i, i32 12, i32 13
  br i1 %i.co, label %.preheader.20.i.i83.i, label %.critedge.i.i66.i

.preheader.20.i.i83.i:                            ; preds = %.preheader.18.i.i80.i
  %.not15.20.i.i84.i = icmp samesign ult i32 %narrow1.i, 2048
  %spec.select.i.i85.i = select i1 %.not15.20.i.i84.i, i32 10, i32 11
  br label %.critedge.i.i66.i

.critedge.i.i66.i:                                ; preds = %.preheader.20.i.i83.i, %.preheader.18.i.i80.i, %.preheader.17.i.i78.i, %.preheader.16.i.i76.i, %.preheader.15.i.i74.i, %.preheader.14.i.i72.i, %.preheader.13.i.i70.i, %.preheader.12.i.i68.i, %.preheader.preheader.i.i64.i
  %.0.lcssa.i.i67.i = phi i32 [ 18, %.preheader.13.i.i70.i ], [ 20, %.preheader.preheader.i.i64.i ], [ %.mux.i82.i, %.preheader.18.i.i80.i ], [ 17, %.preheader.14.i.i72.i ], [ %spec.select.i.i85.i, %.preheader.20.i.i83.i ], [ 15, %.preheader.16.i.i76.i ], [ 16, %.preheader.15.i.i74.i ], [ 19, %.preheader.12.i.i68.i ], [ 14, %.preheader.17.i.i78.i ]
  %i.cr = shl nuw nsw i32 1, %.0.lcssa.i.i67.i
  br label %nfs_io_size.exit86.i

bb.o:                                             ; preds = %bb.m
  %i.cs = and i32 %narrow1.i, 2093056
  br label %nfs_io_size.exit86.i

nfs_io_size.exit86.i:                             ; preds = %bb.o, %.critedge.i.i66.i, %bb.n
  %.0.i63.i = phi i32 [ %i.cs, %bb.o ], [ %i.cr, %.critedge.i.i66.i ], [ %narrow1.i, %bb.n ]
  %i.ct = getelementptr i8, ptr %i.b, i64 136
  store i32 %.0.i63.i, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %i.b, i64 112     ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = or i32 %i.cv, 4
  store i32 %i.cw, ptr %i.cu, align 8
  br label %nfs4_init_server.exit

nfs4_init_server.exit:                            ; preds = %bb.l, %nfs_io_size.exit86.i
  %i.cx = getelementptr i8, ptr %.val19, i64 24
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = mul i32 %i.cy, 1000
  %i.da = getelementptr i8, ptr %i.b, i64 156
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = getelementptr i8, ptr %.val19, i64 28
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = mul i32 %i.dc, 1000
  %i.de = getelementptr i8, ptr %i.b, i64 160
  store i32 %i.dd, ptr %i.de, align 8
  %i.df = getelementptr i8, ptr %.val19, i64 32
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = mul i32 %i.dg, 1000
  %i.di = getelementptr i8, ptr %i.b, i64 164
  store i32 %i.dh, ptr %i.di, align 4
  %i.dj = getelementptr i8, ptr %.val19, i64 36
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = mul i32 %i.dk, 1000
  %i.dm = getelementptr i8, ptr %i.b, i64 168
  store i32 %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %.val19, i64 472
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = trunc i32 %i.do to i16
  %i.dq = getelementptr i8, ptr %i.b, i64 148
  store i16 %i.dp, ptr %i.dq, align 4
  %i.dr = load i32, ptr %i.bg, align 8
  %i.ds = call i32 @nfs_init_server_rpcclient(ptr noundef nonnull %i.b, ptr noundef nonnull %1, i32 noundef %i.dr) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.q, label %bb.p

bb.p:                                             ; preds = %nfs4_init_server.exit
  %i.du = icmp eq i32 %i.h, 0
  %i.dv = getelementptr i8, ptr %.val, i64 488
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call fastcc i32 @nfs4_server_common_setup(ptr noundef %i.b, ptr noundef %i.dw, i1 noundef zeroext %i.du) #20, !srcloc !36 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %nfs4_init_server.exit.thread, %bb.p, %nfs4_init_server.exit
  %.0 = phi i32 [ %i.ds, %nfs4_init_server.exit ], [ %i.dx, %bb.p ], [ %i.bh, %nfs4_init_server.exit.thread ]
  call void @nfs_free_server(ptr noundef nonnull %i.b) #15
  %i.dz = sext i32 %.0 to i64
  %i.ea = inttoptr i64 %i.dz to ptr
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.p, %bb.q
  %.015 = phi ptr [ %i.ea, %bb.q ], [ %i.b, %bb.p ], [ inttoptr (i64 -12 to ptr), %bb.a ]
  ret ptr %.015
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @nfs_alloc_server() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @nfs4_server_common_setup(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @nfs4_delegation_hash_alloc(ptr noundef nonnull %0) #15 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 692
  %.val = load i32, ptr %i.c, align 4
  %i.d = and i32 %.val, 458752
  %i.e = icmp eq i32 %i.d, 262144
  br i1 %i.e, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @nfs4_init_session(ptr noundef %i.b) #15 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @nfs_server_set_init_caps(ptr noundef nonnull %0) #15
  %i.h = tail call i32 @nfs4_get_rootfh(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) #15 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @nfs_probe_server(ptr noundef nonnull %0, ptr noundef %1) #15 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 696
  %.val.i = load ptr, ptr %i.m, align 8           ; 3 uses
  %.not.i.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.not.i, label %nfs4_session_limit_rwsize.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %.val.i, i64 40
  %i.o = getelementptr i8, ptr %.val.i, i64 44
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load i32, ptr @nfs41_maxread_overhead, align 4
  %i.r = sub i32 %i.p, %i.q                       ; 4 uses
  %i.s = load i32, ptr %i.n, align 8
  %i.t = load i32, ptr @nfs41_maxwrite_overhead, align 4
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp ugt i32 %i.w, %i.r
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.r, ptr %i.v, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp ugt i32 %i.z, %i.r
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.r, ptr %i.y, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp ugt i32 %i.ac, %i.u
  br i1 %i.ad, label %bb.l, label %nfs4_session_limit_rwsize.exit

bb.l:                                             ; preds = %bb.k
  store i32 %i.u, ptr %i.ab, align 8
  br label %nfs4_session_limit_rwsize.exit

nfs4_session_limit_rwsize.exit:                   ; preds = %bb.f, %bb.k, %bb.l
  %i.ae = getelementptr i8, ptr %0, i64 172       ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add i32 %i.af, -256
  %or.cond = icmp ult i32 %i.ag, -255
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %nfs4_session_limit_rwsize.exit
  store i32 255, ptr %i.ae, align 4
  br label %bb.n

bb.n:                                             ; preds = %nfs4_session_limit_rwsize.exit, %bb.m
  tail call void @nfs_server_insert_lists(ptr noundef nonnull %0) #15
  %i.ah = load volatile i64, ptr @jiffies, align 64
  %i.ai = getelementptr i8, ptr %0, i64 224
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %0, i64 776
  store ptr @nfs4_destroy_server, ptr %i.aj, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.n
  %.0 = phi i32 [ 0, %bb.n ], [ %i.a, %bb.a ], [ -93, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nfs_free_server(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nfs4_create_referral_server(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.nfs_client_initdata, align 8 ; 19 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val40 = load ptr, ptr %i.a, align 8           ; 7 uses
  %i.b = getelementptr i8, ptr %.val40, i64 512
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 864
  %.val = load ptr, ptr %i.d, align 32            ; 5 uses
  %i.e = load ptr, ptr %.val, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr i8, ptr %.val40, i64 320   ; 2 uses
  %i.h = getelementptr i8, ptr %.val40, i64 456
end_hunk_0
