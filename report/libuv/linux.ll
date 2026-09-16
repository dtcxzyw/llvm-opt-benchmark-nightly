Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/linux?download=true
inline.NumInlined: 105
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uv_resident_set_memory:bb.a

.preheader.20:                                    ; preds = %.preheader.19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bn, i32 noundef 32) #16 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.loopexit, label %.preheader.21

.preheader.21:                                    ; preds = %.preheader.20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.br = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bq, i32 noundef 32) #16 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.21
  %i.bt = tail call ptr @__errno_location() #17   ; 2 uses
  store i32 0, ptr %i.bt, align 4
  %i.bu = call i64 @__isoc23_strtol(ptr noundef nonnull %i.br, ptr noundef null, i32 noundef 10) #15 ; 2 uses
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load i32, ptr %i.bt, align 4
  %.not = icmp eq i32 %i.bw, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.bx = tail call i32 @getpagesize() #17
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %i.bu, %i.by
  store i64 %i.bz, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %.preheader.12, %.preheader.13, %.preheader.14, %.preheader.15, %.preheader.16, %.preheader.17, %.preheader.18, %.preheader.19, %.preheader.20, %.preheader.21, %bb.b, %bb.d, %bb.c, %bb.a, %bb.e
  %.012 = phi i32 [ 0, %bb.e ], [ %i.b, %bb.a ], [ -22, %bb.c ], [ -22, %bb.d ], [ -22, %bb.b ], [ -22, %.preheader.21 ], [ -22, %.preheader.20 ], [ -22, %.preheader.19 ], [ -22, %.preheader.18 ], [ -22, %.preheader.17 ], [ -22, %.preheader.16 ], [ -22, %.preheader.15 ], [ -22, %.preheader.14 ], [ -22, %.preheader.13 ], [ -22, %.preheader.12 ], [ -22, %.preheader.11 ], [ -22, %.preheader.10 ], [ -22, %.preheader.9 ], [ -22, %.preheader.8 ], [ -22, %.preheader.7 ], [ -22, %.preheader.6 ], [ -22, %.preheader.5 ], [ -22, %.preheader.4 ], [ -22, %.preheader.3 ], [ -22, %.preheader.2 ], [ -22, %.preheader.1 ], [ -22, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.012
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_uptime(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 4 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i32 @uv__slurp(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i64 noundef 128) #15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, ptr noundef %0) #15
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = call i32 @clock_gettime(i32 noundef 7, ptr noundef nonnull %1) #15
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #17
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub nsw i32 0, %i.h
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %1, align 8
  %i.k = sitofp i64 %i.j to double
  store double %i.k, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ %i.i, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_cpu_info(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %2 = alloca %struct.cpu, align 8                ; 9 uses
  %i.c = alloca [1024 x i8], align 16             ; 6 uses
  %i.d = alloca [8 x [64 x i8]], align 16         ; 7 uses
  %i.e = alloca [1024 x i8], align 16             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  store i64 31093567915781749, ptr %i.d, align 16
  %i.f = tail call ptr @uv__calloc(i64 noundef 8192, i64 noundef 56) #15 ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @uv__open_file(ptr noundef nonnull @.str.10) #15 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @uv__free(ptr noundef nonnull %i.f) #15
  %i.j = tail call ptr @__errno_location() #17
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sub nsw i32 0, %i.k
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.m = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.h)
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.preheader88

.preheader88:                                     ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %.outer

bb.e:                                             ; preds = %bb.d
  call void @abort() #18
  unreachable

bb.f:                                             ; preds = %.outer, %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.t = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull %i.s) #15
  %.not = icmp eq i32 %i.t, 7
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.h)
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.a, align 4              ; 5 uses
  %i.x = icmp ugt i32 %i.w, 8191
  br i1 %i.x, label %bb.f, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.aa = and i32 %i.w, 7
  %i.ab = shl nuw nsw i32 1, %i.aa
  %i.ac = lshr i32 %i.w, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = trunc nuw i32 %i.ab to i8
  %i.ah = or i8 %i.af, %i.ag
  store i8 %i.ah, ptr %i.ae, align 1
  %i.ai = add nuw nsw i32 %i.w, 1
  %spec.select = call i32 @llvm.umax.i32(i32 %.066.ph, i32 %i.ai)
  br label %.outer

.outer:                                           ; preds = %.preheader88, %bb.j
  %.066.ph = phi i32 [ 0, %.preheader88 ], [ %spec.select, %bb.j ] ; 5 uses
  br label %bb.f

bb.k:                                             ; preds = %bb.f
  %i.aj = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.ak = call ptr @uv__open_file(ptr noundef nonnull @.str.12) #15 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.t, label %.preheader87

.preheader87:                                     ; preds = %bb.k
  %i.am = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #15
  %.not7893 = icmp eq i32 %i.am, 1
  br i1 %.not7893, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader87
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 13 ; 3 uses
  br label %.preheader

.loopexit:                                        ; preds = %.loopexit86
  %i.ao = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #15
  %.not78 = icmp eq i32 %i.ao, 1
  br i1 %.not78, label %.preheader.backedge, label %._crit_edge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.lr.ph
  %i.ap = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.ak)
  %.not79 = icmp eq ptr %i.ap, null
  br i1 %.not79, label %.loopexit86.preheader, label %bb.l

bb.l:                                             ; preds = %.preheader
  %i.aq = load i64, ptr %i.e, align 16
  %i.ar = xor i64 %i.aq, 7020584519046819693
  %i.as = getelementptr i8, ptr %i.e, i64 5
  %i.at = load i64, ptr %i.as, align 1
  %i.au = xor i64 %i.at, 2322178889094360608
  %i.av = or i64 %i.ar, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %.not80 = icmp eq i32 %i.ax, 0
  br i1 %.not80, label %bb.m, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.l, %.loopexit
  br label %.preheader, !llvm.loop !26

bb.m:                                             ; preds = %bb.l
  %3 = call i64 @strcspn(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.14) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %.068.idx91 = phi i64 [ 0, %bb.m ], [ %.068.add, %bb.n ] ; 3 uses
  %.068.ptr92 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.068.idx91 ; 2 uses
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.068.ptr92) #16
  %i.az = call i32 @strncmp(ptr noundef nonnull %i.an, ptr noundef nonnull %.068.ptr92, i64 noundef %i.ay) #16
  %i.ba = icmp ne i32 %i.az, 0                    ; 2 uses
  %.068.add = add nuw nsw i64 %.068.idx91, 64     ; 3 uses
  %i.bb = icmp samesign ult i64 %.068.idx91, 448
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.n, label %bb.o, !llvm.loop !27

bb.o:                                             ; preds = %bb.n
  %.068.ptr.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.068.add ; 2 uses
  %i.bd = trunc i64 %3 to i32
  br i1 %i.ba, label %.loopexit86.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i8, ptr %.068.ptr.le, align 1
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.068.ptr.le, i64 noundef 64, ptr noundef nonnull @.str.15, i32 noundef %i.bd, ptr noundef nonnull %i.an) #15 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bh = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bi = icmp ult i32 %i.bh, %.066.ph
  br i1 %i.bi, label %bb.s, label %.loopexit86.preheader

bb.s:                                             ; preds = %bb.r
  %i.bj = lshr exact i64 %.068.add, 6
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = zext nneg i32 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 %i.bk, ptr %i.bn, align 8
  br label %.loopexit86.preheader

.loopexit86.preheader:                            ; preds = %.preheader, %bb.r, %bb.s, %bb.o
  br label %.loopexit86

.loopexit86:                                      ; preds = %.loopexit86.preheader, %.loopexit86
  %i.bo = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.ak)
  %i.bp = icmp eq ptr %i.bo, null
  %i.bq = load i8, ptr %i.e, align 16
  %i.br = icmp eq i8 %i.bq, 10
  %or.cond = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond, label %.loopexit, label %.loopexit86, !llvm.loop !26

._crit_edge:                                      ; preds = %.loopexit, %.preheader87
  %i.bs = call i32 @fclose(ptr noundef nonnull %i.ak) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %._crit_edge
  store i32 0, ptr %i.a, align 4
  %.not103 = icmp eq i32 %.066.ph, 0              ; 2 uses
  br i1 %.not103, label %._crit_edge97, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.y
  %.06395 = phi i32 [ %.1, %bb.y ], [ 0, %bb.t ]  ; 2 uses
  %storemerge94 = phi i32 [ %i.ck, %bb.y ], [ 0, %bb.t ] ; 4 uses
  %i.bt = lshr i32 %storemerge94, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = and i32 %storemerge94, 7
  %i.bz = shl nuw nsw i32 1, %i.by
  %i.ca = and i32 %i.bz, %i.bx
  %.not84 = icmp eq i32 %i.ca, 0
  br i1 %.not84, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.cb = add nsw i32 %.06395, 1                  ; 2 uses
  %i.cc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.16, i32 noundef %storemerge94) #15 ; 0 uses
  %i.cd = call ptr @uv__open_file(ptr noundef nonnull %i.e) #15 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  %.pre107 = load i32, ptr %i.a, align 4          ; 2 uses
  br i1 %i.ce, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = zext i32 %.pre107 to i64
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.cf
  %i.ch = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.cg) #15
  %.not85 = icmp eq i32 %i.ch, 1
  br i1 %.not85, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @abort() #18
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ci = call i32 @fclose(ptr noundef nonnull %i.cd) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %.lr.ph, %bb.x
  %i.cj = phi i32 [ %.pre107, %bb.u ], [ %.pre, %bb.x ], [ %storemerge94, %.lr.ph ]
  %.1 = phi i32 [ %i.cb, %bb.u ], [ %i.cb, %bb.x ], [ %.06395, %.lr.ph ] ; 2 uses
  %i.ck = add i32 %i.cj, 1                        ; 3 uses
  store i32 %i.ck, ptr %i.a, align 4
  %i.cl = icmp ult i32 %i.ck, %.066.ph
  br i1 %i.cl, label %.lr.ph, label %._crit_edge97, !llvm.loop !28

._crit_edge97:                                    ; preds = %bb.y, %bb.t
  %.063.lcssa = phi i32 [ 0, %bb.t ], [ %.1, %bb.y ] ; 3 uses
  %i.cm = mul i32 %.063.lcssa, 56
  %i.cn = add i32 %i.cm, 512
  %i.co = zext i32 %i.cn to i64
  %i.cp = call ptr @uv__malloc(i64 noundef %i.co) #15
  store ptr %i.cp, ptr %0, align 8
  store i32 0, ptr %1, align 4
  %i.cq = load ptr, ptr %0, align 8
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge97
  call void @uv__free(ptr noundef nonnull %i.f) #15
  br label %bb.ad

bb.aa:                                            ; preds = %._crit_edge97
  %i.cs = sext i32 %.063.lcssa to i64
  store i32 %.063.lcssa, ptr %1, align 4
  %i.ct = load ptr, ptr %0, align 8
  %i.cu = getelementptr inbounds [56 x i8], ptr %i.ct, i64 %i.cs ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.cu, ptr noundef nonnull align 16 dereferenceable(512) %i.d, i64 512, i1 false)
  store i32 0, ptr %i.a, align 4
  br i1 %.not103, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.aa, %bb.ac
  %.06499 = phi i32 [ %.165, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %storemerge8298 = phi i32 [ %i.eh, %bb.ac ], [ 0, %bb.aa ] ; 4 uses
  %i.cv = lshr i32 %storemerge8298, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i32
  %i.da = and i32 %storemerge8298, 7
  %i.db = shl nuw nsw i32 1, %i.da
  %i.dc = and i32 %i.db, %i.cz
  %.not83 = icmp eq i32 %i.dc, 0
  br i1 %.not83, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph101
  %i.dd = zext nneg i32 %storemerge8298 to i64
  %i.de = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.dd ; 7 uses
  %i.df = load ptr, ptr %0, align 8
  %i.dg = add i32 %.06499, 1
  %i.dh = zext i32 %.06499 to i64
  %i.di = getelementptr inbounds nuw [56 x i8], ptr %i.df, i64 %i.dh ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dm
  %i.do = load i64, ptr %i.de, align 8
  %i.dp = udiv i64 %i.do, 1000
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = mul i64 %i.ds, 10
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = mul i64 %i.dv, 10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = mul i64 %i.dy, 10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = mul i64 %i.eb, 10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = mul i64 %i.ee, 10
  store ptr %i.dn, ptr %i.di, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %i.dq, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 %i.dt, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i64 %i.dw, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store i64 %i.dz, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i64 %i.ec, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store i64 %i.ef, ptr %.sroa.8.0..sroa_idx, align 8
  %.pre108 = load i32, ptr %i.a, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph101, %bb.ab
  %i.eg = phi i32 [ %.pre108, %bb.ab ], [ %storemerge8298, %.lr.ph101 ]
  %.165 = phi i32 [ %i.dg, %bb.ab ], [ %.06499, %.lr.ph101 ]
  %i.eh = add i32 %i.eg, 1                        ; 3 uses
  store i32 %i.eh, ptr %i.a, align 4
  %i.ei = icmp ult i32 %i.eh, %.066.ph
  br i1 %i.ei, label %.lr.ph101, label %._crit_edge102, !llvm.loop !29

._crit_edge102:                                   ; preds = %bb.ac, %bb.aa
  call void @uv__free(ptr noundef nonnull %i.f) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %._crit_edge102, %bb.z, %bb.c
  %.0 = phi i32 [ 0, %._crit_edge102 ], [ %i.l, %bb.c ], [ -12, %bb.z ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
end_hunk_0
