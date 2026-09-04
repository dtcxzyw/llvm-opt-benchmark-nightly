Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/topology_ring?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@plugin_name = dso_local constant [21 x i8] c"topology ring plugin\00", align 16
@plugin_type = dso_local constant [14 x i8] c"topology/ring\00", align 1
@plugin_id = dso_local local_unnamed_addr constant i32 104, align 4
@plugin_version = dso_local local_unnamed_addr constant i32 1705218, align 4
@supports_exclusive_topo = dso_local local_unnamed_addr constant i8 1, align 1
@.str = private unnamed_addr constant [18 x i8] c"%s: %s: %s loaded\00", align 1
@__func__.init = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"topology_ring.c\00", align 1
@__func__.ring_record_add_ring = private unnamed_addr constant [21 x i8] c"ring_record_add_ring\00", align 1
@node_record_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid ring position: %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Position in new ring must be 0\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Ring %s is full\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Position %u in ring must be < ring_size(%u)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: %s: add %s to %s on position:%u\00", align 1
@__func__.topology_p_add_rm_node = private unnamed_addr constant [23 x i8] c"topology_p_add_rm_node\00", align 1
@node_record_table_ptr = dso_local local_unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: %s: remove %s from %s\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%s: %s: move %s  %s\00", align 1
@__func__.topology_p_get_rank = private unnamed_addr constant [20 x i8] c"topology_p_get_rank\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%s:%u.%s\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ring:position.node\00", align 1
@__func__.topology_p_get = private unnamed_addr constant [15 x i8] c"topology_p_get\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Unsupported option %d\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"No topology information available\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"hostset_create: memory allocation failure\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Topology information contains no ring%s%s%s%s\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c" named \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [13 x i8] c" with nodes \00", align 1
@__func__.topology_p_topoinfo_unpack = private unnamed_addr constant [27 x i8] c"topology_p_topoinfo_unpack\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%s%s:%s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"RingName=%s\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c" Nodes=%s\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c" RingSize=%u\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"SLURM_TOPO_LEN\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @slurm_get_log_level() #8
  %i.b = icmp sgt i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.init, ptr noundef nonnull @plugin_name) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @slurm_get_log_level() local_unnamed_addr #1

declare void @slurm_log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @fini() local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ring_record_add_ring(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = sext i32 %i.g to i64
  %i.j = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef 104, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @__func__.ring_record_add_ring) #8 ; 0 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = sext i32 %i.f to i64                     ; 2 uses
  %i.m = getelementptr inbounds [104 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = tail call ptr @slurm_xstrdup(ptr noundef %1) #8
  store ptr %i.n, ptr %i.m, align 8
  %i.o = load i32, ptr @node_record_count, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = tail call ptr @slurm_bit_alloc(i64 noundef %i.p) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr %i.q, ptr %i.r, align 8
  %i.s = trunc i32 %i.f to i16
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store i16 %i.s, ptr %i.t, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.b, align 8
  %i.w = add nsw i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.u, i64 noundef %i.x, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 157, ptr noundef nonnull @__func__.ring_record_add_ring) #8 ; 0 uses
  %i.z = tail call ptr @slurm_xstrdup(ptr noundef %1) #8
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.l
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = load i32, ptr %i.b, align 8
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @slurm_xrecalloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_xstrdup(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_bit_alloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2147483647) i32 @ring_record_get_ring_inx(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.011 = phi ptr [ %i.j, %bb.b ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.0810 = phi i32 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.f = load ptr, ptr %.011, align 8
  %i.g = tail call i32 @slurm_xstrcmp(ptr noundef %i.f, ptr noundef %0) #8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nuw nsw i32 %.0810, 1                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.011, i64 104
  %i.k = load i32, ptr %i.a, align 8
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.09 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %.0810, %.lr.ph ]
  ret i32 %.09
}

declare i32 @slurm_xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @topology_p_add_rm_node(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  %.not198 = icmp eq ptr %1, null
  br i1 %.not198, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.e = tail call ptr @slurm_xstrdup(ptr noundef nonnull %1) #8 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 58) #9 ; 3 uses
  %.not199 = icmp eq ptr %i.f, null
  br i1 %.not199, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  store i8 0, ptr %i.f, align 1
  %i.h = call i64 @strtoul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, i32 noundef 0) #8 ; 4 uses
  %i.i = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.i, align 1
  %i.l = icmp ne i8 %i.k, 0
  %i.m = icmp ugt i64 %i.h, 15
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.d, %bb.c
  %.0177207 = phi ptr [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.b ]
  %i.n = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.2, ptr noundef %.0177207) #8 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %3 = trunc nuw nsw i64 %i.h to i16              ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.011.i = phi ptr [ %i.y, %bb.f ], [ %i.t, %.lr.ph.preheader.i ] ; 2 uses
  %.0810.i = phi i32 [ %i.x, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %i.u = load ptr, ptr %.011.i, align 8
  %i.v = tail call i32 @slurm_xstrcmp(ptr noundef %i.u, ptr noundef %i.o) #8
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %ring_record_get_ring_inx.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = add nuw nsw i32 %.0810.i, 1              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i, i64 104
  %i.z = load i32, ptr %i.p, align 8
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.not203 = icmp eq i64 %i.h, 0
  br i1 %.not203, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ab = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %.loopexit
  %i.ac = tail call i32 @ring_record_add_ring(ptr noundef %2, ptr noundef %i.o)
  br label %bb.o

ring_record_get_ring_inx.exit:                    ; preds = %.lr.ph.i
  %i.ad = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ae = zext nneg i32 %.0810.i to i64           ; 4 uses
  %i.af = getelementptr inbounds nuw [104 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load i16, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 16
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %ring_record_get_ring_inx.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load i32, ptr %i.al, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = tail call i32 @slurm_bit_test(ptr noundef %i.ak, i64 noundef %i.an) #8
  %.not201 = icmp eq i32 %i.ao, 0
  br i1 %.not201, label %bb.j, label %._crit_edge242

._crit_edge242:                                   ; preds = %bb.i
  %.pre = load ptr, ptr %i.s, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [104 x i8], ptr %.pre, i64 %i.ae
  %.phi.trans.insert243 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 80
  %.pre244 = load i16, ptr %.phi.trans.insert243, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.4, ptr noundef %i.o) #8 ; 0 uses
  br label %.critedge

bb.k:                                             ; preds = %._crit_edge242, %ring_record_get_ring_inx.exit
  %i.aq = phi i16 [ %.pre244, %._crit_edge242 ], [ %i.ah, %ring_record_get_ring_inx.exit ]
  %i.ar = phi ptr [ %.pre, %._crit_edge242 ], [ %i.ad, %ring_record_get_ring_inx.exit ]
  %i.as = getelementptr inbounds nuw [104 x i8], ptr %i.ar, i64 %i.ae
  %i.at = zext i16 %i.aq to i32                   ; 3 uses
  %4 = trunc nuw nsw i64 %i.h to i32              ; 3 uses
  %i.au = icmp slt i32 %i.at, %4
  br i1 %i.au, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = icmp eq i32 %i.at, %4
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = zext i32 %i.az to i64
  %i.bb = tail call i32 @slurm_bit_test(ptr noundef %i.ax, i64 noundef %i.ba) #8
  %.not202 = icmp eq i32 %i.bb, 0
  br i1 %.not202, label %bb.o, label %._crit_edge245

._crit_edge245:                                   ; preds = %bb.m
  %.pre246 = load ptr, ptr %i.s, align 8
  %.phi.trans.insert247 = getelementptr inbounds nuw [104 x i8], ptr %.pre246, i64 %i.ae
  %.phi.trans.insert248 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert247, i64 80
  %.pre249 = load i16, ptr %.phi.trans.insert248, align 8
  %.pre251 = zext i16 %.pre249 to i32
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge245, %bb.k
  %.pre-phi = phi i32 [ %.pre251, %._crit_edge245 ], [ %i.at, %bb.k ]
  %i.bc = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.5, i32 noundef %4, i32 noundef %.pre-phi) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.l, %bb.m, %bb.n
  %.1185 = phi i16 [ 0, %bb.n ], [ %3, %bb.m ], [ %3, %bb.l ], [ 0, %bb.h ]
  %.1182 = phi i32 [ %.0810.i, %bb.n ], [ %.0810.i, %bb.m ], [ %.0810.i, %bb.l ], [ %i.ac, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %5 = zext nneg i16 %.1185 to i32
  %i.bd = zext i32 %.1182 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  %.2186 = phi i32 [ %5, %bb.o ], [ 0, %bb.a ]    ; 2 uses
  %.2183 = phi i64 [ %i.bd, %bb.o ], [ 4294967295, %bb.a ]
  %i.be = load ptr, ptr %i.d, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 8 uses
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = zext i32 %i.bg to i64
  tail call void @slurm_bit_clear(ptr noundef %i.be, i64 noundef %i.bh) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph229, label %.critedge231

.lr.ph229:                                        ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.bn = zext nneg i32 %.2186 to i64             ; 3 uses
  br label %bb.q

._crit_edge230:                                   ; preds = %bb.aw
  br i1 %.2180, label %bb.ax, label %.critedge231

bb.q:                                             ; preds = %.lr.ph229, %bb.aw
  %indvars.iv240 = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next241, %bb.aw ] ; 4 uses
  %.0178226 = phi i1 [ false, %.lr.ph229 ], [ %.2180, %bb.aw ] ; 3 uses
  %i.bo = load ptr, ptr %i.bl, align 8
  %i.bp = getelementptr inbounds nuw [104 x i8], ptr %i.bo, i64 %indvars.iv240 ; 13 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load i32, ptr %i.bf, align 8
  %i.bt = zext i32 %i.bs to i64
  %i.bu = tail call i32 @slurm_bit_test(ptr noundef %i.br, i64 noundef %i.bt) #8
  %i.bv = icmp ne i32 %i.bu, 0                    ; 4 uses
  %i.bw = icmp eq i64 %.2183, %indvars.iv240      ; 3 uses
  %or.cond3 = select i1 %i.bw, i1 true, i1 %i.bv
  br i1 %or.cond3, label %bb.r, label %bb.aw

bb.r:                                             ; preds = %bb.q
  %.not = xor i1 %i.bw, true                      ; 2 uses
  %or.cond5 = select i1 %.not, i1 true, i1 %i.bv
  br i1 %or.cond5, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = tail call ptr @slurm_hostlist_create(ptr noundef null) #8 ; 3 uses
  %i.by = tail call i32 @slurm_get_log_level() #8
  %i.bz = icmp sgt i32 %i.by, 5
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.bm, align 8
  %i.cb = load ptr, ptr %i.bp, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 6, ptr noundef nonnull @.str.6, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.topology_p_add_rm_node, ptr noundef %i.ca, ptr noundef %i.cb, i32 noundef %.2186) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cc = load ptr, ptr %i.bq, align 8
  %i.cd = load i32, ptr %i.bf, align 8
  %i.ce = zext i32 %i.cd to i64
  tail call void @slurm_bit_set(ptr noundef %i.cc, i64 noundef %i.ce) #8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 88 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.cf) #8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 80 ; 3 uses
  %i.ch = load i16, ptr %i.cg, align 8
  %i.ci = add i16 %i.ch, 1                        ; 2 uses
  store i16 %i.ci, ptr %i.cg, align 8
  %.not232 = icmp eq i16 %i.ci, 0
  br i1 %.not232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.bn ; 2 uses
  br label %bb.v

._crit_edge:                                      ; preds = %bb.z, %bb.u
  %i.cl = tail call ptr @slurm_hostlist_ranged_string_xmalloc(ptr noundef %i.bx) #8
  store ptr %i.cl, ptr %i.cf, align 8
  tail call void @slurm_hostlist_destroy(ptr noundef %i.bx) #8
  br label %bb.av

bb.v:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %.0170212 = phi i16 [ undef, %.lr.ph ], [ %.1171, %bb.z ] ; 2 uses
  %.0172211 = phi i1 [ false, %.lr.ph ], [ %.1173, %bb.z ]
  %i.cm = icmp eq i64 %indvars.iv, %i.bn
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cn = load i32, ptr %i.ck, align 4
  %i.co = trunc i32 %i.cn to i16
  %i.cp = load i32, ptr %i.bf, align 8
  store i32 %i.cp, ptr %i.ck, align 4
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  br i1 %.0172211, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = zext i16 %.0170212 to i32
  store i32 %i.ct, ptr %i.cq, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %.1173 = phi i1 [ true, %bb.w ], [ true, %bb.y ], [ false, %bb.x ]
  %.1171 = phi i16 [ %i.co, %bb.w ], [ %i.cs, %bb.y ], [ %.0170212, %bb.x ]
  %i.cu = load ptr, ptr @node_record_table_ptr, align 8
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 280
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = tail call i32 @slurm_hostlist_push_host(ptr noundef %i.bx, ptr noundef %i.db) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i16, ptr %i.cg, align 8
  %i.de = zext i16 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %bb.v, label %._crit_edge, !llvm.loop !12

bb.aa:                                            ; preds = %bb.r
  %or.cond8 = select i1 %.not, i1 %i.bv, i1 false
  br i1 %or.cond8, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.dg = tail call ptr @slurm_hostlist_create(ptr noundef null) #8 ; 3 uses
  %i.dh = tail call i32 @slurm_get_log_level() #8
  %i.di = icmp sgt i32 %i.dh, 5
  br i1 %i.di, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load ptr, ptr %i.bm, align 8
  %i.dk = load ptr, ptr %i.bp, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 6, ptr noundef nonnull @.str.7, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.topology_p_add_rm_node, ptr noundef %i.dj, ptr noundef %i.dk) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dl = load ptr, ptr %i.bq, align 8
  %i.dm = load i32, ptr %i.bf, align 8
  %i.dn = zext i32 %i.dm to i64
  tail call void @slurm_bit_clear(ptr noundef %i.dl, i64 noundef %i.dn) #8
  %i.do = getelementptr inbounds nuw i8, ptr %i.bp, i64 88 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.do) #8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bp, i64 80 ; 4 uses
  %i.dq = load i16, ptr %i.dp, align 8            ; 2 uses
  %.not234 = icmp eq i16 %i.dq, 0
  br i1 %.not234, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %bb.ae

._crit_edge225:                                   ; preds = %bb.ai, %bb.ad
  %i.ds = tail call ptr @slurm_hostlist_ranged_string_xmalloc(ptr noundef %i.dg) #8
  store ptr %i.ds, ptr %i.do, align 8
  tail call void @slurm_hostlist_destroy(ptr noundef %i.dg) #8
  %i.dt = load i16, ptr %i.dp, align 8
  %i.du = add i16 %i.dt, -1
  store i16 %i.du, ptr %i.dp, align 8
  br label %bb.av

bb.ae:                                            ; preds = %.lr.ph224, %bb.ai
  %i.dv = phi i16 [ %i.dq, %.lr.ph224 ], [ %i.ei, %bb.ai ]
  %indvars.iv238 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next239, %bb.ai ] ; 2 uses
  %.0165221 = phi i1 [ false, %.lr.ph224 ], [ %.1166, %bb.ai ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv238 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4            ; 3 uses
  %i.dy = load i32, ptr %i.bf, align 8
  %i.dz = icmp eq i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.0165221, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr i8, ptr %i.dw, i64 -4
  store i32 %i.dx, ptr %i.ea, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.eb = load ptr, ptr @node_record_table_ptr, align 8
  %i.ec = zext i32 %i.dx to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 280
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = tail call i32 @slurm_hostlist_push_host(ptr noundef %i.dg, ptr noundef %i.eg) #8 ; 0 uses
  %.pre250 = load i16, ptr %i.dp, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %i.ei = phi i16 [ %.pre250, %bb.ah ], [ %i.dv, %bb.ae ] ; 2 uses
  %.1166 = phi i1 [ %.0165221, %bb.ah ], [ true, %bb.ae ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.ej = zext i16 %i.ei to i64
  %i.ek = icmp samesign ult i64 %indvars.iv.next239, %i.ej
  br i1 %i.ek, label %bb.ae, label %._crit_edge225, !llvm.loop !13

bb.aj:                                            ; preds = %bb.aa
  %or.cond10 = select i1 %i.bw, i1 %i.bv, i1 false
end_hunk_0
