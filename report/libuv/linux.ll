Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/linux?download=true
inline.NumInlined: 105
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uv_resident_set_memory:bb.a
  br i1 %i.n, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.p = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.o, i32 noundef 32) #16 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 32) #16 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.v = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.u, i32 noundef 32) #16 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.x, i32 noundef 32) #16 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ab = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aa, i32 noundef 32) #16 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ae = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ad, i32 noundef 32) #16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ag, i32 noundef 32) #16 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.loopexit, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ak = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aj, i32 noundef 32) #16 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.an = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.am, i32 noundef 32) #16 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.loopexit, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.aq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ap, i32 noundef 32) #16 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.loopexit, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.as, i32 noundef 32) #16 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.loopexit, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.av, i32 noundef 32) #16 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.loopexit, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.az = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ay, i32 noundef 32) #16 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit, label %.preheader.16

.preheader.16:                                    ; preds = %.preheader.15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bc = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bb, i32 noundef 32) #16 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.loopexit, label %.preheader.17

.preheader.17:                                    ; preds = %.preheader.16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bf = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.be, i32 noundef 32) #16 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.loopexit, label %.preheader.18

.preheader.18:                                    ; preds = %.preheader.17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bi = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bh, i32 noundef 32) #16 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.loopexit, label %.preheader.19

.preheader.19:                                    ; preds = %.preheader.18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bl = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bk, i32 noundef 32) #16 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.loopexit, label %.preheader.20

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
  %i.d = alloca [8 x [64 x i8]], align 16         ; 6 uses
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
  %i.ay = call i64 @strcspn(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.14) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %.068.idx91 = phi i64 [ 0, %bb.m ], [ %.068.add, %bb.n ] ; 3 uses
  %.068.ptr92 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.068.idx91 ; 3 uses
  %i.az = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.068.ptr92) #16
  %i.ba = call i32 @strncmp(ptr noundef nonnull %i.an, ptr noundef nonnull %.068.ptr92, i64 noundef %i.az) #16
  %i.bb = icmp ne i32 %i.ba, 0                    ; 2 uses
  %.068.add = add nuw nsw i64 %.068.idx91, 64     ; 2 uses
  %i.bc = icmp samesign ult i64 %.068.idx91, 448
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.n, label %bb.o, !llvm.loop !27

bb.o:                                             ; preds = %bb.n
  %.068.ptr.le = getelementptr inbounds nuw i8, ptr %.068.ptr92, i64 64 ; 2 uses
  %i.be = trunc i64 %i.ay to i32
  br i1 %i.bb, label %.loopexit86.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i8, ptr %.068.ptr.le, align 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.068.ptr.le, i64 noundef 64, ptr noundef nonnull @.str.15, i32 noundef %i.be, ptr noundef nonnull %i.an) #15 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bi = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bj = icmp ult i32 %i.bi, %.066.ph
  br i1 %i.bj, label %bb.s, label %.loopexit86.preheader

bb.s:                                             ; preds = %bb.r
  %i.bk = lshr exact i64 %.068.add, 6
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = zext nneg i32 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store i32 %i.bl, ptr %i.bo, align 8
  br label %.loopexit86.preheader

.loopexit86.preheader:                            ; preds = %.preheader, %bb.r, %bb.s, %bb.o
  br label %.loopexit86

.loopexit86:                                      ; preds = %.loopexit86.preheader, %.loopexit86
  %i.bp = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.ak)
  %i.bq = icmp eq ptr %i.bp, null
  %i.br = load i8, ptr %i.e, align 16
  %i.bs = icmp eq i8 %i.br, 10
  %or.cond = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %or.cond, label %.loopexit, label %.loopexit86, !llvm.loop !26

._crit_edge:                                      ; preds = %.loopexit, %.preheader87
  %i.bt = call i32 @fclose(ptr noundef nonnull %i.ak) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %._crit_edge
  store i32 0, ptr %i.a, align 4
  %.not103 = icmp eq i32 %.066.ph, 0              ; 2 uses
  br i1 %.not103, label %._crit_edge97, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.y
  %.06395 = phi i32 [ %.1, %bb.y ], [ 0, %bb.t ]  ; 2 uses
  %storemerge94 = phi i32 [ %i.cl, %bb.y ], [ 0, %bb.t ] ; 4 uses
  %i.bu = lshr i32 %storemerge94, 3
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = and i32 %storemerge94, 7
  %i.ca = shl nuw nsw i32 1, %i.bz
  %i.cb = and i32 %i.ca, %i.by
  %.not84 = icmp eq i32 %i.cb, 0
  br i1 %.not84, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.cc = add nsw i32 %.06395, 1                  ; 2 uses
  %i.cd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.16, i32 noundef %storemerge94) #15 ; 0 uses
  %i.ce = call ptr @uv__open_file(ptr noundef nonnull %i.e) #15 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  %.pre107 = load i32, ptr %i.a, align 4          ; 2 uses
  br i1 %i.cf, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = zext i32 %.pre107 to i64
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.cg
  %i.ci = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ce, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ch) #15
  %.not85 = icmp eq i32 %i.ci, 1
  br i1 %.not85, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @abort() #18
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cj = call i32 @fclose(ptr noundef nonnull %i.ce) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %.lr.ph, %bb.x
  %i.ck = phi i32 [ %.pre107, %bb.u ], [ %.pre, %bb.x ], [ %storemerge94, %.lr.ph ]
  %.1 = phi i32 [ %i.cc, %bb.u ], [ %i.cc, %bb.x ], [ %.06395, %.lr.ph ] ; 2 uses
  %i.cl = add i32 %i.ck, 1                        ; 3 uses
  store i32 %i.cl, ptr %i.a, align 4
  %i.cm = icmp ult i32 %i.cl, %.066.ph
  br i1 %i.cm, label %.lr.ph, label %._crit_edge97, !llvm.loop !28

._crit_edge97:                                    ; preds = %bb.y, %bb.t
  %.063.lcssa = phi i32 [ 0, %bb.t ], [ %.1, %bb.y ] ; 3 uses
  %i.cn = mul i32 %.063.lcssa, 56
  %i.co = add i32 %i.cn, 512
  %i.cp = zext i32 %i.co to i64
  %i.cq = call ptr @uv__malloc(i64 noundef %i.cp) #15
  store ptr %i.cq, ptr %0, align 8
  store i32 0, ptr %1, align 4
  %i.cr = load ptr, ptr %0, align 8
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge97
  call void @uv__free(ptr noundef nonnull %i.f) #15
  br label %bb.ad

bb.aa:                                            ; preds = %._crit_edge97
  %i.ct = sext i32 %.063.lcssa to i64
  store i32 %.063.lcssa, ptr %1, align 4
  %i.cu = load ptr, ptr %0, align 8
  %i.cv = getelementptr inbounds [56 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.cv, ptr noundef nonnull align 16 dereferenceable(512) %i.d, i64 512, i1 false)
  store i32 0, ptr %i.a, align 4
  br i1 %.not103, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.aa, %bb.ac
  %.06499 = phi i32 [ %.165, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %storemerge8298 = phi i32 [ %i.ei, %bb.ac ], [ 0, %bb.aa ] ; 4 uses
  %i.cw = lshr i32 %storemerge8298, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = and i32 %storemerge8298, 7
  %i.dc = shl nuw nsw i32 1, %i.db
  %i.dd = and i32 %i.dc, %i.da
  %.not83 = icmp eq i32 %i.dd, 0
  br i1 %.not83, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph101
  %i.de = zext nneg i32 %storemerge8298 to i64
  %i.df = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.de ; 7 uses
  %i.dg = load ptr, ptr %0, align 8
  %i.dh = add i32 %.06499, 1
  %i.di = zext i32 %.06499 to i64
  %i.dj = getelementptr inbounds nuw [56 x i8], ptr %i.dg, i64 %i.di ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 6
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dn
  %i.dp = load i64, ptr %i.df, align 8
  %i.dq = udiv i64 %i.dp, 1000
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = mul i64 %i.dt, 10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = mul i64 %i.dw, 10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = mul i64 %i.dz, 10
  %i.eb = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = mul i64 %i.ec, 10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = mul i64 %i.ef, 10
  store ptr %i.do, ptr %i.dj, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 %i.dr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 %i.dx, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i64 %i.ea, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i64 %i.ed, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store i64 %i.eg, ptr %.sroa.8.0..sroa_idx, align 8
  %.pre108 = load i32, ptr %i.a, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph101, %bb.ab
  %i.eh = phi i32 [ %.pre108, %bb.ab ], [ %storemerge8298, %.lr.ph101 ]
  %.165 = phi i32 [ %i.dh, %bb.ab ], [ %.06499, %.lr.ph101 ]
  %i.ei = add i32 %i.eh, 1                        ; 3 uses
  store i32 %i.ei, ptr %i.a, align 4
  %i.ej = icmp ult i32 %i.ei, %.066.ph
  br i1 %i.ej, label %.lr.ph101, label %._crit_edge102, !llvm.loop !29

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
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @uv__calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @uv__open_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @__isoc23_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_interface_addresses(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %1, align 4
  store ptr null, ptr %0, align 8
  %i.b = call i32 @getifaddrs(ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader93, label %bb.b

.preheader93:                                     ; preds = %bb.a
  %.06194 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not7095 = icmp eq ptr %.06194, null
  br i1 %.not7095, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #17
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 0, %i.d
  br label %bb.w

.lr.ph:                                           ; preds = %.preheader93, %uv__ifaddr_exclude.exit.thread
  %.06197 = phi ptr [ %.061, %uv__ifaddr_exclude.exit.thread ], [ %.06194, %.preheader93 ] ; 4 uses
  %.05996 = phi i64 [ %.160, %uv__ifaddr_exclude.exit.thread ], [ 0, %.preheader93 ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06197, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 65
  %or.cond.not.i = icmp eq i32 %i.h, 65
  br i1 %or.cond.not.i, label %bb.c, label %uv__ifaddr_exclude.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.06197, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %uv__ifaddr_exclude.exit.thread, label %uv__ifaddr_exclude.exit

uv__ifaddr_exclude.exit:                          ; preds = %bb.c
  %i.l = load i16, ptr %i.j, align 2
  %.not90 = icmp eq i16 %i.l, 17
  br i1 %.not90, label %uv__ifaddr_exclude.exit.thread, label %bb.d

bb.d:                                             ; preds = %uv__ifaddr_exclude.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.06197, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #16
  %i.p = add i64 %.05996, 1
  %i.q = add i64 %i.p, %i.o
  %i.r = load i32, ptr %1, align 4
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %1, align 4
  br label %uv__ifaddr_exclude.exit.thread

uv__ifaddr_exclude.exit.thread:                   ; preds = %bb.c, %.lr.ph, %uv__ifaddr_exclude.exit, %bb.d
  %.160 = phi i64 [ %.05996, %uv__ifaddr_exclude.exit ], [ %i.q, %bb.d ], [ %.05996, %.lr.ph ], [ %.05996, %bb.c ] ; 2 uses
  %.061 = load ptr, ptr %.06197, align 8          ; 2 uses
  %.not70 = icmp eq ptr %.061, null
  br i1 %.not70, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %uv__ifaddr_exclude.exit.thread, %.preheader93
  %.059.lcssa = phi i64 [ 0, %.preheader93 ], [ %.160, %uv__ifaddr_exclude.exit.thread ]
  %i.t = load i32, ptr %1, align 4                ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @freeifaddrs(ptr noundef %.06194) #15
  br label %bb.w

bb.f:                                             ; preds = %._crit_edge
  %i.v = sext i32 %i.t to i64
  %i.w = mul nsw i64 %i.v, 80
  %i.x = add i64 %i.w, %.059.lcssa
  %i.y = call ptr @uv__calloc(i64 noundef 1, i64 noundef %i.x) #15 ; 4 uses
  store ptr %i.y, ptr %0, align 8
  %i.z = icmp eq ptr %i.y, null
  %i.aa = load ptr, ptr %i.a, align 8             ; 3 uses
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @freeifaddrs(ptr noundef %i.aa) #15
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %.not7199 = icmp eq ptr %i.aa, null
  br i1 %.not7199, label %._crit_edge113, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %bb.h
  %i.ab = load i32, ptr %1, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [80 x i8], ptr %i.y, i64 %i.ac
  br label %.lr.ph104

.preheader:                                       ; preds = %uv__ifaddr_exclude.exit79.thread
  %.2109.pre = load ptr, ptr %i.a, align 8        ; 3 uses
  %.not72110 = icmp eq ptr %.2109.pre, null
  br i1 %.not72110, label %._crit_edge113, label %.lr.ph112

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %uv__ifaddr_exclude.exit79.thread
  %.162102 = phi ptr [ %.162, %uv__ifaddr_exclude.exit79.thread ], [ %i.aa, %.lr.ph104.preheader ] ; 5 uses
  %.058101 = phi ptr [ %.1, %uv__ifaddr_exclude.exit79.thread ], [ %i.ad, %.lr.ph104.preheader ] ; 6 uses
  %.063100 = phi ptr [ %.164, %uv__ifaddr_exclude.exit79.thread ], [ %i.y, %.lr.ph104.preheader ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.162102, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 65
  %or.cond.not.i76 = icmp eq i32 %i.ag, 65
  br i1 %or.cond.not.i76, label %bb.i, label %uv__ifaddr_exclude.exit79.thread

bb.i:                                             ; preds = %.lr.ph104
  %i.ah = getelementptr inbounds nuw i8, ptr %.162102, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %uv__ifaddr_exclude.exit79.thread, label %uv__ifaddr_exclude.exit79

uv__ifaddr_exclude.exit79:                        ; preds = %bb.i
  %i.ak = load i16, ptr %i.ai, align 2
  %.not91 = icmp eq i16 %i.ak, 17
  br i1 %.not91, label %uv__ifaddr_exclude.exit79.thread, label %bb.j

bb.j:                                             ; preds = %uv__ifaddr_exclude.exit79
  %i.al = getelementptr inbounds nuw i8, ptr %.162102, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #16 ; 2 uses
  %i.ao = add i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.058101, ptr nonnull align 1 %i.am, i64 %i.ao, i1 false)
  store ptr %.058101, ptr %.063100, align 8
  %2 = getelementptr i8, ptr %.058101, i64 %i.an
  %i.ap = getelementptr i8, ptr %2, i64 1
  %i.aq = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = icmp eq i16 %i.ar, 10
  %i.at = getelementptr inbounds nuw i8, ptr %.063100, i64 20 ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.at, ptr noundef nonnull align 4 dereferenceable(28) %i.aq, i64 28, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.162102, i64 32
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = icmp eq i16 %i.aw, 10
  %i.ay = getelementptr inbounds nuw i8, ptr %.063100, i64 48 ; 2 uses
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ay, ptr noundef nonnull align 4 dereferenceable(28) %i.av, i64 28, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.av, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = load i32, ptr %i.ae, align 8
  %i.ba = lshr i32 %i.az, 3
  %.lobit = and i32 %i.ba, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.063100, i64 16
  store i32 %.lobit, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.063100, i64 80
  br label %uv__ifaddr_exclude.exit79.thread

uv__ifaddr_exclude.exit79.thread:                 ; preds = %bb.i, %.lr.ph104, %uv__ifaddr_exclude.exit79, %bb.p
  %.164 = phi ptr [ %.063100, %uv__ifaddr_exclude.exit79 ], [ %i.bc, %bb.p ], [ %.063100, %.lr.ph104 ], [ %.063100, %bb.i ]
  %.1 = phi ptr [ %.058101, %uv__ifaddr_exclude.exit79 ], [ %i.ap, %bb.p ], [ %.058101, %.lr.ph104 ], [ %.058101, %bb.i ]
  %.162 = load ptr, ptr %.162102, align 8         ; 2 uses
  %.not71 = icmp eq ptr %.162, null
  br i1 %.not71, label %.preheader, label %.lr.ph104, !llvm.loop !31

.lr.ph112:                                        ; preds = %.preheader, %uv__ifaddr_exclude.exit83.thread
  %.2111 = phi ptr [ %.2, %uv__ifaddr_exclude.exit83.thread ], [ %.2109.pre, %.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.2111, i64 16
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 65
  %or.cond.not.i80 = icmp eq i32 %i.bf, 65
  br i1 %or.cond.not.i80, label %bb.q, label %uv__ifaddr_exclude.exit83.thread

bb.q:                                             ; preds = %.lr.ph112
  %i.bg = getelementptr inbounds nuw i8, ptr %.2111, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %uv__ifaddr_exclude.exit83.thread, label %uv__ifaddr_exclude.exit83

uv__ifaddr_exclude.exit83:                        ; preds = %bb.q
  %i.bj = load i16, ptr %i.bh, align 2
  %.not92 = icmp eq i16 %i.bj, 17
  br i1 %.not92, label %bb.r, label %uv__ifaddr_exclude.exit83.thread

bb.r:                                             ; preds = %uv__ifaddr_exclude.exit83
  %i.bk = load i32, ptr %1, align 4               ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph108, label %uv__ifaddr_exclude.exit83.thread

.lr.ph108:                                        ; preds = %bb.r
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.2111, i64 8 ; 2 uses
  %.pre115 = load ptr, ptr %i.bn, align 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph108, %bb.v
  %i.bo = phi i32 [ %i.bk, %.lr.ph108 ], [ %i.bz, %bb.v ] ; 2 uses
  %i.bp = phi ptr [ %.pre115, %.lr.ph108 ], [ %i.ca, %bb.v ] ; 4 uses
  %.0106 = phi i32 [ 0, %.lr.ph108 ], [ %i.cc, %bb.v ]
  %.265105 = phi ptr [ %i.bm, %.lr.ph108 ], [ %i.cb, %bb.v ] ; 3 uses
  %i.bq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bp) #16 ; 2 uses
  %i.br = load ptr, ptr %.265105, align 8         ; 2 uses
  %i.bs = call i32 @strncmp(ptr noundef %i.br, ptr noundef nonnull %i.bp, i64 noundef %i.bq) #16
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1
  switch i8 %i.bv, label %bb.v [
    i8 0, label %bb.u
    i8 58, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bw = load ptr, ptr %i.bg, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.265105, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bx, ptr noundef nonnull align 4 dereferenceable(6) %i.by, i64 6, i1 false)
  %.pre = load ptr, ptr %i.bn, align 8
  %.pre116 = load i32, ptr %1, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %i.bz = phi i32 [ %i.bo, %bb.t ], [ %.pre116, %bb.u ], [ %i.bo, %bb.s ] ; 2 uses
  %i.ca = phi ptr [ %i.bp, %bb.t ], [ %.pre, %bb.u ], [ %i.bp, %bb.s ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.265105, i64 80
  %i.cc = add nuw nsw i32 %.0106, 1               ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.bz
  br i1 %i.cd, label %bb.s, label %uv__ifaddr_exclude.exit83.thread, !llvm.loop !32

uv__ifaddr_exclude.exit83.thread:                 ; preds = %bb.v, %bb.r, %bb.q, %.lr.ph112, %uv__ifaddr_exclude.exit83
  %.2 = load ptr, ptr %.2111, align 8             ; 2 uses
  %.not72 = icmp eq ptr %.2, null
  br i1 %.not72, label %._crit_edge113, label %.lr.ph112, !llvm.loop !33

._crit_edge113:                                   ; preds = %uv__ifaddr_exclude.exit83.thread, %bb.h, %.preheader
  %i.ce = phi ptr [ null, %bb.h ], [ null, %.preheader ], [ %.2109.pre, %uv__ifaddr_exclude.exit83.thread ]
  call void @freeifaddrs(ptr noundef %i.ce) #15
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge113, %bb.g, %bb.e, %bb.b
  %.066 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.e ], [ -12, %bb.g ], [ 0, %._crit_edge113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.066
}

; Function Attrs: nounwind
declare i32 @getifaddrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @uv__set_process_title(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (i32, ...) @prctl(i32 noundef 15, ptr noundef %0) #15 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @uv_get_free_memory() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %0 = alloca %struct.sysinfo, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = call i32 @uv__slurp(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.b, i64 noundef 4096) #15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %uv__read_proc_meminfo.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.18) #16 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %uv__read_proc_meminfo.exit.thread, label %uv__read_proc_meminfo.exit

uv__read_proc_meminfo.exit.thread:                ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.c

uv__read_proc_meminfo.exit:                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i64 0, ptr %i.a, align 8
  %i.g = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8
  %i.i = shl i64 %i.h, 10                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %uv__read_proc_meminfo.exit.thread, %uv__read_proc_meminfo.exit
  %i.j = call i32 @sysinfo(ptr noundef nonnull %0) #15
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.m, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %uv__read_proc_meminfo.exit, %bb.d
  %.0 = phi i64 [ %i.i, %uv__read_proc_meminfo.exit ], [ %i.q, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @sysinfo(ptr noundef) local_unnamed_addr #3
end_hunk_0
