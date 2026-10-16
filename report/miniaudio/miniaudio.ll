Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_slot_allocator_alloc:bb.a
  %i.cc = and i32 %i.bt, 128
  %.not.7.i.not.1 = icmp eq i32 %i.cc, 0
  br i1 %.not.7.i.not.1, label %ma_ffs_32.exit.1, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cd = and i32 %i.bt, 256
  %.not.8.i.not.1 = icmp eq i32 %i.cd, 0
  br i1 %.not.8.i.not.1, label %ma_ffs_32.exit.1, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ce = and i32 %i.bt, 512
  %.not.9.i.not.1 = icmp eq i32 %i.ce, 0
  br i1 %.not.9.i.not.1, label %ma_ffs_32.exit.1, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cf = and i32 %i.bt, 1024
  %.not.10.i.not.1 = icmp eq i32 %i.cf, 0
  br i1 %.not.10.i.not.1, label %ma_ffs_32.exit.1, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cg = and i32 %i.bt, 2048
  %.not.11.i.not.1 = icmp eq i32 %i.cg, 0
  br i1 %.not.11.i.not.1, label %ma_ffs_32.exit.1, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ch = and i32 %i.bt, 4096
  %.not.12.i.not.1 = icmp eq i32 %i.ch, 0
  br i1 %.not.12.i.not.1, label %ma_ffs_32.exit.1, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ci = and i32 %i.bt, 8192
  %.not.13.i.not.1 = icmp eq i32 %i.ci, 0
  br i1 %.not.13.i.not.1, label %ma_ffs_32.exit.1, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cj = and i32 %i.bt, 16384
  %.not.14.i.not.1 = icmp eq i32 %i.cj, 0
  br i1 %.not.14.i.not.1, label %ma_ffs_32.exit.1, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ck = and i32 %i.bt, 32768
  %.not.15.i.not.1 = icmp eq i32 %i.ck, 0
  br i1 %.not.15.i.not.1, label %ma_ffs_32.exit.1, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cl = and i32 %i.bt, 65536
  %.not.16.i.not.1 = icmp eq i32 %i.cl, 0
  br i1 %.not.16.i.not.1, label %ma_ffs_32.exit.1, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cm = and i32 %i.bt, 131072
  %.not.17.i.not.1 = icmp eq i32 %i.cm, 0
  br i1 %.not.17.i.not.1, label %ma_ffs_32.exit.1, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cn = and i32 %i.bt, 262144
  %.not.18.i.not.1 = icmp eq i32 %i.cn, 0
  br i1 %.not.18.i.not.1, label %ma_ffs_32.exit.1, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.co = and i32 %i.bt, 524288
  %.not.19.i.not.1 = icmp eq i32 %i.co, 0
  br i1 %.not.19.i.not.1, label %ma_ffs_32.exit.1, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cp = and i32 %i.bt, 1048576
  %.not.20.i.not.1 = icmp eq i32 %i.cp, 0
  br i1 %.not.20.i.not.1, label %ma_ffs_32.exit.1, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cq = and i32 %i.bt, 2097152
  %.not.21.i.not.1 = icmp eq i32 %i.cq, 0
  br i1 %.not.21.i.not.1, label %ma_ffs_32.exit.1, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cr = and i32 %i.bt, 4194304
  %.not.22.i.not.1 = icmp eq i32 %i.cr, 0
  br i1 %.not.22.i.not.1, label %ma_ffs_32.exit.1, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cs = and i32 %i.bt, 8388608
  %.not.23.i.not.1 = icmp eq i32 %i.cs, 0
  br i1 %.not.23.i.not.1, label %ma_ffs_32.exit.1, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ct = and i32 %i.bt, 16777216
  %.not.24.i.not.1 = icmp eq i32 %i.ct, 0
  br i1 %.not.24.i.not.1, label %ma_ffs_32.exit.1, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cu = and i32 %i.bt, 33554432
  %.not.25.i.not.1 = icmp eq i32 %i.cu, 0
  br i1 %.not.25.i.not.1, label %ma_ffs_32.exit.1, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cv = and i32 %i.bt, 67108864
  %.not.26.i.not.1 = icmp eq i32 %i.cv, 0
  br i1 %.not.26.i.not.1, label %ma_ffs_32.exit.1, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cw = and i32 %i.bt, 134217728
  %.not.27.i.not.1 = icmp eq i32 %i.cw, 0
  br i1 %.not.27.i.not.1, label %ma_ffs_32.exit.1, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cx = and i32 %i.bt, 268435456
  %.not.28.i.not.1 = icmp eq i32 %i.cx, 0
  br i1 %.not.28.i.not.1, label %ma_ffs_32.exit.1, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cy = and i32 %i.bt, 536870912
  %.not.29.i.not.1 = icmp eq i32 %i.cy, 0
  br i1 %.not.29.i.not.1, label %ma_ffs_32.exit.1, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cz = and i32 %i.bt, 1073741824
  %.not.30.i.not.1 = icmp eq i32 %i.cz, 0
  %spec.select.i47.1 = select i1 %.not.30.i.not.1, i32 30, i32 31
  br label %ma_ffs_32.exit.1

ma_ffs_32.exit.1:                                 ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.lcssa.i.1 = phi i32 [ 16, %bb.ba ], [ 0, %bb.ak ], [ 1, %bb.al ], [ 24, %bb.bi ], [ 2, %bb.am ], [ 20, %bb.be ], [ 3, %bb.an ], [ %spec.select.i47.1, %bb.bo ], [ 4, %bb.ao ], [ 17, %bb.bb ], [ 5, %bb.ap ], [ 29, %bb.bn ], [ 6, %bb.aq ], [ 23, %bb.bh ], [ 7, %bb.ar ], [ 28, %bb.bm ], [ 8, %bb.as ], [ 18, %bb.bc ], [ 9, %bb.at ], [ 27, %bb.bl ], [ 10, %bb.au ], [ 21, %bb.bf ], [ 11, %bb.av ], [ 26, %bb.bk ], [ 12, %bb.aw ], [ 19, %bb.bd ], [ 13, %bb.ax ], [ 25, %bb.bj ], [ 14, %bb.ay ], [ 22, %bb.bg ], [ 15, %bb.az ] ; 2 uses
  %i.da = shl nuw i32 1, %.0.lcssa.i.1
  %i.db = or i32 %i.da, %i.bt
  %i.dc = load ptr, ptr %0, align 8, !tbaa !159
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.1
  %i.de = cmpxchg volatile ptr %i.dd, i32 %i.bt, i32 %i.db seq_cst seq_cst, align 4
  %i.df = extractvalue { i32, i1 } %i.de, 1
  br i1 %i.df, label %.loopexit, label %bb.aj

bb.bp:                                            ; preds = %bb.aj
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.dg = load i32, ptr %i.c, align 4, !tbaa !161 ; 3 uses
  %i.dh = lshr i32 %i.dg, 5
  %i.di = and i32 %i.dg, 31
  %.not.i.1 = icmp ne i32 %i.di, 0
  %i.dj = zext i1 %.not.i.1 to i32
  %spec.select.i45.1 = add nuw nsw i32 %i.dh, %i.dj
  %i.dk = zext nneg i32 %spec.select.i45.1 to i64
  %i.dl = icmp samesign ult i64 %indvars.iv.next.1, %i.dk
  br i1 %i.dl, label %.preheader.1, label %._crit_edge.1, !llvm.loop !1220

._crit_edge.1:                                    ; preds = %bb.bp
  %i.dm = load i32, ptr %i.d, align 8, !tbaa !1221
  %i.dn = icmp ult i32 %i.dm, %i.dg
  br i1 %i.dn, label %bb.bq, label %.thread55

bb.bq:                                            ; preds = %._crit_edge.1
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  br label %.thread55

.thread55:                                        ; preds = %.preheader59.1, %.preheader60, %._crit_edge, %._crit_edge.1, %bb.bq, %.loopexit, %bb.ah, %bb.a
  %.6 = phi i32 [ -2, %bb.a ], [ 0, %bb.ah ], [ -4, %.loopexit ], [ -4, %.preheader60 ], [ -4, %._crit_edge ], [ -4, %bb.bq ], [ -4, %._crit_edge.1 ], [ -4, %.preheader59.1 ]
  ret i32 %.6
}

; Function Attrs: norecurse nounwind uwtable
define range(i32 -3, 1) i32 @ma_slot_allocator_free(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 5                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !161  ; 2 uses
  %i.f = lshr i32 %i.e, 5
  %i.g = and i32 %i.e, 31
  %.not.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not.i to i32
  %spec.select.i24 = add nuw nsw i32 %i.f, %i.h
  %.not = icmp samesign ult i32 %i.c, %spec.select.i24
  br i1 %.not, label %.critedge.preheader, label %.loopexit

.critedge.preheader:                              ; preds = %bb.b
  %i.i = and i32 %i.b, 31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = zext nneg i32 %i.c to i64                ; 2 uses
  %i.l = shl nuw i32 1, %i.i
  %i.m = xor i32 %i.l, -1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.c
  %i.n = load atomic i32, ptr %i.j seq_cst, align 8
  %.not22 = icmp eq i32 %i.n, 0
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.o = load ptr, ptr %0, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.k
  %i.q = load atomic i32, ptr %i.p seq_cst, align 4 ; 2 uses
  %i.r = and i32 %i.q, %i.m
  %i.s = load ptr, ptr %0, align 8, !tbaa !159
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.k
  %i.u = cmpxchg volatile ptr %i.t, i32 %i.q, i32 %i.r seq_cst seq_cst, align 4
  %.not23 = extractvalue { i32, i1 } %i.u, 1
  br i1 %.not23, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %2 = atomicrmw add ptr %i.j, i32 -1 seq_cst, align 8 ; 0 uses
  br label %.loopexit, !llvm.loop !4

.loopexit:                                        ; preds = %.critedge, %bb.d, %bb.b, %bb.a
  %.2 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ 0, %bb.d ], [ -3, %.critedge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_job_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_job) align 8 captures(address_is_null) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i16 %1, ptr %0, align 8, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 -1, ptr %i.a, align 2, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !166
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ma_job_process(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !119    ; 2 uses
  %i.c = icmp ugt i16 %i.b, 11
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i16 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @g_jobVTable, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ -2, %bb.a ], [ -3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @ma_job_queue_config_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.2.0.insert.ext = zext i32 %1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_job_queue_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !154
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !168  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = lshr i32 %i.d, 5
  %i.g = and i32 %i.d, 31
  %.not.i.i.i.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not.i.i.i.i to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.f, %i.h
  %i.i = shl nuw nsw i32 %spec.select.i.i.i.i, 2
  %narrow.i.i.i = add nuw nsw i32 %i.i, 4
  %i.j = and i32 %narrow.i.i.i, 2147483640
  %i.k = zext nneg i32 %i.j to i64
  %i.l = zext i32 %i.d to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 4
  %i.o = and i64 %i.n, 34359738360
  %i.p = mul nuw nsw i64 %i.l, 104
  %i.q = add nuw nsw i64 %i.o, %i.p
  %i.r = add nuw nsw i64 %i.q, %i.k
  store i64 %i.r, ptr %1, align 8, !tbaa !154
  br label %ma_job_queue_get_heap_layout.exit.thread

ma_job_queue_get_heap_layout.exit.thread:         ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_job_queue_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_job_queue_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit32

ma_zero_memory_default.exit32:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %2, i8 0, i64 192, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !168  ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %i.d, 5
  %i.g = and i32 %i.d, 31
  %.not.i.i.i.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not.i.i.i.i to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.f, %i.h
  %i.i = shl nuw nsw i32 %spec.select.i.i.i.i, 2
  %narrow.i.i.i = add nuw nsw i32 %i.i, 4
  %i.j = and i32 %narrow.i.i.i, 2147483640
  %i.k = zext nneg i32 %i.j to i64
  %i.l = zext i32 %i.d to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 4
  %i.o = and i64 %i.n, 34359738360
  %i.p = add nuw nsw i64 %i.o, %i.k               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr %1, ptr %i.q, align 8, !tbaa !171
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = mul nuw nsw i64 %i.l, 104
  %i.s = add nuw nsw i64 %i.p, %i.r
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.s, i1 false)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !168
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.c, %bb.d
  %i.t = phi i32 [ %i.d, %bb.c ], [ %.pre, %bb.d ] ; 6 uses
  %i.u = load i32, ptr %0, align 4, !tbaa !172
  store i32 %i.u, ptr %2, align 8, !tbaa !173
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.t, ptr %i.v, align 4, !tbaa !1222
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !174
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  %i.z = icmp eq i32 %i.t, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.z
  br i1 %or.cond, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit
  %i.aa = lshr i32 %i.t, 5
  %i.ab = and i32 %i.t, 31
  %.not.i.i.i = icmp ne i32 %i.ab, 0
  %i.ac = zext i1 %.not.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %i.aa, %i.ac
  %i.ad = shl nuw nsw i32 %spec.select.i.i.i, 2
  %narrow.i.i = add nuw nsw i32 %i.ad, 4
  %i.ae = and i32 %narrow.i.i, 2147483640
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = zext i32 %i.t to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 4
  %i.aj = and i64 %i.ai, 34359738360
  %i.ak = add nuw nsw i64 %i.aj, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr %1, ptr %i.al, align 8, !tbaa !158
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.ak, i1 false)
  store ptr %1, ptr %i.y, align 8, !tbaa !159
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.am, ptr %i.an, align 8, !tbaa !160
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.t, ptr %i.ao, align 4, !tbaa !161
  %i.ap = load i32, ptr %2, align 8, !tbaa !173
  %i.aq = and i32 %i.ap, 1
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %ma_semaphore_init.exit

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.as, align 8, !tbaa !145
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.au = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.at, ptr noundef null) #55
  %.not.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i, label %bb.g, label %ma_semaphore_init.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aw = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.av, ptr noundef null) #55
end_hunk_0
begin_hunk_1_@ma_job_queue_post:bb.a
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %bb.h, label %.backedge

bb.g:                                             ; preds = %bb.e
  %i.ay = and i64 %i.ac, -4294967296
  %i.az = add i64 %i.ay, 4294967296
  %i.ba = or disjoint i64 %i.am, %i.az
  %i.bb = cmpxchg volatile ptr %i.ab, i64 %i.ac, i64 %i.ba seq_cst seq_cst, align 8 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.f, %bb.d
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.bc = and i64 %i.ac, -4294967296
  %i.bd = add i64 %i.bc, 4294967296
  %i.be = or disjoint i64 %i.as, %i.bd
  %i.bf = cmpxchg volatile ptr %i.ab, i64 %i.ac, i64 %i.be seq_cst seq_cst, align 8 ; 0 uses
  store atomic volatile i32 0, ptr %i.s release, align 8
  %i.bg = load i32, ptr %0, align 8, !tbaa !173
  %i.bh = and i32 %i.bg, 1
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bk) #55 ; 0 uses
  %i.bm = load i32, ptr %i.bj, align 8, !tbaa !145
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !145
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bp = call i32 @pthread_cond_signal(ptr noundef nonnull %i.bo) #55 ; 0 uses
  %i.bq = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bk) #55 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ -2, %bb.a ], [ 0, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -51, 1) i32 @ma_job_queue_next(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !173
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #55 ; 0 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !145  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i, label %ma_semaphore_wait.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.l = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.k, ptr noundef nonnull %i.g) #55 ; 0 uses
  %i.m = load i32, ptr %i.f, align 8, !tbaa !145  ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %ma_semaphore_wait.exit, !llvm.loop !3

ma_semaphore_wait.exit:                           ; preds = %bb.d, %bb.c
  %.lcssa.i.i = phi i32 [ %i.i, %bb.c ], [ %i.m, %bb.d ]
  %i.o = add nsw i32 %.lcssa.i.i, -1
  store i32 %i.o, ptr %i.f, align 8, !tbaa !145
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #55 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %ma_semaphore_wait.exit, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.r = atomicrmw volatile xchg ptr %i.q, i32 1 acquire, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %ma_spinlock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.t = atomicrmw volatile xchg ptr %i.q, i32 1 acquire, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %ma_spinlock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.loopexit.i
  %i.v = load atomic volatile i32, ptr %i.q monotonic, align 8
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.x = load atomic volatile i32, ptr %i.q monotonic, align 8
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %ma_spinlock_lock.exit
  %i.ac = load atomic i64, ptr %i.z seq_cst, align 8 ; 6 uses
  %i.ad = load atomic i64, ptr %i.aa seq_cst, align 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !174
  %i.af = and i64 %i.ac, 65535
  %i.ag = getelementptr inbounds nuw [104 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load atomic i64, ptr %i.ah seq_cst, align 8 ; 2 uses
  %i.aj = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ak = xor i64 %i.aj, %i.ac
  %i.al = and i64 %i.ak, -4294901761
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.an = trunc i64 %i.ac to i16
  %i.ao = trunc i64 %i.ad to i16
  %i.ap = icmp eq i16 %i.an, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aq = and i64 %i.ai, 65535                    ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 65535
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic volatile i32 0, ptr %i.q release, align 8
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.as = and i64 %i.ad, -4294967296
  %i.at = add i64 %i.as, 4294967296
  %i.au = or disjoint i64 %i.aq, %i.at
  %i.av = cmpxchg volatile ptr %i.aa, i64 %i.ad, i64 %i.au seq_cst seq_cst, align 8 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.k, %bb.f
  br label %bb.f

bb.k:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !174
  %i.ax = and i64 %i.ai, 65535                    ; 2 uses
  %i.ay = getelementptr inbounds nuw [104 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.ay, i64 104, i1 false), !tbaa.struct !176
  %i.az = and i64 %i.ac, -4294967296
  %i.ba = add i64 %i.az, 4294967296
  %i.bb = or disjoint i64 %i.ax, %i.ba
  %i.bc = cmpxchg volatile ptr %i.z, i64 %i.ac, i64 %i.bb seq_cst seq_cst, align 8
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.l, label %.backedge

bb.l:                                             ; preds = %bb.k
  store atomic volatile i32 0, ptr %i.q release, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bf = trunc i64 %i.ac to i32                  ; 2 uses
  %i.bg = lshr i32 %i.bf, 5                       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !161 ; 2 uses
  %i.bj = lshr i32 %i.bi, 5
  %i.bk = and i32 %i.bi, 31
  %.not.i.i = icmp ne i32 %i.bk, 0
  %i.bl = zext i1 %.not.i.i to i32
  %spec.select.i24.i = add nuw nsw i32 %i.bj, %i.bl
  %.not.i = icmp samesign ult i32 %i.bg, %spec.select.i24.i
  br i1 %.not.i, label %.critedge.preheader.i, label %ma_slot_allocator_free.exit

.critedge.preheader.i:                            ; preds = %bb.l
  %i.bm = and i32 %i.bf, 31
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bo = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bp = shl nuw i32 1, %i.bm
  %i.bq = xor i32 %i.bp, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %.critedge.preheader.i
  %i.br = load atomic i32, ptr %i.bn seq_cst, align 8
  %.not22.i = icmp eq i32 %i.br, 0
  br i1 %.not22.i, label %ma_slot_allocator_free.exit, label %bb.m

bb.m:                                             ; preds = %.critedge.i
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !159
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bo
  %i.bu = load atomic i32, ptr %i.bt seq_cst, align 4 ; 2 uses
  %i.bv = and i32 %i.bu, %i.bq
  %i.bw = load ptr, ptr %i.be, align 8, !tbaa !159
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bo
  %i.by = cmpxchg volatile ptr %i.bx, i32 %i.bu, i32 %i.bv seq_cst seq_cst, align 4
  %.not23.i = extractvalue { i32, i1 } %i.by, 1
  br i1 %.not23.i, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %2 = atomicrmw add ptr %i.bn, i32 -1 seq_cst, align 8 ; 0 uses
  br label %ma_slot_allocator_free.exit, !llvm.loop !4

ma_slot_allocator_free.exit:                      ; preds = %.critedge.i, %bb.l, %bb.n
  %i.bz = load i16, ptr %1, align 8, !tbaa !119
  %i.ca = icmp eq i16 %i.bz, 0
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %ma_slot_allocator_free.exit
  %i.cb = tail call i32 @ma_job_queue_post(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %ma_slot_allocator_free.exit, %bb.a, %bb.o, %bb.i
  %.0 = phi i32 [ -2, %bb.a ], [ -32, %bb.i ], [ -51, %bb.o ], [ 0, %ma_slot_allocator_free.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @ma_dlopen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef %1) ; 0 uses
  %i.b = tail call ptr @dlopen(ptr noundef %1, i32 noundef 2) #55 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @ma_dlclose(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @dlclose(ptr noundef %1) #55 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define ptr @ma_dlsym(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef %2) ; 0 uses
  %i.b = tail call ptr @dlsym(ptr noundef %1, ptr noundef %2) #55 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_device_info_add_native_data_format(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !178  ; 3 uses
  %i.d = icmp ult i32 %i.c, 64
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e ; 4 uses
  store i32 %1, ptr %i.g, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %2, ptr %i.h, align 4, !tbaa !181
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %3, ptr %i.i, align 8, !tbaa !182
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %4, ptr %i.j, align 4, !tbaa !183
  %i.k = add nuw nsw i32 %i.c, 1
  store i32 %i.k, ptr %i.b, align 4, !tbaa !178
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @ma_get_backend_name(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ @.str.9, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @ma_get_backend_from_name(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.187)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.188)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.f = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.189)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.h = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.190)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.j = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.191)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.l = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.192)
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.n = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.193)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.p = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.194)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.r = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.195)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.t = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.196)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.v = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.197)
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.x = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.198)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.z = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.199)
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.ab = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.200)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.ad = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.201)
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ @gBackendInfo, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 16), %.preheader.1 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 32), %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 48), %.preheader.3 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 64), %.preheader.4 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 80), %.preheader.5 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 96), %.preheader.6 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 112), %.preheader.7 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 128), %.preheader.8 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 144), %.preheader.9 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 160), %.preheader.10 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 176), %.preheader.11 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 192), %.preheader.12 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 208), %.preheader.13 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 224), %.preheader.14 ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@ma_resource_manager_data_buffer_node_unacquire:bb.a
  %i.ah = and i32 %i.g, 1
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ %i.l, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.03942.i.i.epil.init = phi i32 [ 42, %.lr.ph.preheader.i.i ], [ %i.ag, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod122 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ai = shl nsw i64 %indvars.iv.i.i.epil.init, 2
  %i.aj = getelementptr inbounds i8, ptr %i.j, i64 %i.ai
  %.0.copyload.i.i.i.epil = load i32, ptr %i.aj, align 1
  %i.ak = mul i32 %.0.copyload.i.i.i.epil, -862048943 ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 15)
  %i.am = mul i32 %i.al, 461845907
  %i.an = xor i32 %i.am, %.03942.i.i.epil.init    ; 2 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 13)
  %i.ap = mul i32 %i.ao, 5
  %i.aq = add i32 %i.ap, -430675100
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.e
  %.039.lcssa.i.i = phi i32 [ 42, %bb.e ], [ %i.ag, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.ar = and i32 %i.f, 3
  switch i32 %i.ar, label %default.unreachable [
    i32 3, label %bb.f
    i32 2, label %bb.g
    i32 1, label %bb.h
    i32 0, label %ma_hash_string_32.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !119
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.038.i.i = phi i32 [ %i.av, %bb.f ], [ 0, %._crit_edge.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !119
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = or disjoint i32 %i.az, %.038.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.1.i.i = phi i32 [ %i.ba, %bb.g ], [ 0, %._crit_edge.i.i ]
  %i.bb = load i8, ptr %i.j, align 1, !tbaa !119
  %i.bc = zext i8 %i.bb to i32
  %i.bd = xor i32 %.1.i.i, %i.bc
  %i.be = mul i32 %i.bd, -862048943               ; 2 uses
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %i.be, i32 %i.be, i32 15)
  %i.bg = mul i32 %i.bf, 461845907
  %i.bh = xor i32 %i.bg, %.039.lcssa.i.i
  br label %ma_hash_string_32.exit

default.unreachable:                              ; preds = %._crit_edge.i.i
  unreachable

ma_hash_string_32.exit:                           ; preds = %._crit_edge.i.i, %bb.h
  %.140.i.i = phi i32 [ %i.bh, %bb.h ], [ %.039.lcssa.i.i, %._crit_edge.i.i ]
  %i.bi = xor i32 %.140.i.i, %i.f                 ; 2 uses
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = xor i32 %i.bj, %i.bi
  %i.bl = mul i32 %i.bk, -2048144789              ; 2 uses
  %i.bm = lshr i32 %i.bl, 13
  %i.bn = xor i32 %i.bm, %i.bl
  %i.bo = mul i32 %i.bn, -1028477387              ; 2 uses
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = xor i32 %i.bp, %i.bo
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.br = tail call i64 @ma_wcslen(ptr noundef readonly %3) ; 4 uses
  %.tr.i = trunc i64 %i.br to i32
  %i.bs = shl i32 %.tr.i, 2                       ; 4 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %3, i64 %i.bt ; 3 uses
  %i.bv = icmp eq i32 %i.bs, 0
  br i1 %i.bv, label %ma_hash_string_w_32.exit, label %.lr.ph.preheader.i.i50

.lr.ph.preheader.i.i50:                           ; preds = %bb.i
  %i.bw = ashr exact i32 %i.bs, 2
  %i.bx = sub nsw i32 0, %i.bw
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = shl i64 %i.br, 34                       ; 2 uses
  %xtraiter123 = and i64 %i.br, 1                 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 17179869184
  br i1 %i.ca, label %.lr.ph.i.i51.epil.preheader, label %.lr.ph.preheader.i.i50.new

.lr.ph.preheader.i.i50.new:                       ; preds = %.lr.ph.preheader.i.i50
  %i.cb = ashr exact i64 %i.bz, 34
  %unroll_iter127 = sub nsw i64 %i.cb, %xtraiter123
  br label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51, %.lr.ph.preheader.i.i50.new
  %indvars.iv.i.i52 = phi i64 [ %i.by, %.lr.ph.preheader.i.i50.new ], [ %indvars.iv.next.i.i55.1, %.lr.ph.i.i51 ] ; 3 uses
  %.03942.i.i53 = phi i32 [ 42, %.lr.ph.preheader.i.i50.new ], [ %i.ct, %.lr.ph.i.i51 ]
  %niter128 = phi i64 [ 0, %.lr.ph.preheader.i.i50.new ], [ %niter128.next.1, %.lr.ph.i.i51 ]
  %i.cc = shl nsw i64 %indvars.iv.i.i52, 2
  %i.cd = getelementptr inbounds i8, ptr %i.bu, i64 %i.cc
  %.0.copyload.i.i.i54 = load i32, ptr %i.cd, align 1
  %i.ce = mul i32 %.0.copyload.i.i.i54, -862048943 ; 2 uses
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 15)
  %i.cg = mul i32 %i.cf, 461845907
  %i.ch = xor i32 %i.cg, %.03942.i.i53            ; 2 uses
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 13)
  %i.cj = mul i32 %i.ci, 5
  %i.ck = add i32 %i.cj, -430675100
  %indvars.iv.next.i.i55 = shl i64 %indvars.iv.i.i52, 2
  %i.cl = getelementptr i8, ptr %i.bu, i64 %indvars.iv.next.i.i55
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %.0.copyload.i.i.i54.1 = load i32, ptr %i.cm, align 1
  %i.cn = mul i32 %.0.copyload.i.i.i54.1, -862048943 ; 2 uses
  %i.co = tail call i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.cn, i32 15)
  %i.cp = mul i32 %i.co, 461845907
  %i.cq = xor i32 %i.cp, %i.ck                    ; 2 uses
  %i.cr = tail call i32 @llvm.fshl.i32(i32 %i.cq, i32 %i.cq, i32 13)
  %i.cs = mul i32 %i.cr, 5
  %i.ct = add i32 %i.cs, -430675100               ; 3 uses
  %indvars.iv.next.i.i55.1 = add nsw i64 %indvars.iv.i.i52, 2 ; 2 uses
  %niter128.next.1 = add i64 %niter128, 2         ; 2 uses
  %niter128.ncmp.1 = icmp eq i64 %niter128.next.1, %unroll_iter127
  br i1 %niter128.ncmp.1, label %ma_hash_string_w_32.exit.loopexit.unr-lcssa, label %.lr.ph.i.i51, !llvm.loop !81

ma_hash_string_w_32.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph.i.i51
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %ma_hash_string_w_32.exit, label %.lr.ph.i.i51.epil.preheader

.lr.ph.i.i51.epil.preheader:                      ; preds = %ma_hash_string_w_32.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i50
  %indvars.iv.i.i52.epil.init = phi i64 [ %i.by, %.lr.ph.preheader.i.i50 ], [ %indvars.iv.next.i.i55.1, %ma_hash_string_w_32.exit.loopexit.unr-lcssa ]
  %.03942.i.i53.epil.init = phi i32 [ 42, %.lr.ph.preheader.i.i50 ], [ %i.ct, %ma_hash_string_w_32.exit.loopexit.unr-lcssa ]
  %lcmp.mod126 = trunc i64 %i.br to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.cu = shl nsw i64 %indvars.iv.i.i52.epil.init, 2
  %i.cv = getelementptr inbounds i8, ptr %i.bu, i64 %i.cu
  %.0.copyload.i.i.i54.epil = load i32, ptr %i.cv, align 1
  %i.cw = mul i32 %.0.copyload.i.i.i54.epil, -862048943 ; 2 uses
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 15)
  %i.cy = mul i32 %i.cx, 461845907
  %i.cz = xor i32 %i.cy, %.03942.i.i53.epil.init  ; 2 uses
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 13)
  %i.db = mul i32 %i.da, 5
  %i.dc = add i32 %i.db, -430675100
  br label %ma_hash_string_w_32.exit

ma_hash_string_w_32.exit:                         ; preds = %.lr.ph.i.i51.epil.preheader, %ma_hash_string_w_32.exit.loopexit.unr-lcssa, %bb.i
  %.039.lcssa.i.i57 = phi i32 [ 42, %bb.i ], [ %i.ct, %ma_hash_string_w_32.exit.loopexit.unr-lcssa ], [ %i.dc, %.lr.ph.i.i51.epil.preheader ]
  %i.dd = xor i32 %.039.lcssa.i.i57, %i.bs        ; 2 uses
  %i.de = lshr i32 %i.dd, 16
  %i.df = xor i32 %i.de, %i.dd
  %i.dg = mul i32 %i.df, -2048144789              ; 2 uses
  %i.dh = lshr i32 %i.dg, 13
  %i.di = xor i32 %i.dh, %i.dg
  %i.dj = mul i32 %i.di, -1028477387              ; 2 uses
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = xor i32 %i.dk, %i.dj
  br label %bb.j

bb.j:                                             ; preds = %ma_hash_string_32.exit, %ma_hash_string_w_32.exit, %bb.b
  %.037 = phi i32 [ %i.bq, %ma_hash_string_32.exit ], [ %i.dl, %ma_hash_string_w_32.exit ], [ 0, %bb.b ] ; 2 uses
  %i.dm = getelementptr i8, ptr %0, i64 68        ; 3 uses
  %.val.i = load i32, ptr %i.dm, align 4, !tbaa !876
  %i.dn = and i32 %.val.i, 2
  %.not.not.i = icmp eq i32 %i.dn, 0
  br i1 %.not.not.i, label %bb.k, label %ma_resource_manager_data_buffer_bst_lock.exit

bb.k:                                             ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dp = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.do) #55 ; 0 uses
  br label %ma_resource_manager_data_buffer_bst_lock.exit

ma_resource_manager_data_buffer_bst_lock.exit:    ; preds = %bb.j, %bb.k
  br i1 %i.b, label %bb.l, label %ma_resource_manager_data_buffer_node_search.exit

bb.l:                                             ; preds = %ma_resource_manager_data_buffer_bst_lock.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.014.i = load ptr, ptr %i.dq, align 8, !tbaa !905 ; 2 uses
  %.not15.i = icmp eq ptr %.014.i, null
  br i1 %.not15.i, label %ma_resource_manager_data_buffer_bst_unlock.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.016.i = phi ptr [ %.0.i, %bb.m ], [ %.014.i, %bb.l ] ; 3 uses
  %i.dr = load i32, ptr %.016.i, align 8, !tbaa !915 ; 2 uses
  %i.ds = icmp eq i32 %.037, %i.dr
  br i1 %i.ds, label %ma_resource_manager_data_buffer_node_search.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.dt = icmp ult i32 %.037, %i.dr
  %.1.in.v.i = select i1 %i.dt, i64 96, i64 104
  %.1.in.i = getelementptr inbounds nuw i8, ptr %.016.i, i64 %.1.in.v.i
  %.0.i = load ptr, ptr %.1.in.i, align 8, !tbaa !905 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %ma_resource_manager_data_buffer_bst_unlock.exit, label %.lr.ph.i, !llvm.loop !2667

ma_resource_manager_data_buffer_node_search.exit: ; preds = %.lr.ph.i, %ma_resource_manager_data_buffer_bst_lock.exit
  %.0 = phi ptr [ %1, %ma_resource_manager_data_buffer_bst_lock.exit ], [ %.016.i, %.lr.ph.i ] ; 11 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %6 = atomicrmw add ptr %i.du, i32 -1 seq_cst, align 4
  %i.dv = icmp eq i32 %6, 1                       ; 2 uses
  br i1 %i.dv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ma_resource_manager_data_buffer_node_search.exit
  tail call fastcc void @ma_resource_manager_data_buffer_node_remove(ptr noundef %0, ptr noundef nonnull %.0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %ma_resource_manager_data_buffer_node_search.exit
  %.val.i58 = load i32, ptr %i.dm, align 4, !tbaa !876
  %i.dw = and i32 %.val.i58, 2
  %.not.not.i59 = icmp eq i32 %i.dw, 0
  br i1 %.not.not.i59, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dy = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dx) #55 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  br i1 %i.dv, label %bb.r, label %ma_resource_manager_data_buffer_bst_unlock.exit

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 4 uses
  %i.ea = load atomic i32, ptr %i.dz seq_cst, align 8
  %i.eb = icmp eq i32 %i.ea, -19
  br i1 %i.eb, label %ma_resource_manager_post_job.exit, label %bb.w

ma_resource_manager_post_job.exit:                ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ec = atomicrmw xchg ptr %i.dz, i32 -22 seq_cst, align 8 ; 0 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx, i8 0, i64 88, i1 false)
  store i16 3, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 -1, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !119
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -1, ptr %.sroa.667.0..sroa_idx, align 8, !tbaa !164
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.ee = atomicrmw add ptr %i.ed, i32 1 seq_cst, align 4
  store i32 %i.ee, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !908
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.ef, align 8, !tbaa !119
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.0, ptr %i.eg, align 8, !tbaa !119
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ei = call i32 @ma_job_queue_post(ptr noundef nonnull %i.eh, ptr noundef nonnull readonly %5) ; 3 uses
  %.not49 = icmp eq i32 %i.ei, 0
  br i1 %.not49, label %bb.s, label %ma_resource_manager_get_log.exit

ma_resource_manager_get_log.exit:                 ; preds = %ma_resource_manager_post_job.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !874
  %i.el = call ptr @ma_result_description(i32 noundef %i.ei)
  %i.em = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ek, i32 noundef 1, ptr noundef nonnull @.str.506, ptr noundef nonnull %i.el) ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %ma_resource_manager_post_job.exit
  %.val = load i32, ptr %i.dm, align 4, !tbaa !876
  %i.en = and i32 %.val, 2
  %.not = icmp eq i32 %i.en, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.eo = load atomic i32, ptr %i.dz seq_cst, align 8
  %i.ep = icmp eq i32 %i.eo, -19
  br i1 %i.ep, label %ma_resource_manager_next_job.exit.i, label %.loopexit

bb.t:                                             ; preds = %ma_resource_manager_process_next_job.exit.thread, %ma_resource_manager_process_next_job.exit
  %.0.i64114 = phi i32 [ -3, %ma_resource_manager_process_next_job.exit.thread ], [ %.0.i64, %ma_resource_manager_process_next_job.exit ]
  %i.eq = load atomic i32, ptr %i.dz seq_cst, align 8
  %i.er = icmp eq i32 %i.eq, -19
  br i1 %i.er, label %ma_resource_manager_next_job.exit.i, label %.loopexit

ma_resource_manager_next_job.exit.i:              ; preds = %.preheader, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.es = call i32 @ma_job_queue_next(ptr noundef nonnull %i.eh, ptr noundef nonnull %4), !inline_history !925 ; 2 uses
  %.not.i63 = icmp eq i32 %i.es, 0
  br i1 %.not.i63, label %bb.u, label %ma_resource_manager_process_next_job.exit

bb.u:                                             ; preds = %ma_resource_manager_next_job.exit.i
  %i.et = load i16, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.eu = icmp ugt i16 %i.et, 11
  br i1 %i.eu, label %ma_resource_manager_process_next_job.exit.thread, label %bb.v

ma_resource_manager_process_next_job.exit.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.ev = zext nneg i16 %i.et to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr @g_jobVTable, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !134
  %i.ey = call i32 %i.ex(ptr noundef nonnull %4) #55, !inline_history !926
  br label %ma_resource_manager_process_next_job.exit

ma_resource_manager_process_next_job.exit:        ; preds = %ma_resource_manager_next_job.exit.i, %bb.v
  %.0.i64 = phi i32 [ %i.es, %ma_resource_manager_next_job.exit.i ], [ %i.ey, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  switch i32 %.0.i64, label %bb.t [
    i32 -32, label %.loopexit
    i32 -51, label %.loopexit
  ]

.loopexit:                                        ; preds = %ma_resource_manager_process_next_job.exit, %ma_resource_manager_process_next_job.exit, %bb.t, %.preheader, %bb.s, %ma_resource_manager_get_log.exit
  %spec.select = phi i32 [ %i.ei, %ma_resource_manager_get_log.exit ], [ 0, %bb.s ], [ 0, %.preheader ], [ 0, %ma_resource_manager_process_next_job.exit ], [ 0, %ma_resource_manager_process_next_job.exit ], [ %.0.i64114, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %ma_resource_manager_data_buffer_bst_unlock.exit

bb.w:                                             ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !886
  %.not.i65 = icmp eq i32 %i.fa, 0
  br i1 %.not.i65, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 3 uses
  %i.fc = load atomic i32, ptr %i.fb seq_cst, align 8
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 4 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !119 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !132 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.fi, null
  br i1 %.not9.i.i, label %.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = load ptr, ptr %0, align 8, !tbaa !126
  tail call void %i.fi(ptr noundef nonnull %i.ff, ptr noundef %i.fj) #55, !inline_history !2668
  br label %.sink.split.i

bb.ab:                                            ; preds = %bb.x
  %i.fk = load atomic i32, ptr %i.fb seq_cst, align 8
  %i.fl = icmp eq i32 %i.fk, 2
  br i1 %i.fl, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 4 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !119 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !132 ; 2 uses
  %.not9.i17.i = icmp eq ptr %i.fq, null
  br i1 %.not9.i17.i, label %.sink.split.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fr = load ptr, ptr %0, align 8, !tbaa !126
  tail call void %i.fq(ptr noundef nonnull %i.fn, ptr noundef %i.fr) #55, !inline_history !2668
  br label %.sink.split.i

bb.af:                                            ; preds = %bb.ab
  %i.fs = load atomic i32, ptr %i.fb seq_cst, align 8
  %i.ft = icmp eq i32 %i.fs, 3
  br i1 %i.ft, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.fu = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.fv = load atomic volatile i64, ptr %i.fu seq_cst, align 8 ; 2 uses
  %.not9.i19.i = icmp eq i64 %i.fv, 0
  br i1 %.not9.i19.i, label %.thread.i, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %bb.ag
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i66, %ma_free.exit.i.i
  %.010.i.i.in = phi i64 [ %i.fx, %ma_free.exit.i.i ], [ %i.fv, %.lr.ph.i.i66 ]
  %.010.i.i = inttoptr i64 %.010.i.i.in to ptr    ; 2 uses
  %i.fx = load atomic volatile i64, ptr %.010.i.i seq_cst, align 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !132 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not9.i.i.i, label %ma_free.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split.i.i
  %i.fz = load ptr, ptr %0, align 8, !tbaa !126
  tail call void %i.fy(ptr noundef nonnull %.010.i.i, ptr noundef %i.fz) #55, !inline_history !2669
  br label %ma_free.exit.i.i

ma_free.exit.i.i:                                 ; preds = %bb.ah, %.lr.ph.split.i.i
  %.not.i20.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i20.i, label %.thread.i, label %.lr.ph.split.i.i, !llvm.loop !44

.sink.split.i:                                    ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.fm, %bb.ae ], [ %i.fe, %bb.y ], [ %i.fe, %bb.z ], [ %i.fe, %bb.aa ], [ %i.fm, %bb.ac ], [ %i.fm, %bb.ad ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  br label %.thread.i

.thread.i:                                        ; preds = %ma_free.exit.i.i, %bb.w, %bb.af, %bb.ag, %.sink.split.i
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_2
begin_hunk_3_@ma_engine_listener_get_cone:bb.a
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %3, align 4, !tbaa !349
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not18 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store float 0.000000e+00, ptr %4, align 4, !tbaa !349
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_spatializer_listener_get_cone.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1018
  %.not19 = icmp ult i32 %1, %i.c
  br i1 %.not19, label %bb.i, label %ma_spatializer_listener_get_cone.exit

bb.i:                                             ; preds = %bb.h
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %i.e ; 3 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !486
  store float %i.h, ptr %2, align 4, !tbaa !349
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !487
  store float %i.j, ptr %3, align 4, !tbaa !349
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not18, label %ma_spatializer_listener_get_cone.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.l = load float, ptr %i.k, align 4, !tbaa !488
  store float %i.l, ptr %4, align 4, !tbaa !349
  br label %ma_spatializer_listener_get_cone.exit

ma_spatializer_listener_get_cone.exit:            ; preds = %bb.n, %bb.m, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_engine_listener_set_world_up(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #50 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1018
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.sroa.03.0.vec.insert.i.i = insertelement <2 x float> poison, float %2, i64 0
  %.sroa.03.4.vec.insert.i.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i.i, float %3, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.g, align 4, !tbaa !349
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store float %4, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !349
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @ma_engine_listener_get_world_up(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #38 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1018
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.g, align 4, !tbaa !349
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !349
  %i.h = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.04.0.copyload.i, 0
  %i.i = insertvalue { <2 x float>, float } %i.h, float %.sroa.3.0.copyload.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.pn = phi { <2 x float>, float } [ %i.i, %bb.c ], [ { <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00 }, %bb.b ], [ { <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00 }, %bb.a ]
  ret { <2 x float>, float } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_engine_listener_set_enabled(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1018
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 880
  store i32 %2, ptr %i.f, align 8, !tbaa !482
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ma_engine_play_sound_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ma_sound_config, align 8    ; 18 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  %spec.select = select i1 %i.c, i32 0, i32 %3
  %spec.select117 = select i1 %i.c, ptr %i.d, ptr %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1268 ; 6 uses
  %i.f = atomicrmw volatile xchg ptr %i.e, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_spinlock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.h = atomicrmw volatile xchg ptr %i.e, i32 1 acquire, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %ma_spinlock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.loopexit.i
  %i.j = load atomic volatile i32, ptr %i.e monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.l = load atomic volatile i32, ptr %i.e monotonic, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 5 uses
  %.067119 = load ptr, ptr %i.n, align 8, !tbaa !2771 ; 2 uses
  %.not120 = icmp eq ptr %.067119, null
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ma_spinlock_lock.exit, %ma_sound_at_end.exit.thread
  %.067121 = phi ptr [ %.067, %ma_sound_at_end.exit.thread ], [ %.067119, %ma_spinlock_lock.exit ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.067121, i64 952
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1055
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %ma_sound_at_end.exit.thread, label %ma_sound_at_end.exit

ma_sound_at_end.exit:                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.067121, i64 968
  %i.s = load atomic i32, ptr %i.r seq_cst, align 8
  %.not79 = icmp eq i32 %i.s, 0
  br i1 %.not79, label %ma_sound_at_end.exit.thread, label %bb.c

ma_sound_at_end.exit.thread:                      ; preds = %.lr.ph, %ma_sound_at_end.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.067121, i64 1024
  %.067 = load ptr, ptr %i.t, align 8, !tbaa !2771 ; 2 uses
  %.not = icmp eq ptr %.067, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2768

bb.c:                                             ; preds = %ma_sound_at_end.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %5 = atomicrmw add ptr %i.u, i32 -1 seq_cst, align 8 ; 0 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !1042
  %i.w = icmp eq ptr %i.v, %.067121
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.067121, i64 1024
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1050
  store ptr %i.y, ptr %i.n, align 8, !tbaa !1042
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.067121, i64 1032
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2772 ; 3 uses
  %.not81 = icmp eq ptr %i.aa, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.067121, i64 1024
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1050 ; 3 uses
  br i1 %.not81, label %._crit_edge123, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1024
  store ptr %.pre, ptr %i.ab, align 8, !tbaa !1050
  br label %._crit_edge123

._crit_edge123:                                   ; preds = %bb.e, %bb.f
  %.not82 = icmp eq ptr %.pre, null
  br i1 %.not82, label %ma_malloc.exit.thread101, label %bb.g

bb.g:                                             ; preds = %._crit_edge123
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 1032
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !2772
  br label %ma_malloc.exit.thread101

ma_malloc.exit.thread101:                         ; preds = %._crit_edge123, %bb.g
  tail call void @ma_sound_uninit(ptr noundef nonnull %.067121)
  br label %ma_sound_init_from_file.exit

._crit_edge:                                      ; preds = %ma_sound_at_end.exit.thread, %ma_spinlock_lock.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !125 ; 2 uses
  %.not8.i = icmp eq ptr %i.ae, null
  br i1 %.not8.i, label %ma_free.exit.thread, label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !126
  %i.ah = tail call ptr %i.ae(i64 noundef 1040, ptr noundef %i.ag) #55, !inline_history !127 ; 2 uses
  %.not83 = icmp eq ptr %i.ah, null
  br i1 %.not83, label %ma_free.exit.thread, label %ma_sound_init_from_file.exit

ma_sound_init_from_file.exit:                     ; preds = %ma_malloc.exit.thread101, %ma_malloc.exit
  %.1104 = phi ptr [ %.067121, %ma_malloc.exit.thread101 ], [ %i.ah, %ma_malloc.exit ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !1011, !noalias !2773
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.sroa.711.112.copyload.i = load i32, ptr %i.ak, align 8, !tbaa !118
  %.sroa.9.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1316
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.112..sroa_idx.i, i64 16, i1 false)
  %.sroa.10.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1332
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.112..sroa_idx.i, i64 20, i1 false)
  %.sroa.11.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.al, i8 0, i64 36, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !118
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 -1, ptr %.sroa.59.0..sroa_idx.i, align 8, !tbaa !164
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !164
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 -1, ptr %.sroa.610.0..sroa_idx.i, align 8, !tbaa !164
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i32 %.sroa.711.112.copyload.i, ptr %.sroa.711.0..sroa_idx.i, align 8, !tbaa !118
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.am = load <2 x i32>, ptr %.sroa.11.112..sroa_idx.i, align 8
  store <2 x i32> %i.am, ptr %.sroa.11.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx.i, i8 0, i64 48, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !1056
  store i32 28676, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !1057
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.an, align 8, !tbaa !1058
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr null, ptr %i.ao, align 8, !tbaa !1059
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %.1104, i8 0, i64 1024, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.1104, i64 960
  store i64 -1, ptr %i.ap, align 8, !tbaa !1060
  %i.aq = getelementptr inbounds nuw i8, ptr %.1104, i64 976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = call i32 @ma_sound_init_from_file_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, ptr noundef nonnull %.1104) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.k

bb.h:                                             ; preds = %ma_sound_init_from_file.exit
  %i.at = tail call i32 @ma_node_attach_output_bus(ptr noundef nonnull %.1104, i32 noundef 0, ptr noundef nonnull %spec.select117, i32 noundef %spec.select) ; 3 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !1042 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1104, i64 1024
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !1050
  %i.ax = getelementptr inbounds nuw i8, ptr %.1104, i64 1032
  store ptr null, ptr %i.ax, align 8, !tbaa !2772
  store ptr %.1104, ptr %i.n, align 8, !tbaa !1042
  %.not84 = icmp eq ptr %i.av, null
  br i1 %.not84, label %ma_sound_get_engine.exit.i.i, label %.split

.split:                                           ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1032
  store ptr %.1104, ptr %i.ay, align 8, !tbaa !2772
  br label %ma_sound_get_engine.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !132 ; 2 uses
  %.not9.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i, label %ma_free.exit.thread, label %ma_free.exit.thread.sink.split

bb.k:                                             ; preds = %ma_sound_init_from_file.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !132 ; 2 uses
  %.not9.i90 = icmp eq ptr %i.bc, null
  br i1 %.not9.i90, label %ma_free.exit.thread, label %ma_free.exit.thread.sink.split

ma_free.exit.thread.sink.split:                   ; preds = %bb.k, %bb.j
  %.sink139 = phi ptr [ %i.ba, %bb.j ], [ %i.bc, %bb.k ]
  %.065.ph.ph = phi i32 [ %i.at, %bb.j ], [ %i.ar, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !126
  tail call void %.sink139(ptr noundef nonnull %.1104, ptr noundef %i.be) #55
  br label %ma_free.exit.thread

ma_free.exit.thread:                              ; preds = %ma_free.exit.thread.sink.split, %ma_malloc.exit, %bb.j, %bb.k, %._crit_edge
  %.065.ph = phi i32 [ -4, %._crit_edge ], [ %i.ar, %bb.k ], [ %i.at, %bb.j ], [ -4, %ma_malloc.exit ], [ %.065.ph.ph, %ma_free.exit.thread.sink.split ]
  store atomic volatile i32 0, ptr %i.e release, align 4
  br label %bb.p

ma_sound_get_engine.exit.i.i:                     ; preds = %bb.i, %.split
  store atomic volatile i32 0, ptr %i.e release, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.1104, i64 360
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1051 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %ma_node_get_state.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %ma_sound_get_engine.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 440
  %i.bj = load atomic i64, ptr %i.bi seq_cst, align 8
  br label %ma_node_get_state.exit.i.i.i.i

ma_node_get_state.exit.i.i.i.i:                   ; preds = %bb.l, %ma_sound_get_engine.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.bj, %bb.l ], [ 0, %ma_sound_get_engine.exit.i.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1104, i64 56 ; 2 uses
  %i.bl = load atomic i32, ptr %i.bk seq_cst, align 8
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %ma_sound_is_playing.exit.thread.i, label %ma_node_get_state_time.exit.i.i.i.i

ma_node_get_state_time.exit.i.i.i.i:              ; preds = %ma_node_get_state.exit.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.1104, i64 72
  %i.bo = load atomic i64, ptr %i.bn seq_cst, align 8
  %i.bp = icmp ult i64 %i.bo, %.0.i.i.i.i
  br i1 %i.bp, label %ma_sound_is_playing.exit.thread.i, label %ma_sound_is_playing.exit.i

ma_sound_is_playing.exit.i:                       ; preds = %ma_node_get_state_time.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.1104, i64 64
  %i.br = load atomic i64, ptr %i.bq seq_cst, align 8
  %.not32.i = icmp ugt i64 %i.br, %.0.i.i.i.i
  br i1 %.not32.i, label %ma_sound_is_playing.exit.thread.i, label %ma_sound_start.exit

ma_sound_is_playing.exit.thread.i:                ; preds = %ma_sound_is_playing.exit.i, %ma_node_get_state_time.exit.i.i.i.i, %ma_node_get_state.exit.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.1104, i64 952 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1055
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %ma_node_set_state.exit.i, label %ma_sound_at_end.exit.i

ma_sound_at_end.exit.i:                           ; preds = %ma_sound_is_playing.exit.thread.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.1104, i64 968 ; 4 uses
  %i.bw = load atomic i32, ptr %i.bv seq_cst, align 8
  %.not13.i = icmp eq i32 %i.bw, 0
  br i1 %.not13.i, label %ma_node_set_state.exit.i, label %bb.m

bb.m:                                             ; preds = %ma_sound_at_end.exit.i
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !1055 ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !358
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !589 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %ma_data_source_seek_to_pcm_frame.exit.thread25.thread.i, label %ma_data_source_seek_to_pcm_frame.exit.i

end_hunk_3
begin_hunk_4_@ma_job_process__resource_manager__free_data_stream:bb.a
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %.not = icmp eq i32 %i.f, %i.h
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.d, null
  br i1 %i.i, label %ma_resource_manager_post_job.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 712
  %i.k = tail call i32 @ma_job_queue_post(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %0)
  br label %ma_resource_manager_post_job.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1138
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = tail call i32 @ma_decoder_uninit(ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 688 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !936  ; 3 uses
  %.not22 = icmp eq ptr %i.q, null
  br i1 %.not22, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !132  ; 2 uses
  %.not9.i = icmp eq ptr %i.s, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !126
  tail call void %i.s(ptr noundef nonnull %i.q, ptr noundef %i.t) #55, !inline_history !133
  br label %ma_free.exit

bb.j:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.q) #55
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.h, %bb.i, %bb.j
  store ptr null, ptr %i.p, align 8, !tbaa !936
  br label %bb.k

bb.k:                                             ; preds = %ma_free.exit, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !119  ; 3 uses
  %.not23 = icmp eq ptr %i.v, null
  br i1 %.not23, label %ma_async_notification_signal.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %ma_async_notification_signal.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void %i.w(ptr noundef nonnull %i.v) #55, !inline_history !909
  br label %ma_async_notification_signal.exit

ma_async_notification_signal.exit:                ; preds = %bb.m, %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !119  ; 5 uses
  %.not24 = icmp eq ptr %i.z, null
  br i1 %.not24, label %ma_resource_manager_post_job.exit, label %.preheader.i

.preheader.i:                                     ; preds = %ma_async_notification_signal.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.preheader.i
  %i.ab = load atomic i32, ptr %i.aa seq_cst, align 8 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %ma_resource_manager_post_job.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = add i32 %i.ab, -1                       ; 2 uses
  %i.ae = cmpxchg weak ptr %i.aa, i32 %i.ab, i32 %i.ad seq_cst seq_cst, align 8 ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ae, 1
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp eq i32 %i.ad, 0
  br i1 %i.ag, label %ma_event_signal.exit.i, label %ma_resource_manager_post_job.exit

ma_event_signal.exit.i:                           ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ai = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ah) #55 ; 0 uses
  store i32 1, ptr %i.z, align 8, !tbaa !145
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ak = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.aj) #55 ; 0 uses
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #55 ; 0 uses
  br label %ma_resource_manager_post_job.exit

bb.q:                                             ; preds = %bb.o
  %i.am = extractvalue { i32, i1 } %i.ae, 0
  %.not.i26 = icmp eq i32 %i.am, 0
  br i1 %.not.i26, label %ma_resource_manager_post_job.exit, label %bb.n

ma_resource_manager_post_job.exit:                ; preds = %bb.q, %bb.n, %ma_event_signal.exit.i, %bb.p, %bb.c, %bb.b, %ma_async_notification_signal.exit
  %.0 = phi i32 [ 0, %ma_async_notification_signal.exit ], [ -2, %bb.b ], [ %i.k, %bb.c ], [ 0, %ma_event_signal.exit.i ], [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %bb.q ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -4, 1) i32 @ma_job_process__resource_manager__page_data_stream(ptr nofree noundef readonly captures(address_is_null) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !928  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !908
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 680 ; 2 uses
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %.not = icmp eq i32 %i.f, %i.h
  br i1 %.not, label %ma_resource_manager_data_stream_result.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.d, null
  br i1 %i.i, label %ma_resource_manager_post_job.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 712
  %i.k = tail call i32 @ma_job_queue_post(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %0)
  br label %ma_resource_manager_post_job.exit

ma_resource_manager_data_stream_result.exit:      ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.m = load atomic i32, ptr %i.l seq_cst, align 8
  %.not14 = icmp eq i32 %i.m, 0
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ma_resource_manager_data_stream_result.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !119
  tail call fastcc void @ma_resource_manager_data_stream_fill_page(ptr noundef nonnull %i.b, i32 noundef %i.o)
  br label %bb.e

bb.e:                                             ; preds = %ma_resource_manager_data_stream_result.exit, %bb.d
  %.013 = phi i32 [ 0, %bb.d ], [ -3, %ma_resource_manager_data_stream_result.exit ]
  %i.p = atomicrmw add ptr %i.g, i32 1 seq_cst, align 8 ; 0 uses
  br label %ma_resource_manager_post_job.exit

ma_resource_manager_post_job.exit:                ; preds = %bb.c, %bb.b, %bb.e
  %.0 = phi i32 [ %.013, %bb.e ], [ %i.k, %bb.c ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -4, 1) i32 @ma_job_process__resource_manager__seek_data_stream(ptr nofree noundef readonly captures(address_is_null) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !928  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !908
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 680 ; 2 uses
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %.not = icmp eq i32 %i.f, %i.h
  br i1 %.not, label %ma_resource_manager_data_stream_result.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.d, null
  br i1 %i.i, label %ma_resource_manager_post_job.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 712
  %i.k = tail call i32 @ma_job_queue_post(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %0)
  br label %ma_resource_manager_post_job.exit

ma_resource_manager_data_stream_result.exit:      ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.m = load atomic i32, ptr %i.l seq_cst, align 8
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %bb.d, label %bb.f

bb.d:                                             ; preds = %ma_resource_manager_data_stream_result.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1138
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !119
  %i.t = tail call i32 @ma_decoder_seek_to_pcm_frame(ptr noundef nonnull %i.q, i64 noundef %i.s) ; 0 uses
  tail call fastcc void @ma_resource_manager_data_stream_fill_page(ptr noundef nonnull %i.b, i32 noundef 0)
  tail call fastcc void @ma_resource_manager_data_stream_fill_page(ptr noundef nonnull %i.b, i32 noundef 1)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %1 = atomicrmw add ptr %i.u, i32 -1 seq_cst, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %ma_resource_manager_data_stream_result.exit, %bb.d, %bb.e
  %.017 = phi i32 [ 0, %bb.e ], [ -3, %bb.d ], [ -3, %ma_resource_manager_data_stream_result.exit ]
  %i.v = atomicrmw add ptr %i.g, i32 1 seq_cst, align 8 ; 0 uses
  br label %ma_resource_manager_post_job.exit

ma_resource_manager_post_job.exit:                ; preds = %bb.c, %bb.b, %bb.f
  %.0 = phi i32 [ %.017, %bb.f ], [ %i.k, %bb.c ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ma_job_process__device__aaudio_reroute(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ma_resource_manager_data_buffer_node_init_supply_decoded(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %6 = alloca %struct.ma_decoder_config, align 8  ; 16 uses
  store ptr null, ptr %5, align 8, !tbaa !924
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !125  ; 2 uses
  %.not8.i = icmp eq ptr %i.f, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !126
  %i.h = tail call ptr %i.f(i64 noundef 552, ptr noundef %i.g) #55, !inline_history !127
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef dereferenceable_or_null(552) ptr @malloc(i64 noundef 552) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ] ; 15 uses
  %i.j = icmp eq ptr %.0.i, null
  br i1 %i.j, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %ma_malloc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1137, !noalias !3077
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx.i, i8 0, i64 20, i1 false)
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !878, !noalias !3077
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !879, !noalias !3077
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !880, !noalias !3077
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %i.u = load <2 x i32>, ptr %i.k, align 8, !tbaa !118, !noalias !3077
  store <2 x i32> %i.u, ptr %6, align 8, !tbaa !118
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !118
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !118
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 116
  store i32 0, ptr %.sroa.10.0..sroa_idx.i, align 4, !tbaa !118
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr %i.o, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !657
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i32 %i.q, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !118
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 132
  store i32 0, ptr %.sroa.13.0..sroa_idx.i, align 4
  %.sroa.1325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 136
  store ptr %i.s, ptr %.sroa.1325.0..sroa_idx.i, align 8, !tbaa !134
  %.not.i67 = icmp eq ptr %2, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !875  ; 2 uses
  br i1 %.not.i67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = call i32 @ma_decoder_init_vfs(ptr noundef %i.w, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %.0.i) ; 3 uses
  %.not22.i = icmp eq i32 %i.x, 0
  br i1 %.not22.i, label %bb.j, label %ma_resource_manager_get_log.exit.i

ma_resource_manager_get_log.exit.i:               ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !874
  %i.aa = call ptr @ma_result_description(i32 noundef %i.x)
  %i.ab = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.z, i32 noundef 2, ptr noundef nonnull @.str.183, ptr noundef nonnull %2, ptr noundef nonnull %i.aa) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = call i32 @ma_decoder_init_vfs_w(ptr noundef %i.w, ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %.0.i) ; 3 uses
  %.not21.i = icmp eq i32 %i.ac, 0
  br i1 %.not21.i, label %bb.j, label %ma_resource_manager_get_log.exit24.i

ma_resource_manager_get_log.exit24.i:             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !874
  %i.af = call ptr @ma_result_description(i32 noundef %i.ac)
  %i.ag = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ae, i32 noundef 2, ptr noundef nonnull @.str.184, ptr noundef %3, ptr noundef nonnull %i.af) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %ma_resource_manager_get_log.exit24.i, %ma_resource_manager_get_log.exit.i
  %.0.i68 = phi i32 [ %i.x, %ma_resource_manager_get_log.exit.i ], [ %i.ac, %ma_resource_manager_get_log.exit24.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !132 ; 2 uses
  %.not9.i = icmp eq ptr %i.ai, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %0, align 8, !tbaa !126
  call void %i.ai(ptr noundef nonnull %.0.i, ptr noundef %i.aj) #55, !inline_history !133
  br label %ma_free.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.ak = and i32 %4, 16
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 72 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !803 ; 6 uses
  %.not.i70 = icmp eq ptr %i.an, null
  br i1 %.not.i70, label %ma_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i64 0, ptr %i.d, align 8, !tbaa !164
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !359 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ap, -1
  br i1 %.not.i.i, label %bb.m, label %.thread.i

.thread.i:                                        ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !590
  %i.as = sub i64 %i.ap, %i.ar
  store i64 %i.as, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !358
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !595 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %ma_decoder_get_length_in_pcm_frames.exit.thread98, label %ma_data_source_get_length_in_pcm_frames.exit.i

ma_data_source_get_length_in_pcm_frames.exit.i:   ; preds = %bb.m
  %i.ax = call i32 %i.av(ptr noundef nonnull %i.an, ptr noundef nonnull %i.d) #55, !inline_history !822 ; 2 uses
  %.not20.i = icmp eq i32 %i.ax, 0
  br i1 %.not20.i, label %bb.n, label %ma_decoder_get_length_in_pcm_frames.exit.thread98

bb.n:                                             ; preds = %ma_data_source_get_length_in_pcm_frames.exit.i
  %.pre.i = load ptr, ptr %i.am, align 8, !tbaa !803 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.ay = icmp eq ptr %.pre.i, null
  br i1 %i.ay, label %ma_data_source_get_data_format.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.az = phi ptr [ %i.an, %.thread.i ], [ %.pre.i, %bb.n ] ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !358
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !585 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %ma_data_source_get_data_format.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = call i32 %i.bc(ptr noundef nonnull %i.az, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !823 ; 2 uses
  %.not36.i.i = icmp eq i32 %i.be, 0
  br i1 %.not36.i.i, label %bb.q, label %ma_data_source_get_data_format.exit.thread.i

ma_data_source_get_data_format.exit.thread.i:     ; preds = %bb.p, %bb.o, %bb.n
  %.0.i22.ph.i = phi i32 [ -29, %bb.o ], [ -2, %bb.n ], [ %i.be, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_decoder_get_length_in_pcm_frames.exit.thread98

bb.q:                                             ; preds = %bb.p
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !118 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
end_hunk_4
begin_hunk_5_@ma_resource_manager_data_stream_cb__get_data_format:bb.a
  br i1 %i.e, label %ma_resource_manager_data_stream_get_data_format.exit, label %ma_resource_manager_data_stream_result.exit.i

ma_resource_manager_data_stream_result.exit.i:    ; preds = %ma_zero_memory_default.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.g = load atomic i32, ptr %i.f seq_cst, align 8
  %.not25.i = icmp eq i32 %i.g, 0
  br i1 %.not25.i, label %bb.i, label %ma_resource_manager_data_stream_get_data_format.exit

bb.i:                                             ; preds = %ma_resource_manager_data_stream_result.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %1, align 4, !tbaa !118
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not22.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %2, align 4, !tbaa !118
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not23.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %3, align 4, !tbaa !118
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %or.cond.i, label %bb.p, label %ma_zero_memory_default.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 0, i64 %5, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.p, %bb.o
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !358
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !585  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ma_data_source_get_data_format.exit.i, label %bb.q

bb.q:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.m = call i32 %i.k(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %4, i64 noundef %5) #55, !inline_history !933 ; 2 uses
  %.not36.i.i = icmp eq i32 %i.m, 0
  br i1 %.not36.i.i, label %bb.r, label %ma_data_source_get_data_format.exit.i

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.n = load i32, ptr %i.a, align 4, !tbaa !118
  store i32 %i.n, ptr %1, align 4, !tbaa !118
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not22.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.o = load i32, ptr %i.b, align 4, !tbaa !118
  store i32 %i.o, ptr %2, align 4, !tbaa !118
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.not23.i, label %ma_data_source_get_data_format.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.p = load i32, ptr %i.c, align 4, !tbaa !118
  store i32 %i.p, ptr %3, align 4, !tbaa !118
  br label %ma_data_source_get_data_format.exit.i

ma_data_source_get_data_format.exit.i:            ; preds = %bb.w, %bb.v, %bb.q, %ma_zero_memory_default.exit.i.i
  %.0.i27.i = phi i32 [ %i.m, %bb.q ], [ 0, %bb.v ], [ -29, %ma_zero_memory_default.exit.i.i ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_resource_manager_data_stream_get_data_format.exit

ma_resource_manager_data_stream_get_data_format.exit: ; preds = %ma_zero_memory_default.exit.i, %ma_resource_manager_data_stream_result.exit.i, %ma_data_source_get_data_format.exit.i
  %.0.i = phi i32 [ %.0.i27.i, %ma_data_source_get_data_format.exit.i ], [ -2, %ma_zero_memory_default.exit.i ], [ -3, %ma_resource_manager_data_stream_result.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal range(i32 -3, 1) i32 @ma_resource_manager_data_stream_cb__get_cursor_in_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) #24 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_resource_manager_data_stream_get_cursor_in_pcm_frames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_resource_manager_data_stream_get_cursor_in_pcm_frames.exit, label %ma_resource_manager_data_stream_result.exit.i

ma_resource_manager_data_stream_result.exit.i:    ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load atomic i32, ptr %i.c seq_cst, align 8
  switch i32 %i.d, label %ma_resource_manager_data_stream_get_cursor_in_pcm_frames.exit [
    i32 -19, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %ma_resource_manager_data_stream_result.exit.i, %ma_resource_manager_data_stream_result.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  store i64 %i.f, ptr %1, align 8, !tbaa !164
  br label %ma_resource_manager_data_stream_get_cursor_in_pcm_frames.exit

ma_resource_manager_data_stream_get_cursor_in_pcm_frames.exit: ; preds = %bb.a, %bb.b, %ma_resource_manager_data_stream_result.exit.i, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ], [ -3, %ma_resource_manager_data_stream_result.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal i32 @ma_resource_manager_data_stream_cb__get_length_in_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) #24 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_resource_manager_data_stream_get_length_in_pcm_frames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_resource_manager_data_stream_get_length_in_pcm_frames.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load atomic i32, ptr %i.c seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %ma_resource_manager_data_stream_get_length_in_pcm_frames.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.f = load i64, ptr %i.e, align 8, !tbaa !932  ; 2 uses
  store i64 %i.f, ptr %1, align 8, !tbaa !164
  %i.g = icmp eq i64 %i.f, 0
  %..i = select i1 %i.g, i32 -29, i32 0
  br label %ma_resource_manager_data_stream_get_length_in_pcm_frames.exit

ma_resource_manager_data_stream_get_length_in_pcm_frames.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.d, %bb.c ], [ -2, %bb.a ], [ %..i, %bb.d ], [ -2, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i32 @ma_resource_manager_data_stream_cb__set_looping(ptr nofree noundef captures(none) %0, i32 noundef %1) #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.b = atomicrmw xchg ptr %i.a, i32 %1 seq_cst, align 4 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @ma_node_graph_node_process_pcm_frames(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load i32, ptr %4, align 4, !tbaa !118
  %i.d = zext i32 %i.c to i64
  %i.e = call i32 @ma_node_graph_read_pcm_frames(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !164
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %4, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ma_node_graph_endpoint_process_pcm_frames(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ma_node_input_bus_read_pcm_frames(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4, i64 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  store i32 0, ptr %4, align 4, !tbaa !118
  %i.c = getelementptr i8, ptr %1, i64 64
  %.val = load i8, ptr %i.c, align 8, !tbaa !985  ; 3 uses
  %i.d = zext i8 %.val to i32                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 9 uses
  %i.f = atomicrmw add ptr %i.e, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.013.i.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 32
  %i.h = load atomic volatile i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %cond.i.i = icmp eq i64 %i.h, 0
  br i1 %cond.i.i, label %ma_node_input_bus_first.exit.thread, label %bb.c

ma_node_input_bus_first.exit.thread:              ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = atomicrmw add ptr %i.i, i32 -1 seq_cst, align 8 ; 0 uses
  %7 = atomicrmw add ptr %i.e, i32 -1 seq_cst, align 8 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.h to ptr                 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load atomic i32, ptr %i.k seq_cst, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = atomicrmw add ptr %i.n, i32 1 seq_cst, align 8 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = atomicrmw add ptr %i.p, i32 -1 seq_cst, align 8 ; 0 uses
  %9 = atomicrmw add ptr %i.e, i32 -1 seq_cst, align 8 ; 0 uses
  %.not82 = icmp eq ptr %2, null
  %i.q = shl nuw nsw i32 %i.d, 2                  ; 2 uses
  %i.r = zext nneg i32 %i.q to i64                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = icmp eq i8 %.val, 0
  %i.u = zext i8 %.val to i64                     ; 3 uses
  br i1 %.not82, label %.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph
  %.not151 = icmp eq i32 %3, 0
  %i.v = shl nuw nsw i64 %i.u, 2
  br label %.preheader

.lr.ph.split.us:                                  ; preds = %.lr.ph, %ma_node_input_bus_next.exit.us
  %.070110.us = phi ptr [ %i.ae, %ma_node_input_bus_next.exit.us ], [ %i.j, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.w = load ptr, ptr %.070110.us, align 8, !tbaa !971
  %i.x = getelementptr inbounds nuw i8, ptr %.070110.us, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !972
  %i.z = zext i8 %i.y to i32
  %i.aa = call fastcc i32 @ma_node_read_pcm_frames(ptr noundef nonnull %i.w, i32 noundef %i.z, ptr noundef null, i32 noundef %3, ptr noundef %i.a, i64 noundef %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ab = atomicrmw add ptr %i.e, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.us
  %.013.i.us = phi ptr [ %.070110.us, %.lr.ph.split.us ], [ %i.ae, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.us, i64 32
  %i.ad = load atomic volatile i64, ptr %i.ac seq_cst, align 8 ; 2 uses
  %cond.i.us = icmp eq i64 %i.ad, 0
  br i1 %cond.i.us, label %._crit_edge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = inttoptr i64 %i.ad to ptr               ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ag = load atomic i32, ptr %i.af seq_cst, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %ma_node_input_bus_next.exit.us

ma_node_input_bus_next.exit.us:                   ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = atomicrmw add ptr %i.ai, i32 1 seq_cst, align 8 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.070110.us, i64 16
  %10 = atomicrmw add ptr %i.ak, i32 -1 seq_cst, align 8 ; 0 uses
  %11 = atomicrmw add ptr %i.e, i32 -1 seq_cst, align 8 ; 0 uses
  br label %.lr.ph.split.us, !llvm.loop !3181

.preheader:                                       ; preds = %ma_node_input_bus_next.exit, %.preheader.preheader
  %.069113 = phi i32 [ %spec.select84, %ma_node_input_bus_next.exit ], [ 0, %.preheader.preheader ]
  %.070110 = phi ptr [ %i.fd, %ma_node_input_bus_next.exit ], [ %i.j, %.preheader.preheader ] ; 8 uses
  %.071109 = phi i32 [ %.us-phi104155, %ma_node_input_bus_next.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.069113.fr = freeze i32 %.069113               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.al = load ptr, ptr %.070110, align 8, !tbaa !971
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !978
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !980
  %i.aq = icmp eq i32 %.069113.fr, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %.070110, i64 8 ; 2 uses
  %i.as = and i32 %i.ap, 16
  %i.at = icmp ne i32 %i.as, 0                    ; 2 uses
  br i1 %i.aq, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not151, label %ma_silence_pcm_frames.exit, label %ma_stack_alloc.exit.thread.us

ma_stack_alloc.exit.thread.us:                    ; preds = %.preheader.split.us, %ma_stack_alloc.exit.thread.us
  %i.au = phi i32 [ %i.bf, %ma_stack_alloc.exit.thread.us ], [ 0, %.preheader.split.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.av = sub nuw i32 %3, %i.au
  %i.aw = zext i32 %i.au to i64                   ; 2 uses
  %i.ax = mul nuw nsw i64 %i.aw, %i.r
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.ax
  %i.az = load ptr, ptr %.070110, align 8, !tbaa !971
  %i.ba = load i8, ptr %i.ar, align 8, !tbaa !972
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i64 %5, %i.aw
  %i.bd = call fastcc i32 @ma_node_read_pcm_frames(ptr noundef %i.az, i32 noundef %i.bb, ptr noundef nonnull %i.ay, i32 noundef %i.av, ptr noundef %i.b, i64 noundef %i.bc) ; 2 uses
  %i.be = load i32, ptr %i.b, align 4, !tbaa !118 ; 2 uses
  %i.bf = add i32 %i.be, %i.au                    ; 3 uses
  %.not83.us = icmp eq i32 %i.bd, 0
  %i.bg = icmp ne i32 %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.bh = icmp ult i32 %i.bf, %3
  %i.bi = and i1 %i.bg, %i.bh
  %or.cond118 = select i1 %.not83.us, i1 %i.bi, i1 false
  br i1 %or.cond118, label %ma_stack_alloc.exit.thread.us, label %.split.us

.preheader.split:                                 ; preds = %.preheader, %ma_stack_alloc.exit.thread
  %i.bj = phi i32 [ %i.em, %ma_stack_alloc.exit.thread ], [ 0, %.preheader ] ; 6 uses
  %.172 = phi i32 [ 0, %ma_stack_alloc.exit.thread ], [ %.071109, %.preheader ] ; 2 uses
  %i.bk = icmp ult i32 %i.bj, %3
  br i1 %i.bk, label %bb.f, label %.split.us

bb.f:                                             ; preds = %.preheader.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.bl = zext i32 %i.bj to i64                   ; 3 uses
  %i.bm = mul nuw nsw i64 %i.bl, %i.r
  %i.bn = getelementptr i8, ptr %2, i64 %i.bm     ; 7 uses
  %i.bo = load i16, ptr %i.s, align 8, !tbaa !982
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !991
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 744
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !957 ; 5 uses
  %i.bt = mul nuw nsw i32 %i.q, %i.bp
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !959 ; 3 uses
  %narrow = add nuw nsw i32 %i.bt, 4
  %i.bv = and i32 %narrow, 134217720
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = add i64 %i.bu, 8
  %i.by = add i64 %i.bx, %i.bw                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !960
  %i.cb = icmp ugt i64 %i.by, %i.ca
  br i1 %i.cb, label %ma_stack_alloc.exit.thread.thread, label %bb.g

ma_stack_alloc.exit.thread.thread:                ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.split.us

bb.g:                                             ; preds = %bb.f
  %i.cc = sub nuw i32 %3, %i.bj
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bu ; 3 uses
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !959
  store i64 %i.bw, ptr %i.ce, align 8, !tbaa !154
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 8 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.bp)
  %i.cg = load ptr, ptr %.070110, align 8, !tbaa !971
  %i.ch = load i8, ptr %i.ar, align 8, !tbaa !972
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add i64 %5, %i.bl
  %i.ck = call fastcc i32 @ma_node_read_pcm_frames(ptr noundef %i.cg, i32 noundef %i.ci, ptr noundef nonnull %i.cf, i32 noundef %spec.select, ptr noundef %i.b, i64 noundef %i.cj) ; 4 uses
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = icmp ne i32 %i.ck, -17
  %or.cond.not123 = and i1 %i.cl, %i.cm
  %or.cond5.not120 = select i1 %or.cond.not123, i1 true, i1 %i.at
  %or.cond97 = select i1 %or.cond5.not120, i1 true, i1 %i.t
  %.pre.pre = load i32, ptr %i.b, align 4, !tbaa !118 ; 4 uses
  br i1 %or.cond97, label %ma_stack_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = zext i32 %.pre.pre to i64               ; 3 uses
  %i.co = mul nuw nsw i64 %i.cn, %i.u             ; 6 uses
  %.not35.i = icmp eq i32 %.pre.pre, 0
  br i1 %.not35.i, label %ma_stack_alloc.exit.thread, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %bb.h
  %min.iters.check = icmp samesign ult i64 %i.co, 8
  br i1 %min.iters.check, label %.lr.ph34.i.preheader180, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph34.i.preheader
  %i.cp = add nuw nsw i64 %i.bl, %i.cn
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = mul nuw nsw i64 %i.cq, %i.u
  %scevgep = getelementptr i8, ptr %2, i64 %i.cr
  %scevgep175 = getelementptr i8, ptr %i.bs, i64 24
  %i.cs = mul nuw nsw i64 %i.v, %i.cn
  %i.ct = getelementptr i8, ptr %scevgep175, i64 %i.bu
  %scevgep176 = getelementptr i8, ptr %i.ct, i64 %i.cs
  %bound0 = icmp ult ptr %i.bn, %scevgep176
  %bound1 = icmp ult ptr %i.cf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph34.i.preheader180, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 1099511627768           ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <4 x float>, ptr %i.cu, align 4, !tbaa !349, !alias.scope !3188
  %wide.load177 = load <4 x float>, ptr %i.cv, align 4, !tbaa !349, !alias.scope !3188
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %wide.load178 = load <4 x float>, ptr %i.cw, align 4, !tbaa !349, !alias.scope !3189, !noalias !3188
  %wide.load179 = load <4 x float>, ptr %i.cx, align 4, !tbaa !349, !alias.scope !3189, !noalias !3188
  %i.cy = fadd <4 x float> %wide.load, %wide.load178
  %i.cz = fadd <4 x float> %wide.load177, %wide.load179
  store <4 x float> %i.cy, ptr %i.cw, align 4, !tbaa !349, !alias.scope !3189, !noalias !3188
  store <4 x float> %i.cz, ptr %i.cx, align 4, !tbaa !349, !alias.scope !3189, !noalias !3188
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !3185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %ma_stack_alloc.exit.thread, label %.lr.ph34.i.preheader180

.lr.ph34.i.preheader180:                          ; preds = %vector.memcheck, %.lr.ph34.i.preheader, %middle.block
  %.033.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph34.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.co, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph34.i.prol.loopexit, label %.lr.ph34.i.prol

.lr.ph34.i.prol:                                  ; preds = %.lr.ph34.i.preheader180, %.lr.ph34.i.prol
  %.033.i.prol = phi i64 [ %i.dg, %.lr.ph34.i.prol ], [ %.033.i.ph, %.lr.ph34.i.preheader180 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph34.i.prol ], [ 0, %.lr.ph34.i.preheader180 ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.033.i.prol
  %i.dc = load float, ptr %i.db, align 4, !tbaa !349
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.033.i.prol ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !349
  %i.df = fadd float %i.dc, %i.de
  store float %i.df, ptr %i.dd, align 4, !tbaa !349
  %i.dg = add nuw nsw i64 %.033.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph34.i.prol.loopexit, label %.lr.ph34.i.prol, !llvm.loop !3186

.lr.ph34.i.prol.loopexit:                         ; preds = %.lr.ph34.i.prol, %.lr.ph34.i.preheader180
  %.033.i.unr = phi i64 [ %.033.i.ph, %.lr.ph34.i.preheader180 ], [ %i.dg, %.lr.ph34.i.prol ]
  %i.dh = sub nsw i64 %.033.i.ph, %i.co
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %ma_stack_alloc.exit.thread, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.prol.loopexit, %.lr.ph34.i
  %.033.i = phi i64 [ %i.eg, %.lr.ph34.i ], [ %.033.i.unr, %.lr.ph34.i.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.033.i
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !349
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.033.i ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !349
  %i.dn = fadd float %i.dk, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !349
  %i.do = add nuw nsw i64 %.033.i, 1              ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !349
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.do ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !349
  %i.dt = fadd float %i.dq, %i.ds
  store float %i.dt, ptr %i.dr, align 4, !tbaa !349
  %i.du = add nuw nsw i64 %.033.i, 2              ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !349
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.du ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !349
  %i.dz = fadd float %i.dw, %i.dy
  store float %i.dz, ptr %i.dx, align 4, !tbaa !349
  %i.ea = add nuw nsw i64 %.033.i, 3              ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !349
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ea ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !349
  %i.ef = fadd float %i.ec, %i.ee
  store float %i.ef, ptr %i.ed, align 4, !tbaa !349
  %i.eg = add nuw nsw i64 %.033.i, 4              ; 2 uses
  %exitcond37.not.i.3 = icmp eq i64 %i.eg, %i.co
  br i1 %exitcond37.not.i.3, label %ma_stack_alloc.exit.thread, label %.lr.ph34.i, !llvm.loop !3187

ma_stack_alloc.exit.thread:                       ; preds = %.lr.ph34.i.prol.loopexit, %.lr.ph34.i, %middle.block, %bb.g, %bb.h
  %i.eh = load ptr, ptr %0, align 8, !tbaa !991
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 744
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !957 ; 2 uses
  %.val85 = load i64, ptr %i.ce, align 8, !tbaa !154
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !959
  %reass.sub = sub i64 %i.ek, %.val85
  %i.el = add i64 %reass.sub, -8
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !959
  %i.em = add i32 %.pre.pre, %i.bj                ; 2 uses
  %.not83 = icmp eq i32 %i.ck, 0
  %i.en = icmp ne i32 %.pre.pre, 0
  %i.eo = select i1 %.not83, i1 %i.en, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br i1 %i.eo, label %.preheader.split, label %.split.us

.split.us:                                        ; preds = %.preheader.split, %ma_stack_alloc.exit.thread, %ma_stack_alloc.exit.thread.us, %ma_stack_alloc.exit.thread.thread
  %i.ep = phi i32 [ %i.bf, %ma_stack_alloc.exit.thread.us ], [ %i.bj, %ma_stack_alloc.exit.thread.thread ], [ %i.em, %ma_stack_alloc.exit.thread ], [ %i.bj, %.preheader.split ] ; 3 uses
  %.us-phi104 = phi i32 [ %i.bd, %ma_stack_alloc.exit.thread.us ], [ %.172, %ma_stack_alloc.exit.thread.thread ], [ %i.ck, %ma_stack_alloc.exit.thread ], [ %.172, %.preheader.split ] ; 3 uses
  %i.eq = icmp eq ptr %.070110, %i.j
  %i.er = icmp ult i32 %i.ep, %3
  %or.cond = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond, label %bb.i, label %ma_silence_pcm_frames.exit

bb.i:                                             ; preds = %.split.us
  %i.es = sub nuw i32 %3, %i.ep
  %i.et = zext i32 %i.es to i64
  %i.eu = mul nuw nsw i64 %i.et, %i.r             ; 2 uses
  %.not.i13.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i13.i, label %ma_silence_pcm_frames.exit, label %ma_zero_memory_default.exit.i.i.preheader

ma_zero_memory_default.exit.i.i.preheader:        ; preds = %bb.i
  %i.ev = zext i32 %i.ep to i64
  %i.ew = mul nuw nsw i64 %i.ev, %i.r
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %i.ew
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_zero_memory_default.exit.i.i.preheader, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.ez, %ma_zero_memory_default.exit.i.i ], [ %i.ex, %ma_zero_memory_default.exit.i.i.preheader ] ; 2 uses
  %.08.i14.i = phi i64 [ %i.ey, %ma_zero_memory_default.exit.i.i ], [ %i.eu, %ma_zero_memory_default.exit.i.i.preheader ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i, i1 false)
  %i.ey = sub nuw nsw i64 %.08.i14.i, %spec.store.select.i.i ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i, label %ma_silence_pcm_frames.exit, label %ma_zero_memory_default.exit.i.i, !llvm.loop !7

ma_silence_pcm_frames.exit:                       ; preds = %ma_zero_memory_default.exit.i.i, %.preheader.split.us, %bb.i, %.split.us
  %.us-phi104155 = phi i32 [ %.071109, %.preheader.split.us ], [ %.us-phi104, %.split.us ], [ %.us-phi104, %bb.i ], [ %.us-phi104, %ma_zero_memory_default.exit.i.i ] ; 2 uses
  %spec.select84 = select i1 %i.at, i32 %.069113.fr, i32 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.fa = atomicrmw add ptr %i.e, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %ma_silence_pcm_frames.exit
  %.013.i = phi ptr [ %.070110, %ma_silence_pcm_frames.exit ], [ %i.fd, %bb.k ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %i.fc = load atomic volatile i64, ptr %i.fb seq_cst, align 8 ; 2 uses
  %cond.i = icmp eq i64 %i.fc, 0
  br i1 %cond.i, label %._crit_edge.loopexit125, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fd = inttoptr i64 %i.fc to ptr               ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  %i.ff = load atomic i32, ptr %i.fe seq_cst, align 4
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.j, label %ma_node_input_bus_next.exit

ma_node_input_bus_next.exit:                      ; preds = %bb.k
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fi = atomicrmw add ptr %i.fh, i32 1 seq_cst, align 8 ; 0 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.070110, i64 16
  %12 = atomicrmw add ptr %i.fj, i32 -1 seq_cst, align 8 ; 0 uses
  %13 = atomicrmw add ptr %i.e, i32 -1 seq_cst, align 8 ; 0 uses
  br label %.preheader, !llvm.loop !3181

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.fk = getelementptr inbounds nuw i8, ptr %.070110.us, i64 16
  %14 = atomicrmw add ptr %i.fk, i32 -1 seq_cst, align 8 ; 0 uses
  %15 = atomicrmw add ptr %i.e, i32 -1 seq_cst, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge.loopexit125:                          ; preds = %bb.j
  %i.fl = getelementptr inbounds nuw i8, ptr %.070110, i64 16
  %16 = atomicrmw add ptr %i.fl, i32 -1 seq_cst, align 8 ; 0 uses
  %17 = atomicrmw add ptr %i.e, i32 -1 seq_cst, align 8 ; 0 uses
  %i.fm = icmp eq i32 %spec.select84, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit125, %._crit_edge.loopexit
  %.071.lcssa = phi i32 [ %.us-phi104155, %._crit_edge.loopexit125 ], [ 0, %._crit_edge.loopexit ]
  %.069.lcssa = phi i1 [ %i.fm, %._crit_edge.loopexit125 ], [ true, %._crit_edge.loopexit ]
  %i.fn = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.fn, %.069.lcssa
  br i1 %or.cond3, label %bb.l, label %ma_silence_pcm_frames.exit95

bb.l:                                             ; preds = %._crit_edge
  %i.fo = zext i32 %3 to i64
  %i.fp = shl nuw nsw i32 %i.d, 2
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = mul nuw nsw i64 %i.fq, %i.fo            ; 2 uses
  %.not.i13.i87 = icmp eq i64 %i.fr, 0
  br i1 %.not.i13.i87, label %ma_silence_pcm_frames.exit95, label %ma_zero_memory_default.exit.i.i93

ma_zero_memory_default.exit.i.i93:                ; preds = %bb.l, %ma_zero_memory_default.exit.i.i93
  %.0.i15.i89 = phi ptr [ %i.ft, %ma_zero_memory_default.exit.i.i93 ], [ %2, %bb.l ] ; 2 uses
  %.08.i14.i90 = phi i64 [ %i.fs, %ma_zero_memory_default.exit.i.i93 ], [ %i.fr, %bb.l ] ; 2 uses
  %spec.store.select.i.i91 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i90, i64 4294967295) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i89, i8 0, i64 %spec.store.select.i.i91, i1 false)
  %i.fs = sub nuw nsw i64 %.08.i14.i90, %spec.store.select.i.i91 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i15.i89, i64 %spec.store.select.i.i91
  %.not.i.i94 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i94, label %ma_silence_pcm_frames.exit95, label %ma_zero_memory_default.exit.i.i93, !llvm.loop !7

ma_silence_pcm_frames.exit95:                     ; preds = %ma_zero_memory_default.exit.i.i93, %bb.l, %._crit_edge
  store i32 %3, ptr %4, align 4, !tbaa !118
  br label %bb.m

bb.m:                                             ; preds = %ma_node_input_bus_first.exit.thread, %ma_silence_pcm_frames.exit95
  %.073 = phi i32 [ %.071.lcssa, %ma_silence_pcm_frames.exit95 ], [ 0, %ma_node_input_bus_first.exit.thread ]
  ret i32 %.073
}

; Function Attrs: nounwind uwtable
define internal void @ma_data_source_node_process_pcm_frames(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i64 0, ptr %i.d, align 8, !tbaa !164
  %i.e = load i32, ptr %4, align 4, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !996  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %ma_data_source_get_data_format.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !585  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ma_data_source_get_data_format.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 %i.k(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !586
  %.not36.i = icmp eq i32 %i.m, 0
  br i1 %.not36.i, label %bb.d, label %ma_data_source_get_data_format.exit.thread

ma_data_source_get_data_format.exit.thread:       ; preds = %bb.c, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !996
  %i.o = load ptr, ptr %3, align 8, !tbaa !373
  %i.p = zext i32 %i.e to i64
  %i.q = call i32 @ma_data_source_read_pcm_frames(ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.p, ptr noundef nonnull %i.d) ; 0 uses
  %.pre = load i64, ptr %i.d, align 8, !tbaa !164
  %i.r = trunc i64 %.pre to i32
  br label %bb.e

bb.e:                                             ; preds = %ma_data_source_get_data_format.exit.thread, %bb.d
  %i.s = phi i32 [ 0, %ma_data_source_get_data_format.exit.thread ], [ %i.r, %bb.d ]
  store i32 %i.s, ptr %4, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ma_splitter_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %ma_node_get_input_bus_count.exit.i

ma_node_get_input_bus_count.exit.i:               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !968
  %.not.i.not = icmp eq i32 %i.c, 0
  br i1 %.not.i.not, label %ma_node_get_output_bus_count.exit.lr.ph.split, label %bb.b

bb.b:                                             ; preds = %ma_node_get_input_bus_count.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !969
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %.val.i = load i8, ptr %i.f, align 8, !tbaa !985
  %i.g = zext i8 %.val.i to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  br label %ma_node_get_output_bus_count.exit.lr.ph.split

ma_node_get_output_bus_count.exit.lr.ph.split:    ; preds = %bb.b, %ma_node_get_input_bus_count.exit.i
  %.0.i = phi i64 [ %i.h, %bb.b ], [ 0, %ma_node_get_input_bus_count.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !967  ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %ma_node_get_output_bus_count.exit.lr.ph.split, %ma_copy_pcm_frames.exit
  %i.k = phi i32 [ %i.v, %ma_copy_pcm_frames.exit ], [ %i.j, %ma_node_get_output_bus_count.exit.lr.ph.split ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %ma_copy_pcm_frames.exit ], [ 0, %ma_node_get_output_bus_count.exit.lr.ph.split ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !373  ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !373    ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %ma_copy_pcm_frames.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.p = load i32, ptr %4, align 4, !tbaa !118
  %i.q = zext i32 %i.p to i64
  %i.r = mul nuw nsw i64 %.0.i, %i.q              ; 2 uses
  %.not.i7.i = icmp eq i64 %i.r, 0
  br i1 %.not.i7.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.r, %bb.c ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.s = sub nuw nsw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit.loopexit, label %.lr.ph.i, !llvm.loop !12

ma_copy_pcm_frames.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre = load i32, ptr %i.i, align 4, !tbaa !967
  br label %ma_copy_pcm_frames.exit

ma_copy_pcm_frames.exit:                          ; preds = %ma_copy_pcm_frames.exit.loopexit, %.lr.ph, %bb.c
  %i.v = phi i32 [ %.pre, %ma_copy_pcm_frames.exit.loopexit ], [ %i.k, %.lr.ph ], [ %i.k, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %ma_copy_pcm_frames.exit, %bb.a, %ma_node_get_output_bus_count.exit.lr.ph.split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_biquad_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_biquad_process_pcm_frames(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_lpf_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_lpf_process_pcm_frames(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_hpf_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_hpf_process_pcm_frames(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
end_hunk_5
